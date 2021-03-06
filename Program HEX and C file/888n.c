#include <mcs51/stc12.h>
//#include <stdint.h>

#define uchar unsigned char
#define uint unsigned int
#define ENABLE_IAP      0x83  // 0x83 for FOSC==12MHz
#define CMD_IDLE        0     // Stand-By
#define CMD_READ        1     // Byte-Read
#define CMD_PROGRAM     2     // Byte-Program
#define CMD_ERASE       3     // Sector-Erase
#ifndef SDCC
#define __code
#define __xdata
#define __bit
#endif

#include "888n.h"

//Ringbuffer transmit code is not working!
//#define RB              256   // Cannot easily be changed, using uchar for modulo
#ifdef RB
#define RB_MOD (RB-1)
__xdata volatile uchar tx[RB];
__xdata volatile uchar tx_act=0, tx_ptr_w=0, tx_ptr_r=0;
#endif
__xdata volatile unsigned long ops_time_sec = 0L;     // ticking in seconds, ~=136 years
__xdata volatile int ee_addr = 0;                     // pointer in eeprom to store uptime
__bit ops_time_write = 0;                             // signal from interrupt to write ops time
__bit serial_busy = 0;
__xdata volatile uchar display[8][8];                 // WARNING: side effects through out of bounds array!

// T0 timer with same (invalid due to 13 bits) parameters may have been 8,192ms before
#define T0INIT    TH0 = 0x3c; TL0 = 0xb0  // 65.536-50.000 = 15.536 = 50ms
#define T1INIT    TH1 = 0xfc; TL1 = 0x18  // 65.536- 1.000 = 1ms

/*initializtion
That is to initialize the program .
It is write to set the timer in c52 mcu.
So the program can renovate the led_3d_cube in fixed time use the interrupt function.*/
void sinter()
{
      uchar i;

      //P0M0 = 0xff;
      EA = 1;                 // General interrupt enable
      // Timer 0: uptime
      IT0 = 1;                // TCON (Timer control): IT0 edge triggered
      TMOD |= T0_M0,          // 16bit timer
      T0INIT;
      TR0 = 1;                // Timer 0 run enable (Start after init)
      // Timer 1: print
      ET1 = 1;                // Interrupt enable
      IT1 = 1;                // TCON (Timer control): IT1 edge triggered
      TMOD |= T1_M0;          // 16bit timer
      T1INIT;
      TR1 = 1;                // Timer 1 run enable
      // Initialize UART - 9600bps @ 12MHz
      PCON &= 0x7f;           // No doubled baudrate, SMOD=0
      SCON =  0x50;           // 8bit and variable baudrate, 1 stopbit, no parity, mode 1
      AUXR |= 0x04;           // BRT's clock is Fosc (1T)
      BRT  =  0xD9;           // Set BRT's reload value = 9615 baud
      AUXR |= 0x01;           // Use BRT as baudrate generator
      AUXR |= 0x10;           // BRT running
      ES   =  1;              // Enable UART interrupt

      // find last uptime from user eeprom
      IAP_CONTR = ENABLE_IAP;
      IAP_CMD = CMD_READ;

      // ops_time_sec is zero through declaration
      do {
            unsigned long ee_time=0L;      // no need to initialize, all data shifted left
            for (i=0; i<4; i++) {
                  IAP_ADDRL = (ee_addr+i);
                  IAP_ADDRH = (ee_addr+i) >> 8;
                  IAP_TRIG = 0x5a;
                  IAP_TRIG = 0xa5;
                  __asm__ ("nop");              // Hold here until operation conplete
                  *(((uchar *)(&ee_time))+i) = IAP_DATA;
            }
            if (ee_time == 0xffffffff)  {       // Current address has an empty record
                  IAP_CONTR = 0;
                  IAP_CMD = 0;
                  IAP_TRIG = 0;
                  break;
            } else {
                  ee_addr += 4;
                  ops_time_sec = ee_time;
            }
      } while (1);
      // Enable time counter once initialized from eeprom
      ET0 = 1;                // Interrupt enable
}

// send a byte via uart (returns -1 if TX buffer full, otherwise 0 on success) [non blocking]
int send_uart(uchar dat)
{
#ifdef RB
      EA = 0;
      if (tx_act > 254) {
            EA = 1;
            return 1;
      }
      else {
            tx_act++;
            tx[tx_ptr_w++] = dat;
            if (TI == 0) TI = 1;    // probably may not raise an interrupt here.
            EA = 1;
            return 0;
      }
#else
      while (serial_busy) __asm__ ("nop");
      serial_busy = 1;
      SBUF = dat;
      return 0;
#endif
}

///////////////////////////////////////////////////////////
//  send a string via uart [is blocking]
void send_str(char* s)
{
      while (*s) while (send_uart(*s++) != 0) __asm__("nop");
}

///////////////////////////////////////////////////////////
// send a byte via uart [is blocking]
void send_serial(uchar dat) 
{
      while (send_uart(dat) != 0) __asm__("nop");
}

void send_hex(uchar dat)
{
      uchar nibble;

      nibble = (dat >> 4) & 0xf;            // high nibble
      if (nibble < 10)
            nibble += 0x30;
      else
            nibble += 0x61-10;
      send_serial(nibble);

      nibble = dat & 0xf;           // low nibble
      if (nibble < 10)
            nibble += 0x30;
      else
            nibble += 0x61-10;
      send_serial(nibble);
}

void storetime()
{
      uchar i;
      long st;

      ET0 = 0;                      // Atomic
      st = ops_time_sec;
      ET0 = 1;

      IAP_CONTR = ENABLE_IAP;
      IAP_CMD = CMD_PROGRAM;
      for (i=0; i<4; i++) {
            IAP_ADDRL = ee_addr;
            IAP_ADDRH = ee_addr >> 8;
            IAP_DATA = ((uchar *)(&st))[i];
            IAP_TRIG = 0x5a;
            IAP_TRIG = 0xa5;
            __asm__ ("nop");              // Hold here until operation conplete
            ee_addr++;
      }
      IAP_CONTR = 0;
      IAP_CMD = 0;
      IAP_TRIG = 0;
}

void erase_sector(uchar sector)
{
      int addr;

      addr = sector*512;
      IAP_CONTR = ENABLE_IAP;
      IAP_CMD = CMD_ERASE;
      IAP_ADDRL = addr;
      IAP_ADDRH = addr >> 8;
      IAP_TRIG = 0x5a;
      IAP_TRIG = 0xa5;
      __asm__ ("nop");                    // Hold here until operation conplete
      IAP_CONTR = 0;
      IAP_CMD = 0;
      IAP_TRIG = 0;
}

uchar is_erased_sector(uchar sector)
{
      int i, addr;

      IAP_CONTR = ENABLE_IAP;
      IAP_CMD = CMD_READ;

      addr = sector*512;
      for (i=addr; i<addr+512; i++) {
            IAP_ADDRL = i;
            IAP_ADDRH = i >> 8;
            IAP_TRIG = 0x5a;
            IAP_TRIG = 0xa5;
            __asm__ ("nop");              // Hold here until operation conplete
            if (IAP_DATA != 0xff) {
                  IAP_CONTR = 0;
                  IAP_CMD = 0;
                  IAP_TRIG = 0;
                  return 0;
            }
      }
      IAP_CONTR = 0;
      IAP_CMD = 0;
      IAP_TRIG = 0;
      return 1;
}

void send_sector_status()
{
      uchar i;

      send_str("\015\012Sector status:\015\012\033[1;96m");
      for (i=0; i<4; i++) {
            send_uart('0'+i);
            send_str(is_erased_sector(i) ? " clear\015\012" : " data\015\012");
      }
      send_str("\033[0m");
}

void delay5us(void)   // -0.026765046296us STC 1T 22.1184Mhz
{
      uchar a, b;
      
      for (b=7; b>0; b--) for (a=2; a>0; a--);
}

void delay(uint i)
{                                                                                                     
      while (i--) delay5us(); //12t mcu
}

/*To judge the num bit*/
uchar judgebit(uchar num, uchar b)
{
      num = num & (1<<b);      
      return num ? 1 : 0;
}

/*To figure out the round number*/

uchar abs(uchar a)
{
      uchar b;

      b=a/10;
      a=a-b*10;

      if (a >= 5) b++;

      return b;
}

/*To figure out the absolute value*/
uchar abss(char a)
{
      if (a < 0) a=-a;
      return a;
}

/*The function can comparat the character.
And remove the big one to the back.*/
void max(uchar *a, uchar *b)
{
      uchar t;

      if ((*a) > (*b)) {
            t = (*a);
            (*a) = (*b);
            (*b) = t;   
      }
}

/*The function is to figure out the max number and return it.*/
uchar maxt(uchar a, uchar b, uchar c)
{
      if (a < b) a = b;
      if (a < c) a = c;

      return a;
}

void clear(char le)
{
      uchar i, j;

      for (j=0; j<8; j++) for (i=0; i<8; i++) display[j&0x7][i&0x7] = le;
}

void trailler(uint speed)
{
      char i, j;

      for (i=6; i>=-3; i--) {
            if (i >= 0) {
                  for (j=0;j<8;j++) display[j&0x7][i&0x7] = display[j&0x7][(i+1)&0x7];
            }

            if (i<4) for (j=0;j<8;j++) display[j&0x7][(i+4)&0x7]=0;

            delay(speed);

      }
}

void point(uchar x, uchar y, uchar z, uchar le)
{
      uchar ch1,ch0;

      ch1 = 1<<x;
      ch0=~ch1;

      if (le) 
            display[z&0x7][y&0x7] = display[z&0x7][y&0x7] | ch1;
      else 
            display[z&0x7][y&0x7] = display[z&0x7][y&0x7] & ch0;
}

void type(uchar cha, uchar y)
{        

      uchar xx;

      for (xx=0; xx<8; xx++) display[xx&0x7][y&0x7] = table_cha[cha][xx];
}

void type_number(uchar cha, uchar y)
{
      uchar xx;

      //cha %= 10;  // prevent index out of bounds
      cha &= 0xf;  // prevent index out of bounds
      for (xx=0; xx<8; xx++) display[xx&0x7][y&0x7] = table_hex_number[cha][xx];
}

/*The first variable is the distance from the midpoint.
The second is the layer.
the third is the flash speed of the time between each two point.
The forth is the enable io,it controls weather draw or claen.*/
void cirp(uchar cpp, uchar dir, uchar le)
{
      uchar a, b, c, cp;

      if ((cpp<128) && (cpp>=0)) {
            if (dir)
                  cp=127-cpp;
            else 
                  cp=cpp; 

            a = (dat[cp]>>5)&0x07;
            b = (dat[cp]>>2)&0x07;
            c = dat[cp]&0x03;

            if (cpp>63) c=7-c;

            point (a,b,c,le);

      }

}

void line(uchar x1, uchar y1, uchar z1, uchar x2, uchar y2, uchar z2, uchar le)
{
      char t, a, b, c, a1, b1, c1, i;

      a1 = x2-x1;
      b1=y2-y1;
      c1=z2-z1;
      t=maxt(abss(a1),abss(b1),abss(c1));
      a=x1*10;
      b=y1*10;
      c=z1*10;
      a1=a1*10/t;
      b1=b1*10/t;
      c1=c1*10/t;

      for (i=0;i<t;i++) {
            point(abs(a),abs(b),abs(c),le);
            a += a1;
            b += b1;
            c += c1;
      }

      point(x2,y2,z2,le);
}

void box(uchar x1, uchar y1, uchar z1, uchar x2, uchar y2, uchar z2, uchar fill, uchar le)
{
      uchar i, j, t=0;

      max(&x1, &x2);
      max(&y1, &y2);
      max(&z1, &z2);

      for (i=x1; i<=x2; i++) t |= 1<<i;
      if (!le) t = ~t;
      if (fill) {
            if (le) {
                  for (i=z1;i<=z2;i++)
                        for (j=y1;j<=y2;j++) display[j&0x7][i&0x7] |= t;
            } else {
                  for (i=z1;i<=z2;i++)
                        for (j=y1;j<=y2;j++) display[j&0x7][i&0x7] &= t;
            }
      } else {
            if (le) {
                  display[y1&0x7][z1&0x7] |= t;
                  display[y2&0x7][z1&0x7] |= t;
                  display[y1&0x7][z2&0x7] |= t;
                  display[y2&0x7][z2&0x7] |= t;
            } else {
                  display[y1&0x7][z1&0x7] &= t;
                  display[y2&0x7][z1&0x7] &= t;
                  display[y1&0x7][z2&0x7] &= t;
                  display[y2&0x7][z2&0x7] &= t;
            }
            t=(0x01<<x1)|(0x01<<x2);
            if (!le) t = ~t;
            if (le) {
                  for (j=z1;j<=z2;j+=(z2-z1)) {
                        for (i=y1;i<=y2;i++) display[i&0x7][j&0x7] |= t;
                  }
                  for (j=y1;j<=y2;j+=(y2-y1)) {
                        for (i=z1;i<=z2;i++) display[j&0x7][i&0x7] |= t;
                  }
            } else {
                  for (j=z1;j<=z2;j+=(z2-z1)) {
                        for (i=y1;i<=y2;i++) display[i&0x7][j&0x7] &= t;
                  }
                  for (j=y1;j<=y2;j+=(y2-y1)) {
                        for (i=z1;i<=z2;i++) display[j&0x7][i&0x7] &= t;
                  }
            }
      }
}

void box_apeak_xy(uchar x1, uchar y1, uchar z1, uchar x2, uchar y2, uchar z2, uchar fill, uchar le)
{
      uchar i;

       max(&z1, &z2);
       if (fill) {
            for (i=z1;i<=z2;i++) line (x1, y1, i, x2, y2, i, le);
      }  else {
            line (x1,y1,z1,x2,y2,z1,le);
            line (x1,y1,z2,x2,y2,z2,le);
            line (x2,y2,z1,x2,y2,z2,le);
            line (x1,y1,z1,x1,y1,z2,le);
      }
}

void poke(uchar n, uchar x, uchar y)
{
         uchar i;

         for (i=0; i<8; i++) point(x, y, i, judgebit(n,i));
}

void boxtola(char i,uchar n)
{
      if ((i>=0)&(i<8)) poke(n,0,7-i);
      if ((i>=8)&(i<16)) poke(n,i-8,0);
      if ((i>=16)&(i<24)) poke(n,7,i-16);
}

void rolldisplay(uint speed)
{
      uchar j;
      char i, a;

      for (i=23;i>-40;i--) {
            for (j=0;j<40;j++) {
                  a=i+j;
                  if ((a>=0) && (a<24)) boxtola(a, table_id[j]);
            }

            delay(speed);
      }
}

void roll_apeak_yz(uchar n,uint speed)
{
      uchar i;

      switch(n) {
            case 1:
                  for (i=0;i<7;i++) {
                        display[i&0x7][7&0x7] = 0;
                        display[7&0x7][(6-i)&0x7] = 255;
                        delay(speed);
                  }
                  break;
            case 2:
                  for (i=0;i<7;i++) {
                        display[7&0x7][(7-i)&0x7] = 0;
                        display[(6-i)&0x7][0&0x7] = 255;
                        delay(speed);
                  }
                  break;
            case 3:
                  for (i=0;i<7;i++) {
                        display[(7-i)&0x7][0&0x7] = 0;
                        display[0&0x7][(i+1)&0x7] = 255;
                        delay(speed);
                  }
                  break;
            case 0:
                  for (i=0;i<7;i++) {
                        display[0&0x7][i&0x7] = 0;
                        display[(i+1)&0x7][7&0x7] = 255;
                        delay(speed);
                  }
                  break;
            default:
                  break;
      }
}

void roll_apeak_xy(uchar n,uint speed)
{
      uchar i;

      switch(n) {
            case 1:
                  for (i=0;i<7;i++) {
                        line(0,i,0,0,i,7,0);
                        line(i+1,7,0,i+1,7,7,1);
                        delay(speed);
                  }
                  break;
            case 2:
                  for (i=0;i<7;i++) {
                        line(i,7,0,i,7,7,0);
                        line(7,6-i,0,7,6-i,7,1);
                        delay(speed);
                  }
                  break;
            case 3:
                  for (i=0;i<7;i++) {
                        line(7,7-i,0,7,7-i,7,0);
                        line(6-i,0,0,6-i,0,7,1);
                        delay(speed);
                  }
                  break;
            case 0:
                  for (i=0;i<7;i++) {
                        line(7-i,0,0,7-i,0,7,0);
                        line(0,i+1,0,0,i+1,7,1);
                        delay(speed);
                  }
                  break;
            default:
                  break;
      }
}

void roll_3_xy(uchar n,uint speed)
{
      uchar i;

         switch(n) {
            case 1:
                  for (i=0;i<8;i++) {
                        box_apeak_xy (0,i,0,7,7-i,7,1,1);
                        delay(speed);
                        if (i<7) box_apeak_xy (3,3,0,0,i,7,1,0);
                  }
                  break;
            case 2:
                  for (i=0;i<8;i++) {
                        box_apeak_xy (7-i,0,0,i,7,7,1,1);
                        delay(speed);
                        if (i<7) box_apeak_xy (3,4,0,i,7,7,1,0);
                  }
                  break;
            case 3:
                  for (i=0;i<8;i++) {
                        box_apeak_xy (0,i,0,7,7-i,7,1,1);
                        delay(speed);
                        if (i<7) box_apeak_xy (4,4,0,7,7-i,7,1,0);
                  }
                  break;
            case 0:
                  for (i=0;i<8;i++) {
                        box_apeak_xy (7-i,0,0,i,7,7,1,1);
                        delay(speed);
                        if (i<7) box_apeak_xy (4,3,0,7-i,0,7,1,0);
                  }
                  break;
            default:
                  break;
         }
}

void trans(uchar z, uint speed)
{
      uchar i, j;

      for (j=0; j<8; j++) {
            for (i=0;i<8;i++)
                  display[z&0x7][i&0x7] >>= 1;
            delay(speed);
      }
}

void tranoutchar(uchar c, uint speed)
{
      uchar i, j, k, a, i2=0;

      for (i=0; i<8; i++) {
            if (i<7) box_apeak_xy (i+1,0,0,i+1,7,7,1,1);
            box_apeak_xy (i2,0,0,i2,7,7,1,0);
            a=0;
            i2=i+1;
            for (j=0; j <= i; j++)
                  a |= (1<<j);
            for (k=0;k<8;k++) {
                  display[k&0x7][3&0x7] |= table_cha[c][k]&a;
                  display[k&0x7][4&0x7] |= table_cha[c][k]&a;
            }
            delay(speed);
      }
}

void transss()
{
      uchar i,j;

      for (i=0;i<8;i++) 
            for (j=0;j<8;j++) display[i&0x7][j&0x7] <<= 1;
}

// eeprom dumper
void flash_e(uchar on_cube)
{
      int i;

      IAP_CONTR = ENABLE_IAP;
      IAP_CMD = CMD_READ;

      send_str("\015\012\033[1;31mEEPROM:\033[1;92m");

      for (i=(1024-1); i>=0; i--) {
            if ((i+1)%(8*4) == 0)
                  send_str("\015\012");
            else if ((i+1)%4 == 0)
                  send_serial(' ');
            IAP_ADDRL = i;
            IAP_ADDRH = i >> 8;
            IAP_TRIG = 0x5a;
            IAP_TRIG = 0xa5;
            __asm__ ("nop");        // Hold here until operation conplete
            if (on_cube) {
                  type_number(IAP_DATA, 7);
                  type_number(IAP_DATA>>4, 5);
                  type_number(i, 0);
                  type_number(i>>4, 2);
                  delay(60000);
                  clear(0);
                  delay(10000);
            }
            send_hex(IAP_DATA);
      }
      IAP_CONTR = 0;
      IAP_CMD = 0;
      IAP_TRIG = 0;
      send_str("\033[0m ");
}

// eeprom address dump
void flash_a(uchar on_cube)
{
      short i;

      send_str("\015\012Address: ");

      send_hex(((uchar *)(&ee_addr))[1]);
      send_hex(((uchar *)(&ee_addr))[0]);
      if (on_cube) {
            for (i=0; i<3*4; i+=4) {      // addr should range 2048, which is 3 nibbles
                  type_number(ee_addr >> i, 0);
                  delay(60000);
                  clear(0);
                  delay(10000);
            }
            delay(50000);
      }
}

// ops timer snapshot dump
void flash_o(uchar on_cube)
{
      short i;
      long disp;

      ET0 = 0;                      // Atomic, as updated asynchronously
      disp = ops_time_sec;          // snapshot, is under interrupt control
      ET0 = 1;

      send_str("\015\012Timer: ");
      for (i=3; i>=0; i--) send_hex(((uchar *)(&disp))[i]);

      if (on_cube) {
            for (i=0; i<8*4; i+=4) {      // long is 4 bytes, 8 nibbles
                  type_number(disp >> i, 0);
                  delay(60000);
                  clear(0);
                  delay(10000);      
            }
      }
}

// Just count, two vLayers
void flash_c()
{
      uchar i, j;

      clear(0);
      for (i=0; i<16; i++) {
            for (j=0; j<2; j++) {
                  type_number(i, j);
            }
            delay(60000);
      }
}

// Hex live display of timer
void flash_i()
{
      uchar i, j;
      long disp;

      ET0 = 0;                      // Atomic
      disp = ops_time_sec;
      ET0 = 1;

      clear(0);
      for (i=0; i<200; i++) {
            for (j=0; j<4; j++) type_number(disp, j);
            for (j=4; j<8; j++) type_number(disp >> 4, j);
            delay(10000);
      }
      clear(0);
}

/*From now on,the function below is to display the flash.*/
void flash_1()
{
      clear(0);
      type(1,0);
      delay(60000);
      type(2,0);
      delay(60000);
      type(3,0);
      delay(60000);
      type(4,0);
      delay(60000);
      delay(60000);
      clear(0);
      rolldisplay(30000);
      type(0,7);
      delay(60000);
      trailler(6000);
      delay(60000);
}

void flash_2()
{
      uchar i;

      for (i=129;i>0;i--) {
            cirp(i-2,0,1);
            delay(8000);
            cirp(i-1,0,0);
      }

      delay(8000);     

      for (i=0;i<136;i++) {
            cirp(i,1,1);
            delay(8000);
            cirp(i-8,1,0);
      }

      delay(8000);

      for (i=129;i>0;i--) {
            cirp(i-2,0,1);
            delay(8000);
      }

      delay(8000);

      for (i=0;i<128;i++) {
            cirp(i-8,1,0);
            delay(8000);
      }

      delay(60000);  
}

void flash_3()
{
      char i;

      for (i=0;i<8;i++) {
            box_apeak_xy(0,i,0,7,i,7,1,1);
            delay(20000);
            if (i<7) box_apeak_xy(0,i,0,7,i,7,1,0);
      }

      for (i=7; i>=0; i--) {
            box_apeak_xy(0,i,0,7,i,7,1,1);
            delay(20000);
            if (i>0) box_apeak_xy(0,i,0,7,i,7,1,0);
      }

      for (i=0; i<8; i++) {
            box_apeak_xy(0,i,0,7,i,7,1,1);
            delay(20000);
            if (i<7) box_apeak_xy(0,i,0,7,i,7,1,0);
      }
}

void flash_4()

{
      char i, j, an[8];

      for (j=7;j<15;j++) an[j-7]=j;

      for (i=0;i<=16;i++) {
            for (j=0;j<8;j++)
                  if ((an[j]<8) && (an[j]>=0)) line(0,an[j],j,7,an[j],j,1);
            for (j=0;j<8;j++) {
                  if (((an[j]+1)<8)&(an[j]>=0)) line(0,an[j]+1,j,7,an[j]+1,j,0);
            }

            for (j=0;j<8;j++) {
                  if (an[j]>0)
                  an[j]--;
            }
            delay(15000);
      }

      for (j=0;j<8;j++) an[j]=1-j;

      for (i=0;i<=16;i++) {
            for (j=0;j<8;j++) if ((an[j]<8)&(an[j]>=0)) line(0,an[j],j,7,an[j],j,1);
            for (j=0;j<8;j++) {
                  if (((an[j]-1)<7)&(an[j]>0))
                  line(0,an[j]-1,j,7,an[j]-1,j,0);
            }

            for (j=0;j<8;j++) {
                  if (an[j]<7) an[j]++;
            }
            delay(15000);
      }
}

void flash_5()
{
      uint a=15000;           //a=delay
      char i=8, j, an[4];

      //1
      for (j=7;j<11;j++) an[j-7]=j;
      while (i--) {
            for (j=0;j<4;j++) {
                  if (an[j]<8) box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
                  if (an[j]<7) box_apeak_xy(j,an[j]+1,j,7-j,an[j]+1,7-j,0,0);
            }
            for (j=0;j<4;j++)
                  if (an[j]>3) an[j]--;
            delay(a);
      }

      //2
      i=3;
      for (j=0;j<4;j++) an[j]=5-j;
      while (i--) {
            for (j=1;j<4;j++) {
                  if (an[j]<4) box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
                  if (an[j]<3) box_apeak_xy(j,an[j]+1,j,7-j,an[j]+1,7-j,0,0);
            }
            for (j=0;j<4;j++)
                  if (an[j]>0) an[j]--;
            delay(a);
      }

      //3
      i=3;
      for (j=1;j<4;j++) an[j]=4-j;
      while (i--) {
            for (j=1;j<4;j++) {
                  if (an[j]>=0) box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
                  if (an[j]>0) box_apeak_xy(j,an[j]-1,j,7-j,an[j]-1,7-j,0,0);
            }
            for (j=1;j<4;j++)
                  if (an[j]<3) an[j]++;
            delay(a);
      }

      //4
      i=3;
      for (j=0;j<4;j++) an[j]=j+1;
      while (i--) {
            for (j=1;j<4;j++) {
                  if (an[j]>3) box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
                  if (an[j]>3) box_apeak_xy(j,an[j]-1,j,7-j,an[j]-1,7-j,0,0);
            }
            for (j=0;j<4;j++) an[j]++;
            delay(a);
      }

      //5
      i=3;
      for (j=3;j<6;j++) an[j-2]=j;
      while (i--) {
            for (j=1;j<4;j++) {
                  box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
                  box_apeak_xy(j,an[j]+1,j,7-j,an[j]+1,7-j,0,0);
            }
            for (j=0;j<4;j++)
                  if (an[j]>3) an[j]--;
            delay(a);
      }

      //6
      i=3;
      for (j=0;j<4;j++) an[j]=5-j;
      while (i--) {
            for (j=1;j<4;j++) {
                  if (an[j]<4) box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
                  if (an[j]<3) box_apeak_xy(j,an[j]+1,j,7-j,an[j]+1,7-j,0,0);
            }
            for (j=0;j<4;j++)
                  if (an[j]>0) an[j]--;
            delay(a);
      }

      //7
      i=3;
      for (j=0;j<4;j++) an[j]=3-j;
      an[0]=2;
      while (i--) {
            for (j=0;j<3;j++) {
                  if (an[j]>=0) box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
                  if (an[j]>=0) box_apeak_xy(j,an[j]+1,j,7-j,an[j]+1,7-j,0,0);
            }
            for (j=0;j<4;j++)
                  if (j<5-i) an[j]--;
            delay(a);
      }

      //8
      i=10;
      for (j=0;j<4;j++) an[j]=j-2;
      while (i--) {
            for (j=0;j<4;j++) {
                  if (an[j]>=0) box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
                  if (an[j]>=0) box_apeak_xy(j,an[j]-1,j,7-j,an[j]-1,7-j,0,0);
            }
            for (j=0;j<4;j++)
                  if (an[j]<7) an[j]++;
            delay(a);
      }
}

void flash_6()
{
      uchar i,j,k,z;

      roll_apeak_yz(1,10000);
      roll_apeak_yz(2,10000);
      roll_apeak_yz(3,10000);
      roll_apeak_yz(0,10000);
      roll_apeak_yz(1,10000);
      roll_apeak_yz(2,10000);
      roll_apeak_yz(3,10000);

      for (i=0;i<3;i++) {
            for (j=0;j<8;j++) {
                  for (k=0;k<8;k++) {
                        if ((table_3p[i][j]>>k)&1) {
                              for (z=1;z<8;z++) {
                                    point (j,7-k,z,1);
                                    if (z-1) point (j,7-k,z-1,0);
                                    delay(5000);
                              }
                        }
                  }
            }
            trans(7,15000);
      }
}

void flash_7()
{
      uchar i;
      uint a=3000;

      roll_apeak_yz(0,10000);
      roll_apeak_yz(1,10000);
      roll_apeak_yz(2,10000);
      roll_apeak_yz(3,10000);
      roll_apeak_yz(0,10000);
      roll_apeak_yz(1,10000);
      roll_apeak_yz(2,10000);
      roll_apeak_yz(3,10000);
      roll_apeak_yz(0,10000);
      roll_apeak_yz(1,10000);
      roll_apeak_yz(2,10000);
      roll_apeak_xy(0,10000);
      roll_apeak_xy(1,10000);
      roll_apeak_xy(2,10000);
      roll_apeak_xy(3,10000);
      roll_apeak_xy(0,10000);
      roll_apeak_xy(1,10000);
      roll_apeak_xy(2,10000);
      roll_apeak_xy(3,10000);

      for (i=0;i<8;i++) {
            box_apeak_xy (0,i,0,7-i,i,7,1,1);
            delay(a);
      }

      delay(30000);
      roll_3_xy(0,a);
      delay(30000);
      roll_3_xy(1,a);
      delay(30000);
      roll_3_xy(2,a);
      delay(30000);
      roll_3_xy(3,a);
      delay(30000);
      roll_3_xy(0,a);
      delay(30000);
      roll_3_xy(1,a);
      delay(30000);
      roll_3_xy(2,a);
      delay(30000);
      roll_3_xy(3,a);
      for (i=7;i>0;i--) {
            box_apeak_xy(i,0,0,i,7,7,1,0);
            delay(a);
      }
}

void flash_8()
{
      uchar i;

      for (i=5;i<8;i++) {
            tranoutchar(i,10000);
            delay(60000);
            delay(60000);
      }
}

void flash_9()
{
      char i;
      uchar j,an[8],x,y,t,x1,y1;

      for (i=0;i<8;i++) {
            box_apeak_xy (i,0,0,i,7,7,1,1);
            if (i) box_apeak_xy (i-1,0,0,i-1,7,7,1,0);
            delay(10000);
      }

      roll_apeak_xy(3,10000);
      roll_apeak_xy(0,10000);
      roll_apeak_xy(1,10000);

      for (i=0;i<7;i++) {
            line(6-i,6-i,0,6-i,6-i,7,1);
            line(i,7,0,i,7,7,0);
            delay(10000);
      }

      for (i=0;i<8;i++) an[i]=14;

      for (i=0;i<85;i++) {
            clear(0);
            for (j=0;j<8;j++) {
                  t=an[j]%28;
                  x=dat2[t]>>5;
                  y=(dat2[t]>>2)&0x07;
                  t=(an[j]-14)%28;
                  x1=dat2[t]>>5;
                  y1=(dat2[t]>>2)&0x07;
                  line(x,y,j,x1,y1,j,1);
            }
            for (j=0;j<8;j++) {
                  if ((i>j)&(j>i-71))
                  an[j]++;
            } 
            delay(5000);
      }

      for (i=0;i<85;i++) {
            clear(0);
            for (j=0;j<8;j++) {
                  t=an[j]%28;
                  x=dat2[t]>>5;
                  y=(dat2[t]>>2)&0x07;
                  t=(an[j]-14)%28;
                  x1=dat2[t]>>5;
                  y1=(dat2[t]>>2)&0x07;
                  line(x,y,j,x1,y1,j,1);
            }
            for (j=0;j<8;j++) {
                  if ((i>j)&(j>i-71))
                  an[j]--;
            } 
            delay(5000);
      }

      for (i=0;i<29;i++) {
            clear(0);

            t=an[0]%28;
            x=dat2[t]>>5;
            y=(dat2[t]>>2)&0x07;
            t=(an[0]-14)%28;
            x1=dat2[t]>>5;
            y1=(dat2[t]>>2)&0x07;
            box_apeak_xy(x,y,0,x1,y1,7,0,1);
            box_apeak_xy(x,y,1,x1,y1,6,0,1);
            an[0]++; 
            delay(5000);
      }

      for (i=0;i<16;i++) {
            clear(0);

            t=an[0]%28;
            x=dat2[t]>>5;
            y=(dat2[t]>>2)&0x07;
            t=(an[0]-14)%28;
            x1=dat2[t]>>5;
            y1=(dat2[t]>>2)&0x07;
            box_apeak_xy(x,y,0,x1,y1,7,1,1);
            an[0]--; 
            delay(5000);
      }

      for (i=0;i<8;i++) {
            line(i,i,0,0,0,i,0);
            delay(5000);
      }

      for (i=1;i<7;i++) {
            line(i,i,7,7,7,i,0);
            delay(5000);
      }

      for (i=1;i<8;i++) {
            clear(0);
            box(7,7,7,7-i,7-i,7-i,0,1);
            delay(10000);
      }

      for (i=1;i<7;i++) {
            clear(0);
            box(0,0,0,7-i,7-i,7-i,0,1);
            delay(10000);
      }

      for (i=1;i<8;i++) {
            clear(0);
            box(0,0,0,i,i,i,0,1);
            delay(10000);
      }

      for (i=1;i<7;i++) {
            clear(0);
            box(7,0,0,i,7-i,7-i,0,1);
            delay(10000);
      }

      for (i=1;i<8;i++) {
            box(7,0,0,7-i,i,i,1,1);
            delay(10000);
      }

      for (i=1;i<7;i++) {
            clear(0);
            box(0,7,7,7-i,i,i,1,1);
            delay(10000);
      }
}

void flash_10()
{
      uchar i,j,an[4],x,y,t;

      for (i=1;i<7;i++) {
            clear(0);
            box(0,6,6,1,7,7,1,1);
            box(i,6,6-i,i+1,7,7-i,1,1);
            box(i,6,6,i+1,7,7,1,1);
            box(0,6,6-i,1,7,7-i,1,1);
            box(0,6-i,6,1,7-i,7,1,1);
            box(i,6-i,6-i,i+1,7-i,7-i,1,1);
            box(i,6-i,6,i+1,7-i,7,1,1);
            box(0,6-i,6-i,1,7-i,7-i,1,1);
            delay(30000);
      }

      for (i=0;i<4;i++) an[i]=6*i;

      for (i=0;i<35;i++) {
            clear(0);
            for(j=0;j<4;j++) {
                  t=an[j]%24;
                  x=dat3[t]>>4;
                  y=dat3[t]&0x0f;
                  box(x,y,0,x+1,y+1,1,1,1);
                  box(x,y,6,x+1,y+1,7,1,1);
            }
            for (j=0;j<4;j++) an[j]++; 
            delay(10000);
      }

      for (i=0;i<35;i++) {
            clear(0);
            for(j=0;j<4;j++) {
                  t=an[j]%24;
                  x=dat3[t]>>4;
                  y=dat3[t]&0x0f;
                  box(x,y,0,x+1,y+1,1,1,1);
                  box(x,y,6,x+1,y+1,7,1,1);
            }

            for (j=0;j<4;j++) an[j]--; 
            delay(10000);
      }

      for (i=0;i<35;i++)
      {
            clear(0);
            for(j=0;j<4;j++) {
                  t=an[j]%24;
                  x=dat3[t]>>4;
                  y=dat3[t]&0x0f;
                  box(x,0,y,x+1,1,y+1,1,1);
                  box(x,6,y,x+1,7,y+1,1,1);
            }
            for (j=0;j<4;j++) an[j]++; 
            delay(10000);
      }

      for (i=0;i<36;i++) {
            clear(0);
            for(j=0;j<4;j++) {
                  t=an[j]%24;
                  x=dat3[t]>>4;
                  y=dat3[t]&0x0f;
                  box(x,0,y,x+1,1,y+1,1,1);
                  box(x,6,y,x+1,7,y+1,1,1);
            }
            for (j=0;j<4;j++) an[j]--; 
            delay(10000);
      }

      for (i=6;i>0;i--) {
            clear(0);
            box(0,6,6,1,7,7,1,1);
            box(i,6,6-i,i+1,7,7-i,1,1);
            box(i,6,6,i+1,7,7,1,1);
            box(0,6,6-i,1,7,7-i,1,1);
            box(0,6-i,6,1,7-i,7,1,1);
            box(i,6-i,6-i,i+1,7-i,7-i,1,1);
            box(i,6-i,6,i+1,7-i,7,1,1);
            box(0,6-i,6-i,1,7-i,7-i,1,1);
            delay(30000);
      }
}

void flash_11()
{

      uchar i, j, t, x, y;
      __code uchar daa[13]={0,1,2,0x23,5,6,7,6,5,0x23,2,1,0};

      for (j=0; j<5; j++) {
            for (i=0; i<13; i++) {
                  if (daa[i]>>4) {
                        t=daa[i]&0x0f;
                        line (0,0,t+1,0,7,t+1,1);
                  } else 
                        t=daa[i];

                  line (0,0,t,0,7,t,1);
                  transss();
                  delay(10000);
            }
      }

      for (j=1; j<8; j++) {
            // t = (j>3) ? 4 : j; // t never used below

            for (i=0; i<24; i+=j) {
                  x=dat3[i]>>4;
                  y=dat3[i]&0x0f;
                  box_apeak_xy(0, x, y, 0, x+1, y+1, 1, 1);
                  transss();
                  delay(10000);
            }
      }

      for (j=1;j<8;j++)
      {
            // t =  (j>3) ? 4 : j; // t never used below

            for (i=0; i<24; i+=j) {
                  x=dat3[i]>>4;
                  y=dat3[i]&0x0f;
                  point (0,x,y,1);
                  transss();
                  delay(10000);
            }
      }

}

void main()
{
      sinter();

	while (1) {
            // clear(0);
            /*play list*/
            //flash_1();

            clear(0);
            send_str("\015\012Hello Mario\015\012");
            send_sector_status();
            //flash_n();      // Counter
            //flash_i();      // Interrupt live time display
            flash_e(0);        // eeprom dumper
            flash_a(0);        // eeprom address display
            flash_o(0);        // Display snapshot of operating time
            if (ops_time_write) {   // Interrupt routing says we have to update ops time in eeprom
                  send_str("\015\012\033[1;31mEEPROM update\033[0m");
                  ops_time_write = 0;
                  storetime();
            }
            flash_2();
#define NORMAL_CYCLE
#ifdef NORMAL_CYCLE      // For debugging timer
            flash_3();
            flash_4();
            flash_4();
            flash_5();
            flash_5();
            flash_6();
            flash_7();
            flash_8();
            flash_9();
            flash_10();
            clear (0);
            flash_11();
            flash_9();
            flash_5();
            flash_7();
            flash_5();
            flash_6();
            flash_8();
            flash_9();
            flash_10();
#endif
      }
}

//P0;   //573 in
//P1;  //uln2803
//P2;  //573 LE
void print() __interrupt (3)
{
      uchar i;
      static uchar layer=0;

      P1=0;
      for (i=0; i<8; i++) {
            P2=1<<i;
            delay(3);
            P0=display[layer&0x7][i&0x7];
            delay(3);
      }

      P1=1<<layer;
      if (layer<7) 
            layer++;
      else 
            layer=0;

      T1INIT;
}

// Operating hours counter
// 13 bit mode: 1m/8192 -> 8,192ms/122Hz
// 9,8304 sec 1200 ticks

// 16 bit mode: 1m/65536 -> 65,536ms/15.25Hz
// 78,6432ms 1200 ticks

// 65,536 - 50,000 = 15,536 -> 50ms/20Hz
// 1 sec 20 ticks
// 1 min 1200 ticks
// 10 min 12000 tick

// 8192 - 5000 = 5ms/200Hz
// 1 sec 200 ticks
void ops_time() __interrupt (1)
{
      static int ticks=0, seconds=0;     // 2 Bytes
      static uchar layer=1;

      T0INIT;
      ticks++; 
      if (ticks >= 20) {      // One second
            ticks = 0;
            ops_time_sec++;
            seconds++;
            if (seconds > 600) {
                  ops_time_write = 1;
                  seconds = 0;
            }
      }
}

///////////////////////////////////////////////////////////
// interrupt driven uart with ring buffer
void uart_isr() __interrupt (4)
{
      uchar ignore;

      EA = 0;

      if (RI) { // received a byte
            RI = 0; // Clear receive interrupt flag
            ignore = SBUF;
            /* Ignore incoming 
            if (!(rx_write == rx_read && rx_in > 0)) {
                  rx_buffer[rx_write] = SBUF;
                  rx_write = (rx_write+1)%MAX_BUFFER;
                  rx_in++;
            } */
      } else if (TI) { // byte was sent
#ifdef RB
            TI = 0; // Clear transmit interrupt flag

            if (tx_act > 0) {
                  SBUF = tx[tx_ptr_r++];    // SBUF operation triggers shift out
                  tx_act--;
            }
#else
            TI = 0;
            serial_busy = 0;
#endif
      }

      EA = 1;
}
