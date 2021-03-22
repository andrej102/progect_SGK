   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
   4                     ; Optimizer V4.4.7 - 05 Oct 2017
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
 370                     ; 98 	if (IndicatorsDataPointer < 13)
 372  000a c60000        	ld	a,_IndicatorsDataPointer
 373  000d a10d          	cp	a,#13
 374  000f 240d          	jruge	L141
 375                     ; 100 	 SPI->DR = IndicatorsData[IndicatorsDataPointer];	 
 377  0011 5f            	clrw	x
 378  0012 97            	ld	xl,a
 379  0013 d60000        	ld	a,(_IndicatorsData,x)
 380  0016 c75204        	ld	20996,a
 381                     ; 101 	 IndicatorsDataPointer++;
 383  0019 725c0000      	inc	_IndicatorsDataPointer
 386  001d 80            	iret	
 387  001e               L141:
 388                     ; 103 	else {GPIOC->ODR |= LED_COM_C; SPI->ICR &= ~SPI_ICR_TXEI;}
 390  001e 721e500a      	bset	20490,#7
 393  0022 721f5202      	bres	20994,#7
 394                     ; 104 }
 397  0026 80            	iret	
 420                     ; 106 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 420                     ; 107 {
 421                     	switch	.text
 422  0027               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 426                     ; 109 }
 429  0027 80            	iret	
 452                     ; 111 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 452                     ; 112 {
 453                     	switch	.text
 454  0028               f_TIM1_CAP_COM_IRQHandler:
 458                     ; 114 }
 461  0028 80            	iret	
 495                     ; 116 INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 495                     ; 117 {	
 496                     	switch	.text
 497  0029               f_TIM2_UPD_OVF_BRK_IRQHandler:
 501                     ; 118 	if (Device.CnPol == PolarityP)
 503  0029 720f000004ac  	btjt	_Device,#7,L571
 504                     ; 120 		TIM2->ARRH = 0x00;
 506  0032 725f530d      	clr	21261
 507                     ; 121 		TIM2->ARRL = 0x3C;
 509  0036 353c530e      	mov	21262,#60
 510                     ; 123 		if ((Device.Polarity == PolarityP)|(Device.Polarity == PolarityPN))
 512  003a c60000        	ld	a,_Device
 513  003d a518          	bcp	a,#24
 514  003f 270a          	jreq	L102
 516  0041 a418          	and	a,#24
 517  0043 a110          	cp	a,#16
 518  0045 2704ac2c012c  	jrne	L312
 519  004b               L102:
 520                     ; 125 			if ((Chenal1NumberPWM) && (Chenal1Enable)) {OutPWM[0] |= OP1; OutPWM[Chenal1NumberPWM] |= OP1;}
 522  004b c60000        	ld	a,_Chenal1NumberPWM
 523  004e 2714          	jreq	L302
 525  0050 725d0000      	tnz	_Chenal1Enable
 526  0054 270e          	jreq	L302
 529  0056 72160000      	bset	_OutPWM,#3
 532  005a 5f            	clrw	x
 533  005b 97            	ld	xl,a
 534  005c d60000        	ld	a,(_OutPWM,x)
 535  005f aa08          	or	a,#8
 536  0061 d70000        	ld	(_OutPWM,x),a
 537  0064               L302:
 538                     ; 126 			if ((Chenal2NumberPWM) && (Chenal2Enable)) {OutPWM[0] |= OP2; OutPWM[Chenal2NumberPWM] |= OP2;}
 540  0064 c60000        	ld	a,_Chenal2NumberPWM
 541  0067 2714          	jreq	L502
 543  0069 725d0000      	tnz	_Chenal2Enable
 544  006d 270e          	jreq	L502
 547  006f 72120000      	bset	_OutPWM,#1
 550  0073 5f            	clrw	x
 551  0074 97            	ld	xl,a
 552  0075 d60000        	ld	a,(_OutPWM,x)
 553  0078 aa02          	or	a,#2
 554  007a d70000        	ld	(_OutPWM,x),a
 555  007d               L502:
 556                     ; 127 			if ((Chenal3NumberPWM) && (Chenal3Enable)) {OutPWM[0] |= OP3; OutPWM[Chenal3NumberPWM] |= OP3;}
 558  007d c60000        	ld	a,_Chenal3NumberPWM
 559  0080 2714          	jreq	L702
 561  0082 725d0000      	tnz	_Chenal3Enable
 562  0086 270e          	jreq	L702
 565  0088 72180000      	bset	_OutPWM,#4
 568  008c 5f            	clrw	x
 569  008d 97            	ld	xl,a
 570  008e d60000        	ld	a,(_OutPWM,x)
 571  0091 aa10          	or	a,#16
 572  0093 d70000        	ld	(_OutPWM,x),a
 573  0096               L702:
 574                     ; 128 			if ((Chenal4NumberPWM) && (Chenal4Enable)) {OutPWM[0] |= OP4; OutPWM[Chenal4NumberPWM] |= OP4;}
 576  0096 c60000        	ld	a,_Chenal4NumberPWM
 577  0099 27ac          	jreq	L312
 579  009b 725d0000      	tnz	_Chenal4Enable
 580  009f 27a6          	jreq	L312
 583  00a1 72140000      	bset	_OutPWM,#2
 586  00a5 5f            	clrw	x
 587  00a6 97            	ld	xl,a
 588  00a7 d60000        	ld	a,(_OutPWM,x)
 589  00aa aa04          	or	a,#4
 590  00ac 207b          	jpf	LC001
 591  00ae               L571:
 592                     ; 133 		TIM2->ARRH = 0x03;
 594  00ae 3503530d      	mov	21261,#3
 595                     ; 134 		TIM2->ARRL = 0xAC;
 597  00b2 35ac530e      	mov	21262,#172
 598                     ; 136 		if ((Device.Polarity == PolarityN)|(Device.Polarity == PolarityPN))
 600  00b6 c60000        	ld	a,_Device
 601  00b9 a418          	and	a,#24
 602  00bb a108          	cp	a,#8
 603  00bd 2709          	jreq	L712
 605  00bf c60000        	ld	a,_Device
 606  00c2 a418          	and	a,#24
 607  00c4 a110          	cp	a,#16
 608  00c6 2664          	jrne	L312
 609  00c8               L712:
 610                     ; 138 			if ((Chenal1NumberPWM) && (Chenal1Enable)) {OutPWM[0] |= ON1; OutPWM[Chenal1NumberPWM] |= ON1;}
 612  00c8 c60000        	ld	a,_Chenal1NumberPWM
 613  00cb 2714          	jreq	L122
 615  00cd 725d0000      	tnz	_Chenal1Enable
 616  00d1 270e          	jreq	L122
 619  00d3 721a0000      	bset	_OutPWM,#5
 622  00d7 5f            	clrw	x
 623  00d8 97            	ld	xl,a
 624  00d9 d60000        	ld	a,(_OutPWM,x)
 625  00dc aa20          	or	a,#32
 626  00de d70000        	ld	(_OutPWM,x),a
 627  00e1               L122:
 628                     ; 139 			if ((Chenal2NumberPWM) && (Chenal2Enable)) {OutPWM[0] |= ON2; OutPWM[Chenal2NumberPWM] |= ON2;}
 630  00e1 c60000        	ld	a,_Chenal2NumberPWM
 631  00e4 2714          	jreq	L322
 633  00e6 725d0000      	tnz	_Chenal2Enable
 634  00ea 270e          	jreq	L322
 637  00ec 72140000      	bset	_OutPWM,#2
 640  00f0 5f            	clrw	x
 641  00f1 97            	ld	xl,a
 642  00f2 d60000        	ld	a,(_OutPWM,x)
 643  00f5 aa04          	or	a,#4
 644  00f7 d70000        	ld	(_OutPWM,x),a
 645  00fa               L322:
 646                     ; 140 			if ((Chenal3NumberPWM) && (Chenal3Enable)) {OutPWM[0] |= ON3; OutPWM[Chenal3NumberPWM] |= ON3;}
 648  00fa c60000        	ld	a,_Chenal3NumberPWM
 649  00fd 2714          	jreq	L522
 651  00ff 725d0000      	tnz	_Chenal3Enable
 652  0103 270e          	jreq	L522
 655  0105 721c0000      	bset	_OutPWM,#6
 658  0109 5f            	clrw	x
 659  010a 97            	ld	xl,a
 660  010b d60000        	ld	a,(_OutPWM,x)
 661  010e aa40          	or	a,#64
 662  0110 d70000        	ld	(_OutPWM,x),a
 663  0113               L522:
 664                     ; 141 			if ((Chenal4NumberPWM) && (Chenal4Enable)) {OutPWM[0] |= ON4; OutPWM[Chenal4NumberPWM] |= ON4;}
 666  0113 c60000        	ld	a,_Chenal4NumberPWM
 667  0116 2714          	jreq	L312
 669  0118 725d0000      	tnz	_Chenal4Enable
 670  011c 270e          	jreq	L312
 673  011e 72160000      	bset	_OutPWM,#3
 676  0122 5f            	clrw	x
 677  0123 97            	ld	xl,a
 678  0124 d60000        	ld	a,(_OutPWM,x)
 679  0127 aa08          	or	a,#8
 680  0129               LC001:
 681  0129 d70000        	ld	(_OutPWM,x),a
 682  012c               L312:
 683                     ; 147 		LD		A,_OutPWM
 686  012c c60000        	ld	A,_OutPWM
 688                     ; 149 		XOR		A,_OutPWM+1
 691  012f c80001        	xor	A,_OutPWM+1
 693                     ; 150 		LD    _OutPWM+1,A
 696  0132 c70001        	ld	_OutPWM+1,A
 698                     ; 151 		XOR		A,_OutPWM+2
 701  0135 c80002        	xor	A,_OutPWM+2
 703                     ; 152 		LD    _OutPWM+2,A
 706  0138 c70002        	ld	_OutPWM+2,A
 708                     ; 153 		XOR		A,_OutPWM+3
 711  013b c80003        	xor	A,_OutPWM+3
 713                     ; 154 		LD    _OutPWM+3,A
 716  013e c70003        	ld	_OutPWM+3,A
 718                     ; 155 		XOR		A,_OutPWM+4
 721  0141 c80004        	xor	A,_OutPWM+4
 723                     ; 156 		LD    _OutPWM+4,A
 726  0144 c70004        	ld	_OutPWM+4,A
 728                     ; 157 		XOR		A,_OutPWM+5
 731  0147 c80005        	xor	A,_OutPWM+5
 733                     ; 158 		LD    _OutPWM+5,A
 736  014a c70005        	ld	_OutPWM+5,A
 738                     ; 159 		XOR		A,_OutPWM+6
 741  014d c80006        	xor	A,_OutPWM+6
 743                     ; 160 		LD    _OutPWM+6,A
 746  0150 c70006        	ld	_OutPWM+6,A
 748                     ; 161 		XOR		A,_OutPWM+7
 751  0153 c80007        	xor	A,_OutPWM+7
 753                     ; 162 		LD    _OutPWM+7,A
 756  0156 c70007        	ld	_OutPWM+7,A
 758                     ; 163 		XOR		A,_OutPWM+8
 761  0159 c80008        	xor	A,_OutPWM+8
 763                     ; 164 		LD    _OutPWM+8,A
 766  015c c70008        	ld	_OutPWM+8,A
 768                     ; 165 		XOR		A,_OutPWM+9
 771  015f c80009        	xor	A,_OutPWM+9
 773                     ; 166 		LD    _OutPWM+9,A
 776  0162 c70009        	ld	_OutPWM+9,A
 778                     ; 168 		XOR		A,_OutPWM+10
 781  0165 c8000a        	xor	A,_OutPWM+10
 783                     ; 169 		LD    _OutPWM+10,A
 786  0168 c7000a        	ld	_OutPWM+10,A
 788                     ; 170 		XOR		A,_OutPWM+11	
 791  016b c8000b        	xor	A,_OutPWM+11
 793                     ; 171 		LD    _OutPWM+11,A
 796  016e c7000b        	ld	_OutPWM+11,A
 798                     ; 172 		XOR		A,_OutPWM+12
 801  0171 c8000c        	xor	A,_OutPWM+12
 803                     ; 173 		LD    _OutPWM+12,A
 806  0174 c7000c        	ld	_OutPWM+12,A
 808                     ; 174 		XOR		A,_OutPWM+13
 811  0177 c8000d        	xor	A,_OutPWM+13
 813                     ; 175 		LD    _OutPWM+13,A
 816  017a c7000d        	ld	_OutPWM+13,A
 818                     ; 176 		XOR		A,_OutPWM+14
 821  017d c8000e        	xor	A,_OutPWM+14
 823                     ; 177 		LD    _OutPWM+14,A
 826  0180 c7000e        	ld	_OutPWM+14,A
 828                     ; 178 		XOR		A,_OutPWM+15
 831  0183 c8000f        	xor	A,_OutPWM+15
 833                     ; 179 		LD    _OutPWM+15,A
 836  0186 c7000f        	ld	_OutPWM+15,A
 838                     ; 180 		XOR		A,_OutPWM+16
 841  0189 c80010        	xor	A,_OutPWM+16
 843                     ; 181 		LD    _OutPWM+16,A
 846  018c c70010        	ld	_OutPWM+16,A
 848                     ; 182 		XOR		A,_OutPWM+17
 851  018f c80011        	xor	A,_OutPWM+17
 853                     ; 183 		LD    _OutPWM+17,A
 856  0192 c70011        	ld	_OutPWM+17,A
 858                     ; 184 		XOR		A,_OutPWM+18
 861  0195 c80012        	xor	A,_OutPWM+18
 863                     ; 185 		LD    _OutPWM+18,A
 866  0198 c70012        	ld	_OutPWM+18,A
 868                     ; 186 		XOR		A,_OutPWM+19
 871  019b c80013        	xor	A,_OutPWM+19
 873                     ; 187 		LD    _OutPWM+19,A
 876  019e c70013        	ld	_OutPWM+19,A
 878                     ; 189 		XOR		A,_OutPWM+20
 881  01a1 c80014        	xor	A,_OutPWM+20
 883                     ; 190 		LD    _OutPWM+20,A
 886  01a4 c70014        	ld	_OutPWM+20,A
 888                     ; 191 		XOR		A,_OutPWM+21
 891  01a7 c80015        	xor	A,_OutPWM+21
 893                     ; 192 		LD    _OutPWM+21,A
 896  01aa c70015        	ld	_OutPWM+21,A
 898                     ; 193 		XOR		A,_OutPWM+22
 901  01ad c80016        	xor	A,_OutPWM+22
 903                     ; 194 		LD    _OutPWM+22,A
 906  01b0 c70016        	ld	_OutPWM+22,A
 908                     ; 195 		XOR		A,_OutPWM+23
 911  01b3 c80017        	xor	A,_OutPWM+23
 913                     ; 196 		LD    _OutPWM+23,A
 916  01b6 c70017        	ld	_OutPWM+23,A
 918                     ; 197 		XOR		A,_OutPWM+24
 921  01b9 c80018        	xor	A,_OutPWM+24
 923                     ; 198 		LD    _OutPWM+24,A
 926  01bc c70018        	ld	_OutPWM+24,A
 928                     ; 199 		XOR		A,_OutPWM+25
 931  01bf c80019        	xor	A,_OutPWM+25
 933                     ; 200 		LD    _OutPWM+25,A
 936  01c2 c70019        	ld	_OutPWM+25,A
 938                     ; 201 		XOR		A,_OutPWM+26
 941  01c5 c8001a        	xor	A,_OutPWM+26
 943                     ; 202 		LD    _OutPWM+26,A
 946  01c8 c7001a        	ld	_OutPWM+26,A
 948                     ; 203 		XOR		A,_OutPWM+27
 951  01cb c8001b        	xor	A,_OutPWM+27
 953                     ; 204 		LD    _OutPWM+27,A
 956  01ce c7001b        	ld	_OutPWM+27,A
 958                     ; 205 		XOR		A,_OutPWM+28
 961  01d1 c8001c        	xor	A,_OutPWM+28
 963                     ; 206 		LD    _OutPWM+28,A
 966  01d4 c7001c        	ld	_OutPWM+28,A
 968                     ; 207 		XOR		A,_OutPWM+29
 971  01d7 c8001d        	xor	A,_OutPWM+29
 973                     ; 208 		LD    _OutPWM+29,A
 976  01da c7001d        	ld	_OutPWM+29,A
 978                     ; 210 		XOR		A,_OutPWM+30
 981  01dd c8001e        	xor	A,_OutPWM+30
 983                     ; 211 		LD    _OutPWM+30,A
 986  01e0 c7001e        	ld	_OutPWM+30,A
 988                     ; 212 		XOR		A,_OutPWM+31
 991  01e3 c8001f        	xor	A,_OutPWM+31
 993                     ; 213 		LD    _OutPWM+31,A
 996  01e6 c7001f        	ld	_OutPWM+31,A
 998                     ; 214 		XOR		A,_OutPWM+32
1001  01e9 c80020        	xor	A,_OutPWM+32
1003                     ; 215 		LD    _OutPWM+32,A
1006  01ec c70020        	ld	_OutPWM+32,A
1008                     ; 216 		XOR		A,_OutPWM+33
1011  01ef c80021        	xor	A,_OutPWM+33
1013                     ; 217 		LD    _OutPWM+33,A
1016  01f2 c70021        	ld	_OutPWM+33,A
1018                     ; 218 		XOR		A,_OutPWM+34
1021  01f5 c80022        	xor	A,_OutPWM+34
1023                     ; 219 		LD    _OutPWM+34,A
1026  01f8 c70022        	ld	_OutPWM+34,A
1028                     ; 220 		XOR		A,_OutPWM+35
1031  01fb c80023        	xor	A,_OutPWM+35
1033                     ; 221 		LD    _OutPWM+35,A
1036  01fe c70023        	ld	_OutPWM+35,A
1038                     ; 222 		XOR		A,_OutPWM+36
1041  0201 c80024        	xor	A,_OutPWM+36
1043                     ; 223 		LD    _OutPWM+36,A
1046  0204 c70024        	ld	_OutPWM+36,A
1048                     ; 224 		XOR		A,_OutPWM+37
1051  0207 c80025        	xor	A,_OutPWM+37
1053                     ; 225 		LD    _OutPWM+37,A
1056  020a c70025        	ld	_OutPWM+37,A
1058                     ; 226 		XOR		A,_OutPWM+38
1061  020d c80026        	xor	A,_OutPWM+38
1063                     ; 227 		LD    _OutPWM+38,A
1066  0210 c70026        	ld	_OutPWM+38,A
1068                     ; 228 		XOR		A,_OutPWM+39
1071  0213 c80027        	xor	A,_OutPWM+39
1073                     ; 229 		LD    _OutPWM+39,A
1076  0216 c70027        	ld	_OutPWM+39,A
1078                     ; 231 		XOR		A,_OutPWM+40
1081  0219 c80028        	xor	A,_OutPWM+40
1083                     ; 232 		LD    _OutPWM+40,A
1086  021c c70028        	ld	_OutPWM+40,A
1088                     ; 233 		XOR		A,_OutPWM+41
1091  021f c80029        	xor	A,_OutPWM+41
1093                     ; 234 		LD    _OutPWM+41,A
1096  0222 c70029        	ld	_OutPWM+41,A
1098                     ; 235 		XOR		A,_OutPWM+42
1101  0225 c8002a        	xor	A,_OutPWM+42
1103                     ; 236 		LD    _OutPWM+42,A
1106  0228 c7002a        	ld	_OutPWM+42,A
1108                     ; 237 		XOR		A,_OutPWM+43
1111  022b c8002b        	xor	A,_OutPWM+43
1113                     ; 238 		LD    _OutPWM+43,A
1116  022e c7002b        	ld	_OutPWM+43,A
1118                     ; 239 		XOR		A,_OutPWM+44
1121  0231 c8002c        	xor	A,_OutPWM+44
1123                     ; 240 		LD    _OutPWM+44,A
1126  0234 c7002c        	ld	_OutPWM+44,A
1128                     ; 241 		XOR		A,_OutPWM+45
1131  0237 c8002d        	xor	A,_OutPWM+45
1133                     ; 242 		LD    _OutPWM+45,A
1136  023a c7002d        	ld	_OutPWM+45,A
1138                     ; 243 		XOR		A,_OutPWM+46
1141  023d c8002e        	xor	A,_OutPWM+46
1143                     ; 244 		LD    _OutPWM+46,A
1146  0240 c7002e        	ld	_OutPWM+46,A
1148                     ; 245 		XOR		A,_OutPWM+47
1151  0243 c8002f        	xor	A,_OutPWM+47
1153                     ; 246 		LD    _OutPWM+47,A
1156  0246 c7002f        	ld	_OutPWM+47,A
1158                     ; 247 		XOR		A,_OutPWM+48
1161  0249 c80030        	xor	A,_OutPWM+48
1163                     ; 248 		LD    _OutPWM+48,A
1166  024c c70030        	ld	_OutPWM+48,A
1168                     ; 249 		XOR		A,_OutPWM+49
1171  024f c80031        	xor	A,_OutPWM+49
1173                     ; 250 		LD    _OutPWM+49,A
1176  0252 c70031        	ld	_OutPWM+49,A
1178                     ; 252 		XOR		A,_OutPWM+50
1181  0255 c80032        	xor	A,_OutPWM+50
1183                     ; 253 		LD    _OutPWM+50,A
1186  0258 c70032        	ld	_OutPWM+50,A
1188                     ; 254 		XOR		A,_OutPWM+51
1191  025b c80033        	xor	A,_OutPWM+51
1193                     ; 255 		LD    _OutPWM+51,A
1196  025e c70033        	ld	_OutPWM+51,A
1198                     ; 256 		XOR		A,_OutPWM+52
1201  0261 c80034        	xor	A,_OutPWM+52
1203                     ; 257 		LD    _OutPWM+52,A
1206  0264 c70034        	ld	_OutPWM+52,A
1208                     ; 258 		XOR		A,_OutPWM+53
1211  0267 c80035        	xor	A,_OutPWM+53
1213                     ; 259 		LD    _OutPWM+53,A
1216  026a c70035        	ld	_OutPWM+53,A
1218                     ; 260 		XOR		A,_OutPWM+54
1221  026d c80036        	xor	A,_OutPWM+54
1223                     ; 261 		LD    _OutPWM+54,A
1226  0270 c70036        	ld	_OutPWM+54,A
1228                     ; 262 		XOR		A,_OutPWM+55
1231  0273 c80037        	xor	A,_OutPWM+55
1233                     ; 263 		LD    _OutPWM+55,A
1236  0276 c70037        	ld	_OutPWM+55,A
1238                     ; 264 		XOR		A,_OutPWM+56
1241  0279 c80038        	xor	A,_OutPWM+56
1243                     ; 265 		LD    _OutPWM+56,A
1246  027c c70038        	ld	_OutPWM+56,A
1248                     ; 266 		XOR		A,_OutPWM+57
1251  027f c80039        	xor	A,_OutPWM+57
1253                     ; 267 		LD    _OutPWM+57,A
1256  0282 c70039        	ld	_OutPWM+57,A
1258                     ; 268 		XOR		A,_OutPWM+58
1261  0285 c8003a        	xor	A,_OutPWM+58
1263                     ; 269 		LD    _OutPWM+58,A
1266  0288 c7003a        	ld	_OutPWM+58,A
1268                     ; 270 		XOR		A,_OutPWM+59
1271  028b c8003b        	xor	A,_OutPWM+59
1273                     ; 271 		LD    _OutPWM+59,A
1276  028e c7003b        	ld	_OutPWM+59,A
1278                     ; 273 		XOR		A,_OutPWM+60
1281  0291 c8003c        	xor	A,_OutPWM+60
1283                     ; 274 		LD    _OutPWM+60,A
1286  0294 c7003c        	ld	_OutPWM+60,A
1288                     ; 275 		XOR		A,_OutPWM+61
1291  0297 c8003d        	xor	A,_OutPWM+61
1293                     ; 276 		LD    _OutPWM+61,A
1296  029a c7003d        	ld	_OutPWM+61,A
1298                     ; 277 		XOR		A,_OutPWM+62
1301  029d c8003e        	xor	A,_OutPWM+62
1303                     ; 278 		LD    _OutPWM+62,A
1306  02a0 c7003e        	ld	_OutPWM+62,A
1308                     ; 279 		XOR		A,_OutPWM+63
1311  02a3 c8003f        	xor	A,_OutPWM+63
1313                     ; 280 		LD    _OutPWM+63,A
1316  02a6 c7003f        	ld	_OutPWM+63,A
1318                     ; 281 		XOR		A,_OutPWM+64
1321  02a9 c80040        	xor	A,_OutPWM+64
1323                     ; 282 		LD    _OutPWM+64,A
1326  02ac c70040        	ld	_OutPWM+64,A
1328                     ; 283 		XOR		A,_OutPWM+65
1331  02af c80041        	xor	A,_OutPWM+65
1333                     ; 284 		LD    _OutPWM+65,A
1336  02b2 c70041        	ld	_OutPWM+65,A
1338                     ; 285 		XOR		A,_OutPWM+66
1341  02b5 c80042        	xor	A,_OutPWM+66
1343                     ; 286 		LD    _OutPWM+66,A
1346  02b8 c70042        	ld	_OutPWM+66,A
1348                     ; 287 		XOR		A,_OutPWM+67
1351  02bb c80043        	xor	A,_OutPWM+67
1353                     ; 288 		LD    _OutPWM+67,A
1356  02be c70043        	ld	_OutPWM+67,A
1358                     ; 289 		XOR		A,_OutPWM+68
1361  02c1 c80044        	xor	A,_OutPWM+68
1363                     ; 290 		LD    _OutPWM+68,A
1366  02c4 c70044        	ld	_OutPWM+68,A
1368                     ; 291 		XOR		A,_OutPWM+69
1371  02c7 c80045        	xor	A,_OutPWM+69
1373                     ; 292 		LD    _OutPWM+69,A
1376  02ca c70045        	ld	_OutPWM+69,A
1378                     ; 294 		XOR		A,_OutPWM+70
1381  02cd c80046        	xor	A,_OutPWM+70
1383                     ; 295 		LD    _OutPWM+70,A
1386  02d0 c70046        	ld	_OutPWM+70,A
1388                     ; 296 		XOR		A,_OutPWM+71
1391  02d3 c80047        	xor	A,_OutPWM+71
1393                     ; 297 		LD    _OutPWM+71,A
1396  02d6 c70047        	ld	_OutPWM+71,A
1398                     ; 298 		XOR		A,_OutPWM+72
1401  02d9 c80048        	xor	A,_OutPWM+72
1403                     ; 299 		LD    _OutPWM+72,A
1406  02dc c70048        	ld	_OutPWM+72,A
1408                     ; 300 		XOR		A,_OutPWM+73
1411  02df c80049        	xor	A,_OutPWM+73
1413                     ; 301 		LD    _OutPWM+73,A
1416  02e2 c70049        	ld	_OutPWM+73,A
1418                     ; 302 		XOR		A,_OutPWM+74
1421  02e5 c8004a        	xor	A,_OutPWM+74
1423                     ; 303 		LD    _OutPWM+74,A
1426  02e8 c7004a        	ld	_OutPWM+74,A
1428                     ; 304 		XOR		A,_OutPWM+75
1431  02eb c8004b        	xor	A,_OutPWM+75
1433                     ; 305 		LD    _OutPWM+75,A
1436  02ee c7004b        	ld	_OutPWM+75,A
1438                     ; 306 		XOR		A,_OutPWM+76
1441  02f1 c8004c        	xor	A,_OutPWM+76
1443                     ; 307 		LD    _OutPWM+76,A
1446  02f4 c7004c        	ld	_OutPWM+76,A
1448                     ; 308 		XOR		A,_OutPWM+77
1451  02f7 c8004d        	xor	A,_OutPWM+77
1453                     ; 309 		LD    _OutPWM+77,A
1456  02fa c7004d        	ld	_OutPWM+77,A
1458                     ; 310 		XOR		A,_OutPWM+78
1461  02fd c8004e        	xor	A,_OutPWM+78
1463                     ; 311 		LD    _OutPWM+78,A
1466  0300 c7004e        	ld	_OutPWM+78,A
1468                     ; 312 		XOR		A,_OutPWM+79
1471  0303 c8004f        	xor	A,_OutPWM+79
1473                     ; 313 		LD    _OutPWM+79,A
1476  0306 c7004f        	ld	_OutPWM+79,A
1478                     ; 315 		XOR		A,_OutPWM+80
1481  0309 c80050        	xor	A,_OutPWM+80
1483                     ; 316 		LD    _OutPWM+80,A
1486  030c c70050        	ld	_OutPWM+80,A
1488                     ; 317 		XOR		A,_OutPWM+81
1491  030f c80051        	xor	A,_OutPWM+81
1493                     ; 318 		LD    _OutPWM+81,A
1496  0312 c70051        	ld	_OutPWM+81,A
1498                     ; 319 		XOR		A,_OutPWM+82
1501  0315 c80052        	xor	A,_OutPWM+82
1503                     ; 320 		LD    _OutPWM+82,A
1506  0318 c70052        	ld	_OutPWM+82,A
1508                     ; 321 		XOR		A,_OutPWM+83
1511  031b c80053        	xor	A,_OutPWM+83
1513                     ; 322 		LD    _OutPWM+83,A
1516  031e c70053        	ld	_OutPWM+83,A
1518                     ; 323 		XOR		A,_OutPWM+84
1521  0321 c80054        	xor	A,_OutPWM+84
1523                     ; 324 		LD    _OutPWM+84,A
1526  0324 c70054        	ld	_OutPWM+84,A
1528                     ; 325 		XOR		A,_OutPWM+85
1531  0327 c80055        	xor	A,_OutPWM+85
1533                     ; 326 		LD    _OutPWM+85,A
1536  032a c70055        	ld	_OutPWM+85,A
1538                     ; 327 		XOR		A,_OutPWM+86
1541  032d c80056        	xor	A,_OutPWM+86
1543                     ; 328 		LD    _OutPWM+86,A
1546  0330 c70056        	ld	_OutPWM+86,A
1548                     ; 329 		XOR		A,_OutPWM+87
1551  0333 c80057        	xor	A,_OutPWM+87
1553                     ; 330 		LD    _OutPWM+87,A
1556  0336 c70057        	ld	_OutPWM+87,A
1558                     ; 331 		XOR		A,_OutPWM+88
1561  0339 c80058        	xor	A,_OutPWM+88
1563                     ; 332 		LD    _OutPWM+88,A
1566  033c c70058        	ld	_OutPWM+88,A
1568                     ; 333 		XOR		A,_OutPWM+89
1571  033f c80059        	xor	A,_OutPWM+89
1573                     ; 334 		LD    _OutPWM+89,A
1576  0342 c70059        	ld	_OutPWM+89,A
1578                     ; 336 		XOR		A,_OutPWM+90
1581  0345 c8005a        	xor	A,_OutPWM+90
1583                     ; 337 		LD    _OutPWM+90,A
1586  0348 c7005a        	ld	_OutPWM+90,A
1588                     ; 338 		XOR		A,_OutPWM+91
1591  034b c8005b        	xor	A,_OutPWM+91
1593                     ; 339 		LD    _OutPWM+91,A
1596  034e c7005b        	ld	_OutPWM+91,A
1598                     ; 340 		XOR		A,_OutPWM+92
1601  0351 c8005c        	xor	A,_OutPWM+92
1603                     ; 341 		LD    _OutPWM+92,A
1606  0354 c7005c        	ld	_OutPWM+92,A
1608                     ; 342 		XOR		A,_OutPWM+93
1611  0357 c8005d        	xor	A,_OutPWM+93
1613                     ; 343 		LD    _OutPWM+93,A
1616  035a c7005d        	ld	_OutPWM+93,A
1618                     ; 344 		XOR		A,_OutPWM+94
1621  035d c8005e        	xor	A,_OutPWM+94
1623                     ; 345 		LD    _OutPWM+94,A
1626  0360 c7005e        	ld	_OutPWM+94,A
1628                     ; 346 		XOR		A,_OutPWM+95
1631  0363 c8005f        	xor	A,_OutPWM+95
1633                     ; 347 		LD    _OutPWM+95,A
1636  0366 c7005f        	ld	_OutPWM+95,A
1638                     ; 348 		XOR		A,_OutPWM+96
1641  0369 c80060        	xor	A,_OutPWM+96
1643                     ; 349 		LD    _OutPWM+96,A
1646  036c c70060        	ld	_OutPWM+96,A
1648                     ; 350 		XOR		A,_OutPWM+97
1651  036f c80061        	xor	A,_OutPWM+97
1653                     ; 351 		LD    _OutPWM+97,A
1656  0372 c70061        	ld	_OutPWM+97,A
1658                     ; 352 		XOR		A,_OutPWM+98
1661  0375 c80062        	xor	A,_OutPWM+98
1663                     ; 353 		LD    _OutPWM+98,A
1666  0378 c70062        	ld	_OutPWM+98,A
1668                     ; 354 		XOR		A,_OutPWM+99
1671  037b c80063        	xor	A,_OutPWM+99
1673                     ; 355 		LD    _OutPWM+99,A
1676  037e c70063        	ld	_OutPWM+99,A
1678                     ; 359 	if (Device.CnPol == PolarityP)
1680  0381 720f000004ac  	btjt	_Device,#7,L132
1681                     ; 362 		GPIOC->ODR &= ~LED_COM_C;
1683  038a 721f500a      	bres	20490,#7
1684                     ; 366 			MOV    0x500a,_OutPWM
1687  038e 550000500a    	mov	0x500a,_OutPWM
1689                     ; 367 			MOV    0x500a,_OutPWM+1
1692  0393 550001500a    	mov	0x500a,_OutPWM+1
1694                     ; 368 			MOV    0x500a,_OutPWM+2
1697  0398 550002500a    	mov	0x500a,_OutPWM+2
1699                     ; 369 			MOV    0x500a,_OutPWM+3
1702  039d 550003500a    	mov	0x500a,_OutPWM+3
1704                     ; 370 			MOV    0x500a,_OutPWM+4
1707  03a2 550004500a    	mov	0x500a,_OutPWM+4
1709                     ; 371 			MOV    0x500a,_OutPWM+5
1712  03a7 550005500a    	mov	0x500a,_OutPWM+5
1714                     ; 372 			MOV    0x500a,_OutPWM+6
1717  03ac 550006500a    	mov	0x500a,_OutPWM+6
1719                     ; 373 			MOV    0x500a,_OutPWM+7
1722  03b1 550007500a    	mov	0x500a,_OutPWM+7
1724                     ; 374 			MOV    0x500a,_OutPWM+8
1727  03b6 550008500a    	mov	0x500a,_OutPWM+8
1729                     ; 375 			MOV    0x500a,_OutPWM+9
1732  03bb 550009500a    	mov	0x500a,_OutPWM+9
1734                     ; 377 			MOV    0x500a,_OutPWM+10
1737  03c0 55000a500a    	mov	0x500a,_OutPWM+10
1739                     ; 378 			MOV    0x500a,_OutPWM+11
1742  03c5 55000b500a    	mov	0x500a,_OutPWM+11
1744                     ; 379 			MOV    0x500a,_OutPWM+12
1747  03ca 55000c500a    	mov	0x500a,_OutPWM+12
1749                     ; 380 			MOV    0x500a,_OutPWM+13
1752  03cf 55000d500a    	mov	0x500a,_OutPWM+13
1754                     ; 381 			MOV    0x500a,_OutPWM+14
1757  03d4 55000e500a    	mov	0x500a,_OutPWM+14
1759                     ; 382 			MOV    0x500a,_OutPWM+15
1762  03d9 55000f500a    	mov	0x500a,_OutPWM+15
1764                     ; 383 			MOV    0x500a,_OutPWM+16
1767  03de 550010500a    	mov	0x500a,_OutPWM+16
1769                     ; 384 			MOV    0x500a,_OutPWM+17
1772  03e3 550011500a    	mov	0x500a,_OutPWM+17
1774                     ; 385 			MOV    0x500a,_OutPWM+18
1777  03e8 550012500a    	mov	0x500a,_OutPWM+18
1779                     ; 386 			MOV    0x500a,_OutPWM+19
1782  03ed 550013500a    	mov	0x500a,_OutPWM+19
1784                     ; 388 			MOV    0x500a,_OutPWM+20
1787  03f2 550014500a    	mov	0x500a,_OutPWM+20
1789                     ; 389 			MOV    0x500a,_OutPWM+21
1792  03f7 550015500a    	mov	0x500a,_OutPWM+21
1794                     ; 390 			MOV    0x500a,_OutPWM+22
1797  03fc 550016500a    	mov	0x500a,_OutPWM+22
1799                     ; 391 			MOV    0x500a,_OutPWM+23
1802  0401 550017500a    	mov	0x500a,_OutPWM+23
1804                     ; 392 			MOV    0x500a,_OutPWM+24
1807  0406 550018500a    	mov	0x500a,_OutPWM+24
1809                     ; 393 			MOV    0x500a,_OutPWM+25
1812  040b 550019500a    	mov	0x500a,_OutPWM+25
1814                     ; 394 			MOV    0x500a,_OutPWM+26
1817  0410 55001a500a    	mov	0x500a,_OutPWM+26
1819                     ; 395 			MOV    0x500a,_OutPWM+27
1822  0415 55001b500a    	mov	0x500a,_OutPWM+27
1824                     ; 396 			MOV    0x500a,_OutPWM+28
1827  041a 55001c500a    	mov	0x500a,_OutPWM+28
1829                     ; 397 			MOV    0x500a,_OutPWM+29
1832  041f 55001d500a    	mov	0x500a,_OutPWM+29
1834                     ; 399 			MOV    0x500a,_OutPWM+30
1837  0424 55001e500a    	mov	0x500a,_OutPWM+30
1839                     ; 400 			MOV    0x500a,_OutPWM+31
1842  0429 55001f500a    	mov	0x500a,_OutPWM+31
1844                     ; 401 			MOV    0x500a,_OutPWM+32
1847  042e 550020500a    	mov	0x500a,_OutPWM+32
1849                     ; 402 			MOV    0x500a,_OutPWM+33
1852  0433 550021500a    	mov	0x500a,_OutPWM+33
1854                     ; 403 			MOV    0x500a,_OutPWM+34
1857  0438 550022500a    	mov	0x500a,_OutPWM+34
1859                     ; 404 			MOV    0x500a,_OutPWM+35
1862  043d 550023500a    	mov	0x500a,_OutPWM+35
1864                     ; 405 			MOV    0x500a,_OutPWM+36
1867  0442 550024500a    	mov	0x500a,_OutPWM+36
1869                     ; 406 			MOV    0x500a,_OutPWM+37
1872  0447 550025500a    	mov	0x500a,_OutPWM+37
1874                     ; 407 			MOV    0x500a,_OutPWM+38
1877  044c 550026500a    	mov	0x500a,_OutPWM+38
1879                     ; 408 			MOV    0x500a,_OutPWM+39
1882  0451 550027500a    	mov	0x500a,_OutPWM+39
1884                     ; 410 			MOV    0x500a,_OutPWM+40
1887  0456 550028500a    	mov	0x500a,_OutPWM+40
1889                     ; 411 			MOV    0x500a,_OutPWM+41
1892  045b 550029500a    	mov	0x500a,_OutPWM+41
1894                     ; 412 			MOV    0x500a,_OutPWM+42
1897  0460 55002a500a    	mov	0x500a,_OutPWM+42
1899                     ; 413 			MOV    0x500a,_OutPWM+43
1902  0465 55002b500a    	mov	0x500a,_OutPWM+43
1904                     ; 414 			MOV    0x500a,_OutPWM+44
1907  046a 55002c500a    	mov	0x500a,_OutPWM+44
1909                     ; 415 			MOV    0x500a,_OutPWM+45
1912  046f 55002d500a    	mov	0x500a,_OutPWM+45
1914                     ; 416 			MOV    0x500a,_OutPWM+46
1917  0474 55002e500a    	mov	0x500a,_OutPWM+46
1919                     ; 417 			MOV    0x500a,_OutPWM+47
1922  0479 55002f500a    	mov	0x500a,_OutPWM+47
1924                     ; 418 			MOV    0x500a,_OutPWM+48
1927  047e 550030500a    	mov	0x500a,_OutPWM+48
1929                     ; 419 			MOV    0x500a,_OutPWM+49
1932  0483 550031500a    	mov	0x500a,_OutPWM+49
1934                     ; 421 			MOV    0x500a,_OutPWM+50
1937  0488 550032500a    	mov	0x500a,_OutPWM+50
1939                     ; 422 			MOV    0x500a,_OutPWM+51
1942  048d 550033500a    	mov	0x500a,_OutPWM+51
1944                     ; 423 			MOV    0x500a,_OutPWM+52
1947  0492 550034500a    	mov	0x500a,_OutPWM+52
1949                     ; 424 			MOV    0x500a,_OutPWM+53
1952  0497 550035500a    	mov	0x500a,_OutPWM+53
1954                     ; 425 			MOV    0x500a,_OutPWM+54
1957  049c 550036500a    	mov	0x500a,_OutPWM+54
1959                     ; 426 			MOV    0x500a,_OutPWM+55
1962  04a1 550037500a    	mov	0x500a,_OutPWM+55
1964                     ; 427 			MOV    0x500a,_OutPWM+56
1967  04a6 550038500a    	mov	0x500a,_OutPWM+56
1969                     ; 428 			MOV    0x500a,_OutPWM+57
1972  04ab 550039500a    	mov	0x500a,_OutPWM+57
1974                     ; 429 			MOV    0x500a,_OutPWM+58
1977  04b0 55003a500a    	mov	0x500a,_OutPWM+58
1979                     ; 430 			MOV    0x500a,_OutPWM+59
1982  04b5 55003b500a    	mov	0x500a,_OutPWM+59
1984                     ; 432 			MOV    0x500a,_OutPWM+60
1987  04ba 55003c500a    	mov	0x500a,_OutPWM+60
1989                     ; 433 			MOV    0x500a,_OutPWM+61
1992  04bf 55003d500a    	mov	0x500a,_OutPWM+61
1994                     ; 434 			MOV    0x500a,_OutPWM+62
1997  04c4 55003e500a    	mov	0x500a,_OutPWM+62
1999                     ; 435 			MOV    0x500a,_OutPWM+63
2002  04c9 55003f500a    	mov	0x500a,_OutPWM+63
2004                     ; 436 			MOV    0x500a,_OutPWM+64
2007  04ce 550040500a    	mov	0x500a,_OutPWM+64
2009                     ; 437 			MOV    0x500a,_OutPWM+65
2012  04d3 550041500a    	mov	0x500a,_OutPWM+65
2014                     ; 438 			MOV    0x500a,_OutPWM+66
2017  04d8 550042500a    	mov	0x500a,_OutPWM+66
2019                     ; 439 			MOV    0x500a,_OutPWM+67
2022  04dd 550043500a    	mov	0x500a,_OutPWM+67
2024                     ; 440 			MOV    0x500a,_OutPWM+68
2027  04e2 550044500a    	mov	0x500a,_OutPWM+68
2029                     ; 441 			MOV    0x500a,_OutPWM+69
2032  04e7 550045500a    	mov	0x500a,_OutPWM+69
2034                     ; 443 			MOV    0x500a,_OutPWM+70
2037  04ec 550046500a    	mov	0x500a,_OutPWM+70
2039                     ; 444 			MOV    0x500a,_OutPWM+71
2042  04f1 550047500a    	mov	0x500a,_OutPWM+71
2044                     ; 445 			MOV    0x500a,_OutPWM+72
2047  04f6 550048500a    	mov	0x500a,_OutPWM+72
2049                     ; 446 			MOV    0x500a,_OutPWM+73
2052  04fb 550049500a    	mov	0x500a,_OutPWM+73
2054                     ; 447 			MOV    0x500a,_OutPWM+74
2057  0500 55004a500a    	mov	0x500a,_OutPWM+74
2059                     ; 448 			MOV    0x500a,_OutPWM+75
2062  0505 55004b500a    	mov	0x500a,_OutPWM+75
2064                     ; 449 			MOV    0x500a,_OutPWM+76
2067  050a 55004c500a    	mov	0x500a,_OutPWM+76
2069                     ; 450 			MOV    0x500a,_OutPWM+77
2072  050f 55004d500a    	mov	0x500a,_OutPWM+77
2074                     ; 451 			MOV    0x500a,_OutPWM+78
2077  0514 55004e500a    	mov	0x500a,_OutPWM+78
2079                     ; 452 			MOV    0x500a,_OutPWM+79
2082  0519 55004f500a    	mov	0x500a,_OutPWM+79
2084                     ; 454 			MOV    0x500a,_OutPWM+80
2087  051e 550050500a    	mov	0x500a,_OutPWM+80
2089                     ; 455 			MOV    0x500a,_OutPWM+81
2092  0523 550051500a    	mov	0x500a,_OutPWM+81
2094                     ; 456 			MOV    0x500a,_OutPWM+82
2097  0528 550052500a    	mov	0x500a,_OutPWM+82
2099                     ; 457 			MOV    0x500a,_OutPWM+83
2102  052d 550053500a    	mov	0x500a,_OutPWM+83
2104                     ; 458 			MOV    0x500a,_OutPWM+84
2107  0532 550054500a    	mov	0x500a,_OutPWM+84
2109                     ; 459 			MOV    0x500a,_OutPWM+85
2112  0537 550055500a    	mov	0x500a,_OutPWM+85
2114                     ; 460 			MOV    0x500a,_OutPWM+86
2117  053c 550056500a    	mov	0x500a,_OutPWM+86
2119                     ; 461 			MOV    0x500a,_OutPWM+87
2122  0541 550057500a    	mov	0x500a,_OutPWM+87
2124                     ; 462 			MOV    0x500a,_OutPWM+88
2127  0546 550058500a    	mov	0x500a,_OutPWM+88
2129                     ; 463 			MOV    0x500a,_OutPWM+89
2132  054b 550059500a    	mov	0x500a,_OutPWM+89
2134                     ; 465 			MOV    0x500a,_OutPWM+90
2137  0550 55005a500a    	mov	0x500a,_OutPWM+90
2139                     ; 466 			MOV    0x500a,_OutPWM+91
2142  0555 55005b500a    	mov	0x500a,_OutPWM+91
2144                     ; 467 			MOV    0x500a,_OutPWM+92
2147  055a 55005c500a    	mov	0x500a,_OutPWM+92
2149                     ; 468 			MOV    0x500a,_OutPWM+93
2152  055f 55005d500a    	mov	0x500a,_OutPWM+93
2154                     ; 469 			MOV    0x500a,_OutPWM+94
2157  0564 55005e500a    	mov	0x500a,_OutPWM+94
2159                     ; 470 			MOV    0x500a,_OutPWM+95
2162  0569 55005f500a    	mov	0x500a,_OutPWM+95
2164                     ; 471 			MOV    0x500a,_OutPWM+96
2167  056e 550060500a    	mov	0x500a,_OutPWM+96
2169                     ; 472 			MOV    0x500a,_OutPWM+97
2172  0573 550061500a    	mov	0x500a,_OutPWM+97
2174                     ; 473 			MOV    0x500a,_OutPWM+98
2177  0578 550062500a    	mov	0x500a,_OutPWM+98
2179                     ; 474 			MOV    0x500a,_OutPWM+99
2182  057d 550063500a    	mov	0x500a,_OutPWM+99
2184                     ; 478 		GPIOC->ODR |= LED_COM_C;		
2186  0582 721e500a      	bset	20490,#7
2187                     ; 480 		Device.CnPol = PolarityN;
2189  0586 721e0000      	bset	_Device,#7
2191  058a acc807c8      	jra	L332
2192  058e               L132:
2193                     ; 487 			MOV    0x500f,_OutPWM
2196  058e 550000500f    	mov	0x500f,_OutPWM
2198                     ; 488 			MOV    0x500f,_OutPWM+1
2201  0593 550001500f    	mov	0x500f,_OutPWM+1
2203                     ; 489 			MOV    0x500f,_OutPWM+2
2206  0598 550002500f    	mov	0x500f,_OutPWM+2
2208                     ; 490 			MOV    0x500f,_OutPWM+3
2211  059d 550003500f    	mov	0x500f,_OutPWM+3
2213                     ; 491 			MOV    0x500f,_OutPWM+4
2216  05a2 550004500f    	mov	0x500f,_OutPWM+4
2218                     ; 492 			MOV    0x500f,_OutPWM+5
2221  05a7 550005500f    	mov	0x500f,_OutPWM+5
2223                     ; 493 			MOV    0x500f,_OutPWM+6
2226  05ac 550006500f    	mov	0x500f,_OutPWM+6
2228                     ; 494 			MOV    0x500f,_OutPWM+7
2231  05b1 550007500f    	mov	0x500f,_OutPWM+7
2233                     ; 495 			MOV    0x500f,_OutPWM+8
2236  05b6 550008500f    	mov	0x500f,_OutPWM+8
2238                     ; 496 			MOV    0x500f,_OutPWM+9
2241  05bb 550009500f    	mov	0x500f,_OutPWM+9
2243                     ; 498 			MOV    0x500f,_OutPWM+10
2246  05c0 55000a500f    	mov	0x500f,_OutPWM+10
2248                     ; 499 			MOV    0x500f,_OutPWM+11
2251  05c5 55000b500f    	mov	0x500f,_OutPWM+11
2253                     ; 500 			MOV    0x500f,_OutPWM+12
2256  05ca 55000c500f    	mov	0x500f,_OutPWM+12
2258                     ; 501 			MOV    0x500f,_OutPWM+13
2261  05cf 55000d500f    	mov	0x500f,_OutPWM+13
2263                     ; 502 			MOV    0x500f,_OutPWM+14
2266  05d4 55000e500f    	mov	0x500f,_OutPWM+14
2268                     ; 503 			MOV    0x500f,_OutPWM+15
2271  05d9 55000f500f    	mov	0x500f,_OutPWM+15
2273                     ; 504 			MOV    0x500f,_OutPWM+16
2276  05de 550010500f    	mov	0x500f,_OutPWM+16
2278                     ; 505 			MOV    0x500f,_OutPWM+17
2281  05e3 550011500f    	mov	0x500f,_OutPWM+17
2283                     ; 506 			MOV    0x500f,_OutPWM+18
2286  05e8 550012500f    	mov	0x500f,_OutPWM+18
2288                     ; 507 			MOV    0x500f,_OutPWM+19
2291  05ed 550013500f    	mov	0x500f,_OutPWM+19
2293                     ; 509 			MOV    0x500f,_OutPWM+20
2296  05f2 550014500f    	mov	0x500f,_OutPWM+20
2298                     ; 510 			MOV    0x500f,_OutPWM+21
2301  05f7 550015500f    	mov	0x500f,_OutPWM+21
2303                     ; 511 			MOV    0x500f,_OutPWM+22
2306  05fc 550016500f    	mov	0x500f,_OutPWM+22
2308                     ; 512 			MOV    0x500f,_OutPWM+23
2311  0601 550017500f    	mov	0x500f,_OutPWM+23
2313                     ; 513 			MOV    0x500f,_OutPWM+24
2316  0606 550018500f    	mov	0x500f,_OutPWM+24
2318                     ; 514 			MOV    0x500f,_OutPWM+25
2321  060b 550019500f    	mov	0x500f,_OutPWM+25
2323                     ; 515 			MOV    0x500f,_OutPWM+26
2326  0610 55001a500f    	mov	0x500f,_OutPWM+26
2328                     ; 516 			MOV    0x500f,_OutPWM+27
2331  0615 55001b500f    	mov	0x500f,_OutPWM+27
2333                     ; 517 			MOV    0x500f,_OutPWM+28
2336  061a 55001c500f    	mov	0x500f,_OutPWM+28
2338                     ; 518 			MOV    0x500f,_OutPWM+29
2341  061f 55001d500f    	mov	0x500f,_OutPWM+29
2343                     ; 520 			MOV    0x500f,_OutPWM+30
2346  0624 55001e500f    	mov	0x500f,_OutPWM+30
2348                     ; 521 			MOV    0x500f,_OutPWM+31
2351  0629 55001f500f    	mov	0x500f,_OutPWM+31
2353                     ; 522 			MOV    0x500f,_OutPWM+32
2356  062e 550020500f    	mov	0x500f,_OutPWM+32
2358                     ; 523 			MOV    0x500f,_OutPWM+33
2361  0633 550021500f    	mov	0x500f,_OutPWM+33
2363                     ; 524 			MOV    0x500f,_OutPWM+34
2366  0638 550022500f    	mov	0x500f,_OutPWM+34
2368                     ; 525 			MOV    0x500f,_OutPWM+35
2371  063d 550023500f    	mov	0x500f,_OutPWM+35
2373                     ; 526 			MOV    0x500f,_OutPWM+36
2376  0642 550024500f    	mov	0x500f,_OutPWM+36
2378                     ; 527 			MOV    0x500f,_OutPWM+37
2381  0647 550025500f    	mov	0x500f,_OutPWM+37
2383                     ; 528 			MOV    0x500f,_OutPWM+38
2386  064c 550026500f    	mov	0x500f,_OutPWM+38
2388                     ; 529 			MOV    0x500f,_OutPWM+39
2391  0651 550027500f    	mov	0x500f,_OutPWM+39
2393                     ; 531 			MOV    0x500f,_OutPWM+40
2396  0656 550028500f    	mov	0x500f,_OutPWM+40
2398                     ; 532 			MOV    0x500f,_OutPWM+41
2401  065b 550029500f    	mov	0x500f,_OutPWM+41
2403                     ; 533 			MOV    0x500f,_OutPWM+42
2406  0660 55002a500f    	mov	0x500f,_OutPWM+42
2408                     ; 534 			MOV    0x500f,_OutPWM+43
2411  0665 55002b500f    	mov	0x500f,_OutPWM+43
2413                     ; 535 			MOV    0x500f,_OutPWM+44
2416  066a 55002c500f    	mov	0x500f,_OutPWM+44
2418                     ; 536 			MOV    0x500f,_OutPWM+45
2421  066f 55002d500f    	mov	0x500f,_OutPWM+45
2423                     ; 537 			MOV    0x500f,_OutPWM+46
2426  0674 55002e500f    	mov	0x500f,_OutPWM+46
2428                     ; 538 			MOV    0x500f,_OutPWM+47
2431  0679 55002f500f    	mov	0x500f,_OutPWM+47
2433                     ; 539 			MOV    0x500f,_OutPWM+48
2436  067e 550030500f    	mov	0x500f,_OutPWM+48
2438                     ; 540 			MOV    0x500f,_OutPWM+49
2441  0683 550031500f    	mov	0x500f,_OutPWM+49
2443                     ; 542 			MOV    0x500f,_OutPWM+50
2446  0688 550032500f    	mov	0x500f,_OutPWM+50
2448                     ; 543 			MOV    0x500f,_OutPWM+51
2451  068d 550033500f    	mov	0x500f,_OutPWM+51
2453                     ; 544 			MOV    0x500f,_OutPWM+52
2456  0692 550034500f    	mov	0x500f,_OutPWM+52
2458                     ; 545 			MOV    0x500f,_OutPWM+53
2461  0697 550035500f    	mov	0x500f,_OutPWM+53
2463                     ; 546 			MOV    0x500f,_OutPWM+54
2466  069c 550036500f    	mov	0x500f,_OutPWM+54
2468                     ; 547 			MOV    0x500f,_OutPWM+55
2471  06a1 550037500f    	mov	0x500f,_OutPWM+55
2473                     ; 548 			MOV    0x500f,_OutPWM+56
2476  06a6 550038500f    	mov	0x500f,_OutPWM+56
2478                     ; 549 			MOV    0x500f,_OutPWM+57
2481  06ab 550039500f    	mov	0x500f,_OutPWM+57
2483                     ; 550 			MOV    0x500f,_OutPWM+58
2486  06b0 55003a500f    	mov	0x500f,_OutPWM+58
2488                     ; 551 			MOV    0x500f,_OutPWM+59
2491  06b5 55003b500f    	mov	0x500f,_OutPWM+59
2493                     ; 553 			MOV    0x500f,_OutPWM+60
2496  06ba 55003c500f    	mov	0x500f,_OutPWM+60
2498                     ; 554 			MOV    0x500f,_OutPWM+61
2501  06bf 55003d500f    	mov	0x500f,_OutPWM+61
2503                     ; 555 			MOV    0x500f,_OutPWM+62
2506  06c4 55003e500f    	mov	0x500f,_OutPWM+62
2508                     ; 556 			MOV    0x500f,_OutPWM+63
2511  06c9 55003f500f    	mov	0x500f,_OutPWM+63
2513                     ; 557 			MOV    0x500f,_OutPWM+64
2516  06ce 550040500f    	mov	0x500f,_OutPWM+64
2518                     ; 558 			MOV    0x500f,_OutPWM+65
2521  06d3 550041500f    	mov	0x500f,_OutPWM+65
2523                     ; 559 			MOV    0x500f,_OutPWM+66
2526  06d8 550042500f    	mov	0x500f,_OutPWM+66
2528                     ; 560 			MOV    0x500f,_OutPWM+67
2531  06dd 550043500f    	mov	0x500f,_OutPWM+67
2533                     ; 561 			MOV    0x500f,_OutPWM+68
2536  06e2 550044500f    	mov	0x500f,_OutPWM+68
2538                     ; 562 			MOV    0x500f,_OutPWM+69
2541  06e7 550045500f    	mov	0x500f,_OutPWM+69
2543                     ; 564 			MOV    0x500f,_OutPWM+70
2546  06ec 550046500f    	mov	0x500f,_OutPWM+70
2548                     ; 565 			MOV    0x500f,_OutPWM+71
2551  06f1 550047500f    	mov	0x500f,_OutPWM+71
2553                     ; 566 			MOV    0x500f,_OutPWM+72
2556  06f6 550048500f    	mov	0x500f,_OutPWM+72
2558                     ; 567 			MOV    0x500f,_OutPWM+73
2561  06fb 550049500f    	mov	0x500f,_OutPWM+73
2563                     ; 568 			MOV    0x500f,_OutPWM+74
2566  0700 55004a500f    	mov	0x500f,_OutPWM+74
2568                     ; 569 			MOV    0x500f,_OutPWM+75
2571  0705 55004b500f    	mov	0x500f,_OutPWM+75
2573                     ; 570 			MOV    0x500f,_OutPWM+76
2576  070a 55004c500f    	mov	0x500f,_OutPWM+76
2578                     ; 571 			MOV    0x500f,_OutPWM+77
2581  070f 55004d500f    	mov	0x500f,_OutPWM+77
2583                     ; 572 			MOV    0x500f,_OutPWM+78
2586  0714 55004e500f    	mov	0x500f,_OutPWM+78
2588                     ; 573 			MOV    0x500f,_OutPWM+79
2591  0719 55004f500f    	mov	0x500f,_OutPWM+79
2593                     ; 575 			MOV    0x500f,_OutPWM+80
2596  071e 550050500f    	mov	0x500f,_OutPWM+80
2598                     ; 576 			MOV    0x500f,_OutPWM+81
2601  0723 550051500f    	mov	0x500f,_OutPWM+81
2603                     ; 577 			MOV    0x500f,_OutPWM+82
2606  0728 550052500f    	mov	0x500f,_OutPWM+82
2608                     ; 578 			MOV    0x500f,_OutPWM+83
2611  072d 550053500f    	mov	0x500f,_OutPWM+83
2613                     ; 579 			MOV    0x500f,_OutPWM+84
2616  0732 550054500f    	mov	0x500f,_OutPWM+84
2618                     ; 580 			MOV    0x500f,_OutPWM+85
2621  0737 550055500f    	mov	0x500f,_OutPWM+85
2623                     ; 581 			MOV    0x500f,_OutPWM+86
2626  073c 550056500f    	mov	0x500f,_OutPWM+86
2628                     ; 582 			MOV    0x500f,_OutPWM+87
2631  0741 550057500f    	mov	0x500f,_OutPWM+87
2633                     ; 583 			MOV    0x500f,_OutPWM+88
2636  0746 550058500f    	mov	0x500f,_OutPWM+88
2638                     ; 584 			MOV    0x500f,_OutPWM+89
2641  074b 550059500f    	mov	0x500f,_OutPWM+89
2643                     ; 586 			MOV    0x500f,_OutPWM+90
2646  0750 55005a500f    	mov	0x500f,_OutPWM+90
2648                     ; 587 			MOV    0x500f,_OutPWM+91
2651  0755 55005b500f    	mov	0x500f,_OutPWM+91
2653                     ; 588 			MOV    0x500f,_OutPWM+92
2656  075a 55005c500f    	mov	0x500f,_OutPWM+92
2658                     ; 589 			MOV    0x500f,_OutPWM+93
2661  075f 55005d500f    	mov	0x500f,_OutPWM+93
2663                     ; 590 			MOV    0x500f,_OutPWM+94
2666  0764 55005e500f    	mov	0x500f,_OutPWM+94
2668                     ; 591 			MOV    0x500f,_OutPWM+95
2671  0769 55005f500f    	mov	0x500f,_OutPWM+95
2673                     ; 592 			MOV    0x500f,_OutPWM+96
2676  076e 550060500f    	mov	0x500f,_OutPWM+96
2678                     ; 593 			MOV    0x500f,_OutPWM+97
2681  0773 550061500f    	mov	0x500f,_OutPWM+97
2683                     ; 594 			MOV    0x500f,_OutPWM+98
2686  0778 550062500f    	mov	0x500f,_OutPWM+98
2688                     ; 595 			MOV    0x500f,_OutPWM+99
2691  077d 550063500f    	mov	0x500f,_OutPWM+99
2693                     ; 599 		if (Device.Way == UpWay)
2695  0782 ce0000        	ldw	x,_CurrentPulsePeriod
2696  0785 720d00001e    	btjf	_Device,#6,L532
2697                     ; 601 			CurrentPulsePeriod -=100;
2699  078a 1d0064        	subw	x,#100
2700  078d cf0000        	ldw	_CurrentPulsePeriod,x
2701                     ; 603 			TIM2->ARRH = (CurrentPulsePeriod >> 8);
2703  0790 550000530d    	mov	21261,_CurrentPulsePeriod
2704                     ; 604 			TIM2->ARRL = CurrentPulsePeriod;
2706  0795 550001530e    	mov	21262,_CurrentPulsePeriod+1
2707                     ; 606 			if (CurrentPulsePeriod <= 1000) Device.Way = DownWay;
2709  079a ce0000        	ldw	x,_CurrentPulsePeriod
2710  079d a303e9        	cpw	x,#1001
2711  07a0 2422          	jruge	L142
2714  07a2 721d0000      	bres	_Device,#6
2715  07a6 201c          	jra	L142
2716  07a8               L532:
2717                     ; 611 			CurrentPulsePeriod +=100;
2719  07a8 1c0064        	addw	x,#100
2720  07ab cf0000        	ldw	_CurrentPulsePeriod,x
2721                     ; 613 			TIM2->ARRH = (CurrentPulsePeriod >> 8);
2723  07ae 550000530d    	mov	21261,_CurrentPulsePeriod
2724                     ; 614 			TIM2->ARRL = CurrentPulsePeriod;
2726  07b3 550001530e    	mov	21262,_CurrentPulsePeriod+1
2727                     ; 616 			if (CurrentPulsePeriod >= 10000) Device.Way = UpWay;
2729  07b8 ce0000        	ldw	x,_CurrentPulsePeriod
2730  07bb a32710        	cpw	x,#10000
2731  07be 2504          	jrult	L142
2734  07c0 721c0000      	bset	_Device,#6
2735  07c4               L142:
2736                     ; 620 		Device.CnPol = PolarityP;
2738  07c4 721f0000      	bres	_Device,#7
2739  07c8               L332:
2740                     ; 626 		CLR		_OutPWM
2743  07c8 725f0000      	clr	_OutPWM
2745                     ; 627 		CLR		_OutPWM+1
2748  07cc 725f0001      	clr	_OutPWM+1
2750                     ; 628 		CLR		_OutPWM+2
2753  07d0 725f0002      	clr	_OutPWM+2
2755                     ; 629 		CLR		_OutPWM+3
2758  07d4 725f0003      	clr	_OutPWM+3
2760                     ; 630 		CLR		_OutPWM+4
2763  07d8 725f0004      	clr	_OutPWM+4
2765                     ; 631 		CLR		_OutPWM+5
2768  07dc 725f0005      	clr	_OutPWM+5
2770                     ; 632 		CLR		_OutPWM+6
2773  07e0 725f0006      	clr	_OutPWM+6
2775                     ; 633 		CLR		_OutPWM+7
2778  07e4 725f0007      	clr	_OutPWM+7
2780                     ; 634 		CLR		_OutPWM+8
2783  07e8 725f0008      	clr	_OutPWM+8
2785                     ; 635 		CLR		_OutPWM+9
2788  07ec 725f0009      	clr	_OutPWM+9
2790                     ; 636 		CLR		_OutPWM+10
2793  07f0 725f000a      	clr	_OutPWM+10
2795                     ; 637 		CLR		_OutPWM+11
2798  07f4 725f000b      	clr	_OutPWM+11
2800                     ; 638 		CLR		_OutPWM+12
2803  07f8 725f000c      	clr	_OutPWM+12
2805                     ; 639 		CLR		_OutPWM+13
2808  07fc 725f000d      	clr	_OutPWM+13
2810                     ; 640 		CLR		_OutPWM+14
2813  0800 725f000e      	clr	_OutPWM+14
2815                     ; 641 		CLR		_OutPWM+15
2818  0804 725f000f      	clr	_OutPWM+15
2820                     ; 642 		CLR		_OutPWM+16
2823  0808 725f0010      	clr	_OutPWM+16
2825                     ; 643 		CLR		_OutPWM+17
2828  080c 725f0011      	clr	_OutPWM+17
2830                     ; 644 		CLR		_OutPWM+18
2833  0810 725f0012      	clr	_OutPWM+18
2835                     ; 645 		CLR		_OutPWM+19
2838  0814 725f0013      	clr	_OutPWM+19
2840                     ; 646 		CLR		_OutPWM+20
2843  0818 725f0014      	clr	_OutPWM+20
2845                     ; 647 		CLR		_OutPWM+21
2848  081c 725f0015      	clr	_OutPWM+21
2850                     ; 648 		CLR		_OutPWM+22
2853  0820 725f0016      	clr	_OutPWM+22
2855                     ; 649 		CLR		_OutPWM+23
2858  0824 725f0017      	clr	_OutPWM+23
2860                     ; 650 		CLR		_OutPWM+24
2863  0828 725f0018      	clr	_OutPWM+24
2865                     ; 651 		CLR		_OutPWM+25
2868  082c 725f0019      	clr	_OutPWM+25
2870                     ; 652 		CLR		_OutPWM+26
2873  0830 725f001a      	clr	_OutPWM+26
2875                     ; 653 		CLR		_OutPWM+27
2878  0834 725f001b      	clr	_OutPWM+27
2880                     ; 654 		CLR		_OutPWM+28
2883  0838 725f001c      	clr	_OutPWM+28
2885                     ; 655 		CLR		_OutPWM+29
2888  083c 725f001d      	clr	_OutPWM+29
2890                     ; 656 		CLR		_OutPWM+30
2893  0840 725f001e      	clr	_OutPWM+30
2895                     ; 657 		CLR		_OutPWM+31
2898  0844 725f001f      	clr	_OutPWM+31
2900                     ; 658 		CLR		_OutPWM+32
2903  0848 725f0020      	clr	_OutPWM+32
2905                     ; 659 		CLR		_OutPWM+33
2908  084c 725f0021      	clr	_OutPWM+33
2910                     ; 660 		CLR		_OutPWM+34
2913  0850 725f0022      	clr	_OutPWM+34
2915                     ; 661 		CLR		_OutPWM+35
2918  0854 725f0023      	clr	_OutPWM+35
2920                     ; 662 		CLR		_OutPWM+36
2923  0858 725f0024      	clr	_OutPWM+36
2925                     ; 663 		CLR		_OutPWM+37
2928  085c 725f0025      	clr	_OutPWM+37
2930                     ; 664 		CLR		_OutPWM+38
2933  0860 725f0026      	clr	_OutPWM+38
2935                     ; 665 		CLR		_OutPWM+39
2938  0864 725f0027      	clr	_OutPWM+39
2940                     ; 666 		CLR		_OutPWM+40
2943  0868 725f0028      	clr	_OutPWM+40
2945                     ; 667 		CLR		_OutPWM+41
2948  086c 725f0029      	clr	_OutPWM+41
2950                     ; 668 		CLR		_OutPWM+42
2953  0870 725f002a      	clr	_OutPWM+42
2955                     ; 669 		CLR		_OutPWM+43
2958  0874 725f002b      	clr	_OutPWM+43
2960                     ; 670 		CLR		_OutPWM+44
2963  0878 725f002c      	clr	_OutPWM+44
2965                     ; 671 		CLR		_OutPWM+45
2968  087c 725f002d      	clr	_OutPWM+45
2970                     ; 672 		CLR		_OutPWM+46
2973  0880 725f002e      	clr	_OutPWM+46
2975                     ; 673 		CLR		_OutPWM+47
2978  0884 725f002f      	clr	_OutPWM+47
2980                     ; 674 		CLR		_OutPWM+48
2983  0888 725f0030      	clr	_OutPWM+48
2985                     ; 675 		CLR		_OutPWM+49
2988  088c 725f0031      	clr	_OutPWM+49
2990                     ; 676 		CLR		_OutPWM+50
2993  0890 725f0032      	clr	_OutPWM+50
2995                     ; 677 		CLR		_OutPWM+51
2998  0894 725f0033      	clr	_OutPWM+51
3000                     ; 678 		CLR		_OutPWM+52
3003  0898 725f0034      	clr	_OutPWM+52
3005                     ; 679 		CLR		_OutPWM+53
3008  089c 725f0035      	clr	_OutPWM+53
3010                     ; 680 		CLR		_OutPWM+54
3013  08a0 725f0036      	clr	_OutPWM+54
3015                     ; 681 		CLR		_OutPWM+55
3018  08a4 725f0037      	clr	_OutPWM+55
3020                     ; 682 		CLR		_OutPWM+56
3023  08a8 725f0038      	clr	_OutPWM+56
3025                     ; 683 		CLR		_OutPWM+57
3028  08ac 725f0039      	clr	_OutPWM+57
3030                     ; 684 		CLR		_OutPWM+58
3033  08b0 725f003a      	clr	_OutPWM+58
3035                     ; 685 		CLR		_OutPWM+59
3038  08b4 725f003b      	clr	_OutPWM+59
3040                     ; 686 		CLR		_OutPWM+60
3043  08b8 725f003c      	clr	_OutPWM+60
3045                     ; 687 		CLR		_OutPWM+61
3048  08bc 725f003d      	clr	_OutPWM+61
3050                     ; 688 		CLR		_OutPWM+62
3053  08c0 725f003e      	clr	_OutPWM+62
3055                     ; 689 		CLR		_OutPWM+63
3058  08c4 725f003f      	clr	_OutPWM+63
3060                     ; 690 		CLR		_OutPWM+64
3063  08c8 725f0040      	clr	_OutPWM+64
3065                     ; 691 		CLR		_OutPWM+65
3068  08cc 725f0041      	clr	_OutPWM+65
3070                     ; 692 		CLR		_OutPWM+66
3073  08d0 725f0042      	clr	_OutPWM+66
3075                     ; 693 		CLR		_OutPWM+67
3078  08d4 725f0043      	clr	_OutPWM+67
3080                     ; 694 		CLR		_OutPWM+68
3083  08d8 725f0044      	clr	_OutPWM+68
3085                     ; 695 		CLR		_OutPWM+69
3088  08dc 725f0045      	clr	_OutPWM+69
3090                     ; 696 		CLR		_OutPWM+70
3093  08e0 725f0046      	clr	_OutPWM+70
3095                     ; 697 		CLR		_OutPWM+71
3098  08e4 725f0047      	clr	_OutPWM+71
3100                     ; 698 		CLR		_OutPWM+72
3103  08e8 725f0048      	clr	_OutPWM+72
3105                     ; 699 		CLR		_OutPWM+73
3108  08ec 725f0049      	clr	_OutPWM+73
3110                     ; 700 		CLR		_OutPWM+74
3113  08f0 725f004a      	clr	_OutPWM+74
3115                     ; 701 		CLR		_OutPWM+75
3118  08f4 725f004b      	clr	_OutPWM+75
3120                     ; 702 		CLR		_OutPWM+76
3123  08f8 725f004c      	clr	_OutPWM+76
3125                     ; 703 		CLR		_OutPWM+77
3128  08fc 725f004d      	clr	_OutPWM+77
3130                     ; 704 		CLR		_OutPWM+78
3133  0900 725f004e      	clr	_OutPWM+78
3135                     ; 705 		CLR		_OutPWM+79
3138  0904 725f004f      	clr	_OutPWM+79
3140                     ; 706 		CLR		_OutPWM+80
3143  0908 725f0050      	clr	_OutPWM+80
3145                     ; 707 		CLR		_OutPWM+81
3148  090c 725f0051      	clr	_OutPWM+81
3150                     ; 708 		CLR		_OutPWM+82
3153  0910 725f0052      	clr	_OutPWM+82
3155                     ; 709 		CLR		_OutPWM+83
3158  0914 725f0053      	clr	_OutPWM+83
3160                     ; 710 		CLR		_OutPWM+84
3163  0918 725f0054      	clr	_OutPWM+84
3165                     ; 711 		CLR		_OutPWM+85
3168  091c 725f0055      	clr	_OutPWM+85
3170                     ; 712 		CLR		_OutPWM+86
3173  0920 725f0056      	clr	_OutPWM+86
3175                     ; 713 		CLR		_OutPWM+87
3178  0924 725f0057      	clr	_OutPWM+87
3180                     ; 714 		CLR		_OutPWM+88
3183  0928 725f0058      	clr	_OutPWM+88
3185                     ; 715 		CLR		_OutPWM+89
3188  092c 725f0059      	clr	_OutPWM+89
3190                     ; 716 		CLR		_OutPWM+90
3193  0930 725f005a      	clr	_OutPWM+90
3195                     ; 717 		CLR		_OutPWM+91
3198  0934 725f005b      	clr	_OutPWM+91
3200                     ; 718 		CLR		_OutPWM+92
3203  0938 725f005c      	clr	_OutPWM+92
3205                     ; 719 		CLR		_OutPWM+93
3208  093c 725f005d      	clr	_OutPWM+93
3210                     ; 720 		CLR		_OutPWM+94
3213  0940 725f005e      	clr	_OutPWM+94
3215                     ; 721 		CLR		_OutPWM+95
3218  0944 725f005f      	clr	_OutPWM+95
3220                     ; 722 		CLR		_OutPWM+96
3223  0948 725f0060      	clr	_OutPWM+96
3225                     ; 723 		CLR		_OutPWM+97
3228  094c 725f0061      	clr	_OutPWM+97
3230                     ; 724 		CLR		_OutPWM+98
3233  0950 725f0062      	clr	_OutPWM+98
3235                     ; 725 		CLR		_OutPWM+99
3238  0954 725f0063      	clr	_OutPWM+99
3240                     ; 729 	TIM2->SR1 &= ~TIM2_SR1_UIF;
3242  0958 72115302      	bres	21250,#0
3243                     ; 730 }
3246  095c 80            	iret	
3269                     ; 732 INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
3269                     ; 733 {
3270                     	switch	.text
3271  095d               f_TIM2_CAP_COM_IRQHandler:
3275                     ; 735 }
3278  095d 80            	iret	
3301                     ; 737 INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
3301                     ; 738 {
3302                     	switch	.text
3303  095e               f_TIM3_UPD_OVF_BRK_IRQHandler:
3307                     ; 740 }
3310  095e 80            	iret	
3333                     ; 743 INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
3333                     ; 744 {
3334                     	switch	.text
3335  095f               f_TIM3_CAP_COM_IRQHandler:
3339                     ; 746 }
3342  095f 80            	iret	
3364                     ; 748 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
3364                     ; 749 {
3365                     	switch	.text
3366  0960               f_I2C_IRQHandler:
3370                     ; 751 }
3373  0960 80            	iret	
3396                     ; 753 INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
3396                     ; 754 {
3397                     	switch	.text
3398  0961               f_UART2_TX_IRQHandler:
3402                     ; 756 }
3405  0961 80            	iret	
3428                     ; 758 INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
3428                     ; 759 {
3429                     	switch	.text
3430  0962               f_UART2_RX_IRQHandler:
3434                     ; 761 }
3437  0962 80            	iret	
3459                     ; 763 INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
3459                     ; 764 {
3460                     	switch	.text
3461  0963               f_ADC1_IRQHandler:
3465                     ; 766 }
3468  0963 80            	iret	
3493                     ; 768 INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
3493                     ; 769 {	
3494                     	switch	.text
3495  0964               f_TIM4_UPD_OVF_IRQHandler:
3499                     ; 770 	switch (TaskCounter)
3501  0964 c60000        	ld	a,_TaskCounter
3503                     ; 776 		default : break;
3504  0967 4a            	dec	a
3505  0968 270b          	jreq	L533
3506  096a 4a            	dec	a
3507  096b 270e          	jreq	L733
3508  096d 4a            	dec	a
3509  096e 2711          	jreq	L143
3510  0970 4a            	dec	a
3511  0971 2714          	jreq	L343
3512  0973 2019          	jra	L163
3513  0975               L533:
3514                     ; 772 		case 1 : Taskboard.TimePolling = Set; break;
3516  0975 72140000      	bset	_Taskboard,#2
3519  0979 2013          	jra	L163
3520  097b               L733:
3521                     ; 773 		case 2 : Taskboard.ButtonsPolling = Set; break;
3523  097b 72100000      	bset	_Taskboard,#0
3526  097f 200d          	jra	L163
3527  0981               L143:
3528                     ; 774 		case 3 : Taskboard.EncoderPolling = Set; break;
3530  0981 72120000      	bset	_Taskboard,#1
3533  0985 2007          	jra	L163
3534  0987               L343:
3535                     ; 775 		case 4 : Taskboard.ScreenUpdate = Set; TaskCounter = 0; break;
3537  0987 72160000      	bset	_Taskboard,#3
3540  098b c70000        	ld	_TaskCounter,a
3543                     ; 776 		default : break;
3545  098e               L163:
3546                     ; 778 	TaskCounter++;
3548  098e 725c0000      	inc	_TaskCounter
3549                     ; 780 	TIM4->SR1 &= ~TIM4_SR1_UIF;
3551  0992 72115342      	bres	21314,#0
3552                     ; 781 }
3555  0996 80            	iret	
3578                     ; 783 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
3578                     ; 784 {
3579                     	switch	.text
3580  0997               f_EEPROM_EEC_IRQHandler:
3584                     ; 786 }
3587  0997 80            	iret	
3599                     	xref	_OutPWM
3600                     	xref	_CurrentPulsePeriod
3601                     	xref	_Chenal4NumberPWM
3602                     	xref	_Chenal3NumberPWM
3603                     	xref	_Chenal2NumberPWM
3604                     	xref	_Chenal1NumberPWM
3605                     	xref	_Chenal4Enable
3606                     	xref	_Chenal3Enable
3607                     	xref	_Chenal2Enable
3608                     	xref	_Chenal1Enable
3609                     	xref	_TaskCounter
3610                     	xref	_IndicatorsDataPointer
3611                     	xref	_IndicatorsData
3612                     	xref	_Taskboard
3613                     	xref	_Device
3614                     	xdef	f_EEPROM_EEC_IRQHandler
3615                     	xdef	f_TIM4_UPD_OVF_IRQHandler
3616                     	xdef	f_ADC1_IRQHandler
3617                     	xdef	f_UART2_TX_IRQHandler
3618                     	xdef	f_UART2_RX_IRQHandler
3619                     	xdef	f_I2C_IRQHandler
3620                     	xdef	f_TIM3_CAP_COM_IRQHandler
3621                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
3622                     	xdef	f_TIM2_CAP_COM_IRQHandler
3623                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
3624                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
3625                     	xdef	f_TIM1_CAP_COM_IRQHandler
3626                     	xdef	f_SPI_IRQHandler
3627                     	xdef	f_EXTI_PORTE_IRQHandler
3628                     	xdef	f_EXTI_PORTD_IRQHandler
3629                     	xdef	f_EXTI_PORTC_IRQHandler
3630                     	xdef	f_EXTI_PORTB_IRQHandler
3631                     	xdef	f_EXTI_PORTA_IRQHandler
3632                     	xdef	f_CLK_IRQHandler
3633                     	xdef	f_AWU_IRQHandler
3634                     	xdef	f_TLI_IRQHandler
3635                     	xdef	f_TRAP_IRQHandler
3636                     	xdef	f_NonHandledInterrupt
3655                     	end
