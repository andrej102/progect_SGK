   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.21 - 04 Feb 2014
   3                     ; Generator (Limited) V4.3.12 - 11 Feb 2014
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
  47                     ; 44 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  47                     ; 45 {
  48                     	switch	.text
  49  0000               f_NonHandledInterrupt:
  53                     ; 47 }
  56  0000 80            	iret	
  78                     ; 50 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  78                     ; 51 {
  79                     	switch	.text
  80  0001               f_TRAP_IRQHandler:
  84                     ; 53 }
  87  0001 80            	iret	
 109                     ; 55 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 109                     ; 56 
 109                     ; 57 {
 110                     	switch	.text
 111  0002               f_TLI_IRQHandler:
 115                     ; 59 }
 118  0002 80            	iret	
 140                     ; 61 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 140                     ; 62 {
 141                     	switch	.text
 142  0003               f_AWU_IRQHandler:
 146                     ; 64 }
 149  0003 80            	iret	
 171                     ; 66 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 171                     ; 67 {
 172                     	switch	.text
 173  0004               f_CLK_IRQHandler:
 177                     ; 69 }
 180  0004 80            	iret	
 203                     ; 71 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 203                     ; 72 {
 204                     	switch	.text
 205  0005               f_EXTI_PORTA_IRQHandler:
 209                     ; 74 }
 212  0005 80            	iret	
 235                     ; 76 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 235                     ; 77 {
 236                     	switch	.text
 237  0006               f_EXTI_PORTB_IRQHandler:
 241                     ; 79 }
 244  0006 80            	iret	
 267                     ; 81 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 267                     ; 82 {
 268                     	switch	.text
 269  0007               f_EXTI_PORTC_IRQHandler:
 273                     ; 84 }
 276  0007 80            	iret	
 299                     ; 86 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 299                     ; 87 {
 300                     	switch	.text
 301  0008               f_EXTI_PORTD_IRQHandler:
 305                     ; 89 }
 308  0008 80            	iret	
 331                     ; 91 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 331                     ; 92 {
 332                     	switch	.text
 333  0009               f_EXTI_PORTE_IRQHandler:
 337                     ; 94 }
 340  0009 80            	iret	
 364                     ; 96 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 364                     ; 97 {
 365                     	switch	.text
 366  000a               f_SPI_IRQHandler:
 370                     ; 99 	if (IndicatorsDataPointer < 13)
 372  000a c60000        	ld	a,_IndicatorsDataPointer
 373  000d a10d          	cp	a,#13
 374  000f 240d          	jruge	L141
 375                     ; 101 	 SPI->DR = IndicatorsData[IndicatorsDataPointer];
 377  0011 5f            	clrw	x
 378  0012 97            	ld	xl,a
 379  0013 d60000        	ld	a,(_IndicatorsData,x)
 380  0016 c75204        	ld	20996,a
 381                     ; 103 	 IndicatorsDataPointer++;
 383  0019 725c0000      	inc	_IndicatorsDataPointer
 386  001d 80            	iret	
 387  001e               L141:
 388                     ; 105 else {GPIOC->ODR |= LED_COM_C; SPI->ICR &= ~SPI_ICR_TXEI; /*SPI_ITConfig(SPI_IT_TXE, DISABLE);*/}
 390  001e 721e500a      	bset	20490,#7
 393  0022 721f5202      	bres	20994,#7
 394                     ; 106 }
 397  0026 80            	iret	
 420                     ; 108 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 420                     ; 109 {
 421                     	switch	.text
 422  0027               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 426                     ; 111 }
 429  0027 80            	iret	
 452                     ; 113 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 452                     ; 114 {
 453                     	switch	.text
 454  0028               f_TIM1_CAP_COM_IRQHandler:
 458                     ; 116 }
 461  0028 80            	iret	
 490                     ; 118 INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 490                     ; 119 {	
 491                     	switch	.text
 492  0029               f_TIM2_UPD_OVF_BRK_IRQHandler:
 496                     ; 121 	TIM2->SR1 &= ~TIM2_SR1_UIF;
 498  0029 72115302      	bres	21250,#0
 499                     ; 123 	if (Device.CnPol == PolarityP)
 501  002d 720e000053    	btjt	_Device,#7,L571
 502                     ; 125 		TIM2->ARRH = 0x00;
 504  0032 725f530d      	clr	21261
 505                     ; 126 		TIM2->ARRL = 0x3C;
 507  0036 353c530e      	mov	21262,#60
 508                     ; 128 		if (Chenal1Number > 0) {OutPWM[0] |= OP1; OutPWM[Chenal1Number] |= OP1;}
 510  003a c60000        	ld	a,_Chenal1Number
 511  003d 270e          	jreq	L771
 514  003f 72140000      	bset	_OutPWM,#2
 517  0043 5f            	clrw	x
 518  0044 97            	ld	xl,a
 519  0045 d60000        	ld	a,(_OutPWM,x)
 520  0048 aa04          	or	a,#4
 521  004a d70000        	ld	(_OutPWM,x),a
 522  004d               L771:
 523                     ; 129 		if (Chenal2Number > 0) {OutPWM[0] |= OP2; OutPWM[Chenal2Number] |= OP2;}
 525  004d c60000        	ld	a,_Chenal2Number
 526  0050 270e          	jreq	L102
 529  0052 72180000      	bset	_OutPWM,#4
 532  0056 5f            	clrw	x
 533  0057 97            	ld	xl,a
 534  0058 d60000        	ld	a,(_OutPWM,x)
 535  005b aa10          	or	a,#16
 536  005d d70000        	ld	(_OutPWM,x),a
 537  0060               L102:
 538                     ; 130 		if (Chenal3Number > 0) {OutPWM[0] |= OP3; OutPWM[Chenal3Number] |= OP3;}
 540  0060 c60000        	ld	a,_Chenal3Number
 541  0063 270e          	jreq	L302
 544  0065 72120000      	bset	_OutPWM,#1
 547  0069 5f            	clrw	x
 548  006a 97            	ld	xl,a
 549  006b d60000        	ld	a,(_OutPWM,x)
 550  006e aa02          	or	a,#2
 551  0070 d70000        	ld	(_OutPWM,x),a
 552  0073               L302:
 553                     ; 131 		if (Chenal4Number > 0) {OutPWM[0] |= OP4; OutPWM[Chenal4Number] |= OP4;}
 555  0073 c60000        	ld	a,_Chenal4Number
 556  0076 2761          	jreq	L702
 559  0078 72160000      	bset	_OutPWM,#3
 562  007c 5f            	clrw	x
 563  007d 97            	ld	xl,a
 564  007e d60000        	ld	a,(_OutPWM,x)
 565  0081 aa08          	or	a,#8
 566  0083 2051          	jpf	LC001
 567  0085               L571:
 568                     ; 136 		TIM2->ARRH = 0x03;
 570  0085 3503530d      	mov	21261,#3
 571                     ; 137 		TIM2->ARRL = 0xAC;
 573  0089 35ac530e      	mov	21262,#172
 574                     ; 139 		if (Chenal1Number > 0) {OutPWM[0] |= ON1; OutPWM[Chenal1Number] |= ON1;}
 576  008d c60000        	ld	a,_Chenal1Number
 577  0090 270e          	jreq	L112
 580  0092 72160000      	bset	_OutPWM,#3
 583  0096 5f            	clrw	x
 584  0097 97            	ld	xl,a
 585  0098 d60000        	ld	a,(_OutPWM,x)
 586  009b aa08          	or	a,#8
 587  009d d70000        	ld	(_OutPWM,x),a
 588  00a0               L112:
 589                     ; 140 		if (Chenal2Number > 0) {OutPWM[0] |= ON2; OutPWM[Chenal2Number] |= ON2;}
 591  00a0 c60000        	ld	a,_Chenal2Number
 592  00a3 270e          	jreq	L312
 595  00a5 721c0000      	bset	_OutPWM,#6
 598  00a9 5f            	clrw	x
 599  00aa 97            	ld	xl,a
 600  00ab d60000        	ld	a,(_OutPWM,x)
 601  00ae aa40          	or	a,#64
 602  00b0 d70000        	ld	(_OutPWM,x),a
 603  00b3               L312:
 604                     ; 141 		if (Chenal3Number > 0) {OutPWM[0] |= ON3; OutPWM[Chenal3Number] |= ON3;}
 606  00b3 c60000        	ld	a,_Chenal3Number
 607  00b6 270e          	jreq	L512
 610  00b8 72140000      	bset	_OutPWM,#2
 613  00bc 5f            	clrw	x
 614  00bd 97            	ld	xl,a
 615  00be d60000        	ld	a,(_OutPWM,x)
 616  00c1 aa04          	or	a,#4
 617  00c3 d70000        	ld	(_OutPWM,x),a
 618  00c6               L512:
 619                     ; 142 		if (Chenal4Number > 0) {OutPWM[0] |= ON4; OutPWM[Chenal4Number] |= ON4;}
 621  00c6 c60000        	ld	a,_Chenal4Number
 622  00c9 270e          	jreq	L702
 625  00cb 721a0000      	bset	_OutPWM,#5
 628  00cf 5f            	clrw	x
 629  00d0 97            	ld	xl,a
 630  00d1 d60000        	ld	a,(_OutPWM,x)
 631  00d4 aa20          	or	a,#32
 632  00d6               LC001:
 633  00d6 d70000        	ld	(_OutPWM,x),a
 634  00d9               L702:
 635                     ; 148 		LD		A,_OutPWM
 638  00d9 c60000        	ld	A,_OutPWM
 640                     ; 150 		XOR		A,_OutPWM+1
 643  00dc c80001        	xor	A,_OutPWM+1
 645                     ; 151 		LD    _OutPWM+1,A
 648  00df c70001        	ld	_OutPWM+1,A
 650                     ; 152 		XOR		A,_OutPWM+2
 653  00e2 c80002        	xor	A,_OutPWM+2
 655                     ; 153 		LD    _OutPWM+2,A
 658  00e5 c70002        	ld	_OutPWM+2,A
 660                     ; 154 		XOR		A,_OutPWM+3
 663  00e8 c80003        	xor	A,_OutPWM+3
 665                     ; 155 		LD    _OutPWM+3,A
 668  00eb c70003        	ld	_OutPWM+3,A
 670                     ; 156 		XOR		A,_OutPWM+4
 673  00ee c80004        	xor	A,_OutPWM+4
 675                     ; 157 		LD    _OutPWM+4,A
 678  00f1 c70004        	ld	_OutPWM+4,A
 680                     ; 158 		XOR		A,_OutPWM+5
 683  00f4 c80005        	xor	A,_OutPWM+5
 685                     ; 159 		LD    _OutPWM+5,A
 688  00f7 c70005        	ld	_OutPWM+5,A
 690                     ; 160 		XOR		A,_OutPWM+6
 693  00fa c80006        	xor	A,_OutPWM+6
 695                     ; 161 		LD    _OutPWM+6,A
 698  00fd c70006        	ld	_OutPWM+6,A
 700                     ; 162 		XOR		A,_OutPWM+7
 703  0100 c80007        	xor	A,_OutPWM+7
 705                     ; 163 		LD    _OutPWM+7,A
 708  0103 c70007        	ld	_OutPWM+7,A
 710                     ; 164 		XOR		A,_OutPWM+8
 713  0106 c80008        	xor	A,_OutPWM+8
 715                     ; 165 		LD    _OutPWM+8,A
 718  0109 c70008        	ld	_OutPWM+8,A
 720                     ; 166 		XOR		A,_OutPWM+9
 723  010c c80009        	xor	A,_OutPWM+9
 725                     ; 167 		LD    _OutPWM+9,A
 728  010f c70009        	ld	_OutPWM+9,A
 730                     ; 169 		XOR		A,_OutPWM+10
 733  0112 c8000a        	xor	A,_OutPWM+10
 735                     ; 170 		LD    _OutPWM+10,A
 738  0115 c7000a        	ld	_OutPWM+10,A
 740                     ; 171 		XOR		A,_OutPWM+11	
 743  0118 c8000b        	xor	A,_OutPWM+11
 745                     ; 172 		LD    _OutPWM+11,A
 748  011b c7000b        	ld	_OutPWM+11,A
 750                     ; 173 		XOR		A,_OutPWM+12
 753  011e c8000c        	xor	A,_OutPWM+12
 755                     ; 174 		LD    _OutPWM+12,A
 758  0121 c7000c        	ld	_OutPWM+12,A
 760                     ; 175 		XOR		A,_OutPWM+13
 763  0124 c8000d        	xor	A,_OutPWM+13
 765                     ; 176 		LD    _OutPWM+13,A
 768  0127 c7000d        	ld	_OutPWM+13,A
 770                     ; 177 		XOR		A,_OutPWM+14
 773  012a c8000e        	xor	A,_OutPWM+14
 775                     ; 178 		LD    _OutPWM+14,A
 778  012d c7000e        	ld	_OutPWM+14,A
 780                     ; 179 		XOR		A,_OutPWM+15
 783  0130 c8000f        	xor	A,_OutPWM+15
 785                     ; 180 		LD    _OutPWM+15,A
 788  0133 c7000f        	ld	_OutPWM+15,A
 790                     ; 181 		XOR		A,_OutPWM+16
 793  0136 c80010        	xor	A,_OutPWM+16
 795                     ; 182 		LD    _OutPWM+16,A
 798  0139 c70010        	ld	_OutPWM+16,A
 800                     ; 183 		XOR		A,_OutPWM+17
 803  013c c80011        	xor	A,_OutPWM+17
 805                     ; 184 		LD    _OutPWM+17,A
 808  013f c70011        	ld	_OutPWM+17,A
 810                     ; 185 		XOR		A,_OutPWM+18
 813  0142 c80012        	xor	A,_OutPWM+18
 815                     ; 186 		LD    _OutPWM+18,A
 818  0145 c70012        	ld	_OutPWM+18,A
 820                     ; 187 		XOR		A,_OutPWM+19
 823  0148 c80013        	xor	A,_OutPWM+19
 825                     ; 188 		LD    _OutPWM+19,A
 828  014b c70013        	ld	_OutPWM+19,A
 830                     ; 190 		XOR		A,_OutPWM+20
 833  014e c80014        	xor	A,_OutPWM+20
 835                     ; 191 		LD    _OutPWM+20,A
 838  0151 c70014        	ld	_OutPWM+20,A
 840                     ; 192 		XOR		A,_OutPWM+21
 843  0154 c80015        	xor	A,_OutPWM+21
 845                     ; 193 		LD    _OutPWM+21,A
 848  0157 c70015        	ld	_OutPWM+21,A
 850                     ; 194 		XOR		A,_OutPWM+22
 853  015a c80016        	xor	A,_OutPWM+22
 855                     ; 195 		LD    _OutPWM+22,A
 858  015d c70016        	ld	_OutPWM+22,A
 860                     ; 196 		XOR		A,_OutPWM+23
 863  0160 c80017        	xor	A,_OutPWM+23
 865                     ; 197 		LD    _OutPWM+23,A
 868  0163 c70017        	ld	_OutPWM+23,A
 870                     ; 198 		XOR		A,_OutPWM+24
 873  0166 c80018        	xor	A,_OutPWM+24
 875                     ; 199 		LD    _OutPWM+24,A
 878  0169 c70018        	ld	_OutPWM+24,A
 880                     ; 200 		XOR		A,_OutPWM+25
 883  016c c80019        	xor	A,_OutPWM+25
 885                     ; 201 		LD    _OutPWM+25,A
 888  016f c70019        	ld	_OutPWM+25,A
 890                     ; 202 		XOR		A,_OutPWM+26
 893  0172 c8001a        	xor	A,_OutPWM+26
 895                     ; 203 		LD    _OutPWM+26,A
 898  0175 c7001a        	ld	_OutPWM+26,A
 900                     ; 204 		XOR		A,_OutPWM+27
 903  0178 c8001b        	xor	A,_OutPWM+27
 905                     ; 205 		LD    _OutPWM+27,A
 908  017b c7001b        	ld	_OutPWM+27,A
 910                     ; 206 		XOR		A,_OutPWM+28
 913  017e c8001c        	xor	A,_OutPWM+28
 915                     ; 207 		LD    _OutPWM+28,A
 918  0181 c7001c        	ld	_OutPWM+28,A
 920                     ; 208 		XOR		A,_OutPWM+29
 923  0184 c8001d        	xor	A,_OutPWM+29
 925                     ; 209 		LD    _OutPWM+29,A
 928  0187 c7001d        	ld	_OutPWM+29,A
 930                     ; 211 		XOR		A,_OutPWM+30
 933  018a c8001e        	xor	A,_OutPWM+30
 935                     ; 212 		LD    _OutPWM+30,A
 938  018d c7001e        	ld	_OutPWM+30,A
 940                     ; 213 		XOR		A,_OutPWM+31
 943  0190 c8001f        	xor	A,_OutPWM+31
 945                     ; 214 		LD    _OutPWM+31,A
 948  0193 c7001f        	ld	_OutPWM+31,A
 950                     ; 215 		XOR		A,_OutPWM+32
 953  0196 c80020        	xor	A,_OutPWM+32
 955                     ; 216 		LD    _OutPWM+32,A
 958  0199 c70020        	ld	_OutPWM+32,A
 960                     ; 217 		XOR		A,_OutPWM+33
 963  019c c80021        	xor	A,_OutPWM+33
 965                     ; 218 		LD    _OutPWM+33,A
 968  019f c70021        	ld	_OutPWM+33,A
 970                     ; 219 		XOR		A,_OutPWM+34
 973  01a2 c80022        	xor	A,_OutPWM+34
 975                     ; 220 		LD    _OutPWM+34,A
 978  01a5 c70022        	ld	_OutPWM+34,A
 980                     ; 221 		XOR		A,_OutPWM+35
 983  01a8 c80023        	xor	A,_OutPWM+35
 985                     ; 222 		LD    _OutPWM+35,A
 988  01ab c70023        	ld	_OutPWM+35,A
 990                     ; 223 		XOR		A,_OutPWM+36
 993  01ae c80024        	xor	A,_OutPWM+36
 995                     ; 224 		LD    _OutPWM+36,A
 998  01b1 c70024        	ld	_OutPWM+36,A
1000                     ; 225 		XOR		A,_OutPWM+37
1003  01b4 c80025        	xor	A,_OutPWM+37
1005                     ; 226 		LD    _OutPWM+37,A
1008  01b7 c70025        	ld	_OutPWM+37,A
1010                     ; 227 		XOR		A,_OutPWM+38
1013  01ba c80026        	xor	A,_OutPWM+38
1015                     ; 228 		LD    _OutPWM+38,A
1018  01bd c70026        	ld	_OutPWM+38,A
1020                     ; 229 		XOR		A,_OutPWM+39
1023  01c0 c80027        	xor	A,_OutPWM+39
1025                     ; 230 		LD    _OutPWM+39,A
1028  01c3 c70027        	ld	_OutPWM+39,A
1030                     ; 232 		XOR		A,_OutPWM+40
1033  01c6 c80028        	xor	A,_OutPWM+40
1035                     ; 233 		LD    _OutPWM+40,A
1038  01c9 c70028        	ld	_OutPWM+40,A
1040                     ; 234 		XOR		A,_OutPWM+41
1043  01cc c80029        	xor	A,_OutPWM+41
1045                     ; 235 		LD    _OutPWM+41,A
1048  01cf c70029        	ld	_OutPWM+41,A
1050                     ; 236 		XOR		A,_OutPWM+42
1053  01d2 c8002a        	xor	A,_OutPWM+42
1055                     ; 237 		LD    _OutPWM+42,A
1058  01d5 c7002a        	ld	_OutPWM+42,A
1060                     ; 238 		XOR		A,_OutPWM+43
1063  01d8 c8002b        	xor	A,_OutPWM+43
1065                     ; 239 		LD    _OutPWM+43,A
1068  01db c7002b        	ld	_OutPWM+43,A
1070                     ; 240 		XOR		A,_OutPWM+44
1073  01de c8002c        	xor	A,_OutPWM+44
1075                     ; 241 		LD    _OutPWM+44,A
1078  01e1 c7002c        	ld	_OutPWM+44,A
1080                     ; 242 		XOR		A,_OutPWM+45
1083  01e4 c8002d        	xor	A,_OutPWM+45
1085                     ; 243 		LD    _OutPWM+45,A
1088  01e7 c7002d        	ld	_OutPWM+45,A
1090                     ; 244 		XOR		A,_OutPWM+46
1093  01ea c8002e        	xor	A,_OutPWM+46
1095                     ; 245 		LD    _OutPWM+46,A
1098  01ed c7002e        	ld	_OutPWM+46,A
1100                     ; 246 		XOR		A,_OutPWM+47
1103  01f0 c8002f        	xor	A,_OutPWM+47
1105                     ; 247 		LD    _OutPWM+47,A
1108  01f3 c7002f        	ld	_OutPWM+47,A
1110                     ; 248 		XOR		A,_OutPWM+48
1113  01f6 c80030        	xor	A,_OutPWM+48
1115                     ; 249 		LD    _OutPWM+48,A
1118  01f9 c70030        	ld	_OutPWM+48,A
1120                     ; 250 		XOR		A,_OutPWM+49
1123  01fc c80031        	xor	A,_OutPWM+49
1125                     ; 251 		LD    _OutPWM+49,A
1128  01ff c70031        	ld	_OutPWM+49,A
1130                     ; 253 		XOR		A,_OutPWM+50
1133  0202 c80032        	xor	A,_OutPWM+50
1135                     ; 254 		LD    _OutPWM+50,A
1138  0205 c70032        	ld	_OutPWM+50,A
1140                     ; 255 		XOR		A,_OutPWM+51
1143  0208 c80033        	xor	A,_OutPWM+51
1145                     ; 256 		LD    _OutPWM+51,A
1148  020b c70033        	ld	_OutPWM+51,A
1150                     ; 257 		XOR		A,_OutPWM+52
1153  020e c80034        	xor	A,_OutPWM+52
1155                     ; 258 		LD    _OutPWM+52,A
1158  0211 c70034        	ld	_OutPWM+52,A
1160                     ; 259 		XOR		A,_OutPWM+53
1163  0214 c80035        	xor	A,_OutPWM+53
1165                     ; 260 		LD    _OutPWM+53,A
1168  0217 c70035        	ld	_OutPWM+53,A
1170                     ; 261 		XOR		A,_OutPWM+54
1173  021a c80036        	xor	A,_OutPWM+54
1175                     ; 262 		LD    _OutPWM+54,A
1178  021d c70036        	ld	_OutPWM+54,A
1180                     ; 263 		XOR		A,_OutPWM+55
1183  0220 c80037        	xor	A,_OutPWM+55
1185                     ; 264 		LD    _OutPWM+55,A
1188  0223 c70037        	ld	_OutPWM+55,A
1190                     ; 265 		XOR		A,_OutPWM+56
1193  0226 c80038        	xor	A,_OutPWM+56
1195                     ; 266 		LD    _OutPWM+56,A
1198  0229 c70038        	ld	_OutPWM+56,A
1200                     ; 267 		XOR		A,_OutPWM+57
1203  022c c80039        	xor	A,_OutPWM+57
1205                     ; 268 		LD    _OutPWM+57,A
1208  022f c70039        	ld	_OutPWM+57,A
1210                     ; 269 		XOR		A,_OutPWM+58
1213  0232 c8003a        	xor	A,_OutPWM+58
1215                     ; 270 		LD    _OutPWM+58,A
1218  0235 c7003a        	ld	_OutPWM+58,A
1220                     ; 271 		XOR		A,_OutPWM+59
1223  0238 c8003b        	xor	A,_OutPWM+59
1225                     ; 272 		LD    _OutPWM+59,A
1228  023b c7003b        	ld	_OutPWM+59,A
1230                     ; 274 		XOR		A,_OutPWM+60
1233  023e c8003c        	xor	A,_OutPWM+60
1235                     ; 275 		LD    _OutPWM+60,A
1238  0241 c7003c        	ld	_OutPWM+60,A
1240                     ; 276 		XOR		A,_OutPWM+61
1243  0244 c8003d        	xor	A,_OutPWM+61
1245                     ; 277 		LD    _OutPWM+61,A
1248  0247 c7003d        	ld	_OutPWM+61,A
1250                     ; 278 		XOR		A,_OutPWM+62
1253  024a c8003e        	xor	A,_OutPWM+62
1255                     ; 279 		LD    _OutPWM+62,A
1258  024d c7003e        	ld	_OutPWM+62,A
1260                     ; 280 		XOR		A,_OutPWM+63
1263  0250 c8003f        	xor	A,_OutPWM+63
1265                     ; 281 		LD    _OutPWM+63,A
1268  0253 c7003f        	ld	_OutPWM+63,A
1270                     ; 282 		XOR		A,_OutPWM+64
1273  0256 c80040        	xor	A,_OutPWM+64
1275                     ; 283 		LD    _OutPWM+64,A
1278  0259 c70040        	ld	_OutPWM+64,A
1280                     ; 284 		XOR		A,_OutPWM+65
1283  025c c80041        	xor	A,_OutPWM+65
1285                     ; 285 		LD    _OutPWM+65,A
1288  025f c70041        	ld	_OutPWM+65,A
1290                     ; 286 		XOR		A,_OutPWM+66
1293  0262 c80042        	xor	A,_OutPWM+66
1295                     ; 287 		LD    _OutPWM+66,A
1298  0265 c70042        	ld	_OutPWM+66,A
1300                     ; 288 		XOR		A,_OutPWM+67
1303  0268 c80043        	xor	A,_OutPWM+67
1305                     ; 289 		LD    _OutPWM+67,A
1308  026b c70043        	ld	_OutPWM+67,A
1310                     ; 290 		XOR		A,_OutPWM+68
1313  026e c80044        	xor	A,_OutPWM+68
1315                     ; 291 		LD    _OutPWM+68,A
1318  0271 c70044        	ld	_OutPWM+68,A
1320                     ; 292 		XOR		A,_OutPWM+69
1323  0274 c80045        	xor	A,_OutPWM+69
1325                     ; 293 		LD    _OutPWM+69,A
1328  0277 c70045        	ld	_OutPWM+69,A
1330                     ; 295 		XOR		A,_OutPWM+70
1333  027a c80046        	xor	A,_OutPWM+70
1335                     ; 296 		LD    _OutPWM+70,A
1338  027d c70046        	ld	_OutPWM+70,A
1340                     ; 297 		XOR		A,_OutPWM+71
1343  0280 c80047        	xor	A,_OutPWM+71
1345                     ; 298 		LD    _OutPWM+71,A
1348  0283 c70047        	ld	_OutPWM+71,A
1350                     ; 299 		XOR		A,_OutPWM+72
1353  0286 c80048        	xor	A,_OutPWM+72
1355                     ; 300 		LD    _OutPWM+72,A
1358  0289 c70048        	ld	_OutPWM+72,A
1360                     ; 301 		XOR		A,_OutPWM+73
1363  028c c80049        	xor	A,_OutPWM+73
1365                     ; 302 		LD    _OutPWM+73,A
1368  028f c70049        	ld	_OutPWM+73,A
1370                     ; 303 		XOR		A,_OutPWM+74
1373  0292 c8004a        	xor	A,_OutPWM+74
1375                     ; 304 		LD    _OutPWM+74,A
1378  0295 c7004a        	ld	_OutPWM+74,A
1380                     ; 305 		XOR		A,_OutPWM+75
1383  0298 c8004b        	xor	A,_OutPWM+75
1385                     ; 306 		LD    _OutPWM+75,A
1388  029b c7004b        	ld	_OutPWM+75,A
1390                     ; 307 		XOR		A,_OutPWM+76
1393  029e c8004c        	xor	A,_OutPWM+76
1395                     ; 308 		LD    _OutPWM+76,A
1398  02a1 c7004c        	ld	_OutPWM+76,A
1400                     ; 309 		XOR		A,_OutPWM+77
1403  02a4 c8004d        	xor	A,_OutPWM+77
1405                     ; 310 		LD    _OutPWM+77,A
1408  02a7 c7004d        	ld	_OutPWM+77,A
1410                     ; 311 		XOR		A,_OutPWM+78
1413  02aa c8004e        	xor	A,_OutPWM+78
1415                     ; 312 		LD    _OutPWM+78,A
1418  02ad c7004e        	ld	_OutPWM+78,A
1420                     ; 313 		XOR		A,_OutPWM+79
1423  02b0 c8004f        	xor	A,_OutPWM+79
1425                     ; 314 		LD    _OutPWM+79,A
1428  02b3 c7004f        	ld	_OutPWM+79,A
1430                     ; 316 		XOR		A,_OutPWM+80
1433  02b6 c80050        	xor	A,_OutPWM+80
1435                     ; 317 		LD    _OutPWM+80,A
1438  02b9 c70050        	ld	_OutPWM+80,A
1440                     ; 318 		XOR		A,_OutPWM+81
1443  02bc c80051        	xor	A,_OutPWM+81
1445                     ; 319 		LD    _OutPWM+81,A
1448  02bf c70051        	ld	_OutPWM+81,A
1450                     ; 320 		XOR		A,_OutPWM+82
1453  02c2 c80052        	xor	A,_OutPWM+82
1455                     ; 321 		LD    _OutPWM+82,A
1458  02c5 c70052        	ld	_OutPWM+82,A
1460                     ; 322 		XOR		A,_OutPWM+83
1463  02c8 c80053        	xor	A,_OutPWM+83
1465                     ; 323 		LD    _OutPWM+83,A
1468  02cb c70053        	ld	_OutPWM+83,A
1470                     ; 324 		XOR		A,_OutPWM+84
1473  02ce c80054        	xor	A,_OutPWM+84
1475                     ; 325 		LD    _OutPWM+84,A
1478  02d1 c70054        	ld	_OutPWM+84,A
1480                     ; 326 		XOR		A,_OutPWM+85
1483  02d4 c80055        	xor	A,_OutPWM+85
1485                     ; 327 		LD    _OutPWM+85,A
1488  02d7 c70055        	ld	_OutPWM+85,A
1490                     ; 328 		XOR		A,_OutPWM+86
1493  02da c80056        	xor	A,_OutPWM+86
1495                     ; 329 		LD    _OutPWM+86,A
1498  02dd c70056        	ld	_OutPWM+86,A
1500                     ; 330 		XOR		A,_OutPWM+87
1503  02e0 c80057        	xor	A,_OutPWM+87
1505                     ; 331 		LD    _OutPWM+87,A
1508  02e3 c70057        	ld	_OutPWM+87,A
1510                     ; 332 		XOR		A,_OutPWM+88
1513  02e6 c80058        	xor	A,_OutPWM+88
1515                     ; 333 		LD    _OutPWM+88,A
1518  02e9 c70058        	ld	_OutPWM+88,A
1520                     ; 334 		XOR		A,_OutPWM+89
1523  02ec c80059        	xor	A,_OutPWM+89
1525                     ; 335 		LD    _OutPWM+89,A
1528  02ef c70059        	ld	_OutPWM+89,A
1530                     ; 337 		XOR		A,_OutPWM+90
1533  02f2 c8005a        	xor	A,_OutPWM+90
1535                     ; 338 		LD    _OutPWM+90,A
1538  02f5 c7005a        	ld	_OutPWM+90,A
1540                     ; 339 		XOR		A,_OutPWM+91
1543  02f8 c8005b        	xor	A,_OutPWM+91
1545                     ; 340 		LD    _OutPWM+91,A
1548  02fb c7005b        	ld	_OutPWM+91,A
1550                     ; 341 		XOR		A,_OutPWM+92
1553  02fe c8005c        	xor	A,_OutPWM+92
1555                     ; 342 		LD    _OutPWM+92,A
1558  0301 c7005c        	ld	_OutPWM+92,A
1560                     ; 343 		XOR		A,_OutPWM+93
1563  0304 c8005d        	xor	A,_OutPWM+93
1565                     ; 344 		LD    _OutPWM+93,A
1568  0307 c7005d        	ld	_OutPWM+93,A
1570                     ; 345 		XOR		A,_OutPWM+94
1573  030a c8005e        	xor	A,_OutPWM+94
1575                     ; 346 		LD    _OutPWM+94,A
1578  030d c7005e        	ld	_OutPWM+94,A
1580                     ; 347 		XOR		A,_OutPWM+95
1583  0310 c8005f        	xor	A,_OutPWM+95
1585                     ; 348 		LD    _OutPWM+95,A
1588  0313 c7005f        	ld	_OutPWM+95,A
1590                     ; 349 		XOR		A,_OutPWM+96
1593  0316 c80060        	xor	A,_OutPWM+96
1595                     ; 350 		LD    _OutPWM+96,A
1598  0319 c70060        	ld	_OutPWM+96,A
1600                     ; 351 		XOR		A,_OutPWM+97
1603  031c c80061        	xor	A,_OutPWM+97
1605                     ; 352 		LD    _OutPWM+97,A
1608  031f c70061        	ld	_OutPWM+97,A
1610                     ; 353 		XOR		A,_OutPWM+98
1613  0322 c80062        	xor	A,_OutPWM+98
1615                     ; 354 		LD    _OutPWM+98,A
1618  0325 c70062        	ld	_OutPWM+98,A
1620                     ; 355 		XOR		A,_OutPWM+99
1623  0328 c80063        	xor	A,_OutPWM+99
1625                     ; 356 		LD    _OutPWM+99,A
1628  032b c70063        	ld	_OutPWM+99,A
1630                     ; 360 	if (Device.CnPol == PolarityP)
1632  032e 720f000004ac  	btjt	_Device,#7,L122
1633                     ; 363 		GPIOC->ODR &= ~LED_COM_C;
1635  0337 721f500a      	bres	20490,#7
1636                     ; 367 			MOV    0x500a,_OutPWM
1639  033b 550000500a    	mov	0x500a,_OutPWM
1641                     ; 368 			MOV    0x500a,_OutPWM+1
1644  0340 550001500a    	mov	0x500a,_OutPWM+1
1646                     ; 369 			MOV    0x500a,_OutPWM+2
1649  0345 550002500a    	mov	0x500a,_OutPWM+2
1651                     ; 370 			MOV    0x500a,_OutPWM+3
1654  034a 550003500a    	mov	0x500a,_OutPWM+3
1656                     ; 371 			MOV    0x500a,_OutPWM+4
1659  034f 550004500a    	mov	0x500a,_OutPWM+4
1661                     ; 372 			MOV    0x500a,_OutPWM+5
1664  0354 550005500a    	mov	0x500a,_OutPWM+5
1666                     ; 373 			MOV    0x500a,_OutPWM+6
1669  0359 550006500a    	mov	0x500a,_OutPWM+6
1671                     ; 374 			MOV    0x500a,_OutPWM+7
1674  035e 550007500a    	mov	0x500a,_OutPWM+7
1676                     ; 375 			MOV    0x500a,_OutPWM+8
1679  0363 550008500a    	mov	0x500a,_OutPWM+8
1681                     ; 376 			MOV    0x500a,_OutPWM+9
1684  0368 550009500a    	mov	0x500a,_OutPWM+9
1686                     ; 378 			MOV    0x500a,_OutPWM+10
1689  036d 55000a500a    	mov	0x500a,_OutPWM+10
1691                     ; 379 			MOV    0x500a,_OutPWM+11
1694  0372 55000b500a    	mov	0x500a,_OutPWM+11
1696                     ; 380 			MOV    0x500a,_OutPWM+12
1699  0377 55000c500a    	mov	0x500a,_OutPWM+12
1701                     ; 381 			MOV    0x500a,_OutPWM+13
1704  037c 55000d500a    	mov	0x500a,_OutPWM+13
1706                     ; 382 			MOV    0x500a,_OutPWM+14
1709  0381 55000e500a    	mov	0x500a,_OutPWM+14
1711                     ; 383 			MOV    0x500a,_OutPWM+15
1714  0386 55000f500a    	mov	0x500a,_OutPWM+15
1716                     ; 384 			MOV    0x500a,_OutPWM+16
1719  038b 550010500a    	mov	0x500a,_OutPWM+16
1721                     ; 385 			MOV    0x500a,_OutPWM+17
1724  0390 550011500a    	mov	0x500a,_OutPWM+17
1726                     ; 386 			MOV    0x500a,_OutPWM+18
1729  0395 550012500a    	mov	0x500a,_OutPWM+18
1731                     ; 387 			MOV    0x500a,_OutPWM+19
1734  039a 550013500a    	mov	0x500a,_OutPWM+19
1736                     ; 389 			MOV    0x500a,_OutPWM+20
1739  039f 550014500a    	mov	0x500a,_OutPWM+20
1741                     ; 390 			MOV    0x500a,_OutPWM+21
1744  03a4 550015500a    	mov	0x500a,_OutPWM+21
1746                     ; 391 			MOV    0x500a,_OutPWM+22
1749  03a9 550016500a    	mov	0x500a,_OutPWM+22
1751                     ; 392 			MOV    0x500a,_OutPWM+23
1754  03ae 550017500a    	mov	0x500a,_OutPWM+23
1756                     ; 393 			MOV    0x500a,_OutPWM+24
1759  03b3 550018500a    	mov	0x500a,_OutPWM+24
1761                     ; 394 			MOV    0x500a,_OutPWM+25
1764  03b8 550019500a    	mov	0x500a,_OutPWM+25
1766                     ; 395 			MOV    0x500a,_OutPWM+26
1769  03bd 55001a500a    	mov	0x500a,_OutPWM+26
1771                     ; 396 			MOV    0x500a,_OutPWM+27
1774  03c2 55001b500a    	mov	0x500a,_OutPWM+27
1776                     ; 397 			MOV    0x500a,_OutPWM+28
1779  03c7 55001c500a    	mov	0x500a,_OutPWM+28
1781                     ; 398 			MOV    0x500a,_OutPWM+29
1784  03cc 55001d500a    	mov	0x500a,_OutPWM+29
1786                     ; 400 			MOV    0x500a,_OutPWM+30
1789  03d1 55001e500a    	mov	0x500a,_OutPWM+30
1791                     ; 401 			MOV    0x500a,_OutPWM+31
1794  03d6 55001f500a    	mov	0x500a,_OutPWM+31
1796                     ; 402 			MOV    0x500a,_OutPWM+32
1799  03db 550020500a    	mov	0x500a,_OutPWM+32
1801                     ; 403 			MOV    0x500a,_OutPWM+33
1804  03e0 550021500a    	mov	0x500a,_OutPWM+33
1806                     ; 404 			MOV    0x500a,_OutPWM+34
1809  03e5 550022500a    	mov	0x500a,_OutPWM+34
1811                     ; 405 			MOV    0x500a,_OutPWM+35
1814  03ea 550023500a    	mov	0x500a,_OutPWM+35
1816                     ; 406 			MOV    0x500a,_OutPWM+36
1819  03ef 550024500a    	mov	0x500a,_OutPWM+36
1821                     ; 407 			MOV    0x500a,_OutPWM+37
1824  03f4 550025500a    	mov	0x500a,_OutPWM+37
1826                     ; 408 			MOV    0x500a,_OutPWM+38
1829  03f9 550026500a    	mov	0x500a,_OutPWM+38
1831                     ; 409 			MOV    0x500a,_OutPWM+39
1834  03fe 550027500a    	mov	0x500a,_OutPWM+39
1836                     ; 411 			MOV    0x500a,_OutPWM+40
1839  0403 550028500a    	mov	0x500a,_OutPWM+40
1841                     ; 412 			MOV    0x500a,_OutPWM+41
1844  0408 550029500a    	mov	0x500a,_OutPWM+41
1846                     ; 413 			MOV    0x500a,_OutPWM+42
1849  040d 55002a500a    	mov	0x500a,_OutPWM+42
1851                     ; 414 			MOV    0x500a,_OutPWM+43
1854  0412 55002b500a    	mov	0x500a,_OutPWM+43
1856                     ; 415 			MOV    0x500a,_OutPWM+44
1859  0417 55002c500a    	mov	0x500a,_OutPWM+44
1861                     ; 416 			MOV    0x500a,_OutPWM+45
1864  041c 55002d500a    	mov	0x500a,_OutPWM+45
1866                     ; 417 			MOV    0x500a,_OutPWM+46
1869  0421 55002e500a    	mov	0x500a,_OutPWM+46
1871                     ; 418 			MOV    0x500a,_OutPWM+47
1874  0426 55002f500a    	mov	0x500a,_OutPWM+47
1876                     ; 419 			MOV    0x500a,_OutPWM+48
1879  042b 550030500a    	mov	0x500a,_OutPWM+48
1881                     ; 420 			MOV    0x500a,_OutPWM+49
1884  0430 550031500a    	mov	0x500a,_OutPWM+49
1886                     ; 422 			MOV    0x500a,_OutPWM+50
1889  0435 550032500a    	mov	0x500a,_OutPWM+50
1891                     ; 423 			MOV    0x500a,_OutPWM+51
1894  043a 550033500a    	mov	0x500a,_OutPWM+51
1896                     ; 424 			MOV    0x500a,_OutPWM+52
1899  043f 550034500a    	mov	0x500a,_OutPWM+52
1901                     ; 425 			MOV    0x500a,_OutPWM+53
1904  0444 550035500a    	mov	0x500a,_OutPWM+53
1906                     ; 426 			MOV    0x500a,_OutPWM+54
1909  0449 550036500a    	mov	0x500a,_OutPWM+54
1911                     ; 427 			MOV    0x500a,_OutPWM+55
1914  044e 550037500a    	mov	0x500a,_OutPWM+55
1916                     ; 428 			MOV    0x500a,_OutPWM+56
1919  0453 550038500a    	mov	0x500a,_OutPWM+56
1921                     ; 429 			MOV    0x500a,_OutPWM+57
1924  0458 550039500a    	mov	0x500a,_OutPWM+57
1926                     ; 430 			MOV    0x500a,_OutPWM+58
1929  045d 55003a500a    	mov	0x500a,_OutPWM+58
1931                     ; 431 			MOV    0x500a,_OutPWM+59
1934  0462 55003b500a    	mov	0x500a,_OutPWM+59
1936                     ; 433 			MOV    0x500a,_OutPWM+60
1939  0467 55003c500a    	mov	0x500a,_OutPWM+60
1941                     ; 434 			MOV    0x500a,_OutPWM+61
1944  046c 55003d500a    	mov	0x500a,_OutPWM+61
1946                     ; 435 			MOV    0x500a,_OutPWM+62
1949  0471 55003e500a    	mov	0x500a,_OutPWM+62
1951                     ; 436 			MOV    0x500a,_OutPWM+63
1954  0476 55003f500a    	mov	0x500a,_OutPWM+63
1956                     ; 437 			MOV    0x500a,_OutPWM+64
1959  047b 550040500a    	mov	0x500a,_OutPWM+64
1961                     ; 438 			MOV    0x500a,_OutPWM+65
1964  0480 550041500a    	mov	0x500a,_OutPWM+65
1966                     ; 439 			MOV    0x500a,_OutPWM+66
1969  0485 550042500a    	mov	0x500a,_OutPWM+66
1971                     ; 440 			MOV    0x500a,_OutPWM+67
1974  048a 550043500a    	mov	0x500a,_OutPWM+67
1976                     ; 441 			MOV    0x500a,_OutPWM+68
1979  048f 550044500a    	mov	0x500a,_OutPWM+68
1981                     ; 442 			MOV    0x500a,_OutPWM+69
1984  0494 550045500a    	mov	0x500a,_OutPWM+69
1986                     ; 444 			MOV    0x500a,_OutPWM+70
1989  0499 550046500a    	mov	0x500a,_OutPWM+70
1991                     ; 445 			MOV    0x500a,_OutPWM+71
1994  049e 550047500a    	mov	0x500a,_OutPWM+71
1996                     ; 446 			MOV    0x500a,_OutPWM+72
1999  04a3 550048500a    	mov	0x500a,_OutPWM+72
2001                     ; 447 			MOV    0x500a,_OutPWM+73
2004  04a8 550049500a    	mov	0x500a,_OutPWM+73
2006                     ; 448 			MOV    0x500a,_OutPWM+74
2009  04ad 55004a500a    	mov	0x500a,_OutPWM+74
2011                     ; 449 			MOV    0x500a,_OutPWM+75
2014  04b2 55004b500a    	mov	0x500a,_OutPWM+75
2016                     ; 450 			MOV    0x500a,_OutPWM+76
2019  04b7 55004c500a    	mov	0x500a,_OutPWM+76
2021                     ; 451 			MOV    0x500a,_OutPWM+77
2024  04bc 55004d500a    	mov	0x500a,_OutPWM+77
2026                     ; 452 			MOV    0x500a,_OutPWM+78
2029  04c1 55004e500a    	mov	0x500a,_OutPWM+78
2031                     ; 453 			MOV    0x500a,_OutPWM+79
2034  04c6 55004f500a    	mov	0x500a,_OutPWM+79
2036                     ; 455 			MOV    0x500a,_OutPWM+80
2039  04cb 550050500a    	mov	0x500a,_OutPWM+80
2041                     ; 456 			MOV    0x500a,_OutPWM+81
2044  04d0 550051500a    	mov	0x500a,_OutPWM+81
2046                     ; 457 			MOV    0x500a,_OutPWM+82
2049  04d5 550052500a    	mov	0x500a,_OutPWM+82
2051                     ; 458 			MOV    0x500a,_OutPWM+83
2054  04da 550053500a    	mov	0x500a,_OutPWM+83
2056                     ; 459 			MOV    0x500a,_OutPWM+84
2059  04df 550054500a    	mov	0x500a,_OutPWM+84
2061                     ; 460 			MOV    0x500a,_OutPWM+85
2064  04e4 550055500a    	mov	0x500a,_OutPWM+85
2066                     ; 461 			MOV    0x500a,_OutPWM+86
2069  04e9 550056500a    	mov	0x500a,_OutPWM+86
2071                     ; 462 			MOV    0x500a,_OutPWM+87
2074  04ee 550057500a    	mov	0x500a,_OutPWM+87
2076                     ; 463 			MOV    0x500a,_OutPWM+88
2079  04f3 550058500a    	mov	0x500a,_OutPWM+88
2081                     ; 464 			MOV    0x500a,_OutPWM+89
2084  04f8 550059500a    	mov	0x500a,_OutPWM+89
2086                     ; 466 			MOV    0x500a,_OutPWM+90
2089  04fd 55005a500a    	mov	0x500a,_OutPWM+90
2091                     ; 467 			MOV    0x500a,_OutPWM+91
2094  0502 55005b500a    	mov	0x500a,_OutPWM+91
2096                     ; 468 			MOV    0x500a,_OutPWM+92
2099  0507 55005c500a    	mov	0x500a,_OutPWM+92
2101                     ; 469 			MOV    0x500a,_OutPWM+93
2104  050c 55005d500a    	mov	0x500a,_OutPWM+93
2106                     ; 470 			MOV    0x500a,_OutPWM+94
2109  0511 55005e500a    	mov	0x500a,_OutPWM+94
2111                     ; 471 			MOV    0x500a,_OutPWM+95
2114  0516 55005f500a    	mov	0x500a,_OutPWM+95
2116                     ; 472 			MOV    0x500a,_OutPWM+96
2119  051b 550060500a    	mov	0x500a,_OutPWM+96
2121                     ; 473 			MOV    0x500a,_OutPWM+97
2124  0520 550061500a    	mov	0x500a,_OutPWM+97
2126                     ; 474 			MOV    0x500a,_OutPWM+98
2129  0525 550062500a    	mov	0x500a,_OutPWM+98
2131                     ; 478 		GPIOC->ODR |= LED_COM_C;		
2133  052a 721e500a      	bset	20490,#7
2134                     ; 480 		Device.CnPol = PolarityN;
2136  052e 721e0000      	bset	_Device,#7
2138  0532 ac290729      	jra	L322
2139  0536               L122:
2140                     ; 487 			MOV    0x500f,_OutPWM
2143  0536 550000500f    	mov	0x500f,_OutPWM
2145                     ; 488 			MOV    0x500f,_OutPWM+1
2148  053b 550001500f    	mov	0x500f,_OutPWM+1
2150                     ; 489 			MOV    0x500f,_OutPWM+2
2153  0540 550002500f    	mov	0x500f,_OutPWM+2
2155                     ; 490 			MOV    0x500f,_OutPWM+3
2158  0545 550003500f    	mov	0x500f,_OutPWM+3
2160                     ; 491 			MOV    0x500f,_OutPWM+4
2163  054a 550004500f    	mov	0x500f,_OutPWM+4
2165                     ; 492 			MOV    0x500f,_OutPWM+5
2168  054f 550005500f    	mov	0x500f,_OutPWM+5
2170                     ; 493 			MOV    0x500f,_OutPWM+6
2173  0554 550006500f    	mov	0x500f,_OutPWM+6
2175                     ; 494 			MOV    0x500f,_OutPWM+7
2178  0559 550007500f    	mov	0x500f,_OutPWM+7
2180                     ; 495 			MOV    0x500f,_OutPWM+8
2183  055e 550008500f    	mov	0x500f,_OutPWM+8
2185                     ; 496 			MOV    0x500f,_OutPWM+9
2188  0563 550009500f    	mov	0x500f,_OutPWM+9
2190                     ; 498 			MOV    0x500f,_OutPWM+10
2193  0568 55000a500f    	mov	0x500f,_OutPWM+10
2195                     ; 499 			MOV    0x500f,_OutPWM+11
2198  056d 55000b500f    	mov	0x500f,_OutPWM+11
2200                     ; 500 			MOV    0x500f,_OutPWM+12
2203  0572 55000c500f    	mov	0x500f,_OutPWM+12
2205                     ; 501 			MOV    0x500f,_OutPWM+13
2208  0577 55000d500f    	mov	0x500f,_OutPWM+13
2210                     ; 502 			MOV    0x500f,_OutPWM+14
2213  057c 55000e500f    	mov	0x500f,_OutPWM+14
2215                     ; 503 			MOV    0x500f,_OutPWM+15
2218  0581 55000f500f    	mov	0x500f,_OutPWM+15
2220                     ; 504 			MOV    0x500f,_OutPWM+16
2223  0586 550010500f    	mov	0x500f,_OutPWM+16
2225                     ; 505 			MOV    0x500f,_OutPWM+17
2228  058b 550011500f    	mov	0x500f,_OutPWM+17
2230                     ; 506 			MOV    0x500f,_OutPWM+18
2233  0590 550012500f    	mov	0x500f,_OutPWM+18
2235                     ; 507 			MOV    0x500f,_OutPWM+19
2238  0595 550013500f    	mov	0x500f,_OutPWM+19
2240                     ; 509 			MOV    0x500f,_OutPWM+20
2243  059a 550014500f    	mov	0x500f,_OutPWM+20
2245                     ; 510 			MOV    0x500f,_OutPWM+21
2248  059f 550015500f    	mov	0x500f,_OutPWM+21
2250                     ; 511 			MOV    0x500f,_OutPWM+22
2253  05a4 550016500f    	mov	0x500f,_OutPWM+22
2255                     ; 512 			MOV    0x500f,_OutPWM+23
2258  05a9 550017500f    	mov	0x500f,_OutPWM+23
2260                     ; 513 			MOV    0x500f,_OutPWM+24
2263  05ae 550018500f    	mov	0x500f,_OutPWM+24
2265                     ; 514 			MOV    0x500f,_OutPWM+25
2268  05b3 550019500f    	mov	0x500f,_OutPWM+25
2270                     ; 515 			MOV    0x500f,_OutPWM+26
2273  05b8 55001a500f    	mov	0x500f,_OutPWM+26
2275                     ; 516 			MOV    0x500f,_OutPWM+27
2278  05bd 55001b500f    	mov	0x500f,_OutPWM+27
2280                     ; 517 			MOV    0x500f,_OutPWM+28
2283  05c2 55001c500f    	mov	0x500f,_OutPWM+28
2285                     ; 518 			MOV    0x500f,_OutPWM+29
2288  05c7 55001d500f    	mov	0x500f,_OutPWM+29
2290                     ; 520 			MOV    0x500f,_OutPWM+30
2293  05cc 55001e500f    	mov	0x500f,_OutPWM+30
2295                     ; 521 			MOV    0x500f,_OutPWM+31
2298  05d1 55001f500f    	mov	0x500f,_OutPWM+31
2300                     ; 522 			MOV    0x500f,_OutPWM+32
2303  05d6 550020500f    	mov	0x500f,_OutPWM+32
2305                     ; 523 			MOV    0x500f,_OutPWM+33
2308  05db 550021500f    	mov	0x500f,_OutPWM+33
2310                     ; 524 			MOV    0x500f,_OutPWM+34
2313  05e0 550022500f    	mov	0x500f,_OutPWM+34
2315                     ; 525 			MOV    0x500f,_OutPWM+35
2318  05e5 550023500f    	mov	0x500f,_OutPWM+35
2320                     ; 526 			MOV    0x500f,_OutPWM+36
2323  05ea 550024500f    	mov	0x500f,_OutPWM+36
2325                     ; 527 			MOV    0x500f,_OutPWM+37
2328  05ef 550025500f    	mov	0x500f,_OutPWM+37
2330                     ; 528 			MOV    0x500f,_OutPWM+38
2333  05f4 550026500f    	mov	0x500f,_OutPWM+38
2335                     ; 529 			MOV    0x500f,_OutPWM+39
2338  05f9 550027500f    	mov	0x500f,_OutPWM+39
2340                     ; 531 			MOV    0x500f,_OutPWM+40
2343  05fe 550028500f    	mov	0x500f,_OutPWM+40
2345                     ; 532 			MOV    0x500f,_OutPWM+41
2348  0603 550029500f    	mov	0x500f,_OutPWM+41
2350                     ; 533 			MOV    0x500f,_OutPWM+42
2353  0608 55002a500f    	mov	0x500f,_OutPWM+42
2355                     ; 534 			MOV    0x500f,_OutPWM+43
2358  060d 55002b500f    	mov	0x500f,_OutPWM+43
2360                     ; 535 			MOV    0x500f,_OutPWM+44
2363  0612 55002c500f    	mov	0x500f,_OutPWM+44
2365                     ; 536 			MOV    0x500f,_OutPWM+45
2368  0617 55002d500f    	mov	0x500f,_OutPWM+45
2370                     ; 537 			MOV    0x500f,_OutPWM+46
2373  061c 55002e500f    	mov	0x500f,_OutPWM+46
2375                     ; 538 			MOV    0x500f,_OutPWM+47
2378  0621 55002f500f    	mov	0x500f,_OutPWM+47
2380                     ; 539 			MOV    0x500f,_OutPWM+48
2383  0626 550030500f    	mov	0x500f,_OutPWM+48
2385                     ; 540 			MOV    0x500f,_OutPWM+49
2388  062b 550031500f    	mov	0x500f,_OutPWM+49
2390                     ; 542 			MOV    0x500f,_OutPWM+50
2393  0630 550032500f    	mov	0x500f,_OutPWM+50
2395                     ; 543 			MOV    0x500f,_OutPWM+51
2398  0635 550033500f    	mov	0x500f,_OutPWM+51
2400                     ; 544 			MOV    0x500f,_OutPWM+52
2403  063a 550034500f    	mov	0x500f,_OutPWM+52
2405                     ; 545 			MOV    0x500f,_OutPWM+53
2408  063f 550035500f    	mov	0x500f,_OutPWM+53
2410                     ; 546 			MOV    0x500f,_OutPWM+54
2413  0644 550036500f    	mov	0x500f,_OutPWM+54
2415                     ; 547 			MOV    0x500f,_OutPWM+55
2418  0649 550037500f    	mov	0x500f,_OutPWM+55
2420                     ; 548 			MOV    0x500f,_OutPWM+56
2423  064e 550038500f    	mov	0x500f,_OutPWM+56
2425                     ; 549 			MOV    0x500f,_OutPWM+57
2428  0653 550039500f    	mov	0x500f,_OutPWM+57
2430                     ; 550 			MOV    0x500f,_OutPWM+58
2433  0658 55003a500f    	mov	0x500f,_OutPWM+58
2435                     ; 551 			MOV    0x500f,_OutPWM+59
2438  065d 55003b500f    	mov	0x500f,_OutPWM+59
2440                     ; 553 			MOV    0x500f,_OutPWM+60
2443  0662 55003c500f    	mov	0x500f,_OutPWM+60
2445                     ; 554 			MOV    0x500f,_OutPWM+61
2448  0667 55003d500f    	mov	0x500f,_OutPWM+61
2450                     ; 555 			MOV    0x500f,_OutPWM+62
2453  066c 55003e500f    	mov	0x500f,_OutPWM+62
2455                     ; 556 			MOV    0x500f,_OutPWM+63
2458  0671 55003f500f    	mov	0x500f,_OutPWM+63
2460                     ; 557 			MOV    0x500f,_OutPWM+64
2463  0676 550040500f    	mov	0x500f,_OutPWM+64
2465                     ; 558 			MOV    0x500f,_OutPWM+65
2468  067b 550041500f    	mov	0x500f,_OutPWM+65
2470                     ; 559 			MOV    0x500f,_OutPWM+66
2473  0680 550042500f    	mov	0x500f,_OutPWM+66
2475                     ; 560 			MOV    0x500f,_OutPWM+67
2478  0685 550043500f    	mov	0x500f,_OutPWM+67
2480                     ; 561 			MOV    0x500f,_OutPWM+68
2483  068a 550044500f    	mov	0x500f,_OutPWM+68
2485                     ; 562 			MOV    0x500f,_OutPWM+69
2488  068f 550045500f    	mov	0x500f,_OutPWM+69
2490                     ; 564 			MOV    0x500f,_OutPWM+70
2493  0694 550046500f    	mov	0x500f,_OutPWM+70
2495                     ; 565 			MOV    0x500f,_OutPWM+71
2498  0699 550047500f    	mov	0x500f,_OutPWM+71
2500                     ; 566 			MOV    0x500f,_OutPWM+72
2503  069e 550048500f    	mov	0x500f,_OutPWM+72
2505                     ; 567 			MOV    0x500f,_OutPWM+73
2508  06a3 550049500f    	mov	0x500f,_OutPWM+73
2510                     ; 568 			MOV    0x500f,_OutPWM+74
2513  06a8 55004a500f    	mov	0x500f,_OutPWM+74
2515                     ; 569 			MOV    0x500f,_OutPWM+75
2518  06ad 55004b500f    	mov	0x500f,_OutPWM+75
2520                     ; 570 			MOV    0x500f,_OutPWM+76
2523  06b2 55004c500f    	mov	0x500f,_OutPWM+76
2525                     ; 571 			MOV    0x500f,_OutPWM+77
2528  06b7 55004d500f    	mov	0x500f,_OutPWM+77
2530                     ; 572 			MOV    0x500f,_OutPWM+78
2533  06bc 55004e500f    	mov	0x500f,_OutPWM+78
2535                     ; 573 			MOV    0x500f,_OutPWM+79
2538  06c1 55004f500f    	mov	0x500f,_OutPWM+79
2540                     ; 575 			MOV    0x500f,_OutPWM+80
2543  06c6 550050500f    	mov	0x500f,_OutPWM+80
2545                     ; 576 			MOV    0x500f,_OutPWM+81
2548  06cb 550051500f    	mov	0x500f,_OutPWM+81
2550                     ; 577 			MOV    0x500f,_OutPWM+82
2553  06d0 550052500f    	mov	0x500f,_OutPWM+82
2555                     ; 578 			MOV    0x500f,_OutPWM+83
2558  06d5 550053500f    	mov	0x500f,_OutPWM+83
2560                     ; 579 			MOV    0x500f,_OutPWM+84
2563  06da 550054500f    	mov	0x500f,_OutPWM+84
2565                     ; 580 			MOV    0x500f,_OutPWM+85
2568  06df 550055500f    	mov	0x500f,_OutPWM+85
2570                     ; 581 			MOV    0x500f,_OutPWM+86
2573  06e4 550056500f    	mov	0x500f,_OutPWM+86
2575                     ; 582 			MOV    0x500f,_OutPWM+87
2578  06e9 550057500f    	mov	0x500f,_OutPWM+87
2580                     ; 583 			MOV    0x500f,_OutPWM+88
2583  06ee 550058500f    	mov	0x500f,_OutPWM+88
2585                     ; 584 			MOV    0x500f,_OutPWM+89
2588  06f3 550059500f    	mov	0x500f,_OutPWM+89
2590                     ; 586 			MOV    0x500f,_OutPWM+90
2593  06f8 55005a500f    	mov	0x500f,_OutPWM+90
2595                     ; 587 			MOV    0x500f,_OutPWM+91
2598  06fd 55005b500f    	mov	0x500f,_OutPWM+91
2600                     ; 588 			MOV    0x500f,_OutPWM+92
2603  0702 55005c500f    	mov	0x500f,_OutPWM+92
2605                     ; 589 			MOV    0x500f,_OutPWM+93
2608  0707 55005d500f    	mov	0x500f,_OutPWM+93
2610                     ; 590 			MOV    0x500f,_OutPWM+94
2613  070c 55005e500f    	mov	0x500f,_OutPWM+94
2615                     ; 591 			MOV    0x500f,_OutPWM+95
2618  0711 55005f500f    	mov	0x500f,_OutPWM+95
2620                     ; 592 			MOV    0x500f,_OutPWM+96
2623  0716 550060500f    	mov	0x500f,_OutPWM+96
2625                     ; 593 			MOV    0x500f,_OutPWM+97
2628  071b 550061500f    	mov	0x500f,_OutPWM+97
2630                     ; 594 			MOV    0x500f,_OutPWM+98
2633  0720 550062500f    	mov	0x500f,_OutPWM+98
2635                     ; 598 		Device.CnPol = PolarityP;
2637  0725 721f0000      	bres	_Device,#7
2638  0729               L322:
2639                     ; 604 		CLR		_OutPWM
2642  0729 725f0000      	clr	_OutPWM
2644                     ; 605 		CLR		_OutPWM+1
2647  072d 725f0001      	clr	_OutPWM+1
2649                     ; 606 		CLR		_OutPWM+2
2652  0731 725f0002      	clr	_OutPWM+2
2654                     ; 607 		CLR		_OutPWM+3
2657  0735 725f0003      	clr	_OutPWM+3
2659                     ; 608 		CLR		_OutPWM+4
2662  0739 725f0004      	clr	_OutPWM+4
2664                     ; 609 		CLR		_OutPWM+5
2667  073d 725f0005      	clr	_OutPWM+5
2669                     ; 610 		CLR		_OutPWM+6
2672  0741 725f0006      	clr	_OutPWM+6
2674                     ; 611 		CLR		_OutPWM+7
2677  0745 725f0007      	clr	_OutPWM+7
2679                     ; 612 		CLR		_OutPWM+8
2682  0749 725f0008      	clr	_OutPWM+8
2684                     ; 613 		CLR		_OutPWM+9
2687  074d 725f0009      	clr	_OutPWM+9
2689                     ; 614 		CLR		_OutPWM+10
2692  0751 725f000a      	clr	_OutPWM+10
2694                     ; 615 		CLR		_OutPWM+11
2697  0755 725f000b      	clr	_OutPWM+11
2699                     ; 616 		CLR		_OutPWM+12
2702  0759 725f000c      	clr	_OutPWM+12
2704                     ; 617 		CLR		_OutPWM+13
2707  075d 725f000d      	clr	_OutPWM+13
2709                     ; 618 		CLR		_OutPWM+14
2712  0761 725f000e      	clr	_OutPWM+14
2714                     ; 619 		CLR		_OutPWM+15
2717  0765 725f000f      	clr	_OutPWM+15
2719                     ; 620 		CLR		_OutPWM+16
2722  0769 725f0010      	clr	_OutPWM+16
2724                     ; 621 		CLR		_OutPWM+17
2727  076d 725f0011      	clr	_OutPWM+17
2729                     ; 622 		CLR		_OutPWM+18
2732  0771 725f0012      	clr	_OutPWM+18
2734                     ; 623 		CLR		_OutPWM+19
2737  0775 725f0013      	clr	_OutPWM+19
2739                     ; 624 		CLR		_OutPWM+20
2742  0779 725f0014      	clr	_OutPWM+20
2744                     ; 625 		CLR		_OutPWM+21
2747  077d 725f0015      	clr	_OutPWM+21
2749                     ; 626 		CLR		_OutPWM+22
2752  0781 725f0016      	clr	_OutPWM+22
2754                     ; 627 		CLR		_OutPWM+23
2757  0785 725f0017      	clr	_OutPWM+23
2759                     ; 628 		CLR		_OutPWM+24
2762  0789 725f0018      	clr	_OutPWM+24
2764                     ; 629 		CLR		_OutPWM+25
2767  078d 725f0019      	clr	_OutPWM+25
2769                     ; 630 		CLR		_OutPWM+26
2772  0791 725f001a      	clr	_OutPWM+26
2774                     ; 631 		CLR		_OutPWM+27
2777  0795 725f001b      	clr	_OutPWM+27
2779                     ; 632 		CLR		_OutPWM+28
2782  0799 725f001c      	clr	_OutPWM+28
2784                     ; 633 		CLR		_OutPWM+29
2787  079d 725f001d      	clr	_OutPWM+29
2789                     ; 634 		CLR		_OutPWM+30
2792  07a1 725f001e      	clr	_OutPWM+30
2794                     ; 635 		CLR		_OutPWM+31
2797  07a5 725f001f      	clr	_OutPWM+31
2799                     ; 636 		CLR		_OutPWM+32
2802  07a9 725f0020      	clr	_OutPWM+32
2804                     ; 637 		CLR		_OutPWM+33
2807  07ad 725f0021      	clr	_OutPWM+33
2809                     ; 638 		CLR		_OutPWM+34
2812  07b1 725f0022      	clr	_OutPWM+34
2814                     ; 639 		CLR		_OutPWM+35
2817  07b5 725f0023      	clr	_OutPWM+35
2819                     ; 640 		CLR		_OutPWM+36
2822  07b9 725f0024      	clr	_OutPWM+36
2824                     ; 641 		CLR		_OutPWM+37
2827  07bd 725f0025      	clr	_OutPWM+37
2829                     ; 642 		CLR		_OutPWM+38
2832  07c1 725f0026      	clr	_OutPWM+38
2834                     ; 643 		CLR		_OutPWM+39
2837  07c5 725f0027      	clr	_OutPWM+39
2839                     ; 644 		CLR		_OutPWM+40
2842  07c9 725f0028      	clr	_OutPWM+40
2844                     ; 645 		CLR		_OutPWM+41
2847  07cd 725f0029      	clr	_OutPWM+41
2849                     ; 646 		CLR		_OutPWM+42
2852  07d1 725f002a      	clr	_OutPWM+42
2854                     ; 647 		CLR		_OutPWM+43
2857  07d5 725f002b      	clr	_OutPWM+43
2859                     ; 648 		CLR		_OutPWM+44
2862  07d9 725f002c      	clr	_OutPWM+44
2864                     ; 649 		CLR		_OutPWM+45
2867  07dd 725f002d      	clr	_OutPWM+45
2869                     ; 650 		CLR		_OutPWM+46
2872  07e1 725f002e      	clr	_OutPWM+46
2874                     ; 651 		CLR		_OutPWM+47
2877  07e5 725f002f      	clr	_OutPWM+47
2879                     ; 652 		CLR		_OutPWM+48
2882  07e9 725f0030      	clr	_OutPWM+48
2884                     ; 653 		CLR		_OutPWM+49
2887  07ed 725f0031      	clr	_OutPWM+49
2889                     ; 654 		CLR		_OutPWM+50
2892  07f1 725f0032      	clr	_OutPWM+50
2894                     ; 655 		CLR		_OutPWM+51
2897  07f5 725f0033      	clr	_OutPWM+51
2899                     ; 656 		CLR		_OutPWM+52
2902  07f9 725f0034      	clr	_OutPWM+52
2904                     ; 657 		CLR		_OutPWM+53
2907  07fd 725f0035      	clr	_OutPWM+53
2909                     ; 658 		CLR		_OutPWM+54
2912  0801 725f0036      	clr	_OutPWM+54
2914                     ; 659 		CLR		_OutPWM+55
2917  0805 725f0037      	clr	_OutPWM+55
2919                     ; 660 		CLR		_OutPWM+56
2922  0809 725f0038      	clr	_OutPWM+56
2924                     ; 661 		CLR		_OutPWM+57
2927  080d 725f0039      	clr	_OutPWM+57
2929                     ; 662 		CLR		_OutPWM+58
2932  0811 725f003a      	clr	_OutPWM+58
2934                     ; 663 		CLR		_OutPWM+59
2937  0815 725f003b      	clr	_OutPWM+59
2939                     ; 664 		CLR		_OutPWM+60
2942  0819 725f003c      	clr	_OutPWM+60
2944                     ; 665 		CLR		_OutPWM+61
2947  081d 725f003d      	clr	_OutPWM+61
2949                     ; 666 		CLR		_OutPWM+62
2952  0821 725f003e      	clr	_OutPWM+62
2954                     ; 667 		CLR		_OutPWM+63
2957  0825 725f003f      	clr	_OutPWM+63
2959                     ; 668 		CLR		_OutPWM+64
2962  0829 725f0040      	clr	_OutPWM+64
2964                     ; 669 		CLR		_OutPWM+65
2967  082d 725f0041      	clr	_OutPWM+65
2969                     ; 670 		CLR		_OutPWM+66
2972  0831 725f0042      	clr	_OutPWM+66
2974                     ; 671 		CLR		_OutPWM+67
2977  0835 725f0043      	clr	_OutPWM+67
2979                     ; 672 		CLR		_OutPWM+68
2982  0839 725f0044      	clr	_OutPWM+68
2984                     ; 673 		CLR		_OutPWM+69
2987  083d 725f0045      	clr	_OutPWM+69
2989                     ; 674 		CLR		_OutPWM+70
2992  0841 725f0046      	clr	_OutPWM+70
2994                     ; 675 		CLR		_OutPWM+71
2997  0845 725f0047      	clr	_OutPWM+71
2999                     ; 676 		CLR		_OutPWM+72
3002  0849 725f0048      	clr	_OutPWM+72
3004                     ; 677 		CLR		_OutPWM+73
3007  084d 725f0049      	clr	_OutPWM+73
3009                     ; 678 		CLR		_OutPWM+74
3012  0851 725f004a      	clr	_OutPWM+74
3014                     ; 679 		CLR		_OutPWM+75
3017  0855 725f004b      	clr	_OutPWM+75
3019                     ; 680 		CLR		_OutPWM+76
3022  0859 725f004c      	clr	_OutPWM+76
3024                     ; 681 		CLR		_OutPWM+77
3027  085d 725f004d      	clr	_OutPWM+77
3029                     ; 682 		CLR		_OutPWM+78
3032  0861 725f004e      	clr	_OutPWM+78
3034                     ; 683 		CLR		_OutPWM+79
3037  0865 725f004f      	clr	_OutPWM+79
3039                     ; 684 		CLR		_OutPWM+80
3042  0869 725f0050      	clr	_OutPWM+80
3044                     ; 685 		CLR		_OutPWM+81
3047  086d 725f0051      	clr	_OutPWM+81
3049                     ; 686 		CLR		_OutPWM+82
3052  0871 725f0052      	clr	_OutPWM+82
3054                     ; 687 		CLR		_OutPWM+83
3057  0875 725f0053      	clr	_OutPWM+83
3059                     ; 688 		CLR		_OutPWM+84
3062  0879 725f0054      	clr	_OutPWM+84
3064                     ; 689 		CLR		_OutPWM+85
3067  087d 725f0055      	clr	_OutPWM+85
3069                     ; 690 		CLR		_OutPWM+86
3072  0881 725f0056      	clr	_OutPWM+86
3074                     ; 691 		CLR		_OutPWM+87
3077  0885 725f0057      	clr	_OutPWM+87
3079                     ; 692 		CLR		_OutPWM+88
3082  0889 725f0058      	clr	_OutPWM+88
3084                     ; 693 		CLR		_OutPWM+89
3087  088d 725f0059      	clr	_OutPWM+89
3089                     ; 694 		CLR		_OutPWM+90
3092  0891 725f005a      	clr	_OutPWM+90
3094                     ; 695 		CLR		_OutPWM+91
3097  0895 725f005b      	clr	_OutPWM+91
3099                     ; 696 		CLR		_OutPWM+92
3102  0899 725f005c      	clr	_OutPWM+92
3104                     ; 697 		CLR		_OutPWM+93
3107  089d 725f005d      	clr	_OutPWM+93
3109                     ; 698 		CLR		_OutPWM+94
3112  08a1 725f005e      	clr	_OutPWM+94
3114                     ; 699 		CLR		_OutPWM+95
3117  08a5 725f005f      	clr	_OutPWM+95
3119                     ; 700 		CLR		_OutPWM+96
3122  08a9 725f0060      	clr	_OutPWM+96
3124                     ; 701 		CLR		_OutPWM+97
3127  08ad 725f0061      	clr	_OutPWM+97
3129                     ; 702 		CLR		_OutPWM+98
3132  08b1 725f0062      	clr	_OutPWM+98
3134                     ; 703 		CLR		_OutPWM+99
3137  08b5 725f0063      	clr	_OutPWM+99
3139                     ; 707 }
3142  08b9 80            	iret	
3165                     ; 709 INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
3165                     ; 710 {
3166                     	switch	.text
3167  08ba               f_TIM2_CAP_COM_IRQHandler:
3171                     ; 712 }
3174  08ba 80            	iret	
3197                     ; 714 INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
3197                     ; 715 {
3198                     	switch	.text
3199  08bb               f_TIM3_UPD_OVF_BRK_IRQHandler:
3203                     ; 717 }
3206  08bb 80            	iret	
3229                     ; 720 INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
3229                     ; 721 {
3230                     	switch	.text
3231  08bc               f_TIM3_CAP_COM_IRQHandler:
3235                     ; 723 }
3238  08bc 80            	iret	
3260                     ; 725 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
3260                     ; 726 {
3261                     	switch	.text
3262  08bd               f_I2C_IRQHandler:
3266                     ; 728 }
3269  08bd 80            	iret	
3292                     ; 730 INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
3292                     ; 731 {
3293                     	switch	.text
3294  08be               f_UART2_TX_IRQHandler:
3298                     ; 733 }
3301  08be 80            	iret	
3324                     ; 735 INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
3324                     ; 736 {
3325                     	switch	.text
3326  08bf               f_UART2_RX_IRQHandler:
3330                     ; 738 }
3333  08bf 80            	iret	
3355                     ; 740 INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
3355                     ; 741 {
3356                     	switch	.text
3357  08c0               f_ADC1_IRQHandler:
3361                     ; 743 }
3364  08c0 80            	iret	
3389                     ; 745 INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
3389                     ; 746 {
3390                     	switch	.text
3391  08c1               f_TIM4_UPD_OVF_IRQHandler:
3395                     ; 747 	TIM4->SR1 &= ~TIM4_SR1_UIF;
3397  08c1 72115342      	bres	21314,#0
3398                     ; 750 	switch (TaskCounter)
3400  08c5 c60000        	ld	a,_TaskCounter
3402                     ; 756 		default : break;
3403  08c8 4a            	dec	a
3404  08c9 270b          	jreq	L513
3405  08cb 4a            	dec	a
3406  08cc 270e          	jreq	L713
3407  08ce 4a            	dec	a
3408  08cf 2711          	jreq	L123
3409  08d1 4a            	dec	a
3410  08d2 2714          	jreq	L323
3411  08d4 2019          	jra	L143
3412  08d6               L513:
3413                     ; 752 		case 1 : Taskboard.TimePolling = Set; break;
3415  08d6 72140000      	bset	_Taskboard,#2
3418  08da 2013          	jra	L143
3419  08dc               L713:
3420                     ; 753 		case 2 : Taskboard.ButtonsPolling = Set; break;
3422  08dc 72100000      	bset	_Taskboard,#0
3425  08e0 200d          	jra	L143
3426  08e2               L123:
3427                     ; 754 		case 3 : Taskboard.EncoderPolling = Set; break;
3429  08e2 72120000      	bset	_Taskboard,#1
3432  08e6 2007          	jra	L143
3433  08e8               L323:
3434                     ; 755 		case 4 : Taskboard.ScreenUpdate = Set; TaskCounter = 0; break;
3436  08e8 72160000      	bset	_Taskboard,#3
3439  08ec c70000        	ld	_TaskCounter,a
3442                     ; 756 		default : break;
3444  08ef               L143:
3445                     ; 758 	TaskCounter++;
3447  08ef 725c0000      	inc	_TaskCounter
3448                     ; 759 }
3451  08f3 80            	iret	
3474                     ; 761 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
3474                     ; 762 {
3475                     	switch	.text
3476  08f4               f_EEPROM_EEC_IRQHandler:
3480                     ; 764 }
3483  08f4 80            	iret	
3495                     	xref	_OutPWM
3496                     	xref	_Chenal4Number
3497                     	xref	_Chenal3Number
3498                     	xref	_Chenal2Number
3499                     	xref	_Chenal1Number
3500                     	xref	_TaskCounter
3501                     	xref	_IndicatorsDataPointer
3502                     	xref	_IndicatorsData
3503                     	xref	_Taskboard
3504                     	xref	_Device
3505                     	xdef	f_EEPROM_EEC_IRQHandler
3506                     	xdef	f_TIM4_UPD_OVF_IRQHandler
3507                     	xdef	f_ADC1_IRQHandler
3508                     	xdef	f_UART2_TX_IRQHandler
3509                     	xdef	f_UART2_RX_IRQHandler
3510                     	xdef	f_I2C_IRQHandler
3511                     	xdef	f_TIM3_CAP_COM_IRQHandler
3512                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
3513                     	xdef	f_TIM2_CAP_COM_IRQHandler
3514                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
3515                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
3516                     	xdef	f_TIM1_CAP_COM_IRQHandler
3517                     	xdef	f_SPI_IRQHandler
3518                     	xdef	f_EXTI_PORTE_IRQHandler
3519                     	xdef	f_EXTI_PORTD_IRQHandler
3520                     	xdef	f_EXTI_PORTC_IRQHandler
3521                     	xdef	f_EXTI_PORTB_IRQHandler
3522                     	xdef	f_EXTI_PORTA_IRQHandler
3523                     	xdef	f_CLK_IRQHandler
3524                     	xdef	f_AWU_IRQHandler
3525                     	xdef	f_TLI_IRQHandler
3526                     	xdef	f_TRAP_IRQHandler
3527                     	xdef	f_NonHandledInterrupt
3546                     	end
