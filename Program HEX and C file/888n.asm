;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module 888n
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _type_PARM_2
	.globl _point_PARM_4
	.globl _point_PARM_3
	.globl _point_PARM_2
	.globl _maxt_PARM_3
	.globl _maxt_PARM_2
	.globl _max_PARM_2
	.globl _judgebit_PARM_2
	.globl _flash_11_daa_1_164
	.globl _table_3p
	.globl _dat3
	.globl _dat2
	.globl _dat
	.globl _table_id
	.globl _table_cha
	.globl _print
	.globl _main
	.globl _flash_11
	.globl _flash_10
	.globl _flash_9
	.globl _flash_8
	.globl _flash_7
	.globl _flash_6
	.globl _flash_5
	.globl _flash_4
	.globl _flash_3
	.globl _flash_2
	.globl _flash_1
	.globl _transss
	.globl _tranoutchar
	.globl _trans
	.globl _roll_3_xy
	.globl _roll_apeak_xy
	.globl _roll_apeak_yz
	.globl _rolldisplay
	.globl _boxtola
	.globl _poke
	.globl _box_apeak_xy
	.globl _box
	.globl _line
	.globl _cirp
	.globl _type
	.globl _point
	.globl _trailler
	.globl _clear
	.globl _maxt
	.globl _max
	.globl _abss
	.globl _abs
	.globl _judgebit
	.globl _delay
	.globl _delay5us
	.globl _sinter
	.globl _CCF0
	.globl _CCF1
	.globl _CR
	.globl _CF
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PADC
	.globl _PLVD
	.globl _PPCA
	.globl _EADC
	.globl _ELVD
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _IAP_CONTR
	.globl _IAP_TRIG
	.globl _IAP_CMD
	.globl _IAP_ADDRL
	.globl _IAP_ADDRH
	.globl _IAP_DATA
	.globl _SPDAT
	.globl _SPSTAT
	.globl _SPCTL
	.globl _ADC_RESL
	.globl _ADC_RES
	.globl _ADC_CONTR
	.globl _P1ASF
	.globl _PCA_PWM1
	.globl _PCA_PWM0
	.globl _CCAP1H
	.globl _CCAP1L
	.globl _CCAP0H
	.globl _CCAP0L
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CH
	.globl _CL
	.globl _CMOD
	.globl _CCON
	.globl _WDT_CONTR
	.globl _BRT
	.globl _S2BUF
	.globl _S2CON
	.globl _SADDR
	.globl _SADEN
	.globl _P5M1
	.globl _P5M0
	.globl _P4SW
	.globl _P4M1
	.globl _P4M0
	.globl _P3M1
	.globl _P3M0
	.globl _P2M1
	.globl _P2M0
	.globl _P1M1
	.globl _P1M0
	.globl _P0M1
	.globl _P0M0
	.globl _P5
	.globl _P4
	.globl _IP2H
	.globl _IP2
	.globl _IPH
	.globl _IE2
	.globl _BUS_SPEED
	.globl _CLK_DIV
	.globl _WAKE_CLKO
	.globl _AUXR1
	.globl _AUXR
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _display
	.globl _tranoutchar_PARM_2
	.globl _trans_PARM_2
	.globl _roll_3_xy_PARM_2
	.globl _roll_apeak_xy_PARM_2
	.globl _roll_apeak_yz_PARM_2
	.globl _boxtola_PARM_2
	.globl _poke_PARM_3
	.globl _poke_PARM_2
	.globl _box_apeak_xy_PARM_8
	.globl _box_apeak_xy_PARM_7
	.globl _box_apeak_xy_PARM_6
	.globl _box_apeak_xy_PARM_5
	.globl _box_apeak_xy_PARM_4
	.globl _box_apeak_xy_PARM_3
	.globl _box_apeak_xy_PARM_2
	.globl _box_PARM_8
	.globl _box_PARM_7
	.globl _box_PARM_6
	.globl _box_PARM_5
	.globl _box_PARM_4
	.globl _box_PARM_3
	.globl _box_PARM_2
	.globl _line_PARM_7
	.globl _line_PARM_6
	.globl _line_PARM_5
	.globl _line_PARM_4
	.globl _line_PARM_3
	.globl _line_PARM_2
	.globl _cirp_PARM_3
	.globl _cirp_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_WAKE_CLKO	=	0x008f
_CLK_DIV	=	0x0097
_BUS_SPEED	=	0x00a1
_IE2	=	0x00af
_IPH	=	0x00b7
_IP2	=	0x00b5
_IP2H	=	0x00b6
_P4	=	0x00c0
_P5	=	0x00c8
_P0M0	=	0x0094
_P0M1	=	0x0093
_P1M0	=	0x0092
_P1M1	=	0x0091
_P2M0	=	0x0096
_P2M1	=	0x0095
_P3M0	=	0x00b2
_P3M1	=	0x00b1
_P4M0	=	0x00b4
_P4M1	=	0x00b3
_P4SW	=	0x00bb
_P5M0	=	0x00ca
_P5M1	=	0x00c9
_SADEN	=	0x00b9
_SADDR	=	0x00a9
_S2CON	=	0x009a
_S2BUF	=	0x009b
_BRT	=	0x009c
_WDT_CONTR	=	0x00c1
_CCON	=	0x00d8
_CMOD	=	0x00d9
_CL	=	0x00e9
_CH	=	0x00f9
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAP0L	=	0x00ea
_CCAP0H	=	0x00fa
_CCAP1L	=	0x00eb
_CCAP1H	=	0x00fb
_PCA_PWM0	=	0x00f2
_PCA_PWM1	=	0x00f3
_P1ASF	=	0x009d
_ADC_CONTR	=	0x00bc
_ADC_RES	=	0x00bd
_ADC_RESL	=	0x00be
_SPCTL	=	0x00ce
_SPSTAT	=	0x00cd
_SPDAT	=	0x00cf
_IAP_DATA	=	0x00c2
_IAP_ADDRH	=	0x00c3
_IAP_ADDRL	=	0x00c4
_IAP_CMD	=	0x00c5
_IAP_TRIG	=	0x00c6
_IAP_CONTR	=	0x00c7
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ELVD	=	0x00ae
_EADC	=	0x00ad
_PPCA	=	0x00bf
_PLVD	=	0x00be
_PADC	=	0x00bd
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00c8
_P5_1	=	0x00c9
_P5_2	=	0x00ca
_P5_3	=	0x00cb
_CF	=	0x00df
_CR	=	0x00de
_CCF1	=	0x00d9
_CCF0	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_trailler_speed_1_20:
	.ds 2
_cirp_PARM_2:
	.ds 1
_cirp_PARM_3:
	.ds 1
_line_PARM_2:
	.ds 1
_line_PARM_3:
	.ds 1
_line_PARM_4:
	.ds 1
_line_PARM_5:
	.ds 1
_line_PARM_6:
	.ds 1
_line_PARM_7:
	.ds 1
_line_t_1_32:
	.ds 1
_line_b1_1_32:
	.ds 1
_line_c1_1_32:
	.ds 1
_box_PARM_2:
	.ds 1
_box_PARM_3:
	.ds 1
_box_PARM_4:
	.ds 1
_box_PARM_5:
	.ds 1
_box_PARM_6:
	.ds 1
_box_PARM_7:
	.ds 1
_box_PARM_8:
	.ds 1
_box_x1_1_34:
	.ds 1
_box_j_1_35:
	.ds 1
_box_t_1_35:
	.ds 1
_box_apeak_xy_PARM_2:
	.ds 1
_box_apeak_xy_PARM_3:
	.ds 1
_box_apeak_xy_PARM_4:
	.ds 1
_box_apeak_xy_PARM_5:
	.ds 1
_box_apeak_xy_PARM_6:
	.ds 1
_box_apeak_xy_PARM_7:
	.ds 1
_box_apeak_xy_PARM_8:
	.ds 1
_poke_PARM_2:
	.ds 1
_poke_PARM_3:
	.ds 1
_boxtola_PARM_2:
	.ds 1
_roll_apeak_yz_PARM_2:
	.ds 2
_roll_apeak_xy_PARM_2:
	.ds 2
_roll_3_xy_PARM_2:
	.ds 2
_trans_PARM_2:
	.ds 2
_tranoutchar_PARM_2:
	.ds 2
_tranoutchar_i_1_85:
	.ds 1
_tranoutchar_k_1_85:
	.ds 1
_tranoutchar_a_1_85:
	.ds 1
_tranoutchar_i2_1_85:
	.ds 1
_tranoutchar_sloc0_1_0:
	.ds 2
_tranoutchar_sloc1_1_0:
	.ds 2
_flash_4_an_1_99:
	.ds 8
_flash_5_an_1_106:
	.ds 4
_flash_6_i_1_123:
	.ds 1
_flash_6_j_1_123:
	.ds 1
_flash_6_k_1_123:
	.ds 1
_flash_9_i_1_134:
	.ds 1
_flash_9_j_1_134:
	.ds 1
_flash_9_an_1_134:
	.ds 8
_flash_9_y_1_134:
	.ds 1
_flash_9_sloc0_1_0:
	.ds 2
_flash_9_sloc1_1_0:
	.ds 2
_flash_9_sloc2_1_0:
	.ds 1
_flash_10_i_1_153:
	.ds 1
_flash_10_an_1_153:
	.ds 4
_print_layer_1_174:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_judgebit_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_max_PARM_2:
	.ds 3
	.area	OSEG    (OVR,DATA)
_maxt_PARM_2:
	.ds 1
_maxt_PARM_3:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_point_PARM_2:
	.ds 1
_point_PARM_3:
	.ds 1
_point_PARM_4:
	.ds 1
	.area	OSEG    (OVR,DATA)
_type_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_boxtola_sloc0_1_0:
	.ds 1
_flash_4_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_display::
	.ds 64
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_print
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'print'
;------------------------------------------------------------
;layer                     Allocated with name '_print_layer_1_174'
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	888n.c:1100: static uchar layer=0;
	mov	_print_layer_1_174,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'sinter'
;------------------------------------------------------------
;	888n.c:58: void sinter()
;	-----------------------------------------
;	 function sinter
;	-----------------------------------------
_sinter:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	888n.c:60: IE=0x82;
	mov	_IE,#0x82
;	888n.c:61: TCON=0x01;
	mov	_TCON,#0x01
;	888n.c:62: TH0=0xc0;
	mov	_TH0,#0xc0
;	888n.c:63: TL0=0;
	mov	_TL0,#0x00
;	888n.c:64: TR0=1;
	setb	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay5us'
;------------------------------------------------------------
;a                         Allocated to registers r6 
;b                         Allocated to registers r7 
;------------------------------------------------------------
;	888n.c:67: void delay5us(void)   // -0.026765046296us STC 1T 22.1184Mhz
;	-----------------------------------------
;	 function delay5us
;	-----------------------------------------
_delay5us:
;	888n.c:71: for(b=7;b>0;b--)
	mov	r7,#0x07
00105$:
;	888n.c:72: for(a=2;a>0;a--);
	mov	r6,#0x02
00104$:
	mov	a,r6
	dec	a
	mov	r5,a
	mov	r6,a
	jnz	00104$
;	888n.c:71: for(b=7;b>0;b--)
	mov	a,r7
	dec	a
	mov	r6,a
	mov	r7,a
	jnz	00105$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers 
;------------------------------------------------------------
;	888n.c:75: void delay(uint i)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
;	888n.c:78: while (i--) {
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00113$
	dec	r7
00113$:
	mov	a,r4
	orl	a,r5
	jz	00104$
;	888n.c:79: delay5us();
	push	ar7
	push	ar6
	lcall	_delay5us
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'judgebit'
;------------------------------------------------------------
;b                         Allocated with name '_judgebit_PARM_2'
;num                       Allocated to registers r7 
;------------------------------------------------------------
;	888n.c:84: uchar judgebit(uchar num, uchar b)
;	-----------------------------------------
;	 function judgebit
;	-----------------------------------------
_judgebit:
	mov	r7,dpl
;	888n.c:86: num = num & (1<<b);      
	mov	b,_judgebit_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	00110$
00108$:
	add	a,acc
00110$:
	djnz	b,00108$
	mov	r6,a
	anl	a,r7
;	888n.c:87: return num ? 1 : 0;
	jz	00103$
	mov	r7,#0x01
	sjmp	00104$
00103$:
	mov	r7,#0x00
00104$:
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'abs'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;b                         Allocated to registers r6 
;------------------------------------------------------------
;	888n.c:92: uchar abs(uchar a)
;	-----------------------------------------
;	 function abs
;	-----------------------------------------
_abs:
	mov	r7,dpl
;	888n.c:96: b=a/10;
	mov	b,#0x0a
	mov	a,r7
	div	ab
;	888n.c:97: a=a-b*10;
	mov	r6,a
	mov	b,#0x0a
	mul	ab
	setb	c
	subb	a,r7
	cpl	a
	mov	r7,a
;	888n.c:99: if (a >= 5) b++;
	cjne	r7,#0x05,00108$
00108$:
	jc	00102$
	inc	r6
00102$:
;	888n.c:101: return b;
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'abss'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	888n.c:105: uchar abss(char a)
;	-----------------------------------------
;	 function abss
;	-----------------------------------------
_abss:
;	888n.c:107: if (a < 0) a=-a;
	mov	a,dpl
	mov	r7,a
	jnb	acc.7,00102$
	clr	c
	clr	a
	subb	a,r7
	mov	r7,a
00102$:
;	888n.c:108: return a;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'max'
;------------------------------------------------------------
;b                         Allocated with name '_max_PARM_2'
;a                         Allocated to registers r5 r6 r7 
;t                         Allocated to registers 
;------------------------------------------------------------
;	888n.c:113: void max(uchar *a, uchar *b)
;	-----------------------------------------
;	 function max
;	-----------------------------------------
_max:
;	888n.c:117: if ((*a) > (*b)) {
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	mov	r1,_max_PARM_2
	mov	r2,(_max_PARM_2 + 1)
	mov	r3,(_max_PARM_2 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	clr	c
	subb	a,r4
	jnc	00103$
;	888n.c:119: (*a) = (*b);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
;	888n.c:120: (*b) = t;   
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	ljmp	__gptrput
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'maxt'
;------------------------------------------------------------
;b                         Allocated with name '_maxt_PARM_2'
;c                         Allocated with name '_maxt_PARM_3'
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	888n.c:125: uchar maxt(uchar a, uchar b, uchar c)
;	-----------------------------------------
;	 function maxt
;	-----------------------------------------
_maxt:
	mov	r7,dpl
;	888n.c:127: if (a < b) a = b;
	clr	c
	mov	a,r7
	subb	a,_maxt_PARM_2
	jnc	00102$
	mov	r7,_maxt_PARM_2
00102$:
;	888n.c:128: if (a < c) a = c;
	clr	c
	mov	a,r7
	subb	a,_maxt_PARM_3
	jnc	00104$
	mov	r7,_maxt_PARM_3
00104$:
;	888n.c:130: return a;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clear'
;------------------------------------------------------------
;le                        Allocated to registers r7 
;i                         Allocated to registers r3 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	888n.c:133: void clear(char le)
;	-----------------------------------------
;	 function clear
;	-----------------------------------------
_clear:
	mov	r7,dpl
;	888n.c:137: for (j=0; j<8; j++) for (i=0; i<8; i++) display[j][i] = le;
	mov	r6,#0x00
00109$:
	mov	a,r6
	mov	b,#0x08
	mul	ab
	mov	r4,a
	mov	r5,b
	mov	r3,#0x00
00103$:
	mov	a,r4
	add	a,#_display
	mov	r1,a
	mov	a,r5
	addc	a,#(_display >> 8)
	mov	r2,a
	mov	a,r3
	add	a,r1
	mov	dpl,a
	clr	a
	addc	a,r2
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
	inc	r3
	cjne	r3,#0x08,00120$
00120$:
	jc	00103$
	inc	r6
	cjne	r6,#0x08,00122$
00122$:
	jc	00109$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'trailler'
;------------------------------------------------------------
;speed                     Allocated with name '_trailler_speed_1_20'
;i                         Allocated to registers r5 
;j                         Allocated to registers r3 
;------------------------------------------------------------
;	888n.c:140: void trailler(uint speed)
;	-----------------------------------------
;	 function trailler
;	-----------------------------------------
_trailler:
	mov	_trailler_speed_1_20,dpl
	mov	(_trailler_speed_1_20 + 1),dph
;	888n.c:144: for (i=6; i>=-3; i--) {
	mov	r5,#0x06
00112$:
;	888n.c:145: if (i >= 0) {
	mov	a,r5
	jb	acc.7,00103$
;	888n.c:146: for (j=0;j<8;j++) display[j][i] = display[j][i+1];
	mov	a,r5
	inc	a
	mov	r4,a
	mov	r3,#0x00
00108$:
	clr	F0
	mov	b,#0x08
	mov	a,r3
	jnb	acc.7,00135$
	cpl	F0
	cpl	a
	inc	a
00135$:
	mul	ab
	jnb	F0,00136$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00136$:
	mov	r1,a
	mov	r2,b
	add	a,#_display
	mov	r0,a
	mov	a,r2
	addc	a,#(_display >> 8)
	mov	r7,a
	mov	a,r5
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,r1
	add	a,#_display
	mov	r1,a
	mov	a,r2
	addc	a,#(_display >> 8)
	mov	r2,a
	mov	a,r4
	add	a,r1
	mov	dpl,a
	clr	a
	addc	a,r2
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r0
	mov	dph,r7
	movx	@dptr,a
	inc	r3
	clr	c
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x88
	jc	00108$
00103$:
;	888n.c:149: if (i<4) for (j=0;j<8;j++) display[j][i+4]=0;
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00106$
	mov	a,#0x04
	add	a,r5
	mov	r7,a
	mov	r6,#0x00
00110$:
	clr	F0
	mov	b,#0x08
	mov	a,r6
	jnb	acc.7,00139$
	cpl	F0
	cpl	a
	inc	a
00139$:
	mul	ab
	jnb	F0,00140$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00140$:
	add	a,#_display
	mov	r3,a
	mov	a,#(_display >> 8)
	addc	a,b
	mov	r4,a
	mov	a,r7
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x88
	jc	00110$
00106$:
;	888n.c:151: delay(speed);
	mov	dpl,_trailler_speed_1_20
	mov	dph,(_trailler_speed_1_20 + 1)
	push	ar5
	lcall	_delay
	pop	ar5
;	888n.c:144: for (i=6; i>=-3; i--) {
	dec	r5
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x7d
	jc	00142$
	ljmp	00112$
00142$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'point'
;------------------------------------------------------------
;y                         Allocated with name '_point_PARM_2'
;z                         Allocated with name '_point_PARM_3'
;le                        Allocated with name '_point_PARM_4'
;x                         Allocated to registers r7 
;ch1                       Allocated to registers r7 
;ch0                       Allocated to registers r6 
;------------------------------------------------------------
;	888n.c:156: void point(uchar x, uchar y, uchar z, uchar le)
;	-----------------------------------------
;	 function point
;	-----------------------------------------
_point:
	mov	r7,dpl
;	888n.c:160: ch1 = 1<<x;
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00111$
00109$:
	add	a,acc
00111$:
	djnz	b,00109$
;	888n.c:161: ch0=~ch1;
	mov	r7,a
	cpl	a
	mov	r6,a
;	888n.c:163: if (le) 
	mov	a,_point_PARM_4
	jz	00102$
;	888n.c:164: display[z][y]=display[z][y]|ch1;
	mov	a,_point_PARM_3
	mov	b,#0x08
	mul	ab
	mov	r4,a
	mov	r5,b
	add	a,#_display
	mov	r2,a
	mov	a,r5
	addc	a,#(_display >> 8)
	mov	r3,a
	mov	a,_point_PARM_2
	mov	r1,a
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r4
	add	a,#_display
	mov	r4,a
	mov	a,r5
	addc	a,#(_display >> 8)
	mov	r5,a
	mov	a,r1
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	orl	ar7,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r7
	movx	@dptr,a
	ret
00102$:
;	888n.c:166: display[z][y]=display[z][y]&ch0;
	mov	a,_point_PARM_3
	mov	b,#0x08
	mul	ab
	mov	r5,a
	mov	r7,b
	add	a,#_display
	mov	r3,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r4,a
	mov	a,_point_PARM_2
	mov	r2,a
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,r5
	add	a,#_display
	mov	r5,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r7,a
	mov	a,r2
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	anl	ar6,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,r6
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'type'
;------------------------------------------------------------
;y                         Allocated with name '_type_PARM_2'
;cha                       Allocated to registers r7 
;xx                        Allocated to registers r4 
;------------------------------------------------------------
;	888n.c:169: void type(uchar cha, uchar y)
;	-----------------------------------------
;	 function type
;	-----------------------------------------
_type:
	mov	r7,dpl
;	888n.c:174: for (xx=0; xx<8; xx++) display[xx][y]=table_cha[cha][xx];
	mov	r6,_type_PARM_2
	mov	a,r7
	mov	b,#0x08
	mul	ab
	add	a,#_table_cha
	mov	r5,a
	mov	a,#(_table_cha >> 8)
	addc	a,b
	mov	r7,a
	mov	r4,#0x00
00102$:
	mov	a,r4
	mov	b,#0x08
	mul	ab
	add	a,#_display
	mov	r2,a
	mov	a,#(_display >> 8)
	addc	a,b
	mov	r3,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r4
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
	inc	r4
	cjne	r4,#0x08,00110$
00110$:
	jc	00102$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cirp'
;------------------------------------------------------------
;dir                       Allocated with name '_cirp_PARM_2'
;le                        Allocated with name '_cirp_PARM_3'
;cpp                       Allocated to registers r7 
;a                         Allocated to registers r5 
;b                         Allocated to registers r4 
;c                         Allocated to registers r6 
;cp                        Allocated to registers r6 
;------------------------------------------------------------
;	888n.c:181: void cirp(uchar cpp, uchar dir, uchar le)
;	-----------------------------------------
;	 function cirp
;	-----------------------------------------
_cirp:
	mov	r7,dpl
;	888n.c:185: if ((cpp<128) && (cpp>=0)) {
	cjne	r7,#0x80,00120$
00120$:
	jnc	00109$
;	888n.c:186: if (dir)
	mov	a,_cirp_PARM_2
	jz	00102$
;	888n.c:187: cp=127-cpp;
	mov	a,#0x7f
	clr	c
	subb	a,r7
	mov	r6,a
	sjmp	00103$
00102$:
;	888n.c:189: cp=cpp; 
	mov	ar6,r7
00103$:
;	888n.c:191: a = (dat[cp]>>5)&0x07;
	mov	a,r6
	mov	dptr,#_dat
	movc	a,@a+dptr
	mov	r6,a
	swap	a
	rr	a
	anl	a,#0x07
	mov	r5,a
	anl	ar5,#0x07
;	888n.c:192: b = (dat[cp]>>2)&0x07;
	mov	a,r6
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r4,a
	anl	ar4,#0x07
;	888n.c:193: c = dat[cp]&0x03;
	anl	ar6,#0x03
;	888n.c:195: if (cpp>63) c=7-c;
	mov	a,r7
	add	a,#0xff - 0x3f
	jnc	00105$
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r6,a
00105$:
;	888n.c:197: point (a,b,c,le);
	mov	_point_PARM_2,r4
	mov	_point_PARM_3,r6
	mov	_point_PARM_4,_cirp_PARM_3
	mov	dpl,r5
	ljmp	_point
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'line'
;------------------------------------------------------------
;y1                        Allocated with name '_line_PARM_2'
;z1                        Allocated with name '_line_PARM_3'
;x2                        Allocated with name '_line_PARM_4'
;y2                        Allocated with name '_line_PARM_5'
;z2                        Allocated with name '_line_PARM_6'
;le                        Allocated with name '_line_PARM_7'
;x1                        Allocated to registers r7 
;t                         Allocated with name '_line_t_1_32'
;a                         Allocated to registers r7 
;b                         Allocated to registers r2 
;c                         Allocated to registers r1 
;a1                        Allocated to registers r6 
;b1                        Allocated with name '_line_b1_1_32'
;c1                        Allocated with name '_line_c1_1_32'
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	888n.c:203: void line(uchar x1, uchar y1, uchar z1, uchar x2, uchar y2, uchar z2, uchar le)
;	-----------------------------------------
;	 function line
;	-----------------------------------------
_line:
	mov	r7,dpl
;	888n.c:207: a1 = x2-x1;
	mov	a,_line_PARM_4
	clr	c
	subb	a,r7
	mov	r6,a
;	888n.c:208: b1=y2-y1;
	mov	a,_line_PARM_5
	clr	c
	subb	a,_line_PARM_2
	mov	_line_b1_1_32,a
;	888n.c:209: c1=z2-z1;
	mov	a,_line_PARM_6
	clr	c
	subb	a,_line_PARM_3
	mov	_line_c1_1_32,a
;	888n.c:210: t=maxt(abss(a1),abss(b1),abss(c1));
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_abss
	mov	r3,dpl
	mov	dpl,_line_b1_1_32
	push	ar3
	lcall	_abss
	mov	r2,dpl
	mov	dpl,_line_c1_1_32
	push	ar2
	lcall	_abss
	mov	_maxt_PARM_3,dpl
	pop	ar2
	pop	ar3
	mov	_maxt_PARM_2,r2
	mov	dpl,r3
	lcall	_maxt
	mov	_line_t_1_32,dpl
	pop	ar6
	pop	ar7
;	888n.c:211: a=x1*10;
	mov	a,r7
	mov	b,#0x0a
	mul	ab
	mov	r7,a
;	888n.c:212: b=y1*10;
	mov	a,_line_PARM_2
	mov	b,#0x0a
	mul	ab
	mov	r2,a
;	888n.c:213: c=z1*10;
	mov	a,_line_PARM_3
	mov	b,#0x0a
	mul	ab
	mov	r1,a
;	888n.c:214: a1=a1*10/t;
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00114$
	cpl	F0
	cpl	a
	inc	a
00114$:
	mul	ab
	jnb	F0,00115$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00115$:
	mov	dpl,a
	mov	dph,b
	mov	a,_line_t_1_32
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	__divsint_PARM_2,r0
	mov	(__divsint_PARM_2 + 1),r3
	push	ar7
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar7
	mov	ar6,r4
;	888n.c:215: b1=b1*10/t;
	clr	F0
	mov	b,#0x0a
	mov	a,_line_b1_1_32
	jnb	acc.7,00116$
	cpl	F0
	cpl	a
	inc	a
00116$:
	mul	ab
	jnb	F0,00117$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00117$:
	mov	dpl,a
	mov	dph,b
	mov	__divsint_PARM_2,r0
	mov	(__divsint_PARM_2 + 1),r3
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	_line_b1_1_32,r4
;	888n.c:216: c1=c1*10/t;
	clr	F0
	mov	b,#0x0a
	mov	a,_line_c1_1_32
	jnb	acc.7,00118$
	cpl	F0
	cpl	a
	inc	a
00118$:
	mul	ab
	jnb	F0,00119$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00119$:
	mov	dpl,a
	mov	dph,b
	mov	__divsint_PARM_2,r0
	mov	(__divsint_PARM_2 + 1),r3
	push	ar7
	push	ar6
	push	ar2
	push	ar1
	lcall	__divsint
	mov	r4,dpl
	pop	ar1
	pop	ar2
	pop	ar6
	pop	ar7
	mov	_line_c1_1_32,r4
;	888n.c:218: for (i=0;i<t;i++) {
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r5
	xrl	a,#0x80
	mov	b,_line_t_1_32
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	888n.c:219: point(abs(a),abs(b),abs(c),le);
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar1
	lcall	_abs
	mov	r4,dpl
	pop	ar1
	pop	ar2
	mov	dpl,r2
	push	ar4
	push	ar2
	push	ar1
	lcall	_abs
	mov	r3,dpl
	pop	ar1
	pop	ar2
	mov	dpl,r1
	push	ar3
	push	ar2
	push	ar1
	lcall	_abs
	mov	_point_PARM_3,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	mov	_point_PARM_2,r3
	mov	_point_PARM_4,_line_PARM_7
	mov	dpl,r4
	push	ar2
	push	ar1
	lcall	_point
	pop	ar1
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
;	888n.c:220: a += a1;
	mov	a,r6
	add	a,r7
	mov	r7,a
;	888n.c:221: b += b1;
	mov	a,_line_b1_1_32
	add	a,r2
	mov	r2,a
;	888n.c:222: c += c1;
	mov	a,_line_c1_1_32
	add	a,r1
	mov	r1,a
;	888n.c:218: for (i=0;i<t;i++) {
	inc	r5
	sjmp	00103$
00101$:
;	888n.c:225: point(x2,y2,z2,le);
	mov	_point_PARM_2,_line_PARM_5
	mov	_point_PARM_3,_line_PARM_6
	mov	_point_PARM_4,_line_PARM_7
	mov	dpl,_line_PARM_4
	ljmp	_point
;------------------------------------------------------------
;Allocation info for local variables in function 'box'
;------------------------------------------------------------
;y1                        Allocated with name '_box_PARM_2'
;z1                        Allocated with name '_box_PARM_3'
;x2                        Allocated with name '_box_PARM_4'
;y2                        Allocated with name '_box_PARM_5'
;z2                        Allocated with name '_box_PARM_6'
;fill                      Allocated with name '_box_PARM_7'
;le                        Allocated with name '_box_PARM_8'
;x1                        Allocated with name '_box_x1_1_34'
;i                         Allocated to registers r6 
;j                         Allocated with name '_box_j_1_35'
;t                         Allocated with name '_box_t_1_35'
;------------------------------------------------------------
;	888n.c:228: void box(uchar x1, uchar y1, uchar z1, uchar x2, uchar y2, uchar z2, uchar fill, uchar le)
;	-----------------------------------------
;	 function box
;	-----------------------------------------
_box:
	mov	_box_x1_1_34,dpl
;	888n.c:230: uchar i, j, t=0;
	mov	_box_t_1_35,#0x00
;	888n.c:232: max(&x1, &x2);
	mov	_max_PARM_2,#_box_PARM_4
	mov	(_max_PARM_2 + 1),#0x00
	mov	(_max_PARM_2 + 2),#0x40
	mov	dptr,#_box_x1_1_34
	mov	b,#0x40
	lcall	_max
;	888n.c:233: max(&y1, &y2);
	mov	_max_PARM_2,#_box_PARM_5
	mov	(_max_PARM_2 + 1),#0x00
	mov	(_max_PARM_2 + 2),#0x40
	mov	dptr,#_box_PARM_2
	mov	b,#0x40
	lcall	_max
;	888n.c:234: max(&z1, &z2);
	mov	_max_PARM_2,#_box_PARM_6
	mov	(_max_PARM_2 + 1),#0x00
	mov	(_max_PARM_2 + 2),#0x40
	mov	dptr,#_box_PARM_3
	mov	b,#0x40
	lcall	_max
;	888n.c:236: for (i=x1; i<=x2; i++) t |= 1<<i;
	mov	r6,_box_x1_1_34
	mov	ar5,r6
00131$:
	clr	c
	mov	a,_box_PARM_4
	subb	a,r5
	jc	00101$
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00279$
00277$:
	add	a,acc
00279$:
	djnz	b,00277$
	mov	r4,a
	orl	_box_t_1_35,a
	inc	r5
	sjmp	00131$
00101$:
;	888n.c:237: if (!le) t = ~t;
	mov	a,_box_PARM_8
	jnz	00103$
	mov	a,_box_t_1_35
	cpl	a
	mov	_box_t_1_35,a
00103$:
;	888n.c:238: if (fill) {
	mov	a,_box_PARM_7
	jnz	00281$
	ljmp	00128$
00281$:
;	888n.c:239: if (le) {
	mov	a,_box_PARM_8
	jz	00109$
;	888n.c:240: for (i=z1;i<=z2;i++)
	mov	r6,_box_PARM_3
	mov	ar5,r6
00137$:
	clr	c
	mov	a,_box_PARM_6
	subb	a,r5
	jnc	00283$
	ret
00283$:
;	888n.c:241: for (j=y1;j<=y2;j++) display[j][i] |= t;
	mov	_box_j_1_35,_box_PARM_2
	mov	r3,_box_j_1_35
00134$:
	clr	c
	mov	a,_box_PARM_5
	subb	a,r3
	jc	00138$
	mov	a,r3
	mov	b,#0x08
	mul	ab
	mov	r1,a
	mov	r2,b
	add	a,#_display
	mov	r0,a
	mov	a,r2
	addc	a,#(_display >> 8)
	mov	r7,a
	mov	a,r5
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,r1
	add	a,#_display
	mov	r1,a
	mov	a,r2
	addc	a,#(_display >> 8)
	mov	r2,a
	mov	a,r5
	add	a,r1
	mov	dpl,a
	clr	a
	addc	a,r2
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	mov	a,_box_t_1_35
	orl	ar2,a
	mov	dpl,r0
	mov	dph,r7
	mov	a,r2
	movx	@dptr,a
	inc	r3
	sjmp	00134$
00138$:
;	888n.c:240: for (i=z1;i<=z2;i++)
	inc	r5
	sjmp	00137$
00109$:
;	888n.c:243: for (i=z1;i<=z2;i++)
	mov	r6,_box_PARM_3
	mov	ar7,r6
00143$:
	clr	c
	mov	a,_box_PARM_6
	subb	a,r7
	jnc	00285$
	ret
00285$:
;	888n.c:244: for (j=y1;j<=y2;j++) display[j][i] &= t;
	mov	_box_j_1_35,_box_PARM_2
	mov	r5,_box_j_1_35
00140$:
	clr	c
	mov	a,_box_PARM_5
	subb	a,r5
	jc	00144$
	mov	a,r5
	mov	b,#0x08
	mul	ab
	mov	r2,a
	mov	r3,b
	add	a,#_display
	mov	r0,a
	mov	a,r3
	addc	a,#(_display >> 8)
	mov	r1,a
	mov	a,r7
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	a,r2
	add	a,#_display
	mov	r2,a
	mov	a,r3
	addc	a,#(_display >> 8)
	mov	r3,a
	mov	a,r7
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	a,_box_t_1_35
	anl	ar3,a
	mov	dpl,r0
	mov	dph,r1
	mov	a,r3
	movx	@dptr,a
	inc	r5
	sjmp	00140$
00144$:
;	888n.c:243: for (i=z1;i<=z2;i++)
	inc	r7
	sjmp	00143$
00128$:
;	888n.c:247: if (le) {
	mov	a,_box_PARM_8
	jnz	00287$
	ljmp	00112$
00287$:
;	888n.c:248: display[y1][z1]|=t;
	mov	a,_box_PARM_2
	mov	b,#0x08
	mul	ab
	mov	r5,a
	mov	r7,b
	add	a,#_display
	mov	r2,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r3,a
	mov	a,_box_PARM_3
	mov	r1,a
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r5
	add	a,#_display
	mov	r5,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r7,a
	mov	a,r1
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,_box_t_1_35
	orl	ar7,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r7
	movx	@dptr,a
;	888n.c:249: display[y2][z1]|=t;
	mov	a,_box_PARM_5
	mov	b,#0x08
	mul	ab
	mov	r5,a
	mov	r7,b
	add	a,#_display
	mov	r2,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r3,a
	mov	a,_box_PARM_3
	mov	r1,a
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r5
	add	a,#_display
	mov	r5,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r7,a
	mov	a,r1
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,_box_t_1_35
	orl	ar7,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r7
	movx	@dptr,a
;	888n.c:250: display[y1][z2]|=t;
	mov	a,_box_PARM_2
	mov	b,#0x08
	mul	ab
	mov	r5,a
	mov	r7,b
	add	a,#_display
	mov	r2,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r3,a
	mov	a,_box_PARM_6
	mov	r1,a
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r5
	add	a,#_display
	mov	r5,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r7,a
	mov	a,r1
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,_box_t_1_35
	orl	ar7,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r7
	movx	@dptr,a
;	888n.c:251: display[y2][z2]|=t;
	mov	a,_box_PARM_5
	mov	b,#0x08
	mul	ab
	mov	r5,a
	mov	r7,b
	add	a,#_display
	mov	r2,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r3,a
	mov	a,_box_PARM_6
	mov	r1,a
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r5
	add	a,#_display
	mov	r5,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r7,a
	mov	a,r1
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,_box_t_1_35
	orl	ar7,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r7
	movx	@dptr,a
	ljmp	00113$
00112$:
;	888n.c:253: display[y1][z1]&=t;
	mov	a,_box_PARM_2
	mov	b,#0x08
	mul	ab
	mov	r5,a
	mov	r7,b
	add	a,#_display
	mov	r2,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r3,a
	mov	a,_box_PARM_3
	mov	r1,a
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r5
	add	a,#_display
	mov	r5,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r7,a
	mov	a,r1
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,_box_t_1_35
	anl	ar7,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r7
	movx	@dptr,a
;	888n.c:254: display[y2][z1]&=t;
	mov	a,_box_PARM_5
	mov	b,#0x08
	mul	ab
	mov	r5,a
	mov	r7,b
	add	a,#_display
	mov	r2,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r3,a
	mov	a,_box_PARM_3
	mov	r1,a
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r5
	add	a,#_display
	mov	r5,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r7,a
	mov	a,r1
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,_box_t_1_35
	anl	ar7,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r7
	movx	@dptr,a
;	888n.c:255: display[y1][z2]&=t;
	mov	a,_box_PARM_2
	mov	b,#0x08
	mul	ab
	mov	r5,a
	mov	r7,b
	add	a,#_display
	mov	r2,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r3,a
	mov	a,_box_PARM_6
	mov	r1,a
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r5
	add	a,#_display
	mov	r5,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r7,a
	mov	a,r1
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,_box_t_1_35
	anl	ar7,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r7
	movx	@dptr,a
;	888n.c:256: display[y2][z2]&=t;
	mov	a,_box_PARM_5
	mov	b,#0x08
	mul	ab
	mov	r5,a
	mov	r7,b
	add	a,#_display
	mov	r2,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r3,a
	mov	a,_box_PARM_6
	mov	r1,a
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r5
	add	a,#_display
	mov	r5,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r7,a
	mov	a,r1
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,_box_t_1_35
	anl	ar7,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r7
	movx	@dptr,a
00113$:
;	888n.c:258: t=(0x01<<x1)|(0x01<<x2);
	mov	b,_box_x1_1_34
	inc	b
	mov	a,#0x01
	sjmp	00290$
00288$:
	add	a,acc
00290$:
	djnz	b,00288$
	mov	r7,a
	mov	b,_box_PARM_4
	inc	b
	mov	a,#0x01
	sjmp	00293$
00291$:
	add	a,acc
00293$:
	djnz	b,00291$
	mov	r5,a
	orl	a,r7
	mov	_box_t_1_35,a
;	888n.c:259: if (!le) t = ~t;
	mov	a,_box_PARM_8
	jnz	00115$
	mov	a,_box_t_1_35
	cpl	a
	mov	_box_t_1_35,a
00115$:
;	888n.c:260: if (le) {
	mov	a,_box_PARM_8
	jnz	00295$
	ljmp	00125$
00295$:
;	888n.c:261: for (j=z1;j<=z2;j+=(z2-z1)) {
	mov	_box_j_1_35,_box_PARM_3
00149$:
	clr	c
	mov	a,_box_PARM_6
	subb	a,_box_j_1_35
	jc	00117$
;	888n.c:262: for (i=y1;i<=y2;i++) display[i][j]|=t;
	mov	r6,_box_PARM_2
	mov	ar7,r6
00146$:
	clr	c
	mov	a,_box_PARM_5
	subb	a,r7
	jc	00150$
	mov	a,r7
	mov	b,#0x08
	mul	ab
	mov	r3,a
	mov	r5,b
	add	a,#_display
	mov	r1,a
	mov	a,r5
	addc	a,#(_display >> 8)
	mov	r2,a
	mov	a,_box_j_1_35
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	a,r3
	add	a,#_display
	mov	r3,a
	mov	a,r5
	addc	a,#(_display >> 8)
	mov	r5,a
	mov	a,_box_j_1_35
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	a,_box_t_1_35
	orl	ar5,a
	mov	dpl,r1
	mov	dph,r2
	mov	a,r5
	movx	@dptr,a
	inc	r7
	sjmp	00146$
00150$:
;	888n.c:261: for (j=z1;j<=z2;j+=(z2-z1)) {
	mov	a,_box_PARM_6
	clr	c
	subb	a,_box_PARM_3
	add	a,_box_j_1_35
	mov	_box_j_1_35,a
	sjmp	00149$
00117$:
;	888n.c:264: for (j=y1;j<=y2;j+=(y2-y1)) {
	mov	_box_j_1_35,_box_PARM_2
00155$:
	clr	c
	mov	a,_box_PARM_5
	subb	a,_box_j_1_35
	jnc	00298$
	ret
00298$:
;	888n.c:265: for (i=z1;i<=z2;i++) display[j][i]|=t;
	mov	r6,_box_PARM_3
	mov	a,_box_j_1_35
	mov	b,#0x08
	mul	ab
	mov	r5,a
	mov	r7,b
	mov	ar3,r6
00152$:
	clr	c
	mov	a,_box_PARM_6
	subb	a,r3
	jc	00156$
	mov	a,r5
	add	a,#_display
	mov	r1,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r2,a
	mov	a,r3
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	a,r5
	add	a,#_display
	mov	r0,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r4,a
	mov	a,r3
	add	a,r0
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	a,_box_t_1_35
	orl	ar4,a
	mov	dpl,r1
	mov	dph,r2
	mov	a,r4
	movx	@dptr,a
	inc	r3
	sjmp	00152$
00156$:
;	888n.c:264: for (j=y1;j<=y2;j+=(y2-y1)) {
	mov	a,_box_PARM_5
	clr	c
	subb	a,_box_PARM_2
	add	a,_box_j_1_35
	mov	_box_j_1_35,a
	sjmp	00155$
00125$:
;	888n.c:268: for (j=z1;j<=z2;j+=(z2-z1)) {
	mov	_box_j_1_35,_box_PARM_3
00161$:
	clr	c
	mov	a,_box_PARM_6
	subb	a,_box_j_1_35
	jc	00121$
;	888n.c:269: for (i=y1;i<=y2;i++) display[i][j]&=t;
	mov	r6,_box_PARM_2
	mov	ar7,r6
00158$:
	clr	c
	mov	a,_box_PARM_5
	subb	a,r7
	jc	00162$
	mov	a,r7
	mov	b,#0x08
	mul	ab
	mov	r5,a
	mov	r6,b
	add	a,#_display
	mov	r3,a
	mov	a,r6
	addc	a,#(_display >> 8)
	mov	r4,a
	mov	a,_box_j_1_35
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,r5
	add	a,#_display
	mov	r5,a
	mov	a,r6
	addc	a,#(_display >> 8)
	mov	r6,a
	mov	a,_box_j_1_35
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	a,_box_t_1_35
	anl	ar6,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,r6
	movx	@dptr,a
	inc	r7
	sjmp	00158$
00162$:
;	888n.c:268: for (j=z1;j<=z2;j+=(z2-z1)) {
	mov	a,_box_PARM_6
	clr	c
	subb	a,_box_PARM_3
	add	a,_box_j_1_35
	mov	_box_j_1_35,a
	sjmp	00161$
00121$:
;	888n.c:271: for (j=y1;j<=y2;j+=(y2-y1)) {
	mov	_box_j_1_35,_box_PARM_2
00167$:
	clr	c
	mov	a,_box_PARM_5
	subb	a,_box_j_1_35
	jc	00169$
;	888n.c:272: for (i=z1;i<=z2;i++) display[j][i]&=t;
	mov	r7,_box_PARM_3
	mov	a,_box_j_1_35
	mov	b,#0x08
	mul	ab
	mov	r5,a
	mov	r6,b
00164$:
	clr	c
	mov	a,_box_PARM_6
	subb	a,r7
	jc	00168$
	mov	a,r5
	add	a,#_display
	mov	r3,a
	mov	a,r6
	addc	a,#(_display >> 8)
	mov	r4,a
	mov	a,r7
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,r5
	add	a,#_display
	mov	r1,a
	mov	a,r6
	addc	a,#(_display >> 8)
	mov	r2,a
	mov	a,r7
	add	a,r1
	mov	dpl,a
	clr	a
	addc	a,r2
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	mov	a,_box_t_1_35
	anl	ar2,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
	inc	r7
	sjmp	00164$
00168$:
;	888n.c:271: for (j=y1;j<=y2;j+=(y2-y1)) {
	mov	a,_box_PARM_5
	clr	c
	subb	a,_box_PARM_2
	add	a,_box_j_1_35
	mov	_box_j_1_35,a
	sjmp	00167$
00169$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'box_apeak_xy'
;------------------------------------------------------------
;y1                        Allocated with name '_box_apeak_xy_PARM_2'
;z1                        Allocated with name '_box_apeak_xy_PARM_3'
;x2                        Allocated with name '_box_apeak_xy_PARM_4'
;y2                        Allocated with name '_box_apeak_xy_PARM_5'
;z2                        Allocated with name '_box_apeak_xy_PARM_6'
;fill                      Allocated with name '_box_apeak_xy_PARM_7'
;le                        Allocated with name '_box_apeak_xy_PARM_8'
;x1                        Allocated to registers r7 
;i                         Allocated to registers 
;------------------------------------------------------------
;	888n.c:278: void box_apeak_xy(uchar x1, uchar y1, uchar z1, uchar x2, uchar y2, uchar z2, uchar fill, uchar le)
;	-----------------------------------------
;	 function box_apeak_xy
;	-----------------------------------------
_box_apeak_xy:
	mov	r7,dpl
;	888n.c:282: max(&z1, &z2);
	mov	_max_PARM_2,#_box_apeak_xy_PARM_6
	mov	(_max_PARM_2 + 1),#0x00
	mov	(_max_PARM_2 + 2),#0x40
	mov	dptr,#_box_apeak_xy_PARM_3
	mov	b,#0x40
	push	ar7
	lcall	_max
	pop	ar7
;	888n.c:283: if (fill) {
	mov	a,_box_apeak_xy_PARM_7
	jz	00103$
;	888n.c:284: for (i=z1;i<=z2;i++) line (x1, y1, i, x2, y2, i, le);
	mov	r6,_box_apeak_xy_PARM_3
00106$:
	clr	c
	mov	a,_box_apeak_xy_PARM_6
	subb	a,r6
	jnc	00121$
	ret
00121$:
	mov	_line_PARM_2,_box_apeak_xy_PARM_2
	mov	_line_PARM_3,r6
	mov	_line_PARM_4,_box_apeak_xy_PARM_4
	mov	_line_PARM_5,_box_apeak_xy_PARM_5
	mov	_line_PARM_6,r6
	mov	_line_PARM_7,_box_apeak_xy_PARM_8
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_line
	pop	ar6
	pop	ar7
	inc	r6
	sjmp	00106$
00103$:
;	888n.c:286: line (x1,y1,z1,x2,y2,z1,le);
	mov	_line_PARM_2,_box_apeak_xy_PARM_2
	mov	_line_PARM_3,_box_apeak_xy_PARM_3
	mov	_line_PARM_4,_box_apeak_xy_PARM_4
	mov	_line_PARM_5,_box_apeak_xy_PARM_5
	mov	_line_PARM_6,_box_apeak_xy_PARM_3
	mov	_line_PARM_7,_box_apeak_xy_PARM_8
	mov	dpl,r7
	push	ar7
	lcall	_line
	pop	ar7
;	888n.c:287: line (x1,y1,z2,x2,y2,z2,le);
	mov	_line_PARM_2,_box_apeak_xy_PARM_2
	mov	_line_PARM_3,_box_apeak_xy_PARM_6
	mov	_line_PARM_4,_box_apeak_xy_PARM_4
	mov	_line_PARM_5,_box_apeak_xy_PARM_5
	mov	_line_PARM_6,_box_apeak_xy_PARM_6
	mov	_line_PARM_7,_box_apeak_xy_PARM_8
	mov	dpl,r7
	push	ar7
	lcall	_line
;	888n.c:288: line (x2,y2,z1,x2,y2,z2,le);
	mov	_line_PARM_2,_box_apeak_xy_PARM_5
	mov	_line_PARM_3,_box_apeak_xy_PARM_3
	mov	_line_PARM_4,_box_apeak_xy_PARM_4
	mov	_line_PARM_5,_box_apeak_xy_PARM_5
	mov	_line_PARM_6,_box_apeak_xy_PARM_6
	mov	_line_PARM_7,_box_apeak_xy_PARM_8
	mov	dpl,_box_apeak_xy_PARM_4
	lcall	_line
	pop	ar7
;	888n.c:289: line (x1,y1,z1,x1,y1,z2,le);
	mov	_line_PARM_2,_box_apeak_xy_PARM_2
	mov	_line_PARM_3,_box_apeak_xy_PARM_3
	mov	_line_PARM_4,r7
	mov	_line_PARM_5,_box_apeak_xy_PARM_2
	mov	_line_PARM_6,_box_apeak_xy_PARM_6
	mov	_line_PARM_7,_box_apeak_xy_PARM_8
	mov	dpl,r7
	ljmp	_line
;------------------------------------------------------------
;Allocation info for local variables in function 'poke'
;------------------------------------------------------------
;x                         Allocated with name '_poke_PARM_2'
;y                         Allocated with name '_poke_PARM_3'
;n                         Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	888n.c:293: void poke(uchar n, uchar x, uchar y)
;	-----------------------------------------
;	 function poke
;	-----------------------------------------
_poke:
	mov	r7,dpl
;	888n.c:297: for (i=0; i<8; i++) point(x, y, i, judgebit(n,i));
	mov	r6,#0x00
00102$:
	mov	_judgebit_PARM_2,r6
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_judgebit
	mov	_point_PARM_4,dpl
	pop	ar6
	mov	_point_PARM_2,_poke_PARM_3
	mov	_point_PARM_3,r6
	mov	dpl,_poke_PARM_2
	push	ar6
	lcall	_point
	pop	ar6
	pop	ar7
	inc	r6
	cjne	r6,#0x08,00110$
00110$:
	jc	00102$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'boxtola'
;------------------------------------------------------------
;n                         Allocated with name '_boxtola_PARM_2'
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	888n.c:300: void boxtola(char i,uchar n)
;	-----------------------------------------
;	 function boxtola
;	-----------------------------------------
_boxtola:
;	888n.c:302: if ((i>=0)&(i<8)) poke(n,0,7-i);
	mov	a,dpl
	mov	r7,a
	rlc	a
	cpl	c
	mov	_boxtola_sloc0_1_0,c
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x88
	clr	a
	rlc	a
	mov	r6,a
	mov	c,_boxtola_sloc0_1_0
	clr	a
	rlc	a
	mov	r5,a
	mov	a,r6
	anl	a,r5
	jz	00102$
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	_poke_PARM_3,a
	mov	_poke_PARM_2,#0x00
	mov	dpl,_boxtola_PARM_2
	push	ar7
	lcall	_poke
	pop	ar7
00102$:
;	888n.c:303: if ((i>=8)&(i<16)) poke(n,i-8,0);
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x88
	cpl	c
	mov	_boxtola_sloc0_1_0,c
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x90
	clr	a
	rlc	a
	mov	r6,a
	mov	c,_boxtola_sloc0_1_0
	clr	a
	rlc	a
	mov	r5,a
	mov	a,r6
	anl	a,r5
	jz	00104$
	mov	a,r7
	add	a,#0xf8
	mov	_poke_PARM_2,a
	mov	_poke_PARM_3,#0x00
	mov	dpl,_boxtola_PARM_2
	push	ar7
	lcall	_poke
	pop	ar7
00104$:
;	888n.c:304: if ((i>=16)&(i<24)) poke(n,7,i-16);
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x90
	cpl	c
	mov	_boxtola_sloc0_1_0,c
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x98
	clr	a
	rlc	a
	mov	r6,a
	mov	c,_boxtola_sloc0_1_0
	clr	a
	rlc	a
	mov	r5,a
	mov	a,r6
	anl	a,r5
	jz	00107$
	mov	a,r7
	add	a,#0xf0
	mov	_poke_PARM_3,a
	mov	_poke_PARM_2,#0x07
	mov	dpl,_boxtola_PARM_2
	ljmp	_poke
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rolldisplay'
;------------------------------------------------------------
;speed                     Allocated to registers r6 r7 
;j                         Allocated to registers r4 
;i                         Allocated to registers r5 
;a                         Allocated to registers r3 
;------------------------------------------------------------
;	888n.c:307: void rolldisplay(uint speed)
;	-----------------------------------------
;	 function rolldisplay
;	-----------------------------------------
_rolldisplay:
	mov	r6,dpl
	mov	r7,dph
;	888n.c:312: for (i=23;i>-40;i--) {
	mov	r5,#0x17
;	888n.c:313: for (j=0;j<40;j++) {
00114$:
	mov	r4,#0x00
00106$:
;	888n.c:314: a=i+j;
	mov	ar3,r4
	mov	a,r3
	add	a,r5
;	888n.c:315: if ((a>=0) && (a<24)) boxtola(a, table_id[j]);
	mov	r3,a
	jb	acc.7,00107$
	clr	c
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x98
	jnc	00107$
	mov	a,r4
	mov	dptr,#_table_id
	movc	a,@a+dptr
	mov	_boxtola_PARM_2,a
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_boxtola
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00107$:
;	888n.c:313: for (j=0;j<40;j++) {
	inc	r4
	cjne	r4,#0x28,00131$
00131$:
	jc	00106$
;	888n.c:318: delay(speed);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	888n.c:312: for (i=23;i>-40;i--) {
	dec	r5
	clr	c
	mov	a,#(0xd8 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00114$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'roll_apeak_yz'
;------------------------------------------------------------
;speed                     Allocated with name '_roll_apeak_yz_PARM_2'
;n                         Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	888n.c:322: void roll_apeak_yz(uchar n,uint speed)
;	-----------------------------------------
;	 function roll_apeak_yz
;	-----------------------------------------
_roll_apeak_yz:
;	888n.c:326: switch(n) {
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x03
	jnc	00147$
	ret
00147$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00148$
	jmp	@a+dptr
00148$:
	ljmp	00107$
	ljmp	00101$
	ljmp	00103$
	ljmp	00105$
;	888n.c:327: case 1:
00101$:
;	888n.c:328: for (i=0;i<7;i++) {
	mov	r7,#0x00
00111$:
;	888n.c:329: display[i][7]=0;
	mov	a,r7
	mov	b,#0x08
	mul	ab
	add	a,#_display
	mov	r5,a
	mov	a,#(_display >> 8)
	addc	a,b
	mov	r6,a
	mov	a,#0x07
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	clr	a
	movx	@dptr,a
;	888n.c:330: display[7][6-i]=255;
	mov	a,#0x06
	clr	c
	subb	a,r7
	add	a,#(_display + 0x0038)
	mov	dpl,a
	clr	a
	addc	a,#((_display + 0x0038) >> 8)
	mov	dph,a
	mov	a,#0xff
	movx	@dptr,a
;	888n.c:331: delay(speed);
	mov	dpl,_roll_apeak_yz_PARM_2
	mov	dph,(_roll_apeak_yz_PARM_2 + 1)
	push	ar7
	lcall	_delay
	pop	ar7
;	888n.c:328: for (i=0;i<7;i++) {
	inc	r7
	cjne	r7,#0x07,00149$
00149$:
	jc	00111$
;	888n.c:333: break;
	ret
;	888n.c:334: case 2:
00103$:
;	888n.c:335: for (i=0;i<7;i++) {
	mov	r7,#0x00
00113$:
;	888n.c:336: display[7][7-i]=0;
	mov	a,#0x07
	clr	c
	subb	a,r7
	add	a,#(_display + 0x0038)
	mov	dpl,a
	clr	a
	addc	a,#((_display + 0x0038) >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	888n.c:337: display[6-i][0]=255;
	mov	a,#0x06
	clr	c
	subb	a,r7
	mov	b,#0x08
	mul	ab
	add	a,#_display
	mov	dpl,a
	mov	a,#(_display >> 8)
	addc	a,b
	mov	dph,a
	mov	a,#0xff
	movx	@dptr,a
;	888n.c:338: delay(speed);
	mov	dpl,_roll_apeak_yz_PARM_2
	mov	dph,(_roll_apeak_yz_PARM_2 + 1)
	push	ar7
	lcall	_delay
	pop	ar7
;	888n.c:335: for (i=0;i<7;i++) {
	inc	r7
	cjne	r7,#0x07,00151$
00151$:
	jc	00113$
;	888n.c:340: break;
	ret
;	888n.c:341: case 3:
00105$:
;	888n.c:342: for (i=0;i<7;i++) {
	mov	r7,#0x00
00115$:
;	888n.c:343: display[7-i][0]=0;
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	b,#0x08
	mul	ab
	add	a,#_display
	mov	dpl,a
	mov	a,#(_display >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movx	@dptr,a
;	888n.c:344: display[0][i+1]=255;
	mov	a,r7
	inc	a
	mov	r6,a
	add	a,#_display
	mov	dpl,a
	clr	a
	addc	a,#(_display >> 8)
	mov	dph,a
	mov	a,#0xff
	movx	@dptr,a
;	888n.c:345: delay(speed);
	mov	dpl,_roll_apeak_yz_PARM_2
	mov	dph,(_roll_apeak_yz_PARM_2 + 1)
	push	ar6
	lcall	_delay
	pop	ar6
;	888n.c:342: for (i=0;i<7;i++) {
	mov	ar7,r6
	cjne	r7,#0x07,00153$
00153$:
	jc	00115$
;	888n.c:347: break;
;	888n.c:348: case 0:
	ret
00107$:
;	888n.c:349: for (i=0;i<7;i++) {
	mov	r7,#0x00
00117$:
;	888n.c:350: display[0][i]=0;
	mov	a,r7
	add	a,#_display
	mov	dpl,a
	clr	a
	addc	a,#(_display >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	888n.c:351: display[i+1][7]=255;
	mov	a,r7
	inc	a
	mov	r6,a
	mov	b,#0x08
	mul	ab
	add	a,#_display
	mov	r4,a
	mov	a,#(_display >> 8)
	addc	a,b
	mov	r5,a
	mov	a,#0x07
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	a,#0xff
	movx	@dptr,a
;	888n.c:352: delay(speed);
	mov	dpl,_roll_apeak_yz_PARM_2
	mov	dph,(_roll_apeak_yz_PARM_2 + 1)
	push	ar6
	lcall	_delay
	pop	ar6
;	888n.c:349: for (i=0;i<7;i++) {
	mov	ar7,r6
	cjne	r7,#0x07,00155$
00155$:
	jc	00117$
;	888n.c:357: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'roll_apeak_xy'
;------------------------------------------------------------
;speed                     Allocated with name '_roll_apeak_xy_PARM_2'
;n                         Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	888n.c:360: void roll_apeak_xy(uchar n,uint speed)
;	-----------------------------------------
;	 function roll_apeak_xy
;	-----------------------------------------
_roll_apeak_xy:
;	888n.c:364: switch(n) {
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x03
	jnc	00147$
	ret
00147$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00148$
	jmp	@a+dptr
00148$:
	ljmp	00107$
	ljmp	00101$
	ljmp	00103$
	ljmp	00105$
;	888n.c:365: case 1:
00101$:
;	888n.c:366: for (i=0;i<7;i++) {
	mov	r7,#0x00
00111$:
;	888n.c:367: line(0,i,0,0,i,7,0);
	mov	_line_PARM_2,r7
	mov	_line_PARM_3,#0x00
	mov	_line_PARM_4,#0x00
	mov	_line_PARM_5,r7
	mov	_line_PARM_6,#0x07
	mov	_line_PARM_7,#0x00
	mov	dpl,#0x00
	push	ar7
	lcall	_line
	pop	ar7
;	888n.c:368: line(i+1,7,0,i+1,7,7,1);
	mov	a,r7
	inc	a
	mov	r6,a
	mov	_line_PARM_2,#0x07
	mov	_line_PARM_3,#0x00
	mov	_line_PARM_4,r6
	mov	_line_PARM_5,#0x07
	mov	_line_PARM_6,#0x07
	mov	_line_PARM_7,#0x01
	mov	dpl,r6
	push	ar6
	lcall	_line
;	888n.c:369: delay(speed);
	mov	dpl,_roll_apeak_xy_PARM_2
	mov	dph,(_roll_apeak_xy_PARM_2 + 1)
	lcall	_delay
	pop	ar6
;	888n.c:366: for (i=0;i<7;i++) {
	mov	ar7,r6
	cjne	r7,#0x07,00149$
00149$:
	jc	00111$
;	888n.c:371: break;
	ret
;	888n.c:372: case 2:
00103$:
;	888n.c:373: for (i=0;i<7;i++) {
	mov	r6,#0x00
00113$:
;	888n.c:374: line(i,7,0,i,7,7,0);
	mov	_line_PARM_2,#0x07
	mov	_line_PARM_3,#0x00
	mov	_line_PARM_4,r6
	mov	_line_PARM_5,#0x07
	mov	_line_PARM_6,#0x07
	mov	_line_PARM_7,#0x00
	mov	dpl,r6
	push	ar6
	lcall	_line
	pop	ar6
;	888n.c:375: line(7,6-i,0,7,6-i,7,1);
	mov	a,#0x06
	clr	c
	subb	a,r6
	mov	r5,a
	mov	_line_PARM_2,r5
	mov	_line_PARM_3,#0x00
	mov	_line_PARM_4,#0x07
	mov	_line_PARM_5,r5
	mov	_line_PARM_6,#0x07
	mov	_line_PARM_7,#0x01
	mov	dpl,#0x07
	push	ar6
	lcall	_line
;	888n.c:376: delay(speed);
	mov	dpl,_roll_apeak_xy_PARM_2
	mov	dph,(_roll_apeak_xy_PARM_2 + 1)
	lcall	_delay
	pop	ar6
;	888n.c:373: for (i=0;i<7;i++) {
	inc	r6
	cjne	r6,#0x07,00151$
00151$:
	jc	00113$
;	888n.c:378: break;
	ret
;	888n.c:379: case 3:
00105$:
;	888n.c:380: for (i=0;i<7;i++) {
	mov	r6,#0x00
00115$:
;	888n.c:381: line(7,7-i,0,7,7-i,7,0);
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r5,a
	mov	_line_PARM_2,r5
	mov	_line_PARM_3,#0x00
	mov	_line_PARM_4,#0x07
	mov	_line_PARM_5,r5
	mov	_line_PARM_6,#0x07
	mov	_line_PARM_7,#0x00
	mov	dpl,#0x07
	push	ar6
	lcall	_line
	pop	ar6
;	888n.c:382: line(6-i,0,0,6-i,0,7,1);
	mov	a,#0x06
	clr	c
	subb	a,r6
	mov	r5,a
	mov	_line_PARM_2,#0x00
	mov	_line_PARM_3,#0x00
	mov	_line_PARM_4,r5
	mov	_line_PARM_5,#0x00
	mov	_line_PARM_6,#0x07
	mov	_line_PARM_7,#0x01
	mov	dpl,r5
	push	ar6
	lcall	_line
;	888n.c:383: delay(speed);
	mov	dpl,_roll_apeak_xy_PARM_2
	mov	dph,(_roll_apeak_xy_PARM_2 + 1)
	lcall	_delay
	pop	ar6
;	888n.c:380: for (i=0;i<7;i++) {
	inc	r6
	cjne	r6,#0x07,00153$
00153$:
	jc	00115$
;	888n.c:385: break;
;	888n.c:386: case 0:
	ret
00107$:
;	888n.c:387: for (i=0;i<7;i++) {
	mov	r7,#0x00
00117$:
;	888n.c:388: line(7-i,0,0,7-i,0,7,0);
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	r6,a
	mov	_line_PARM_2,#0x00
	mov	_line_PARM_3,#0x00
	mov	_line_PARM_4,r6
	mov	_line_PARM_5,#0x00
	mov	_line_PARM_6,#0x07
	mov	_line_PARM_7,#0x00
	mov	dpl,r6
	push	ar7
	lcall	_line
	pop	ar7
;	888n.c:389: line(0,i+1,0,0,i+1,7,1);
	mov	a,r7
	inc	a
	mov	r6,a
	mov	_line_PARM_2,r6
	mov	_line_PARM_3,#0x00
	mov	_line_PARM_4,#0x00
	mov	_line_PARM_5,r6
	mov	_line_PARM_6,#0x07
	mov	_line_PARM_7,#0x01
	mov	dpl,#0x00
	push	ar6
	lcall	_line
;	888n.c:390: delay(speed);
	mov	dpl,_roll_apeak_xy_PARM_2
	mov	dph,(_roll_apeak_xy_PARM_2 + 1)
	lcall	_delay
	pop	ar6
;	888n.c:387: for (i=0;i<7;i++) {
	mov	ar7,r6
	cjne	r7,#0x07,00155$
00155$:
	jc	00117$
;	888n.c:395: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'roll_3_xy'
;------------------------------------------------------------
;speed                     Allocated with name '_roll_3_xy_PARM_2'
;n                         Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	888n.c:398: void roll_3_xy(uchar n,uint speed)
;	-----------------------------------------
;	 function roll_3_xy
;	-----------------------------------------
_roll_3_xy:
;	888n.c:402: switch(n) {
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x03
	jnc	00169$
	ret
00169$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00170$
	jmp	@a+dptr
00170$:
	ljmp	00113$
	ljmp	00101$
	ljmp	00105$
	ljmp	00109$
;	888n.c:403: case 1:
00101$:
;	888n.c:404: for (i=0;i<8;i++) {
	mov	r7,#0x00
00119$:
;	888n.c:405: box_apeak_xy (0,i,0,7,7-i,7,1,1);
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	_box_apeak_xy_PARM_5,a
	mov	_box_apeak_xy_PARM_2,r7
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,#0x07
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,#0x00
	push	ar7
	lcall	_box_apeak_xy
;	888n.c:406: delay(speed);
	mov	dpl,_roll_3_xy_PARM_2
	mov	dph,(_roll_3_xy_PARM_2 + 1)
	lcall	_delay
	pop	ar7
;	888n.c:407: if (i<7) box_apeak_xy (3,3,0,0,i,7,1,0);
	cjne	r7,#0x07,00171$
00171$:
	jnc	00120$
	mov	_box_apeak_xy_PARM_2,#0x03
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,#0x00
	mov	_box_apeak_xy_PARM_5,r7
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,#0x03
	push	ar7
	lcall	_box_apeak_xy
	pop	ar7
00120$:
;	888n.c:404: for (i=0;i<8;i++) {
	inc	r7
	cjne	r7,#0x08,00173$
00173$:
	jc	00119$
;	888n.c:409: break;
	ret
;	888n.c:410: case 2:
00105$:
;	888n.c:411: for (i=0;i<8;i++) {
	mov	r7,#0x00
00121$:
;	888n.c:412: box_apeak_xy (7-i,0,0,i,7,7,1,1);
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	dpl,a
	mov	_box_apeak_xy_PARM_2,#0x00
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,r7
	mov	_box_apeak_xy_PARM_5,#0x07
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x01
	push	ar7
	lcall	_box_apeak_xy
;	888n.c:413: delay(speed);
	mov	dpl,_roll_3_xy_PARM_2
	mov	dph,(_roll_3_xy_PARM_2 + 1)
	lcall	_delay
	pop	ar7
;	888n.c:414: if (i<7) box_apeak_xy (3,4,0,i,7,7,1,0);
	cjne	r7,#0x07,00175$
00175$:
	jnc	00122$
	mov	_box_apeak_xy_PARM_2,#0x04
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,r7
	mov	_box_apeak_xy_PARM_5,#0x07
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,#0x03
	push	ar7
	lcall	_box_apeak_xy
	pop	ar7
00122$:
;	888n.c:411: for (i=0;i<8;i++) {
	inc	r7
	cjne	r7,#0x08,00177$
00177$:
	jc	00121$
;	888n.c:416: break;
	ret
;	888n.c:417: case 3:
00109$:
;	888n.c:418: for (i=0;i<8;i++) {
	mov	r7,#0x00
00123$:
;	888n.c:419: box_apeak_xy (0,i,0,7,7-i,7,1,1);
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	_box_apeak_xy_PARM_5,a
	mov	_box_apeak_xy_PARM_2,r7
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,#0x07
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,#0x00
	push	ar7
	lcall	_box_apeak_xy
;	888n.c:420: delay(speed);
	mov	dpl,_roll_3_xy_PARM_2
	mov	dph,(_roll_3_xy_PARM_2 + 1)
	lcall	_delay
	pop	ar7
;	888n.c:421: if (i<7) box_apeak_xy (4,4,0,7,7-i,7,1,0);
	cjne	r7,#0x07,00179$
00179$:
	jnc	00124$
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	_box_apeak_xy_PARM_5,a
	mov	_box_apeak_xy_PARM_2,#0x04
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,#0x07
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,#0x04
	push	ar7
	lcall	_box_apeak_xy
	pop	ar7
00124$:
;	888n.c:418: for (i=0;i<8;i++) {
	inc	r7
	cjne	r7,#0x08,00181$
00181$:
	jc	00123$
;	888n.c:423: break;
;	888n.c:424: case 0:
	ret
00113$:
;	888n.c:425: for (i=0;i<8;i++) {
	mov	r7,#0x00
00125$:
;	888n.c:426: box_apeak_xy (7-i,0,0,i,7,7,1,1);
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	dpl,a
	mov	_box_apeak_xy_PARM_2,#0x00
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,r7
	mov	_box_apeak_xy_PARM_5,#0x07
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x01
	push	ar7
	lcall	_box_apeak_xy
;	888n.c:427: delay(speed);
	mov	dpl,_roll_3_xy_PARM_2
	mov	dph,(_roll_3_xy_PARM_2 + 1)
	lcall	_delay
	pop	ar7
;	888n.c:428: if (i<7) box_apeak_xy (4,3,0,7-i,0,7,1,0);
	cjne	r7,#0x07,00183$
00183$:
	jnc	00126$
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	_box_apeak_xy_PARM_4,a
	mov	_box_apeak_xy_PARM_2,#0x03
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_5,#0x00
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,#0x04
	push	ar7
	lcall	_box_apeak_xy
	pop	ar7
00126$:
;	888n.c:425: for (i=0;i<8;i++) {
	inc	r7
	cjne	r7,#0x08,00185$
00185$:
	jc	00125$
;	888n.c:433: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'trans'
;------------------------------------------------------------
;speed                     Allocated with name '_trans_PARM_2'
;z                         Allocated to registers r7 
;i                         Allocated to registers r4 
;j                         Allocated to registers r5 
;------------------------------------------------------------
;	888n.c:436: void trans(uchar z, uint speed)
;	-----------------------------------------
;	 function trans
;	-----------------------------------------
_trans:
;	888n.c:440: for (j=0; j<8; j++) {
	mov	a,dpl
	mov	b,#0x08
	mul	ab
	mov	r6,a
	mov	r7,b
	mov	r5,#0x00
;	888n.c:441: for (i=0;i<8;i++)
00109$:
	mov	r4,#0x00
00103$:
;	888n.c:442: display[z][i]>>=1;
	mov	a,r6
	add	a,#_display
	mov	r2,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r3,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r6
	add	a,#_display
	mov	r0,a
	mov	a,r7
	addc	a,#(_display >> 8)
	mov	r1,a
	mov	a,r4
	add	a,r0
	mov	dpl,a
	clr	a
	addc	a,r1
	mov	dph,a
	movx	a,@dptr
	clr	c
	rrc	a
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	888n.c:441: for (i=0;i<8;i++)
	inc	r4
	cjne	r4,#0x08,00120$
00120$:
	jc	00103$
;	888n.c:443: delay(speed);
	mov	dpl,_trans_PARM_2
	mov	dph,(_trans_PARM_2 + 1)
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	888n.c:440: for (j=0; j<8; j++) {
	inc	r5
	cjne	r5,#0x08,00122$
00122$:
	jc	00109$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tranoutchar'
;------------------------------------------------------------
;speed                     Allocated with name '_tranoutchar_PARM_2'
;c                         Allocated to registers r7 
;i                         Allocated with name '_tranoutchar_i_1_85'
;j                         Allocated to registers r2 
;k                         Allocated with name '_tranoutchar_k_1_85'
;a                         Allocated with name '_tranoutchar_a_1_85'
;i2                        Allocated with name '_tranoutchar_i2_1_85'
;sloc0                     Allocated with name '_tranoutchar_sloc0_1_0'
;sloc1                     Allocated with name '_tranoutchar_sloc1_1_0'
;------------------------------------------------------------
;	888n.c:447: void tranoutchar(uchar c, uint speed)
;	-----------------------------------------
;	 function tranoutchar
;	-----------------------------------------
_tranoutchar:
	mov	r7,dpl
;	888n.c:449: uchar i, j, k, a, i2=0;
	mov	_tranoutchar_i2_1_85,#0x00
;	888n.c:451: for (i=0; i<8; i++) {
	mov	a,r7
	mov	b,#0x08
	mul	ab
	add	a,#_table_cha
	mov	_tranoutchar_sloc0_1_0,a
	mov	a,#(_table_cha >> 8)
	addc	a,b
	mov	(_tranoutchar_sloc0_1_0 + 1),a
	mov	_tranoutchar_i_1_85,#0x00
00110$:
;	888n.c:452: if (i<7) box_apeak_xy (i+1,0,0,i+1,7,7,1,1);
	mov	a,#0x100 - 0x07
	add	a,_tranoutchar_i_1_85
	jc	00102$
	mov	a,_tranoutchar_i_1_85
	inc	a
	mov	r3,a
	mov	_box_apeak_xy_PARM_2,#0x00
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,r3
	mov	_box_apeak_xy_PARM_5,#0x07
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,r3
	lcall	_box_apeak_xy
00102$:
;	888n.c:453: box_apeak_xy (i2,0,0,i2,7,7,1,0);
	mov	_box_apeak_xy_PARM_2,#0x00
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,_tranoutchar_i2_1_85
	mov	_box_apeak_xy_PARM_5,#0x07
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,_tranoutchar_i2_1_85
	lcall	_box_apeak_xy
;	888n.c:454: a=0;
	mov	_tranoutchar_a_1_85,#0x00
;	888n.c:455: i2=i+1;
	mov	a,_tranoutchar_i_1_85
	inc	a
	mov	_tranoutchar_i2_1_85,a
;	888n.c:456: for (j=0; j <= i; j++)
	mov	r2,#0x00
00106$:
;	888n.c:457: a |= (1<<j);
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00138$
00136$:
	add	a,acc
00138$:
	djnz	b,00136$
	mov	r1,a
	orl	_tranoutchar_a_1_85,a
;	888n.c:456: for (j=0; j <= i; j++)
	inc	r2
	clr	c
	mov	a,_tranoutchar_i_1_85
	subb	a,r2
	jnc	00106$
;	888n.c:458: for (k=0;k<8;k++) {
	mov	_tranoutchar_k_1_85,#0x00
00108$:
;	888n.c:459: display[k][3]|=table_cha[c][k]&a;
	mov	a,_tranoutchar_k_1_85
	mov	b,#0x08
	mul	ab
	mov	r0,a
	mov	r1,b
	add	a,#_display
	mov	r4,a
	mov	a,r1
	addc	a,#(_display >> 8)
	mov	r6,a
	mov	a,#0x03
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,r0
	add	a,#_display
	mov	r2,a
	mov	a,r1
	addc	a,#(_display >> 8)
	mov	r3,a
	mov	a,#0x03
	add	a,r2
	mov	_tranoutchar_sloc1_1_0,a
	clr	a
	addc	a,r3
	mov	(_tranoutchar_sloc1_1_0 + 1),a
	mov	a,_tranoutchar_k_1_85
	add	a,_tranoutchar_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_tranoutchar_sloc0_1_0 + 1)
	mov	r7,a
	mov	dpl,r5
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,_tranoutchar_a_1_85
	anl	ar3,a
	mov	dpl,_tranoutchar_sloc1_1_0
	mov	dph,(_tranoutchar_sloc1_1_0 + 1)
	movx	a,@dptr
	mov	r2,a
	orl	ar3,a
	mov	dpl,r4
	mov	dph,r6
	mov	a,r3
	movx	@dptr,a
;	888n.c:460: display[k][4]|=table_cha[c][k]&a;
	mov	a,r0
	add	a,#_display
	mov	r4,a
	mov	a,r1
	addc	a,#(_display >> 8)
	mov	r6,a
	mov	a,#0x04
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,r0
	add	a,#_display
	mov	r0,a
	mov	a,r1
	addc	a,#(_display >> 8)
	mov	r1,a
	mov	a,#0x04
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r5
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,_tranoutchar_a_1_85
	anl	ar5,a
	mov	dpl,r0
	mov	dph,r1
	movx	a,@dptr
	mov	r0,a
	orl	ar5,a
	mov	dpl,r4
	mov	dph,r6
	mov	a,r5
	movx	@dptr,a
;	888n.c:458: for (k=0;k<8;k++) {
	inc	_tranoutchar_k_1_85
	mov	a,#0x100 - 0x08
	add	a,_tranoutchar_k_1_85
	jc	00140$
	ljmp	00108$
00140$:
;	888n.c:462: delay(speed);
	mov	dpl,_tranoutchar_PARM_2
	mov	dph,(_tranoutchar_PARM_2 + 1)
	lcall	_delay
;	888n.c:451: for (i=0; i<8; i++) {
	inc	_tranoutchar_i_1_85
	mov	a,#0x100 - 0x08
	add	a,_tranoutchar_i_1_85
	jc	00141$
	ljmp	00110$
00141$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'transss'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r4 
;------------------------------------------------------------
;	888n.c:466: void transss()
;	-----------------------------------------
;	 function transss
;	-----------------------------------------
_transss:
;	888n.c:470: for (i=0;i<8;i++) 
	mov	r7,#0x00
;	888n.c:471: for (j=0;j<8;j++) display[i][j]<<=1;
00109$:
	mov	a,r7
	mov	b,#0x08
	mul	ab
	mov	r5,a
	mov	r6,b
	mov	r4,#0x00
00103$:
	mov	a,r5
	add	a,#_display
	mov	r2,a
	mov	a,r6
	addc	a,#(_display >> 8)
	mov	r3,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r5
	add	a,#_display
	mov	r0,a
	mov	a,r6
	addc	a,#(_display >> 8)
	mov	r1,a
	mov	a,r4
	add	a,r0
	mov	dpl,a
	clr	a
	addc	a,r1
	mov	dph,a
	movx	a,@dptr
	add	a,acc
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
	inc	r4
	cjne	r4,#0x08,00120$
00120$:
	jc	00103$
;	888n.c:470: for (i=0;i<8;i++) 
	inc	r7
	cjne	r7,#0x08,00122$
00122$:
	jc	00109$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_1'
;------------------------------------------------------------
;	888n.c:477: void flash_1()
;	-----------------------------------------
;	 function flash_1
;	-----------------------------------------
_flash_1:
;	888n.c:479: clear(0);
	mov	dpl,#0x00
	lcall	_clear
;	888n.c:480: type(1,0);
	mov	_type_PARM_2,#0x00
	mov	dpl,#0x01
	lcall	_type
;	888n.c:481: delay(60000);
	mov	dptr,#0xea60
	lcall	_delay
;	888n.c:482: type(2,0);
	mov	_type_PARM_2,#0x00
	mov	dpl,#0x02
	lcall	_type
;	888n.c:483: delay(60000);
	mov	dptr,#0xea60
	lcall	_delay
;	888n.c:484: type(3,0);
	mov	_type_PARM_2,#0x00
	mov	dpl,#0x03
	lcall	_type
;	888n.c:485: delay(60000);
	mov	dptr,#0xea60
	lcall	_delay
;	888n.c:486: type(4,0);
	mov	_type_PARM_2,#0x00
	mov	dpl,#0x04
	lcall	_type
;	888n.c:487: delay(60000);
	mov	dptr,#0xea60
	lcall	_delay
;	888n.c:488: delay(60000);
	mov	dptr,#0xea60
	lcall	_delay
;	888n.c:489: clear(0);
	mov	dpl,#0x00
	lcall	_clear
;	888n.c:490: rolldisplay(30000);
	mov	dptr,#0x7530
	lcall	_rolldisplay
;	888n.c:491: type(0,7);
	mov	_type_PARM_2,#0x07
	mov	dpl,#0x00
	lcall	_type
;	888n.c:492: delay(60000);
	mov	dptr,#0xea60
	lcall	_delay
;	888n.c:493: trailler(6000);
	mov	dptr,#0x1770
	lcall	_trailler
;	888n.c:494: delay(60000);
	mov	dptr,#0xea60
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_2'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	888n.c:497: void flash_2()
;	-----------------------------------------
;	 function flash_2
;	-----------------------------------------
_flash_2:
;	888n.c:501: for (i=129;i>0;i--) {
	mov	r7,#0x81
00105$:
;	888n.c:502: cirp(i-2,0,1);
	mov	a,r7
	add	a,#0xfe
	mov	dpl,a
	mov	_cirp_PARM_2,#0x00
	mov	_cirp_PARM_3,#0x01
	push	ar7
	lcall	_cirp
;	888n.c:503: delay(8000);
	mov	dptr,#0x1f40
	lcall	_delay
	pop	ar7
;	888n.c:504: cirp(i-1,0,0);
	mov	a,r7
	dec	a
	mov	r6,a
	mov	_cirp_PARM_2,#0x00
	mov	_cirp_PARM_3,#0x00
	mov	dpl,r6
	push	ar6
	lcall	_cirp
	pop	ar6
;	888n.c:501: for (i=129;i>0;i--) {
	mov	ar7,r6
	mov	a,r7
	jnz	00105$
;	888n.c:507: delay(8000);     
	mov	dptr,#0x1f40
	lcall	_delay
;	888n.c:509: for (i=0;i<136;i++) {
	mov	r7,#0x00
00107$:
;	888n.c:510: cirp(i,1,1);
	mov	_cirp_PARM_2,#0x01
	mov	_cirp_PARM_3,#0x01
	mov	dpl,r7
	push	ar7
	lcall	_cirp
;	888n.c:511: delay(8000);
	mov	dptr,#0x1f40
	lcall	_delay
	pop	ar7
;	888n.c:512: cirp(i-8,1,0);
	mov	a,r7
	add	a,#0xf8
	mov	dpl,a
	mov	_cirp_PARM_2,#0x01
	mov	_cirp_PARM_3,#0x00
	push	ar7
	lcall	_cirp
	pop	ar7
;	888n.c:509: for (i=0;i<136;i++) {
	inc	r7
	cjne	r7,#0x88,00147$
00147$:
	jc	00107$
;	888n.c:515: delay(8000);
	mov	dptr,#0x1f40
	lcall	_delay
;	888n.c:517: for (i=129;i>0;i--) {
	mov	r7,#0x81
00109$:
;	888n.c:518: cirp(i-2,0,1);
	mov	a,r7
	add	a,#0xfe
	mov	dpl,a
	mov	_cirp_PARM_2,#0x00
	mov	_cirp_PARM_3,#0x01
	push	ar7
	lcall	_cirp
;	888n.c:519: delay(8000);
	mov	dptr,#0x1f40
	lcall	_delay
	pop	ar7
;	888n.c:517: for (i=129;i>0;i--) {
	djnz	r7,00109$
;	888n.c:522: delay(8000);
	mov	dptr,#0x1f40
	lcall	_delay
;	888n.c:524: for (i=0;i<128;i++) {
	mov	r7,#0x00
00111$:
;	888n.c:525: cirp(i-8,1,0);
	mov	a,r7
	add	a,#0xf8
	mov	dpl,a
	mov	_cirp_PARM_2,#0x01
	mov	_cirp_PARM_3,#0x00
	push	ar7
	lcall	_cirp
;	888n.c:526: delay(8000);
	mov	dptr,#0x1f40
	lcall	_delay
	pop	ar7
;	888n.c:524: for (i=0;i<128;i++) {
	inc	r7
	cjne	r7,#0x80,00151$
00151$:
	jc	00111$
;	888n.c:529: delay(60000);  
	mov	dptr,#0xea60
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_3'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	888n.c:532: void flash_3()
;	-----------------------------------------
;	 function flash_3
;	-----------------------------------------
_flash_3:
;	888n.c:536: for (i=0;i<8;i++) {
	mov	r7,#0x00
00110$:
;	888n.c:537: box_apeak_xy(0,i,0,7,i,7,1,1);
	mov	_box_apeak_xy_PARM_2,r7
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,#0x07
	mov	_box_apeak_xy_PARM_5,r7
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,#0x00
	push	ar7
	lcall	_box_apeak_xy
;	888n.c:538: delay(20000);
	mov	dptr,#0x4e20
	lcall	_delay
	pop	ar7
;	888n.c:539: if (i<7) box_apeak_xy(0,i,0,7,i,7,1,0);
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x87
	jnc	00111$
	mov	_box_apeak_xy_PARM_2,r7
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,#0x07
	mov	_box_apeak_xy_PARM_5,r7
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,#0x00
	push	ar7
	lcall	_box_apeak_xy
	pop	ar7
00111$:
;	888n.c:536: for (i=0;i<8;i++) {
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x88
	jc	00110$
;	888n.c:542: for (i=7; i>=0; i--) {
	mov	r7,#0x07
00112$:
;	888n.c:543: box_apeak_xy(0,i,0,7,i,7,1,1);
	mov	_box_apeak_xy_PARM_2,r7
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,#0x07
	mov	_box_apeak_xy_PARM_5,r7
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,#0x00
	push	ar7
	lcall	_box_apeak_xy
;	888n.c:544: delay(20000);
	mov	dptr,#0x4e20
	lcall	_delay
	pop	ar7
;	888n.c:545: if (i>0) box_apeak_xy(0,i,0,7,i,7,1,0);
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00113$
	mov	_box_apeak_xy_PARM_2,r7
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,#0x07
	mov	_box_apeak_xy_PARM_5,r7
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,#0x00
	push	ar7
	lcall	_box_apeak_xy
	pop	ar7
00113$:
;	888n.c:542: for (i=7; i>=0; i--) {
	dec	r7
	mov	a,r7
	jnb	acc.7,00112$
;	888n.c:548: for (i=0; i<8; i++) {
	mov	r7,#0x00
00114$:
;	888n.c:549: box_apeak_xy(0,i,0,7,i,7,1,1);
	mov	_box_apeak_xy_PARM_2,r7
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,#0x07
	mov	_box_apeak_xy_PARM_5,r7
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,#0x00
	push	ar7
	lcall	_box_apeak_xy
;	888n.c:550: delay(20000);
	mov	dptr,#0x4e20
	lcall	_delay
	pop	ar7
;	888n.c:551: if (i<7) box_apeak_xy(0,i,0,7,i,7,1,0);
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x87
	jnc	00115$
	mov	_box_apeak_xy_PARM_2,r7
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,#0x07
	mov	_box_apeak_xy_PARM_5,r7
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,#0x00
	push	ar7
	lcall	_box_apeak_xy
	pop	ar7
00115$:
;	888n.c:548: for (i=0; i<8; i++) {
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x88
	jc	00114$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_4'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r7 
;an                        Allocated with name '_flash_4_an_1_99'
;------------------------------------------------------------
;	888n.c:555: void flash_4()
;	-----------------------------------------
;	 function flash_4
;	-----------------------------------------
_flash_4:
;	888n.c:560: for (j=7;j<15;j++) an[j-7]=j;
	mov	r7,#0x07
00124$:
	mov	a,r7
	add	a,#0xf9
	add	a,#_flash_4_an_1_99
	mov	r0,a
	mov	@r0,ar7
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x8f
	jc	00124$
;	888n.c:562: for (i=0;i<=16;i++) {
	mov	r7,#0x00
;	888n.c:563: for (j=0;j<8;j++)
00150$:
	mov	r6,#0x00
00126$:
;	888n.c:564: if ((an[j]<8) && (an[j]>=0)) line(0,an[j],j,7,an[j],j,1);
	mov	a,r6
	add	a,#_flash_4_an_1_99
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x88
	jnc	00127$
	mov	a,r5
	jb	acc.7,00127$
	mov	_line_PARM_2,r5
	mov	_line_PARM_3,r6
	mov	_line_PARM_4,#0x07
	mov	_line_PARM_5,r5
	mov	_line_PARM_6,r6
	mov	_line_PARM_7,#0x01
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_line
	pop	ar6
	pop	ar7
00127$:
;	888n.c:563: for (j=0;j<8;j++)
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x88
	jc	00126$
;	888n.c:565: for (j=0;j<8;j++) {
	mov	r6,#0x00
00128$:
;	888n.c:566: if (((an[j]+1)<8)&(an[j]>=0)) line(0,an[j]+1,j,7,an[j]+1,j,0);
	mov	a,r6
	add	a,#_flash_4_an_1_99
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	inc	r3
	cjne	r3,#0x00,00238$
	inc	r4
00238$:
	clr	c
	mov	a,r3
	subb	a,#0x08
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	clr	a
	rlc	a
	mov	r3,a
	mov	a,r5
	rlc	a
	cpl	c
	mov	_flash_4_sloc0_1_0,c
	clr	a
	rlc	a
	mov	r4,a
	anl	a,r3
	jz	00129$
	inc	r5
	mov	_line_PARM_2,r5
	mov	_line_PARM_3,r6
	mov	_line_PARM_4,#0x07
	mov	_line_PARM_5,r5
	mov	_line_PARM_6,r6
	mov	_line_PARM_7,#0x00
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_line
	pop	ar6
	pop	ar7
00129$:
;	888n.c:565: for (j=0;j<8;j++) {
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x88
	jc	00128$
;	888n.c:569: for (j=0;j<8;j++) {
	mov	r6,#0x00
00130$:
;	888n.c:570: if (an[j]>0)
	mov	a,r6
	add	a,#_flash_4_an_1_99
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00131$
;	888n.c:571: an[j]--;
	mov	a,r5
	dec	a
	mov	@r1,a
00131$:
;	888n.c:569: for (j=0;j<8;j++) {
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x88
	jc	00130$
;	888n.c:573: delay(15000);
	mov	dptr,#0x3a98
	push	ar7
	lcall	_delay
	pop	ar7
;	888n.c:562: for (i=0;i<=16;i++) {
	inc	r7
	clr	c
	mov	a,#(0x10 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00243$
	ljmp	00150$
00243$:
;	888n.c:576: for (j=0;j<8;j++) an[j]=1-j;
	mov	r7,#0x00
00134$:
	mov	a,r7
	add	a,#_flash_4_an_1_99
	mov	r1,a
	mov	a,#0x01
	clr	c
	subb	a,r7
	mov	@r1,a
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x88
	jc	00134$
;	888n.c:578: for (i=0;i<=16;i++) {
	mov	r7,#0x00
;	888n.c:579: for (j=0;j<8;j++) if ((an[j]<8)&(an[j]>=0)) line(0,an[j],j,7,an[j],j,1);
00163$:
	mov	r6,#0x00
00136$:
	mov	a,r6
	add	a,#_flash_4_an_1_99
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x88
	clr	a
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	cpl	c
	mov	_flash_4_sloc0_1_0,c
	clr	a
	rlc	a
	mov	r3,a
	anl	a,r4
	jz	00137$
	mov	_line_PARM_2,r5
	mov	_line_PARM_3,r6
	mov	_line_PARM_4,#0x07
	mov	_line_PARM_5,r5
	mov	_line_PARM_6,r6
	mov	_line_PARM_7,#0x01
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_line
	pop	ar6
	pop	ar7
00137$:
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x88
	jc	00136$
;	888n.c:580: for (j=0;j<8;j++) {
	mov	r6,#0x00
00138$:
;	888n.c:581: if (((an[j]-1)<7)&(an[j]>0))
	mov	a,r6
	add	a,#_flash_4_an_1_99
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	dec	r3
	cjne	r3,#0xff,00247$
	dec	r4
00247$:
	clr	c
	mov	a,r3
	subb	a,#0x07
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	clr	a
	rlc	a
	mov	r3,a
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	r4,a
	anl	a,r3
	jz	00139$
;	888n.c:582: line(0,an[j]-1,j,7,an[j]-1,j,0);
	dec	r5
	mov	_line_PARM_2,r5
	mov	_line_PARM_3,r6
	mov	_line_PARM_4,#0x07
	mov	_line_PARM_5,r5
	mov	_line_PARM_6,r6
	mov	_line_PARM_7,#0x00
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_line
	pop	ar6
	pop	ar7
00139$:
;	888n.c:580: for (j=0;j<8;j++) {
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x88
	jc	00138$
;	888n.c:585: for (j=0;j<8;j++) {
	mov	r6,#0x00
00140$:
;	888n.c:586: if (an[j]<7) an[j]++;
	mov	a,r6
	add	a,#_flash_4_an_1_99
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x87
	jnc	00141$
	mov	a,r5
	inc	a
	mov	@r1,a
00141$:
;	888n.c:585: for (j=0;j<8;j++) {
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x88
	jc	00140$
;	888n.c:588: delay(15000);
	mov	dptr,#0x3a98
	push	ar7
	lcall	_delay
	pop	ar7
;	888n.c:578: for (i=0;i<=16;i++) {
	inc	r7
	clr	c
	mov	a,#(0x10 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00252$
	ljmp	00163$
00252$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_5'
;------------------------------------------------------------
;a                         Allocated to registers 
;i                         Allocated to registers r7 
;j                         Allocated to registers r7 
;an                        Allocated with name '_flash_5_an_1_106'
;------------------------------------------------------------
;	888n.c:592: void flash_5()
;	-----------------------------------------
;	 function flash_5
;	-----------------------------------------
_flash_5:
;	888n.c:598: for (j=7;j<11;j++) an[j-7]=j;
	mov	r7,#0x07
00191$:
	mov	a,r7
	add	a,#0xf9
	add	a,#_flash_5_an_1_106
	mov	r0,a
	mov	@r0,ar7
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x8b
	jc	00191$
;	888n.c:599: while (i--) {
	mov	r7,#0x08
00110$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00521$
	ljmp	00112$
00521$:
;	888n.c:600: for (j=0;j<4;j++) {
	mov	r6,#0x00
00193$:
;	888n.c:601: if (an[j]<8) box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x88
	jnc	00103$
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r4,a
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_box_apeak_xy
	pop	ar6
	pop	ar7
00103$:
;	888n.c:602: if (an[j]<7) box_apeak_xy(j,an[j]+1,j,7-j,an[j]+1,7-j,0,0);
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x87
	jnc	00194$
	inc	r5
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r4,a
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_box_apeak_xy
	pop	ar6
	pop	ar7
00194$:
;	888n.c:600: for (j=0;j<4;j++) {
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jc	00193$
;	888n.c:604: for (j=0;j<4;j++)
	mov	r6,#0x00
00195$:
;	888n.c:605: if (an[j]>3) an[j]--;
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,#(0x03 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00196$
	mov	a,r5
	dec	a
	mov	@r1,a
00196$:
;	888n.c:604: for (j=0;j<4;j++)
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jc	00195$
;	888n.c:606: delay(a);
	mov	dptr,#0x3a98
	push	ar7
	lcall	_delay
	pop	ar7
	ljmp	00110$
00112$:
;	888n.c:611: for (j=0;j<4;j++) an[j]=5-j;
	mov	r7,#0x00
00197$:
	mov	a,r7
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	a,#0x05
	clr	c
	subb	a,r7
	mov	@r1,a
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x84
	jc	00197$
;	888n.c:612: while (i--) {
	mov	r7,#0x03
00122$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00528$
	ljmp	00124$
00528$:
;	888n.c:613: for (j=1;j<4;j++) {
	mov	r6,#0x01
00199$:
;	888n.c:614: if (an[j]<4) box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00115$
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r4,a
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_box_apeak_xy
	pop	ar6
	pop	ar7
00115$:
;	888n.c:615: if (an[j]<3) box_apeak_xy(j,an[j]+1,j,7-j,an[j]+1,7-j,0,0);
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x83
	jnc	00200$
	inc	r5
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r4,a
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_box_apeak_xy
	pop	ar6
	pop	ar7
00200$:
;	888n.c:613: for (j=1;j<4;j++) {
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jc	00199$
;	888n.c:617: for (j=0;j<4;j++)
	mov	r6,#0x00
00201$:
;	888n.c:618: if (an[j]>0) an[j]--;
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00202$
	mov	a,r5
	dec	a
	mov	@r1,a
00202$:
;	888n.c:617: for (j=0;j<4;j++)
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jc	00201$
;	888n.c:619: delay(a);
	mov	dptr,#0x3a98
	push	ar7
	lcall	_delay
	pop	ar7
	ljmp	00122$
00124$:
;	888n.c:624: for (j=1;j<4;j++) an[j]=4-j;
	mov	r7,#0x01
00203$:
	mov	a,r7
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	a,#0x04
	clr	c
	subb	a,r7
	mov	@r1,a
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x84
	jc	00203$
;	888n.c:625: while (i--) {
	mov	r7,#0x03
00134$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00535$
	ljmp	00136$
00535$:
;	888n.c:626: for (j=1;j<4;j++) {
	mov	r6,#0x01
00205$:
;	888n.c:627: if (an[j]>=0) box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	jb	acc.7,00127$
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r4,a
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_box_apeak_xy
	pop	ar6
	pop	ar7
00127$:
;	888n.c:628: if (an[j]>0) box_apeak_xy(j,an[j]-1,j,7-j,an[j]-1,7-j,0,0);
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00206$
	dec	r5
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r4,a
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_box_apeak_xy
	pop	ar6
	pop	ar7
00206$:
;	888n.c:626: for (j=1;j<4;j++) {
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jc	00205$
;	888n.c:630: for (j=1;j<4;j++)
	mov	r6,#0x01
00207$:
;	888n.c:631: if (an[j]<3) an[j]++;
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x83
	jnc	00208$
	mov	a,r5
	inc	a
	mov	@r1,a
00208$:
;	888n.c:630: for (j=1;j<4;j++)
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jc	00207$
;	888n.c:632: delay(a);
	mov	dptr,#0x3a98
	push	ar7
	lcall	_delay
	pop	ar7
	ljmp	00134$
00136$:
;	888n.c:637: for (j=0;j<4;j++) an[j]=j+1;
	mov	r7,#0x00
00209$:
	mov	a,r7
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	a,r7
	inc	a
	mov	r6,a
	mov	@r1,a
	mov	ar7,r6
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x84
	jc	00209$
;	888n.c:638: while (i--) {
	mov	r7,#0x03
00144$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00542$
	ljmp	00146$
00542$:
;	888n.c:639: for (j=1;j<4;j++) {
	mov	r6,#0x01
00211$:
;	888n.c:640: if (an[j]>3) box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,#(0x03 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00139$
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r4,a
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_box_apeak_xy
	pop	ar6
	pop	ar7
00139$:
;	888n.c:641: if (an[j]>3) box_apeak_xy(j,an[j]-1,j,7-j,an[j]-1,7-j,0,0);
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,#(0x03 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00212$
	dec	r5
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r4,a
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_box_apeak_xy
	pop	ar6
	pop	ar7
00212$:
;	888n.c:639: for (j=1;j<4;j++) {
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jc	00211$
;	888n.c:643: for (j=0;j<4;j++) an[j]++;
	mov	r6,#0x00
00213$:
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	inc	a
	mov	@r1,a
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jc	00213$
;	888n.c:644: delay(a);
	mov	dptr,#0x3a98
	push	ar7
	lcall	_delay
	pop	ar7
	ljmp	00144$
00146$:
;	888n.c:649: for (j=3;j<6;j++) an[j-2]=j;
	mov	r7,#0x03
00215$:
	mov	a,r7
	add	a,#0xfe
	add	a,#_flash_5_an_1_106
	mov	r0,a
	mov	@r0,ar7
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x86
	jc	00215$
;	888n.c:650: while (i--) {
	mov	r7,#0x03
00152$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00548$
	ljmp	00154$
00548$:
;	888n.c:651: for (j=1;j<4;j++) {
	mov	r6,#0x01
00217$:
;	888n.c:652: box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r4,a
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,r6
	push	ar7
	push	ar6
	push	ar4
	push	ar1
	lcall	_box_apeak_xy
	pop	ar1
	pop	ar4
	pop	ar6
;	888n.c:653: box_apeak_xy(j,an[j]+1,j,7-j,an[j]+1,7-j,0,0);
	mov	ar5,@r1
	inc	r5
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,r6
	push	ar6
	lcall	_box_apeak_xy
	pop	ar6
	pop	ar7
;	888n.c:651: for (j=1;j<4;j++) {
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jc	00217$
;	888n.c:655: for (j=0;j<4;j++)
	mov	r6,#0x00
00219$:
;	888n.c:656: if (an[j]>3) an[j]--;
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,#(0x03 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00220$
	mov	a,r5
	dec	a
	mov	@r1,a
00220$:
;	888n.c:655: for (j=0;j<4;j++)
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jc	00219$
;	888n.c:657: delay(a);
	mov	dptr,#0x3a98
	push	ar7
	lcall	_delay
	pop	ar7
	ljmp	00152$
00154$:
;	888n.c:662: for (j=0;j<4;j++) an[j]=5-j;
	mov	r7,#0x00
00221$:
	mov	a,r7
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	a,#0x05
	clr	c
	subb	a,r7
	mov	@r1,a
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x84
	jc	00221$
;	888n.c:663: while (i--) {
	mov	r7,#0x03
00164$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00553$
	ljmp	00166$
00553$:
;	888n.c:664: for (j=1;j<4;j++) {
	mov	r6,#0x01
00223$:
;	888n.c:665: if (an[j]<4) box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00157$
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r4,a
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_box_apeak_xy
	pop	ar6
	pop	ar7
00157$:
;	888n.c:666: if (an[j]<3) box_apeak_xy(j,an[j]+1,j,7-j,an[j]+1,7-j,0,0);
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x83
	jnc	00224$
	inc	r5
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r4,a
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_box_apeak_xy
	pop	ar6
	pop	ar7
00224$:
;	888n.c:664: for (j=1;j<4;j++) {
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jc	00223$
;	888n.c:668: for (j=0;j<4;j++)
	mov	r6,#0x00
00225$:
;	888n.c:669: if (an[j]>0) an[j]--;
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00226$
	mov	a,r5
	dec	a
	mov	@r1,a
00226$:
;	888n.c:668: for (j=0;j<4;j++)
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jc	00225$
;	888n.c:670: delay(a);
	mov	dptr,#0x3a98
	push	ar7
	lcall	_delay
	pop	ar7
	ljmp	00164$
00166$:
;	888n.c:675: for (j=0;j<4;j++) an[j]=3-j;
	mov	r7,#0x00
00227$:
	mov	a,r7
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	a,#0x03
	clr	c
	subb	a,r7
	mov	@r1,a
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x84
	jc	00227$
;	888n.c:676: an[0]=2;
	mov	_flash_5_an_1_106,#0x02
;	888n.c:677: while (i--) {
	mov	r7,#0x03
00176$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00560$
	ljmp	00178$
00560$:
;	888n.c:678: for (j=0;j<3;j++) {
	mov	r6,#0x00
00229$:
;	888n.c:679: if (an[j]>=0) box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	jb	acc.7,00169$
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r4,a
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_box_apeak_xy
	pop	ar6
	pop	ar7
00169$:
;	888n.c:680: if (an[j]>=0) box_apeak_xy(j,an[j]+1,j,7-j,an[j]+1,7-j,0,0);
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	jb	acc.7,00230$
	inc	r5
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r4,a
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_box_apeak_xy
	pop	ar6
	pop	ar7
00230$:
;	888n.c:678: for (j=0;j<3;j++) {
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x83
	jc	00229$
;	888n.c:682: for (j=0;j<4;j++)
	mov	r6,#0x00
00231$:
;	888n.c:683: if (j<5-i) an[j]--;
	mov	a,r7
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x05
	clr	c
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	mov	a,r6
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00232$
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	dec	a
	mov	@r1,a
00232$:
;	888n.c:682: for (j=0;j<4;j++)
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jc	00231$
;	888n.c:684: delay(a);
	mov	dptr,#0x3a98
	push	ar7
	lcall	_delay
	pop	ar7
	ljmp	00176$
00178$:
;	888n.c:689: for (j=0;j<4;j++) an[j]=j-2;
	mov	r7,#0x00
00233$:
	mov	a,r7
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	a,r7
	add	a,#0xfe
	mov	@r1,a
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x84
	jc	00233$
;	888n.c:690: while (i--) {
	mov	r7,#0x0a
00188$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00567$
	ret
00567$:
;	888n.c:691: for (j=0;j<4;j++) {
	mov	r6,#0x00
00235$:
;	888n.c:692: if (an[j]>=0) box_apeak_xy(j,an[j],j,7-j,an[j],7-j,0,1);
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	jb	acc.7,00181$
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r4,a
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_box_apeak_xy
	pop	ar6
	pop	ar7
00181$:
;	888n.c:693: if (an[j]>=0) box_apeak_xy(j,an[j]-1,j,7-j,an[j]-1,7-j,0,0);
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	jb	acc.7,00236$
	dec	r5
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r4,a
	mov	_box_apeak_xy_PARM_2,r5
	mov	_box_apeak_xy_PARM_3,r6
	mov	_box_apeak_xy_PARM_4,r4
	mov	_box_apeak_xy_PARM_5,r5
	mov	_box_apeak_xy_PARM_6,r4
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_box_apeak_xy
	pop	ar6
	pop	ar7
00236$:
;	888n.c:691: for (j=0;j<4;j++) {
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jc	00235$
;	888n.c:695: for (j=0;j<4;j++)
	mov	r6,#0x00
00237$:
;	888n.c:696: if (an[j]<7) an[j]++;
	mov	a,r6
	add	a,#_flash_5_an_1_106
	mov	r1,a
	mov	ar5,@r1
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x87
	jnc	00238$
	mov	a,r5
	inc	a
	mov	@r1,a
00238$:
;	888n.c:695: for (j=0;j<4;j++)
	inc	r6
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jc	00237$
;	888n.c:697: delay(a);
	mov	dptr,#0x3a98
	push	ar7
	lcall	_delay
	pop	ar7
	ljmp	00188$
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_6'
;------------------------------------------------------------
;i                         Allocated with name '_flash_6_i_1_123'
;j                         Allocated with name '_flash_6_j_1_123'
;k                         Allocated with name '_flash_6_k_1_123'
;z                         Allocated to registers r7 
;------------------------------------------------------------
;	888n.c:701: void flash_6()
;	-----------------------------------------
;	 function flash_6
;	-----------------------------------------
_flash_6:
;	888n.c:705: roll_apeak_yz(1,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x01
	lcall	_roll_apeak_yz
;	888n.c:706: roll_apeak_yz(2,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x02
	lcall	_roll_apeak_yz
;	888n.c:707: roll_apeak_yz(3,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x03
	lcall	_roll_apeak_yz
;	888n.c:708: roll_apeak_yz(0,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x00
	lcall	_roll_apeak_yz
;	888n.c:709: roll_apeak_yz(1,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x01
	lcall	_roll_apeak_yz
;	888n.c:710: roll_apeak_yz(2,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x02
	lcall	_roll_apeak_yz
;	888n.c:711: roll_apeak_yz(3,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x03
	lcall	_roll_apeak_yz
;	888n.c:713: for (i=0;i<3;i++) {
	mov	_flash_6_i_1_123,#0x00
;	888n.c:714: for (j=0;j<8;j++) {
00124$:
	mov	a,_flash_6_i_1_123
	mov	b,#0x08
	mul	ab
	add	a,#_table_3p
	mov	r5,a
	mov	a,#(_table_3p >> 8)
	addc	a,b
	mov	r6,a
	mov	_flash_6_j_1_123,#0x00
;	888n.c:715: for (k=0;k<8;k++) {
00122$:
	mov	a,_flash_6_j_1_123
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	_flash_6_k_1_123,#0x00
00111$:
;	888n.c:716: if ((table_3p[i][j]>>k)&1) {
	mov	dpl,r2
	mov	dph,r3
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	mov	b,_flash_6_k_1_123
	inc	b
	mov	a,r0
	sjmp	00148$
00147$:
	clr	c
	rrc	a
00148$:
	djnz	b,00147$
	jb	acc.0,00149$
	ljmp	00112$
00149$:
;	888n.c:717: for (z=1;z<8;z++) {
	mov	a,#0x07
	clr	c
	subb	a,_flash_6_k_1_123
	mov	r0,a
	mov	r7,#0x01
00109$:
;	888n.c:718: point (j,7-k,z,1);
	mov	_point_PARM_2,r0
	mov	_point_PARM_3,r7
	mov	_point_PARM_4,#0x01
	mov	dpl,_flash_6_j_1_123
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar0
	lcall	_point
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	888n.c:719: if (z-1) point (j,7-k,z-1,0);
	mov	ar1,r7
	mov	r4,#0x00
	dec	r1
	cjne	r1,#0xff,00150$
	dec	r4
00150$:
	mov	a,r1
	orl	a,r4
	jz	00102$
	mov	a,r7
	dec	a
	mov	_point_PARM_3,a
	mov	_point_PARM_2,r0
	mov	_point_PARM_4,#0x00
	mov	dpl,_flash_6_j_1_123
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar0
	lcall	_point
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	888n.c:720: delay(5000);
	mov	dptr,#0x1388
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar0
	lcall	_delay
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	888n.c:717: for (z=1;z<8;z++) {
	inc	r7
	cjne	r7,#0x08,00152$
00152$:
	jnc	00153$
	ljmp	00109$
00153$:
00112$:
;	888n.c:715: for (k=0;k<8;k++) {
	inc	_flash_6_k_1_123
	mov	a,#0x100 - 0x08
	add	a,_flash_6_k_1_123
	jc	00154$
	ljmp	00111$
00154$:
;	888n.c:714: for (j=0;j<8;j++) {
	inc	_flash_6_j_1_123
	mov	a,#0x100 - 0x08
	add	a,_flash_6_j_1_123
	jc	00155$
	ljmp	00122$
00155$:
;	888n.c:725: trans(7,15000);
	mov	_trans_PARM_2,#0x98
	mov	(_trans_PARM_2 + 1),#0x3a
	mov	dpl,#0x07
	lcall	_trans
;	888n.c:713: for (i=0;i<3;i++) {
	inc	_flash_6_i_1_123
	mov	a,#0x100 - 0x03
	add	a,_flash_6_i_1_123
	jc	00156$
	ljmp	00124$
00156$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_7'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;a                         Allocated to registers 
;------------------------------------------------------------
;	888n.c:729: void flash_7()
;	-----------------------------------------
;	 function flash_7
;	-----------------------------------------
_flash_7:
;	888n.c:734: roll_apeak_yz(0,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x00
	lcall	_roll_apeak_yz
;	888n.c:735: roll_apeak_yz(1,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x01
	lcall	_roll_apeak_yz
;	888n.c:736: roll_apeak_yz(2,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x02
	lcall	_roll_apeak_yz
;	888n.c:737: roll_apeak_yz(3,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x03
	lcall	_roll_apeak_yz
;	888n.c:738: roll_apeak_yz(0,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x00
	lcall	_roll_apeak_yz
;	888n.c:739: roll_apeak_yz(1,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x01
	lcall	_roll_apeak_yz
;	888n.c:740: roll_apeak_yz(2,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x02
	lcall	_roll_apeak_yz
;	888n.c:741: roll_apeak_yz(3,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x03
	lcall	_roll_apeak_yz
;	888n.c:742: roll_apeak_yz(0,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x00
	lcall	_roll_apeak_yz
;	888n.c:743: roll_apeak_yz(1,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x01
	lcall	_roll_apeak_yz
;	888n.c:744: roll_apeak_yz(2,10000);
	mov	_roll_apeak_yz_PARM_2,#0x10
	mov	(_roll_apeak_yz_PARM_2 + 1),#0x27
	mov	dpl,#0x02
	lcall	_roll_apeak_yz
;	888n.c:745: roll_apeak_xy(0,10000);
	mov	_roll_apeak_xy_PARM_2,#0x10
	mov	(_roll_apeak_xy_PARM_2 + 1),#0x27
	mov	dpl,#0x00
	lcall	_roll_apeak_xy
;	888n.c:746: roll_apeak_xy(1,10000);
	mov	_roll_apeak_xy_PARM_2,#0x10
	mov	(_roll_apeak_xy_PARM_2 + 1),#0x27
	mov	dpl,#0x01
	lcall	_roll_apeak_xy
;	888n.c:747: roll_apeak_xy(2,10000);
	mov	_roll_apeak_xy_PARM_2,#0x10
	mov	(_roll_apeak_xy_PARM_2 + 1),#0x27
	mov	dpl,#0x02
	lcall	_roll_apeak_xy
;	888n.c:748: roll_apeak_xy(3,10000);
	mov	_roll_apeak_xy_PARM_2,#0x10
	mov	(_roll_apeak_xy_PARM_2 + 1),#0x27
	mov	dpl,#0x03
	lcall	_roll_apeak_xy
;	888n.c:749: roll_apeak_xy(0,10000);
	mov	_roll_apeak_xy_PARM_2,#0x10
	mov	(_roll_apeak_xy_PARM_2 + 1),#0x27
	mov	dpl,#0x00
	lcall	_roll_apeak_xy
;	888n.c:750: roll_apeak_xy(1,10000);
	mov	_roll_apeak_xy_PARM_2,#0x10
	mov	(_roll_apeak_xy_PARM_2 + 1),#0x27
	mov	dpl,#0x01
	lcall	_roll_apeak_xy
;	888n.c:751: roll_apeak_xy(2,10000);
	mov	_roll_apeak_xy_PARM_2,#0x10
	mov	(_roll_apeak_xy_PARM_2 + 1),#0x27
	mov	dpl,#0x02
	lcall	_roll_apeak_xy
;	888n.c:752: roll_apeak_xy(3,10000);
	mov	_roll_apeak_xy_PARM_2,#0x10
	mov	(_roll_apeak_xy_PARM_2 + 1),#0x27
	mov	dpl,#0x03
	lcall	_roll_apeak_xy
;	888n.c:754: for (i=0;i<8;i++) {
	mov	r7,#0x00
00103$:
;	888n.c:755: box_apeak_xy (0,i,0,7-i,i,7,1,1);
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	_box_apeak_xy_PARM_4,a
	mov	_box_apeak_xy_PARM_2,r7
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_5,r7
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,#0x00
	push	ar7
	lcall	_box_apeak_xy
;	888n.c:756: delay(a);
	mov	dptr,#0x0bb8
	lcall	_delay
	pop	ar7
;	888n.c:754: for (i=0;i<8;i++) {
	inc	r7
	cjne	r7,#0x08,00123$
00123$:
	jc	00103$
;	888n.c:759: delay(30000);
	mov	dptr,#0x7530
	lcall	_delay
;	888n.c:760: roll_3_xy(0,a);
	mov	_roll_3_xy_PARM_2,#0xb8
	mov	(_roll_3_xy_PARM_2 + 1),#0x0b
	mov	dpl,#0x00
	lcall	_roll_3_xy
;	888n.c:761: delay(30000);
	mov	dptr,#0x7530
	lcall	_delay
;	888n.c:762: roll_3_xy(1,a);
	mov	_roll_3_xy_PARM_2,#0xb8
	mov	(_roll_3_xy_PARM_2 + 1),#0x0b
	mov	dpl,#0x01
	lcall	_roll_3_xy
;	888n.c:763: delay(30000);
	mov	dptr,#0x7530
	lcall	_delay
;	888n.c:764: roll_3_xy(2,a);
	mov	_roll_3_xy_PARM_2,#0xb8
	mov	(_roll_3_xy_PARM_2 + 1),#0x0b
	mov	dpl,#0x02
	lcall	_roll_3_xy
;	888n.c:765: delay(30000);
	mov	dptr,#0x7530
	lcall	_delay
;	888n.c:766: roll_3_xy(3,a);
	mov	_roll_3_xy_PARM_2,#0xb8
	mov	(_roll_3_xy_PARM_2 + 1),#0x0b
	mov	dpl,#0x03
	lcall	_roll_3_xy
;	888n.c:767: delay(30000);
	mov	dptr,#0x7530
	lcall	_delay
;	888n.c:768: roll_3_xy(0,a);
	mov	_roll_3_xy_PARM_2,#0xb8
	mov	(_roll_3_xy_PARM_2 + 1),#0x0b
	mov	dpl,#0x00
	lcall	_roll_3_xy
;	888n.c:769: delay(30000);
	mov	dptr,#0x7530
	lcall	_delay
;	888n.c:770: roll_3_xy(1,a);
	mov	_roll_3_xy_PARM_2,#0xb8
	mov	(_roll_3_xy_PARM_2 + 1),#0x0b
	mov	dpl,#0x01
	lcall	_roll_3_xy
;	888n.c:771: delay(30000);
	mov	dptr,#0x7530
	lcall	_delay
;	888n.c:772: roll_3_xy(2,a);
	mov	_roll_3_xy_PARM_2,#0xb8
	mov	(_roll_3_xy_PARM_2 + 1),#0x0b
	mov	dpl,#0x02
	lcall	_roll_3_xy
;	888n.c:773: delay(30000);
	mov	dptr,#0x7530
	lcall	_delay
;	888n.c:774: roll_3_xy(3,a);
	mov	_roll_3_xy_PARM_2,#0xb8
	mov	(_roll_3_xy_PARM_2 + 1),#0x0b
	mov	dpl,#0x03
	lcall	_roll_3_xy
;	888n.c:775: for (i=7;i>0;i--) {
	mov	r7,#0x07
00105$:
;	888n.c:776: box_apeak_xy(i,0,0,i,7,7,1,0);
	mov	_box_apeak_xy_PARM_2,#0x00
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,r7
	mov	_box_apeak_xy_PARM_5,#0x07
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_box_apeak_xy
;	888n.c:777: delay(a);
	mov	dptr,#0x0bb8
	lcall	_delay
	pop	ar7
;	888n.c:775: for (i=7;i>0;i--) {
	djnz	r7,00105$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_8'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	888n.c:781: void flash_8()
;	-----------------------------------------
;	 function flash_8
;	-----------------------------------------
_flash_8:
;	888n.c:785: for (i=5;i<8;i++) {
	mov	r7,#0x05
00102$:
;	888n.c:786: tranoutchar(i,10000);
	mov	_tranoutchar_PARM_2,#0x10
	mov	(_tranoutchar_PARM_2 + 1),#0x27
	mov	dpl,r7
	push	ar7
	lcall	_tranoutchar
;	888n.c:787: delay(60000);
	mov	dptr,#0xea60
	lcall	_delay
;	888n.c:788: delay(60000);
	mov	dptr,#0xea60
	lcall	_delay
	pop	ar7
;	888n.c:785: for (i=5;i<8;i++) {
	inc	r7
	cjne	r7,#0x08,00110$
00110$:
	jc	00102$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_9'
;------------------------------------------------------------
;i                         Allocated with name '_flash_9_i_1_134'
;j                         Allocated with name '_flash_9_j_1_134'
;an                        Allocated with name '_flash_9_an_1_134'
;x                         Allocated to registers r2 
;y                         Allocated with name '_flash_9_y_1_134'
;t                         Allocated to registers r4 
;x1                        Allocated to registers r5 
;y1                        Allocated to registers r7 
;sloc0                     Allocated with name '_flash_9_sloc0_1_0'
;sloc1                     Allocated with name '_flash_9_sloc1_1_0'
;sloc2                     Allocated with name '_flash_9_sloc2_1_0'
;------------------------------------------------------------
;	888n.c:792: void flash_9()
;	-----------------------------------------
;	 function flash_9
;	-----------------------------------------
_flash_9:
;	888n.c:797: for (i=0;i<8;i++) {
	mov	r7,#0x00
00126$:
;	888n.c:798: box_apeak_xy (i,0,0,i,7,7,1,1);
	mov	_box_apeak_xy_PARM_2,#0x00
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,r7
	mov	_box_apeak_xy_PARM_5,#0x07
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,r7
	push	ar7
	lcall	_box_apeak_xy
	pop	ar7
;	888n.c:799: if (i) box_apeak_xy (i-1,0,0,i-1,7,7,1,0);
	mov	a,r7
	jz	00102$
	mov	a,r7
	dec	a
	mov	r6,a
	mov	_box_apeak_xy_PARM_2,#0x00
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,r6
	mov	_box_apeak_xy_PARM_5,#0x07
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x00
	mov	dpl,r6
	push	ar7
	lcall	_box_apeak_xy
	pop	ar7
00102$:
;	888n.c:800: delay(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_delay
	pop	ar7
;	888n.c:797: for (i=0;i<8;i++) {
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x88
	jc	00126$
;	888n.c:803: roll_apeak_xy(3,10000);
	mov	_roll_apeak_xy_PARM_2,#0x10
	mov	(_roll_apeak_xy_PARM_2 + 1),#0x27
	mov	dpl,#0x03
	lcall	_roll_apeak_xy
;	888n.c:804: roll_apeak_xy(0,10000);
	mov	_roll_apeak_xy_PARM_2,#0x10
	mov	(_roll_apeak_xy_PARM_2 + 1),#0x27
	mov	dpl,#0x00
	lcall	_roll_apeak_xy
;	888n.c:805: roll_apeak_xy(1,10000);
	mov	_roll_apeak_xy_PARM_2,#0x10
	mov	(_roll_apeak_xy_PARM_2 + 1),#0x27
	mov	dpl,#0x01
	lcall	_roll_apeak_xy
;	888n.c:807: for (i=0;i<7;i++) {
	mov	r7,#0x00
00128$:
;	888n.c:808: line(6-i,6-i,0,6-i,6-i,7,1);
	mov	a,#0x06
	clr	c
	subb	a,r7
	mov	r6,a
	mov	_line_PARM_2,r6
	mov	_line_PARM_3,#0x00
	mov	_line_PARM_4,r6
	mov	_line_PARM_5,r6
	mov	_line_PARM_6,#0x07
	mov	_line_PARM_7,#0x01
	mov	dpl,r6
	push	ar7
	lcall	_line
	pop	ar7
;	888n.c:809: line(i,7,0,i,7,7,0);
	mov	_line_PARM_2,#0x07
	mov	_line_PARM_3,#0x00
	mov	_line_PARM_4,r7
	mov	_line_PARM_5,#0x07
	mov	_line_PARM_6,#0x07
	mov	_line_PARM_7,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_line
;	888n.c:810: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
	pop	ar7
;	888n.c:807: for (i=0;i<7;i++) {
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x87
	jc	00128$
;	888n.c:813: for (i=0;i<8;i++) an[i]=14;
	mov	r7,#0x00
00130$:
	mov	a,r7
	add	a,#_flash_9_an_1_134
	mov	r0,a
	mov	@r0,#0x0e
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x88
	jc	00130$
;	888n.c:815: for (i=0;i<85;i++) {
	mov	_flash_9_i_1_134,#0x00
00136$:
;	888n.c:816: clear(0);
	mov	dpl,#0x00
	lcall	_clear
;	888n.c:817: for (j=0;j<8;j++) {
	mov	r6,#0x00
00132$:
;	888n.c:818: t=an[j]%28;
	mov	a,r6
	add	a,#_flash_9_an_1_134
	mov	r1,a
	mov	ar5,@r1
	mov	b,#0x1c
	mov	a,r5
	div	ab
;	888n.c:819: x=dat2[t]>>5;
	mov	a,b
	mov	dptr,#_dat2
	movc	a,@a+dptr
	mov	r3,a
	swap	a
	rr	a
	anl	a,#0x07
	mov	r2,a
;	888n.c:820: y=(dat2[t]>>2)&0x07;
	mov	a,r3
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r3,a
	mov	a,#0x07
	anl	a,r3
	mov	_flash_9_y_1_134,a
;	888n.c:821: t=(an[j]-14)%28;
	mov	r7,#0x00
	mov	a,r5
	add	a,#0xf2
	mov	dpl,a
	mov	a,r7
	addc	a,#0xff
	mov	dph,a
	mov	__modsint_PARM_2,#0x1c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	push	ar6
	push	ar2
	lcall	__modsint
	mov	r5,dpl
	pop	ar2
	pop	ar6
	mov	ar4,r5
;	888n.c:822: x1=dat2[t]>>5;
	mov	a,r4
	mov	dptr,#_dat2
	movc	a,@a+dptr
	mov	r7,a
	swap	a
	rr	a
	anl	a,#0x07
	mov	r5,a
;	888n.c:823: y1=(dat2[t]>>2)&0x07;
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r7,a
	anl	ar7,#0x07
;	888n.c:824: line(x,y,j,x1,y1,j,1);
	mov	_line_PARM_2,_flash_9_y_1_134
	mov	_line_PARM_3,r6
	mov	_line_PARM_4,r5
	mov	_line_PARM_5,r7
	mov	_line_PARM_6,r6
	mov	_line_PARM_7,#0x01
	mov	dpl,r2
	push	ar6
	lcall	_line
	pop	ar6
;	888n.c:817: for (j=0;j<8;j++) {
	inc	r6
	cjne	r6,#0x08,00309$
00309$:
	jc	00132$
;	888n.c:826: for (j=0;j<8;j++) {
	mov	_flash_9_j_1_134,#0x00
00134$:
;	888n.c:827: if ((i>j)&(j>i-71))
	mov	a,_flash_9_i_1_134
	mov	_flash_9_sloc0_1_0,a
	rlc	a
	subb	a,acc
	mov	(_flash_9_sloc0_1_0 + 1),a
	mov	_flash_9_sloc1_1_0,_flash_9_j_1_134
	mov	(_flash_9_sloc1_1_0 + 1),#0x00
	clr	c
	mov	a,_flash_9_sloc1_1_0
	subb	a,_flash_9_sloc0_1_0
	mov	a,(_flash_9_sloc1_1_0 + 1)
	xrl	a,#0x80
	mov	b,(_flash_9_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	_flash_9_sloc2_1_0,a
	mov	a,_flash_9_sloc0_1_0
	add	a,#0xb9
	mov	_flash_9_sloc0_1_0,a
	mov	a,(_flash_9_sloc0_1_0 + 1)
	addc	a,#0xff
	mov	(_flash_9_sloc0_1_0 + 1),a
	clr	c
	mov	a,_flash_9_sloc0_1_0
	subb	a,_flash_9_sloc1_1_0
	mov	a,(_flash_9_sloc0_1_0 + 1)
	xrl	a,#0x80
	mov	b,(_flash_9_sloc1_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	r6,a
	anl	a,_flash_9_sloc2_1_0
	jz	00135$
;	888n.c:828: an[j]++;
	mov	a,_flash_9_j_1_134
	add	a,#_flash_9_an_1_134
	mov	r1,a
	mov	a,@r1
	mov	r6,a
	inc	a
	mov	@r1,a
00135$:
;	888n.c:826: for (j=0;j<8;j++) {
	inc	_flash_9_j_1_134
	mov	a,#0x100 - 0x08
	add	a,_flash_9_j_1_134
	jnc	00134$
;	888n.c:830: delay(5000);
	mov	dptr,#0x1388
	lcall	_delay
;	888n.c:815: for (i=0;i<85;i++) {
	inc	_flash_9_i_1_134
	clr	c
	mov	a,_flash_9_i_1_134
	xrl	a,#0x80
	subb	a,#0xd5
	jnc	00313$
	ljmp	00136$
00313$:
;	888n.c:833: for (i=0;i<85;i++) {
	mov	_flash_9_i_1_134,#0x00
00142$:
;	888n.c:834: clear(0);
	mov	dpl,#0x00
	lcall	_clear
;	888n.c:835: for (j=0;j<8;j++) {
	mov	_flash_9_j_1_134,#0x00
00138$:
;	888n.c:836: t=an[j]%28;
	mov	a,_flash_9_j_1_134
	add	a,#_flash_9_an_1_134
	mov	r1,a
	mov	_flash_9_sloc2_1_0,@r1
	mov	b,#0x1c
	mov	a,_flash_9_sloc2_1_0
	div	ab
;	888n.c:837: x=dat2[t]>>5;
	mov	a,b
	mov	dptr,#_dat2
	movc	a,@a+dptr
	mov	r6,a
	swap	a
	rr	a
	anl	a,#0x07
	mov	r2,a
;	888n.c:838: y=(dat2[t]>>2)&0x07;
	mov	a,r6
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r6,a
	mov	a,#0x07
	anl	a,r6
	mov	_flash_9_y_1_134,a
;	888n.c:839: t=(an[j]-14)%28;
	mov	r3,_flash_9_sloc2_1_0
	mov	r6,#0x00
	mov	a,r3
	add	a,#0xf2
	mov	dpl,a
	mov	a,r6
	addc	a,#0xff
	mov	dph,a
	mov	__modsint_PARM_2,#0x1c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	push	ar2
	lcall	__modsint
	mov	r3,dpl
	pop	ar2
	mov	ar4,r3
;	888n.c:840: x1=dat2[t]>>5;
	mov	a,r4
	mov	dptr,#_dat2
	movc	a,@a+dptr
	mov	r6,a
	swap	a
	rr	a
	anl	a,#0x07
	mov	r5,a
;	888n.c:841: y1=(dat2[t]>>2)&0x07;
	mov	a,r6
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r6,a
	mov	a,#0x07
	anl	a,r6
	mov	r7,a
;	888n.c:842: line(x,y,j,x1,y1,j,1);
	mov	_line_PARM_2,_flash_9_y_1_134
	mov	_line_PARM_3,_flash_9_j_1_134
	mov	_line_PARM_4,r5
	mov	_line_PARM_5,r7
	mov	_line_PARM_6,_flash_9_j_1_134
	mov	_line_PARM_7,#0x01
	mov	dpl,r2
	lcall	_line
;	888n.c:835: for (j=0;j<8;j++) {
	inc	_flash_9_j_1_134
	mov	a,#0x100 - 0x08
	add	a,_flash_9_j_1_134
	jnc	00138$
;	888n.c:844: for (j=0;j<8;j++) {
	mov	_flash_9_j_1_134,#0x00
00140$:
;	888n.c:845: if ((i>j)&(j>i-71))
	mov	a,_flash_9_i_1_134
	mov	_flash_9_sloc1_1_0,a
	rlc	a
	subb	a,acc
	mov	(_flash_9_sloc1_1_0 + 1),a
	mov	_flash_9_sloc0_1_0,_flash_9_j_1_134
	mov	(_flash_9_sloc0_1_0 + 1),#0x00
	clr	c
	mov	a,_flash_9_sloc0_1_0
	subb	a,_flash_9_sloc1_1_0
	mov	a,(_flash_9_sloc0_1_0 + 1)
	xrl	a,#0x80
	mov	b,(_flash_9_sloc1_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	_flash_9_sloc2_1_0,a
	mov	a,_flash_9_sloc1_1_0
	add	a,#0xb9
	mov	r3,a
	mov	a,(_flash_9_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r6,a
	clr	c
	mov	a,r3
	subb	a,_flash_9_sloc0_1_0
	mov	a,r6
	xrl	a,#0x80
	mov	b,(_flash_9_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	r3,a
	anl	a,_flash_9_sloc2_1_0
	jz	00141$
;	888n.c:846: an[j]--;
	mov	a,_flash_9_j_1_134
	add	a,#_flash_9_an_1_134
	mov	r1,a
	mov	a,@r1
	mov	r6,a
	dec	a
	mov	@r1,a
00141$:
;	888n.c:844: for (j=0;j<8;j++) {
	inc	_flash_9_j_1_134
	mov	a,#0x100 - 0x08
	add	a,_flash_9_j_1_134
	jnc	00140$
;	888n.c:848: delay(5000);
	mov	dptr,#0x1388
	lcall	_delay
;	888n.c:833: for (i=0;i<85;i++) {
	inc	_flash_9_i_1_134
	clr	c
	mov	a,_flash_9_i_1_134
	xrl	a,#0x80
	subb	a,#0xd5
	jnc	00317$
	ljmp	00142$
00317$:
;	888n.c:851: for (i=0;i<29;i++) {
	mov	_flash_9_i_1_134,#0x00
00144$:
;	888n.c:852: clear(0);
	mov	dpl,#0x00
	lcall	_clear
;	888n.c:854: t=an[0]%28;
	mov	b,#0x1c
	mov	a,_flash_9_an_1_134
	div	ab
;	888n.c:855: x=dat2[t]>>5;
	mov	a,b
	mov	dptr,#_dat2
	movc	a,@a+dptr
	mov	r3,a
	swap	a
	rr	a
	anl	a,#0x07
	mov	r2,a
;	888n.c:856: y=(dat2[t]>>2)&0x07;
	mov	a,r3
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r3,a
	mov	a,#0x07
	anl	a,r3
	mov	_flash_9_y_1_134,a
;	888n.c:857: t=(an[0]-14)%28;
	mov	r3,_flash_9_an_1_134
	mov	r6,#0x00
	mov	a,r3
	add	a,#0xf2
	mov	dpl,a
	mov	a,r6
	addc	a,#0xff
	mov	dph,a
	mov	__modsint_PARM_2,#0x1c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	push	ar2
	lcall	__modsint
	mov	r3,dpl
	pop	ar2
	mov	ar4,r3
;	888n.c:858: x1=dat2[t]>>5;
	mov	a,r4
	mov	dptr,#_dat2
	movc	a,@a+dptr
	mov	r6,a
	swap	a
	rr	a
	anl	a,#0x07
	mov	r5,a
;	888n.c:859: y1=(dat2[t]>>2)&0x07;
	mov	a,r6
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r6,a
	mov	a,#0x07
	anl	a,r6
	mov	r7,a
;	888n.c:860: box_apeak_xy(x,y,0,x1,y1,7,0,1);
	mov	_box_apeak_xy_PARM_2,_flash_9_y_1_134
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_4,r5
	mov	_box_apeak_xy_PARM_5,r7
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,r2
	push	ar7
	push	ar5
	push	ar2
	lcall	_box_apeak_xy
	pop	ar2
	pop	ar5
	pop	ar7
;	888n.c:861: box_apeak_xy(x,y,1,x1,y1,6,0,1);
	mov	_box_apeak_xy_PARM_2,_flash_9_y_1_134
	mov	_box_apeak_xy_PARM_3,#0x01
	mov	_box_apeak_xy_PARM_4,r5
	mov	_box_apeak_xy_PARM_5,r7
	mov	_box_apeak_xy_PARM_6,#0x06
	mov	_box_apeak_xy_PARM_7,#0x00
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,r2
	lcall	_box_apeak_xy
;	888n.c:862: an[0]++; 
	mov	a,_flash_9_an_1_134
	inc	a
	mov	_flash_9_an_1_134,a
;	888n.c:863: delay(5000);
	mov	dptr,#0x1388
	lcall	_delay
;	888n.c:851: for (i=0;i<29;i++) {
	inc	_flash_9_i_1_134
	clr	c
	mov	a,_flash_9_i_1_134
	xrl	a,#0x80
	subb	a,#0x9d
	jnc	00318$
	ljmp	00144$
00318$:
;	888n.c:866: for (i=0;i<16;i++) {
	mov	r7,#0x00
00146$:
;	888n.c:867: clear(0);
	mov	dpl,#0x00
	push	ar7
	lcall	_clear
;	888n.c:869: t=an[0]%28;
	mov	b,#0x1c
	mov	a,_flash_9_an_1_134
	div	ab
;	888n.c:870: x=dat2[t]>>5;
	mov	a,b
	mov	dptr,#_dat2
	movc	a,@a+dptr
	mov	r6,a
	swap	a
	rr	a
	anl	a,#0x07
	mov	r2,a
;	888n.c:871: y=(dat2[t]>>2)&0x07;
	mov	a,r6
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r6,a
	mov	a,#0x07
	anl	a,r6
	mov	_flash_9_y_1_134,a
;	888n.c:872: t=(an[0]-14)%28;
	mov	r5,_flash_9_an_1_134
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xf2
	mov	dpl,a
	mov	a,r6
	addc	a,#0xff
	mov	dph,a
	mov	__modsint_PARM_2,#0x1c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	push	ar2
	lcall	__modsint
	mov	r5,dpl
	pop	ar2
	mov	ar4,r5
;	888n.c:873: x1=dat2[t]>>5;
	mov	a,r4
	mov	dptr,#_dat2
	movc	a,@a+dptr
	mov	r6,a
	swap	a
	rr	a
	anl	a,#0x07
	mov	_box_apeak_xy_PARM_4,a
;	888n.c:874: y1=(dat2[t]>>2)&0x07;
	mov	a,r6
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r6,a
	mov	a,#0x07
	anl	a,r6
	mov	_box_apeak_xy_PARM_5,a
;	888n.c:875: box_apeak_xy(x,y,0,x1,y1,7,1,1);
	mov	_box_apeak_xy_PARM_2,_flash_9_y_1_134
	mov	_box_apeak_xy_PARM_3,#0x00
	mov	_box_apeak_xy_PARM_6,#0x07
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,r2
	lcall	_box_apeak_xy
;	888n.c:876: an[0]--; 
	mov	a,_flash_9_an_1_134
	dec	a
	mov	_flash_9_an_1_134,a
;	888n.c:877: delay(5000);
	mov	dptr,#0x1388
	lcall	_delay
	pop	ar7
;	888n.c:866: for (i=0;i<16;i++) {
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x90
	jnc	00319$
	ljmp	00146$
00319$:
;	888n.c:880: for (i=0;i<8;i++) {
	mov	r7,#0x00
00148$:
;	888n.c:881: line(i,i,0,0,0,i,0);
	mov	_line_PARM_2,r7
	mov	_line_PARM_3,#0x00
	mov	_line_PARM_4,#0x00
	mov	_line_PARM_5,#0x00
	mov	_line_PARM_6,r7
	mov	_line_PARM_7,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_line
;	888n.c:882: delay(5000);
	mov	dptr,#0x1388
	lcall	_delay
	pop	ar7
;	888n.c:880: for (i=0;i<8;i++) {
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x88
	jc	00148$
;	888n.c:885: for (i=1;i<7;i++) {
	mov	r7,#0x01
00150$:
;	888n.c:886: line(i,i,7,7,7,i,0);
	mov	_line_PARM_2,r7
	mov	_line_PARM_3,#0x07
	mov	_line_PARM_4,#0x07
	mov	_line_PARM_5,#0x07
	mov	_line_PARM_6,r7
	mov	_line_PARM_7,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_line
;	888n.c:887: delay(5000);
	mov	dptr,#0x1388
	lcall	_delay
	pop	ar7
;	888n.c:885: for (i=1;i<7;i++) {
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x87
	jc	00150$
;	888n.c:890: for (i=1;i<8;i++) {
	mov	r7,#0x01
00152$:
;	888n.c:891: clear(0);
	mov	dpl,#0x00
	push	ar7
	lcall	_clear
	pop	ar7
;	888n.c:892: box(7,7,7,7-i,7-i,7-i,0,1);
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	r6,a
	mov	_box_PARM_2,#0x07
	mov	_box_PARM_3,#0x07
	mov	_box_PARM_4,r6
	mov	_box_PARM_5,r6
	mov	_box_PARM_6,r6
	mov	_box_PARM_7,#0x00
	mov	_box_PARM_8,#0x01
	mov	dpl,#0x07
	push	ar7
	lcall	_box
;	888n.c:893: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
	pop	ar7
;	888n.c:890: for (i=1;i<8;i++) {
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x88
	jc	00152$
;	888n.c:896: for (i=1;i<7;i++) {
	mov	r7,#0x01
00154$:
;	888n.c:897: clear(0);
	mov	dpl,#0x00
	push	ar7
	lcall	_clear
	pop	ar7
;	888n.c:898: box(0,0,0,7-i,7-i,7-i,0,1);
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	r6,a
	mov	_box_PARM_2,#0x00
	mov	_box_PARM_3,#0x00
	mov	_box_PARM_4,r6
	mov	_box_PARM_5,r6
	mov	_box_PARM_6,r6
	mov	_box_PARM_7,#0x00
	mov	_box_PARM_8,#0x01
	mov	dpl,#0x00
	push	ar7
	lcall	_box
;	888n.c:899: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
	pop	ar7
;	888n.c:896: for (i=1;i<7;i++) {
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x87
	jc	00154$
;	888n.c:902: for (i=1;i<8;i++) {
	mov	r7,#0x01
00156$:
;	888n.c:903: clear(0);
	mov	dpl,#0x00
	push	ar7
	lcall	_clear
	pop	ar7
;	888n.c:904: box(0,0,0,i,i,i,0,1);
	mov	_box_PARM_2,#0x00
	mov	_box_PARM_3,#0x00
	mov	_box_PARM_4,r7
	mov	_box_PARM_5,r7
	mov	_box_PARM_6,r7
	mov	_box_PARM_7,#0x00
	mov	_box_PARM_8,#0x01
	mov	dpl,#0x00
	push	ar7
	lcall	_box
;	888n.c:905: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
	pop	ar7
;	888n.c:902: for (i=1;i<8;i++) {
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x88
	jc	00156$
;	888n.c:908: for (i=1;i<7;i++) {
	mov	r7,#0x01
00158$:
;	888n.c:909: clear(0);
	mov	dpl,#0x00
	push	ar7
	lcall	_clear
	pop	ar7
;	888n.c:910: box(7,0,0,i,7-i,7-i,0,1);
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	r6,a
	mov	_box_PARM_2,#0x00
	mov	_box_PARM_3,#0x00
	mov	_box_PARM_4,r7
	mov	_box_PARM_5,r6
	mov	_box_PARM_6,r6
	mov	_box_PARM_7,#0x00
	mov	_box_PARM_8,#0x01
	mov	dpl,#0x07
	push	ar7
	lcall	_box
;	888n.c:911: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
	pop	ar7
;	888n.c:908: for (i=1;i<7;i++) {
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x87
	jc	00158$
;	888n.c:914: for (i=1;i<8;i++) {
	mov	r7,#0x01
00160$:
;	888n.c:915: box(7,0,0,7-i,i,i,1,1);
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	_box_PARM_4,a
	mov	_box_PARM_2,#0x00
	mov	_box_PARM_3,#0x00
	mov	_box_PARM_5,r7
	mov	_box_PARM_6,r7
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,#0x07
	push	ar7
	lcall	_box
;	888n.c:916: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
	pop	ar7
;	888n.c:914: for (i=1;i<8;i++) {
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x88
	jc	00160$
;	888n.c:919: for (i=1;i<7;i++) {
	mov	r7,#0x01
00162$:
;	888n.c:920: clear(0);
	mov	dpl,#0x00
	push	ar7
	lcall	_clear
	pop	ar7
;	888n.c:921: box(0,7,7,7-i,i,i,1,1);
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	_box_PARM_4,a
	mov	_box_PARM_2,#0x07
	mov	_box_PARM_3,#0x07
	mov	_box_PARM_5,r7
	mov	_box_PARM_6,r7
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,#0x00
	push	ar7
	lcall	_box
;	888n.c:922: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
	pop	ar7
;	888n.c:919: for (i=1;i<7;i++) {
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x87
	jc	00162$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_10'
;------------------------------------------------------------
;i                         Allocated with name '_flash_10_i_1_153'
;j                         Allocated to registers r6 
;an                        Allocated with name '_flash_10_an_1_153'
;x                         Allocated to registers r3 
;y                         Allocated to registers r4 
;t                         Allocated to registers r5 
;------------------------------------------------------------
;	888n.c:926: void flash_10()
;	-----------------------------------------
;	 function flash_10
;	-----------------------------------------
_flash_10:
;	888n.c:930: for (i=1;i<7;i++) {
	mov	r7,#0x01
00116$:
;	888n.c:931: clear(0);
	mov	dpl,#0x00
	push	ar7
	lcall	_clear
;	888n.c:932: box(0,6,6,1,7,7,1,1);
	mov	_box_PARM_2,#0x06
	mov	_box_PARM_3,#0x06
	mov	_box_PARM_4,#0x01
	mov	_box_PARM_5,#0x07
	mov	_box_PARM_6,#0x07
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,#0x00
	lcall	_box
	pop	ar7
;	888n.c:933: box(i,6,6-i,i+1,7,7-i,1,1);
	mov	a,#0x06
	clr	c
	subb	a,r7
	mov	r6,a
	mov	a,r7
	inc	a
	mov	r5,a
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	r4,a
	mov	_box_PARM_2,#0x06
	mov	_box_PARM_3,r6
	mov	_box_PARM_4,r5
	mov	_box_PARM_5,#0x07
	mov	_box_PARM_6,r4
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_box
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	888n.c:934: box(i,6,6,i+1,7,7,1,1);
	mov	_box_PARM_2,#0x06
	mov	_box_PARM_3,#0x06
	mov	_box_PARM_4,r5
	mov	_box_PARM_5,#0x07
	mov	_box_PARM_6,#0x07
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_box
	pop	ar4
	pop	ar5
	pop	ar6
;	888n.c:935: box(0,6,6-i,1,7,7-i,1,1);
	mov	_box_PARM_2,#0x06
	mov	_box_PARM_3,r6
	mov	_box_PARM_4,#0x01
	mov	_box_PARM_5,#0x07
	mov	_box_PARM_6,r4
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,#0x00
	push	ar6
	push	ar5
	push	ar4
	lcall	_box
	pop	ar4
	pop	ar5
	pop	ar6
;	888n.c:936: box(0,6-i,6,1,7-i,7,1,1);
	mov	_box_PARM_2,r6
	mov	_box_PARM_3,#0x06
	mov	_box_PARM_4,#0x01
	mov	_box_PARM_5,r4
	mov	_box_PARM_6,#0x07
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,#0x00
	push	ar6
	push	ar5
	push	ar4
	lcall	_box
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	888n.c:937: box(i,6-i,6-i,i+1,7-i,7-i,1,1);
	mov	_box_PARM_2,r6
	mov	_box_PARM_3,r6
	mov	_box_PARM_4,r5
	mov	_box_PARM_5,r4
	mov	_box_PARM_6,r4
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_box
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	888n.c:938: box(i,6-i,6,i+1,7-i,7,1,1);
	mov	_box_PARM_2,r6
	mov	_box_PARM_3,#0x06
	mov	_box_PARM_4,r5
	mov	_box_PARM_5,r4
	mov	_box_PARM_6,#0x07
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r7
	push	ar6
	push	ar5
	push	ar4
	lcall	_box
	pop	ar4
	pop	ar5
	pop	ar6
;	888n.c:939: box(0,6-i,6-i,1,7-i,7-i,1,1);
	mov	_box_PARM_2,r6
	mov	_box_PARM_3,r6
	mov	_box_PARM_4,#0x01
	mov	_box_PARM_5,r4
	mov	_box_PARM_6,r4
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,#0x00
	push	ar5
	lcall	_box
;	888n.c:940: delay(30000);
	mov	dptr,#0x7530
	lcall	_delay
	pop	ar5
;	888n.c:930: for (i=1;i<7;i++) {
	mov	ar7,r5
	cjne	r7,#0x07,00252$
00252$:
	jnc	00253$
	ljmp	00116$
00253$:
;	888n.c:943: for (i=0;i<4;i++) an[i]=6*i;
	mov	r7,#0x00
00118$:
	mov	a,r7
	add	a,#_flash_10_an_1_153
	mov	r1,a
	mov	a,r7
	mov	b,#0x06
	mul	ab
	mov	@r1,a
	inc	r7
	cjne	r7,#0x04,00254$
00254$:
	jc	00118$
;	888n.c:945: for (i=0;i<35;i++) {
	mov	_flash_10_i_1_153,#0x00
00124$:
;	888n.c:946: clear(0);
	mov	dpl,#0x00
	lcall	_clear
;	888n.c:947: for(j=0;j<4;j++) {
	mov	r6,#0x00
00120$:
;	888n.c:948: t=an[j]%24;
	mov	a,r6
	add	a,#_flash_10_an_1_153
	mov	r1,a
	mov	ar5,@r1
	mov	b,#0x18
	mov	a,r5
	div	ab
;	888n.c:949: x=dat3[t]>>4;
	mov	a,b
	mov	dptr,#_dat3
	movc	a,@a+dptr
	mov	r4,a
	swap	a
	anl	a,#0x0f
	mov	r3,a
;	888n.c:950: y=dat3[t]&0x0f;
	anl	ar4,#0x0f
;	888n.c:951: box(x,y,0,x+1,y+1,1,1,1);
	mov	a,r3
	inc	a
	mov	r2,a
	mov	a,r4
	inc	a
	mov	r7,a
	mov	_box_PARM_2,r4
	mov	_box_PARM_3,#0x00
	mov	_box_PARM_4,r2
	mov	_box_PARM_5,r7
	mov	_box_PARM_6,#0x01
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	lcall	_box
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	888n.c:952: box(x,y,6,x+1,y+1,7,1,1);
	mov	_box_PARM_2,r4
	mov	_box_PARM_3,#0x06
	mov	_box_PARM_4,r2
	mov	_box_PARM_5,r7
	mov	_box_PARM_6,#0x07
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r3
	push	ar6
	lcall	_box
	pop	ar6
;	888n.c:947: for(j=0;j<4;j++) {
	inc	r6
	cjne	r6,#0x04,00256$
00256$:
	jc	00120$
;	888n.c:954: for (j=0;j<4;j++) an[j]++; 
	mov	r7,#0x00
00122$:
	mov	a,r7
	add	a,#_flash_10_an_1_153
	mov	r1,a
	mov	a,@r1
	mov	r6,a
	inc	a
	mov	@r1,a
	inc	r7
	cjne	r7,#0x04,00258$
00258$:
	jc	00122$
;	888n.c:955: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
;	888n.c:945: for (i=0;i<35;i++) {
	inc	_flash_10_i_1_153
	mov	a,#0x100 - 0x23
	add	a,_flash_10_i_1_153
	jc	00260$
	ljmp	00124$
00260$:
;	888n.c:958: for (i=0;i<35;i++) {
	mov	_flash_10_i_1_153,#0x00
00130$:
;	888n.c:959: clear(0);
	mov	dpl,#0x00
	lcall	_clear
;	888n.c:960: for(j=0;j<4;j++) {
	mov	r6,#0x00
00126$:
;	888n.c:961: t=an[j]%24;
	mov	a,r6
	add	a,#_flash_10_an_1_153
	mov	r1,a
	mov	ar2,@r1
	mov	b,#0x18
	mov	a,r2
	div	ab
;	888n.c:962: x=dat3[t]>>4;
	mov	a,b
	mov	dptr,#_dat3
	movc	a,@a+dptr
	mov	r2,a
	swap	a
	anl	a,#0x0f
	mov	r3,a
;	888n.c:963: y=dat3[t]&0x0f;
	mov	a,#0x0f
	anl	a,r2
	mov	r4,a
;	888n.c:964: box(x,y,0,x+1,y+1,1,1,1);
	mov	a,r3
	inc	a
	mov	r2,a
	mov	a,r4
	inc	a
	mov	r7,a
	mov	_box_PARM_2,r4
	mov	_box_PARM_3,#0x00
	mov	_box_PARM_4,r2
	mov	_box_PARM_5,r7
	mov	_box_PARM_6,#0x01
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	lcall	_box
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	888n.c:965: box(x,y,6,x+1,y+1,7,1,1);
	mov	_box_PARM_2,r4
	mov	_box_PARM_3,#0x06
	mov	_box_PARM_4,r2
	mov	_box_PARM_5,r7
	mov	_box_PARM_6,#0x07
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r3
	push	ar6
	lcall	_box
	pop	ar6
;	888n.c:960: for(j=0;j<4;j++) {
	inc	r6
	cjne	r6,#0x04,00261$
00261$:
	jc	00126$
;	888n.c:968: for (j=0;j<4;j++) an[j]--; 
	mov	r7,#0x00
00128$:
	mov	a,r7
	add	a,#_flash_10_an_1_153
	mov	r1,a
	mov	a,@r1
	mov	r6,a
	dec	a
	mov	@r1,a
	inc	r7
	cjne	r7,#0x04,00263$
00263$:
	jc	00128$
;	888n.c:969: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
;	888n.c:958: for (i=0;i<35;i++) {
	inc	_flash_10_i_1_153
	mov	a,#0x100 - 0x23
	add	a,_flash_10_i_1_153
	jc	00265$
	ljmp	00130$
00265$:
;	888n.c:972: for (i=0;i<35;i++)
	mov	_flash_10_i_1_153,#0x00
00136$:
;	888n.c:974: clear(0);
	mov	dpl,#0x00
	lcall	_clear
;	888n.c:975: for(j=0;j<4;j++) {
	mov	r6,#0x00
00132$:
;	888n.c:976: t=an[j]%24;
	mov	a,r6
	add	a,#_flash_10_an_1_153
	mov	r1,a
	mov	ar2,@r1
	mov	b,#0x18
	mov	a,r2
	div	ab
;	888n.c:977: x=dat3[t]>>4;
	mov	a,b
	mov	dptr,#_dat3
	movc	a,@a+dptr
	mov	r2,a
	swap	a
	anl	a,#0x0f
	mov	r3,a
;	888n.c:978: y=dat3[t]&0x0f;
	mov	a,#0x0f
	anl	a,r2
	mov	r4,a
;	888n.c:979: box(x,0,y,x+1,1,y+1,1,1);
	mov	a,r3
	inc	a
	mov	r2,a
	mov	a,r4
	inc	a
	mov	r7,a
	mov	_box_PARM_2,#0x00
	mov	_box_PARM_3,r4
	mov	_box_PARM_4,r2
	mov	_box_PARM_5,#0x01
	mov	_box_PARM_6,r7
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	lcall	_box
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	888n.c:980: box(x,6,y,x+1,7,y+1,1,1);
	mov	_box_PARM_2,#0x06
	mov	_box_PARM_3,r4
	mov	_box_PARM_4,r2
	mov	_box_PARM_5,#0x07
	mov	_box_PARM_6,r7
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r3
	push	ar6
	lcall	_box
	pop	ar6
;	888n.c:975: for(j=0;j<4;j++) {
	inc	r6
	cjne	r6,#0x04,00266$
00266$:
	jc	00132$
;	888n.c:982: for (j=0;j<4;j++) an[j]++; 
	mov	r7,#0x00
00134$:
	mov	a,r7
	add	a,#_flash_10_an_1_153
	mov	r1,a
	mov	a,@r1
	mov	r6,a
	inc	a
	mov	@r1,a
	inc	r7
	cjne	r7,#0x04,00268$
00268$:
	jc	00134$
;	888n.c:983: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
;	888n.c:972: for (i=0;i<35;i++)
	inc	_flash_10_i_1_153
	mov	a,#0x100 - 0x23
	add	a,_flash_10_i_1_153
	jc	00270$
	ljmp	00136$
00270$:
;	888n.c:986: for (i=0;i<36;i++) {
	mov	r7,#0x00
00142$:
;	888n.c:987: clear(0);
	mov	dpl,#0x00
	push	ar7
	lcall	_clear
	pop	ar7
;	888n.c:988: for(j=0;j<4;j++) {
	mov	r6,#0x00
00138$:
;	888n.c:989: t=an[j]%24;
	mov	a,r6
	add	a,#_flash_10_an_1_153
	mov	r1,a
	mov	ar2,@r1
	mov	b,#0x18
	mov	a,r2
	div	ab
;	888n.c:990: x=dat3[t]>>4;
	mov	a,b
	mov	dptr,#_dat3
	movc	a,@a+dptr
	mov	r5,a
	swap	a
	anl	a,#0x0f
	mov	r3,a
;	888n.c:991: y=dat3[t]&0x0f;
	mov	a,#0x0f
	anl	a,r5
	mov	r4,a
;	888n.c:992: box(x,0,y,x+1,1,y+1,1,1);
	mov	a,r3
	inc	a
	mov	r5,a
	mov	a,r4
	inc	a
	mov	r2,a
	mov	_box_PARM_2,#0x00
	mov	_box_PARM_3,r4
	mov	_box_PARM_4,r5
	mov	_box_PARM_5,#0x01
	mov	_box_PARM_6,r2
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_box
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	888n.c:993: box(x,6,y,x+1,7,y+1,1,1);
	mov	_box_PARM_2,#0x06
	mov	_box_PARM_3,r4
	mov	_box_PARM_4,r5
	mov	_box_PARM_5,#0x07
	mov	_box_PARM_6,r2
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r3
	lcall	_box
	pop	ar6
	pop	ar7
;	888n.c:988: for(j=0;j<4;j++) {
	inc	r6
	cjne	r6,#0x04,00271$
00271$:
	jc	00138$
;	888n.c:995: for (j=0;j<4;j++) an[j]--; 
	mov	r6,#0x00
00140$:
	mov	a,r6
	add	a,#_flash_10_an_1_153
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	dec	a
	mov	@r1,a
	inc	r6
	cjne	r6,#0x04,00273$
00273$:
	jc	00140$
;	888n.c:996: delay(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_delay
	pop	ar7
;	888n.c:986: for (i=0;i<36;i++) {
	inc	r7
	cjne	r7,#0x24,00275$
00275$:
	jnc	00276$
	ljmp	00142$
00276$:
;	888n.c:999: for (i=6;i>0;i--) {
	mov	r7,#0x06
00144$:
;	888n.c:1000: clear(0);
	mov	dpl,#0x00
	push	ar7
	lcall	_clear
;	888n.c:1001: box(0,6,6,1,7,7,1,1);
	mov	_box_PARM_2,#0x06
	mov	_box_PARM_3,#0x06
	mov	_box_PARM_4,#0x01
	mov	_box_PARM_5,#0x07
	mov	_box_PARM_6,#0x07
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,#0x00
	lcall	_box
	pop	ar7
;	888n.c:1002: box(i,6,6-i,i+1,7,7-i,1,1);
	mov	a,#0x06
	clr	c
	subb	a,r7
	mov	r6,a
	mov	a,r7
	inc	a
	mov	r5,a
	mov	a,#0x07
	clr	c
	subb	a,r7
	mov	r4,a
	mov	_box_PARM_2,#0x06
	mov	_box_PARM_3,r6
	mov	_box_PARM_4,r5
	mov	_box_PARM_5,#0x07
	mov	_box_PARM_6,r4
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_box
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	888n.c:1003: box(i,6,6,i+1,7,7,1,1);
	mov	_box_PARM_2,#0x06
	mov	_box_PARM_3,#0x06
	mov	_box_PARM_4,r5
	mov	_box_PARM_5,#0x07
	mov	_box_PARM_6,#0x07
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_box
	pop	ar4
	pop	ar5
	pop	ar6
;	888n.c:1004: box(0,6,6-i,1,7,7-i,1,1);
	mov	_box_PARM_2,#0x06
	mov	_box_PARM_3,r6
	mov	_box_PARM_4,#0x01
	mov	_box_PARM_5,#0x07
	mov	_box_PARM_6,r4
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,#0x00
	push	ar6
	push	ar5
	push	ar4
	lcall	_box
	pop	ar4
	pop	ar5
	pop	ar6
;	888n.c:1005: box(0,6-i,6,1,7-i,7,1,1);
	mov	_box_PARM_2,r6
	mov	_box_PARM_3,#0x06
	mov	_box_PARM_4,#0x01
	mov	_box_PARM_5,r4
	mov	_box_PARM_6,#0x07
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,#0x00
	push	ar6
	push	ar5
	push	ar4
	lcall	_box
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	888n.c:1006: box(i,6-i,6-i,i+1,7-i,7-i,1,1);
	mov	_box_PARM_2,r6
	mov	_box_PARM_3,r6
	mov	_box_PARM_4,r5
	mov	_box_PARM_5,r4
	mov	_box_PARM_6,r4
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_box
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	888n.c:1007: box(i,6-i,6,i+1,7-i,7,1,1);
	mov	_box_PARM_2,r6
	mov	_box_PARM_3,#0x06
	mov	_box_PARM_4,r5
	mov	_box_PARM_5,r4
	mov	_box_PARM_6,#0x07
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar4
	lcall	_box
	pop	ar4
	pop	ar6
;	888n.c:1008: box(0,6-i,6-i,1,7-i,7-i,1,1);
	mov	_box_PARM_2,r6
	mov	_box_PARM_3,r6
	mov	_box_PARM_4,#0x01
	mov	_box_PARM_5,r4
	mov	_box_PARM_6,r4
	mov	_box_PARM_7,#0x01
	mov	_box_PARM_8,#0x01
	mov	dpl,#0x00
	lcall	_box
;	888n.c:1009: delay(30000);
	mov	dptr,#0x7530
	lcall	_delay
	pop	ar7
;	888n.c:999: for (i=6;i>0;i--) {
	djnz	r7,00277$
	ret
00277$:
	ljmp	00144$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_11'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;j                         Allocated to registers r7 
;t                         Allocated to registers r4 
;x                         Allocated to registers r4 
;y                         Allocated to registers r5 
;------------------------------------------------------------
;	888n.c:1013: void flash_11()
;	-----------------------------------------
;	 function flash_11
;	-----------------------------------------
_flash_11:
;	888n.c:1019: for (j=0; j<5; j++) {
	mov	r7,#0x00
;	888n.c:1020: for (i=0; i<13; i++) {
00125$:
	mov	r6,#0x00
00110$:
;	888n.c:1021: if (daa[i]>>4) {
	mov	a,r6
	mov	dptr,#_flash_11_daa_1_164
	movc	a,@a+dptr
	mov	r5,a
	swap	a
	anl	a,#0x0f
	mov	r4,a
	jz	00102$
;	888n.c:1022: t=daa[i]&0x0f;
	mov	a,#0x0f
	anl	a,r5
;	888n.c:1023: line (0,0,t+1,0,7,t+1,1);
	mov	r4,a
	inc	a
	mov	r3,a
	mov	_line_PARM_2,#0x00
	mov	_line_PARM_3,r3
	mov	_line_PARM_4,#0x00
	mov	_line_PARM_5,#0x07
	mov	_line_PARM_6,r3
	mov	_line_PARM_7,#0x01
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar4
	lcall	_line
	pop	ar4
	pop	ar6
	pop	ar7
	sjmp	00103$
00102$:
;	888n.c:1025: t=daa[i];
	mov	ar4,r5
00103$:
;	888n.c:1027: line (0,0,t,0,7,t,1);
	mov	_line_PARM_2,#0x00
	mov	_line_PARM_3,r4
	mov	_line_PARM_4,#0x00
	mov	_line_PARM_5,#0x07
	mov	_line_PARM_6,r4
	mov	_line_PARM_7,#0x01
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_line
;	888n.c:1028: transss();
	lcall	_transss
;	888n.c:1029: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
	pop	ar6
	pop	ar7
;	888n.c:1020: for (i=0; i<13; i++) {
	inc	r6
	cjne	r6,#0x0d,00165$
00165$:
	jc	00110$
;	888n.c:1019: for (j=0; j<5; j++) {
	inc	r7
	cjne	r7,#0x05,00167$
00167$:
	jc	00125$
;	888n.c:1033: for (j=1; j<8; j++) {
	mov	r7,#0x01
00116$:
;	888n.c:1036: for (i=0; i<24; i+=j) {
	mov	r6,#0x00
00114$:
;	888n.c:1037: x=dat3[i]>>4;
	mov	a,r6
	mov	dptr,#_dat3
	movc	a,@a+dptr
	mov	r5,a
	swap	a
	anl	a,#0x0f
	mov	r4,a
;	888n.c:1038: y=dat3[i]&0x0f;
	anl	ar5,#0x0f
;	888n.c:1039: box_apeak_xy(0, x, y, 0, x+1, y+1, 1, 1);
	mov	a,r4
	inc	a
	mov	_box_apeak_xy_PARM_5,a
	mov	a,r5
	inc	a
	mov	_box_apeak_xy_PARM_6,a
	mov	_box_apeak_xy_PARM_2,r4
	mov	_box_apeak_xy_PARM_3,r5
	mov	_box_apeak_xy_PARM_4,#0x00
	mov	_box_apeak_xy_PARM_7,#0x01
	mov	_box_apeak_xy_PARM_8,#0x01
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_box_apeak_xy
;	888n.c:1040: transss();
	lcall	_transss
;	888n.c:1041: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
	pop	ar6
	pop	ar7
;	888n.c:1036: for (i=0; i<24; i+=j) {
	mov	a,r7
	add	a,r6
	mov	r6,a
	cjne	r6,#0x18,00169$
00169$:
	jc	00114$
;	888n.c:1033: for (j=1; j<8; j++) {
	inc	r7
	cjne	r7,#0x08,00171$
00171$:
	jc	00116$
;	888n.c:1045: for (j=1;j<8;j++)
	mov	r7,#0x01
00120$:
;	888n.c:1049: for (i=0; i<24; i+=j) {
	mov	r6,#0x00
00118$:
;	888n.c:1050: x=dat3[i]>>4;
	mov	a,r6
	mov	dptr,#_dat3
	movc	a,@a+dptr
	mov	r5,a
	swap	a
	anl	a,#0x0f
	mov	_point_PARM_2,a
;	888n.c:1051: y=dat3[i]&0x0f;
	mov	a,#0x0f
	anl	a,r5
	mov	_point_PARM_3,a
;	888n.c:1052: point (0,x,y,1);
	mov	_point_PARM_4,#0x01
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_point
;	888n.c:1053: transss();
	lcall	_transss
;	888n.c:1054: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
	pop	ar6
	pop	ar7
;	888n.c:1049: for (i=0; i<24; i+=j) {
	mov	a,r7
	add	a,r6
	mov	r6,a
	cjne	r6,#0x18,00173$
00173$:
	jc	00118$
;	888n.c:1045: for (j=1;j<8;j++)
	inc	r7
	cjne	r7,#0x08,00175$
00175$:
	jc	00120$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	888n.c:1060: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	888n.c:1062: sinter();
	lcall	_sinter
;	888n.c:1064: while (1) {
00102$:
;	888n.c:1069: clear(0);
	mov	dpl,#0x00
	lcall	_clear
;	888n.c:1070: flash_2();
	lcall	_flash_2
;	888n.c:1071: flash_3();
	lcall	_flash_3
;	888n.c:1072: flash_4();
	lcall	_flash_4
;	888n.c:1073: flash_4();
	lcall	_flash_4
;	888n.c:1074: flash_5();
	lcall	_flash_5
;	888n.c:1075: flash_5();
	lcall	_flash_5
;	888n.c:1076: flash_6();
	lcall	_flash_6
;	888n.c:1077: flash_7();
	lcall	_flash_7
;	888n.c:1078: flash_8();
	lcall	_flash_8
;	888n.c:1079: flash_9();
	lcall	_flash_9
;	888n.c:1080: flash_10();
	lcall	_flash_10
;	888n.c:1081: clear (0);
	mov	dpl,#0x00
	lcall	_clear
;	888n.c:1082: flash_11();
	lcall	_flash_11
;	888n.c:1083: flash_9();
	lcall	_flash_9
;	888n.c:1084: flash_5();
	lcall	_flash_5
;	888n.c:1085: flash_7();
	lcall	_flash_7
;	888n.c:1086: flash_5();
	lcall	_flash_5
;	888n.c:1087: flash_6();
	lcall	_flash_6
;	888n.c:1088: flash_8();
	lcall	_flash_8
;	888n.c:1089: flash_9();
	lcall	_flash_9
;	888n.c:1090: flash_10();
	lcall	_flash_10
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'print'
;------------------------------------------------------------
;layer                     Allocated with name '_print_layer_1_174'
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	888n.c:1097: void print() __interrupt (1)
;	-----------------------------------------
;	 function print
;	-----------------------------------------
_print:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	888n.c:1102: P1=0;
	mov	_P1,#0x00
;	888n.c:1103: for (i=0; i<8; i++) {
	mov	r7,#0x00
00105$:
;	888n.c:1104: P2=1<<i;
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00121$
00119$:
	add	a,acc
00121$:
	djnz	b,00119$
	mov	_P2,a
;	888n.c:1105: delay(3);
	mov	dptr,#0x0003
	push	ar7
	lcall	_delay
	pop	ar7
;	888n.c:1106: P0=display[layer][i];
	mov	a,_print_layer_1_174
	mov	b,#0x08
	mul	ab
	add	a,#_display
	mov	r5,a
	mov	a,#(_display >> 8)
	addc	a,b
	mov	r6,a
	mov	a,r7
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	_P0,a
;	888n.c:1107: delay(3);
	mov	dptr,#0x0003
	push	ar7
	lcall	_delay
	pop	ar7
;	888n.c:1103: for (i=0; i<8; i++) {
	inc	r7
	cjne	r7,#0x08,00122$
00122$:
	jc	00105$
;	888n.c:1110: P1=1<<layer;
	mov	b,_print_layer_1_174
	inc	b
	mov	a,#0x01
	sjmp	00126$
00124$:
	add	a,acc
00126$:
	djnz	b,00124$
	mov	_P1,a
;	888n.c:1111: if (layer<7) 
	mov	a,#0x100 - 0x07
	add	a,_print_layer_1_174
	jc	00103$
;	888n.c:1112: layer++;
	inc	_print_layer_1_174
	sjmp	00104$
00103$:
;	888n.c:1114: layer=0;
	mov	_print_layer_1_174,#0x00
00104$:
;	888n.c:1116: TH0=0xc0;
	mov	_TH0,#0xc0
;	888n.c:1117: TL0=0;
	mov	_TL0,#0x00
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
_table_cha:
	.db #0x51	; 81	'Q'
	.db #0x51	; 81	'Q'
	.db #0x51	; 81	'Q'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x18	; 24
	.db #0x1c	; 28
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0xf6	; 246
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x60	; 96
	.db #0x38	; 56	'8'
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x30	; 48	'0'
	.db #0x38	; 56	'8'
	.db #0x3c	; 60
	.db #0x3e	; 62
	.db #0x36	; 54	'6'
	.db #0x7e	; 126
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x7e	; 126
	.db #0x3c	; 60
_table_id:
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x89	; 137
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x27	; 39
	.db #0x27	; 39
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x8f	; 143
	.db #0x89	; 137
	.db #0x89	; 137
	.db #0xf9	; 249
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
_dat:
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0x80	; 128
	.db #0xa0	; 160
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe4	; 228
	.db #0xe8	; 232
	.db #0xec	; 236
	.db #0xf0	; 240
	.db #0xf4	; 244
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0xdc	; 220
	.db #0xbc	; 188
	.db #0x9c	; 156
	.db #0x7c	; 124
	.db #0x5c	; 92
	.db #0x3c	; 60
	.db #0x1c	; 28
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x25	; 37
	.db #0x45	; 69	'E'
	.db #0x65	; 101	'e'
	.db #0x85	; 133
	.db #0xa5	; 165
	.db #0xc5	; 197
	.db #0xc9	; 201
	.db #0xcd	; 205
	.db #0xd1	; 209
	.db #0xd5	; 213
	.db #0xd9	; 217
	.db #0xb9	; 185
	.db #0x99	; 153
	.db #0x79	; 121	'y'
	.db #0x59	; 89	'Y'
	.db #0x39	; 57	'9'
	.db #0x35	; 53	'5'
	.db #0x31	; 49	'1'
	.db #0x2d	; 45
	.db #0x29	; 41
	.db #0x4a	; 74	'J'
	.db #0x6a	; 106	'j'
	.db #0x8a	; 138
	.db #0xaa	; 170
	.db #0xae	; 174
	.db #0xb2	; 178
	.db #0xb6	; 182
	.db #0x96	; 150
	.db #0x76	; 118	'v'
	.db #0x56	; 86	'V'
	.db #0x52	; 82	'R'
	.db #0x4e	; 78	'N'
	.db #0x6f	; 111	'o'
	.db #0x8f	; 143
	.db #0x93	; 147
	.db #0x73	; 115	's'
	.db #0x6f	; 111	'o'
	.db #0x8f	; 143
	.db #0x93	; 147
	.db #0x73	; 115	's'
	.db #0x4a	; 74	'J'
	.db #0x6a	; 106	'j'
	.db #0x8a	; 138
	.db #0xaa	; 170
	.db #0xae	; 174
	.db #0xb2	; 178
	.db #0xb6	; 182
	.db #0x96	; 150
	.db #0x76	; 118	'v'
	.db #0x56	; 86	'V'
	.db #0x52	; 82	'R'
	.db #0x4e	; 78	'N'
	.db #0x25	; 37
	.db #0x45	; 69	'E'
	.db #0x65	; 101	'e'
	.db #0x85	; 133
	.db #0xa5	; 165
	.db #0xc5	; 197
	.db #0xc9	; 201
	.db #0xcd	; 205
	.db #0xd1	; 209
	.db #0xd5	; 213
	.db #0xd9	; 217
	.db #0xb9	; 185
	.db #0x99	; 153
	.db #0x79	; 121	'y'
	.db #0x59	; 89	'Y'
	.db #0x39	; 57	'9'
	.db #0x35	; 53	'5'
	.db #0x31	; 49	'1'
	.db #0x2d	; 45
	.db #0x29	; 41
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0x80	; 128
	.db #0xa0	; 160
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe4	; 228
	.db #0xe8	; 232
	.db #0xec	; 236
	.db #0xf0	; 240
	.db #0xf4	; 244
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0xdc	; 220
	.db #0xbc	; 188
	.db #0x9c	; 156
	.db #0x7c	; 124
	.db #0x5c	; 92
	.db #0x3c	; 60
	.db #0x1c	; 28
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x04	; 4
_dat2:
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0x80	; 128
	.db #0xa0	; 160
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe4	; 228
	.db #0xe8	; 232
	.db #0xec	; 236
	.db #0xf0	; 240
	.db #0xf4	; 244
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0xdc	; 220
	.db #0xbc	; 188
	.db #0x9c	; 156
	.db #0x7c	; 124
	.db #0x5c	; 92
	.db #0x3c	; 60
	.db #0x1c	; 28
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x04	; 4
_dat3:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x16	; 22
	.db #0x26	; 38
	.db #0x36	; 54	'6'
	.db #0x46	; 70	'F'
	.db #0x56	; 86	'V'
	.db #0x66	; 102	'f'
	.db #0x65	; 101	'e'
	.db #0x64	; 100	'd'
	.db #0x63	; 99	'c'
	.db #0x62	; 98	'b'
	.db #0x61	; 97	'a'
	.db #0x60	; 96
	.db #0x50	; 80	'P'
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x10	; 16
_table_3p:
	.db #0xff	; 255
	.db #0x89	; 137
	.db #0xf5	; 245
	.db #0x93	; 147
	.db #0x93	; 147
	.db #0xf5	; 245
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x0e	; 14
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x0e	; 14
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
_flash_11_daa_1_164:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x23	; 35
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x23	; 35
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
