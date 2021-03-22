   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
   4                     ; Optimizer V4.4.7 - 05 Oct 2017
  46                     ; 44 uint8_t ITC_GetCPUCC(void)
  46                     ; 45 {
  48                     	switch	.text
  49  0000               _ITC_GetCPUCC:
  53                     ; 47   _asm("push cc");
  56  0000 8a            	push	cc
  58                     ; 48   _asm("pop a");
  61  0001 84            	pop	a
  63                     ; 49   return; /* Ignore compiler warning, the returned value is in A register */
  66  0002 81            	ret	
  89                     ; 74 void ITC_DeInit(void)
  89                     ; 75 {
  90                     	switch	.text
  91  0003               _ITC_DeInit:
  95                     ; 76     ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  97  0003 35ff7f70      	mov	32624,#255
  98                     ; 77     ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
 100  0007 35ff7f71      	mov	32625,#255
 101                     ; 78     ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 103  000b 35ff7f72      	mov	32626,#255
 104                     ; 79     ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 106  000f 35ff7f73      	mov	32627,#255
 107                     ; 80     ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 109  0013 35ff7f74      	mov	32628,#255
 110                     ; 81     ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 112  0017 35ff7f75      	mov	32629,#255
 113                     ; 82     ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 115  001b 35ff7f76      	mov	32630,#255
 116                     ; 83     ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 118  001f 35ff7f77      	mov	32631,#255
 119                     ; 84 }
 122  0023 81            	ret	
 147                     ; 91 uint8_t ITC_GetSoftIntStatus(void)
 147                     ; 92 {
 148                     	switch	.text
 149  0024               _ITC_GetSoftIntStatus:
 153                     ; 93     return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 155  0024 adda          	call	_ITC_GetCPUCC
 157  0026 a428          	and	a,#40
 160  0028 81            	ret	
 420                     .const:	section	.text
 421  0000               L23:
 422  0000 005e          	dc.w	L14
 423  0002 005e          	dc.w	L14
 424  0004 005e          	dc.w	L14
 425  0006 005e          	dc.w	L14
 426  0008 0063          	dc.w	L34
 427  000a 0063          	dc.w	L34
 428  000c 0063          	dc.w	L34
 429  000e 0063          	dc.w	L34
 430  0010 0083          	dc.w	L502
 431  0012 0083          	dc.w	L502
 432  0014 0068          	dc.w	L54
 433  0016 0068          	dc.w	L54
 434  0018 006d          	dc.w	L74
 435  001a 006d          	dc.w	L74
 436  001c 006d          	dc.w	L74
 437  001e 006d          	dc.w	L74
 438  0020 0072          	dc.w	L15
 439  0022 0072          	dc.w	L15
 440  0024 0072          	dc.w	L15
 441  0026 0072          	dc.w	L15
 442  0028 0077          	dc.w	L35
 443  002a 0077          	dc.w	L35
 444  002c 0077          	dc.w	L35
 445  002e 0077          	dc.w	L35
 446  0030 007c          	dc.w	L55
 447                     ; 101 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 447                     ; 102 {
 448                     	switch	.text
 449  0029               _ITC_GetSoftwarePriority:
 451  0029 88            	push	a
 452  002a 89            	pushw	x
 453       00000002      OFST:	set	2
 456                     ; 104     uint8_t Value = 0;
 458  002b 0f02          	clr	(OFST+0,sp)
 460                     ; 105     uint8_t Mask = 0;
 462                     ; 108     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 464  002d a119          	cp	a,#25
 465  002f 250e          	jrult	L02
 466  0031 ae006c        	ldw	x,#108
 467  0034 89            	pushw	x
 468  0035 5f            	clrw	x
 469  0036 89            	pushw	x
 470  0037 ae0064        	ldw	x,#L102
 471  003a cd0000        	call	_assert_failed
 473  003d 5b04          	addw	sp,#4
 474  003f               L02:
 475                     ; 111     Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 477  003f 7b03          	ld	a,(OFST+1,sp)
 478  0041 a403          	and	a,#3
 479  0043 48            	sll	a
 480  0044 5f            	clrw	x
 481  0045 97            	ld	xl,a
 482  0046 a603          	ld	a,#3
 483  0048 5d            	tnzw	x
 484  0049 2704          	jreq	L42
 485  004b               L62:
 486  004b 48            	sll	a
 487  004c 5a            	decw	x
 488  004d 26fc          	jrne	L62
 489  004f               L42:
 490  004f 6b01          	ld	(OFST-1,sp),a
 492                     ; 113     switch (IrqNum)
 494  0051 7b03          	ld	a,(OFST+1,sp)
 496                     ; 185     default:
 496                     ; 186         break;
 497  0053 a119          	cp	a,#25
 498  0055 242c          	jruge	L502
 499  0057 5f            	clrw	x
 500  0058 97            	ld	xl,a
 501  0059 58            	sllw	x
 502  005a de0000        	ldw	x,(L23,x)
 503  005d fc            	jp	(x)
 504  005e               L14:
 505                     ; 115     case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 505                     ; 116     case ITC_IRQ_AWU:
 505                     ; 117     case ITC_IRQ_CLK:
 505                     ; 118     case ITC_IRQ_PORTA:
 505                     ; 119         Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 507  005e c67f70        	ld	a,32624
 508                     ; 120         break;
 510  0061 201c          	jp	LC001
 511  0063               L34:
 512                     ; 121     case ITC_IRQ_PORTB:
 512                     ; 122     case ITC_IRQ_PORTC:
 512                     ; 123     case ITC_IRQ_PORTD:
 512                     ; 124     case ITC_IRQ_PORTE:
 512                     ; 125         Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 514  0063 c67f71        	ld	a,32625
 515                     ; 126         break;
 517  0066 2017          	jp	LC001
 518  0068               L54:
 519                     ; 136     case ITC_IRQ_SPI:
 519                     ; 137     case ITC_IRQ_TIM1_OVF:
 519                     ; 138         Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 521  0068 c67f72        	ld	a,32626
 522                     ; 139         break;
 524  006b 2012          	jp	LC001
 525  006d               L74:
 526                     ; 140     case ITC_IRQ_TIM1_CAPCOM:
 526                     ; 141 #ifdef STM8S903
 526                     ; 142     case ITC_IRQ_TIM5_OVFTRI:
 526                     ; 143     case ITC_IRQ_TIM5_CAPCOM:
 526                     ; 144 #else
 526                     ; 145     case ITC_IRQ_TIM2_OVF:
 526                     ; 146     case ITC_IRQ_TIM2_CAPCOM:
 526                     ; 147 #endif /*STM8S903*/
 526                     ; 148 
 526                     ; 149     case ITC_IRQ_TIM3_OVF:
 526                     ; 150         Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 528  006d c67f73        	ld	a,32627
 529                     ; 151         break;
 531  0070 200d          	jp	LC001
 532  0072               L15:
 533                     ; 152     case ITC_IRQ_TIM3_CAPCOM:
 533                     ; 153     case ITC_IRQ_UART1_TX:
 533                     ; 154     case ITC_IRQ_UART1_RX:
 533                     ; 155     case ITC_IRQ_I2C:
 533                     ; 156         Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 535  0072 c67f74        	ld	a,32628
 536                     ; 157         break;
 538  0075 2008          	jp	LC001
 539  0077               L35:
 540                     ; 159     case ITC_IRQ_UART2_TX:
 540                     ; 160     case ITC_IRQ_UART2_RX:
 540                     ; 161 #endif /*STM8S105 or STM8AF626x*/
 540                     ; 162 
 540                     ; 163 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 540                     ; 164     defined(STM8AF62Ax)
 540                     ; 165     case ITC_IRQ_UART3_TX:
 540                     ; 166     case ITC_IRQ_UART3_RX:
 540                     ; 167     case ITC_IRQ_ADC2:
 540                     ; 168 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 540                     ; 169 
 540                     ; 170 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 540                     ; 171     defined(STM8S903) || defined(STM8AF626x)
 540                     ; 172     case ITC_IRQ_ADC1:
 540                     ; 173 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 540                     ; 174 
 540                     ; 175 #ifdef STM8S903
 540                     ; 176     case ITC_IRQ_TIM6_OVFTRI:
 540                     ; 177 #else
 540                     ; 178     case ITC_IRQ_TIM4_OVF:
 540                     ; 179 #endif /*STM8S903*/
 540                     ; 180         Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 542  0077 c67f75        	ld	a,32629
 543                     ; 181         break;
 545  007a 2003          	jp	LC001
 546  007c               L55:
 547                     ; 182     case ITC_IRQ_EEPROM_EEC:
 547                     ; 183         Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 549  007c c67f76        	ld	a,32630
 550  007f               LC001:
 551  007f 1401          	and	a,(OFST-1,sp)
 552  0081 6b02          	ld	(OFST+0,sp),a
 554                     ; 184         break;
 556                     ; 185     default:
 556                     ; 186         break;
 558  0083               L502:
 559                     ; 189     Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 561  0083 7b03          	ld	a,(OFST+1,sp)
 562  0085 a403          	and	a,#3
 563  0087 48            	sll	a
 564  0088 5f            	clrw	x
 565  0089 97            	ld	xl,a
 566  008a 7b02          	ld	a,(OFST+0,sp)
 567  008c 5d            	tnzw	x
 568  008d 2704          	jreq	L43
 569  008f               L63:
 570  008f 44            	srl	a
 571  0090 5a            	decw	x
 572  0091 26fc          	jrne	L63
 573  0093               L43:
 575                     ; 191     return((ITC_PriorityLevel_TypeDef)Value);
 579  0093 5b03          	addw	sp,#3
 580  0095 81            	ret	
 642                     	switch	.const
 643  0032               L201:
 644  0032 0114          	dc.w	L702
 645  0034 0114          	dc.w	L702
 646  0036 0114          	dc.w	L702
 647  0038 0114          	dc.w	L702
 648  003a 0126          	dc.w	L112
 649  003c 0126          	dc.w	L112
 650  003e 0126          	dc.w	L112
 651  0040 0126          	dc.w	L112
 652  0042 0190          	dc.w	L752
 653  0044 0190          	dc.w	L752
 654  0046 0138          	dc.w	L312
 655  0048 0138          	dc.w	L312
 656  004a 014a          	dc.w	L512
 657  004c 014a          	dc.w	L512
 658  004e 014a          	dc.w	L512
 659  0050 014a          	dc.w	L512
 660  0052 015c          	dc.w	L712
 661  0054 015c          	dc.w	L712
 662  0056 015c          	dc.w	L712
 663  0058 015c          	dc.w	L712
 664  005a 016e          	dc.w	L122
 665  005c 016e          	dc.w	L122
 666  005e 016e          	dc.w	L122
 667  0060 016e          	dc.w	L122
 668  0062 0180          	dc.w	L322
 669                     ; 208 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 669                     ; 209 {
 670                     	switch	.text
 671  0096               _ITC_SetSoftwarePriority:
 673  0096 89            	pushw	x
 674  0097 89            	pushw	x
 675       00000002      OFST:	set	2
 678                     ; 211     uint8_t Mask = 0;
 680                     ; 212     uint8_t NewPriority = 0;
 682                     ; 215     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 684  0098 9e            	ld	a,xh
 685  0099 a119          	cp	a,#25
 686  009b 250e          	jrult	L44
 687  009d ae00d7        	ldw	x,#215
 688  00a0 89            	pushw	x
 689  00a1 5f            	clrw	x
 690  00a2 89            	pushw	x
 691  00a3 ae0064        	ldw	x,#L102
 692  00a6 cd0000        	call	_assert_failed
 694  00a9 5b04          	addw	sp,#4
 695  00ab               L44:
 696                     ; 216     assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 698  00ab 7b04          	ld	a,(OFST+2,sp)
 699  00ad a102          	cp	a,#2
 700  00af 2719          	jreq	L45
 701  00b1 4a            	dec	a
 702  00b2 2716          	jreq	L45
 703  00b4 7b04          	ld	a,(OFST+2,sp)
 704  00b6 2712          	jreq	L45
 705  00b8 a103          	cp	a,#3
 706  00ba 270e          	jreq	L45
 707  00bc ae00d8        	ldw	x,#216
 708  00bf 89            	pushw	x
 709  00c0 5f            	clrw	x
 710  00c1 89            	pushw	x
 711  00c2 ae0064        	ldw	x,#L102
 712  00c5 cd0000        	call	_assert_failed
 714  00c8 5b04          	addw	sp,#4
 715  00ca               L45:
 716                     ; 219     assert_param(IS_ITC_INTERRUPTS_DISABLED);
 718  00ca cd0024        	call	_ITC_GetSoftIntStatus
 720  00cd a128          	cp	a,#40
 721  00cf 270e          	jreq	L46
 722  00d1 ae00db        	ldw	x,#219
 723  00d4 89            	pushw	x
 724  00d5 5f            	clrw	x
 725  00d6 89            	pushw	x
 726  00d7 ae0064        	ldw	x,#L102
 727  00da cd0000        	call	_assert_failed
 729  00dd 5b04          	addw	sp,#4
 730  00df               L46:
 731                     ; 223     Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 733  00df 7b03          	ld	a,(OFST+1,sp)
 734  00e1 a403          	and	a,#3
 735  00e3 48            	sll	a
 736  00e4 5f            	clrw	x
 737  00e5 97            	ld	xl,a
 738  00e6 a603          	ld	a,#3
 739  00e8 5d            	tnzw	x
 740  00e9 2704          	jreq	L07
 741  00eb               L27:
 742  00eb 48            	sll	a
 743  00ec 5a            	decw	x
 744  00ed 26fc          	jrne	L27
 745  00ef               L07:
 746  00ef 43            	cpl	a
 747  00f0 6b01          	ld	(OFST-1,sp),a
 749                     ; 226     NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 751  00f2 7b03          	ld	a,(OFST+1,sp)
 752  00f4 a403          	and	a,#3
 753  00f6 48            	sll	a
 754  00f7 5f            	clrw	x
 755  00f8 97            	ld	xl,a
 756  00f9 7b04          	ld	a,(OFST+2,sp)
 757  00fb 5d            	tnzw	x
 758  00fc 2704          	jreq	L47
 759  00fe               L67:
 760  00fe 48            	sll	a
 761  00ff 5a            	decw	x
 762  0100 26fc          	jrne	L67
 763  0102               L47:
 764  0102 6b02          	ld	(OFST+0,sp),a
 766                     ; 228     switch (IrqNum)
 768  0104 7b03          	ld	a,(OFST+1,sp)
 770                     ; 314     default:
 770                     ; 315         break;
 771  0106 a119          	cp	a,#25
 772  0108 2503cc0190    	jruge	L752
 773  010d 5f            	clrw	x
 774  010e 97            	ld	xl,a
 775  010f 58            	sllw	x
 776  0110 de0032        	ldw	x,(L201,x)
 777  0113 fc            	jp	(x)
 778  0114               L702:
 779                     ; 231     case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 779                     ; 232     case ITC_IRQ_AWU:
 779                     ; 233     case ITC_IRQ_CLK:
 779                     ; 234     case ITC_IRQ_PORTA:
 779                     ; 235         ITC->ISPR1 &= Mask;
 781  0114 c67f70        	ld	a,32624
 782  0117 1401          	and	a,(OFST-1,sp)
 783  0119 c77f70        	ld	32624,a
 784                     ; 236         ITC->ISPR1 |= NewPriority;
 786  011c c67f70        	ld	a,32624
 787  011f 1a02          	or	a,(OFST+0,sp)
 788  0121 c77f70        	ld	32624,a
 789                     ; 237         break;
 791  0124 206a          	jra	L752
 792  0126               L112:
 793                     ; 239     case ITC_IRQ_PORTB:
 793                     ; 240     case ITC_IRQ_PORTC:
 793                     ; 241     case ITC_IRQ_PORTD:
 793                     ; 242     case ITC_IRQ_PORTE:
 793                     ; 243         ITC->ISPR2 &= Mask;
 795  0126 c67f71        	ld	a,32625
 796  0129 1401          	and	a,(OFST-1,sp)
 797  012b c77f71        	ld	32625,a
 798                     ; 244         ITC->ISPR2 |= NewPriority;
 800  012e c67f71        	ld	a,32625
 801  0131 1a02          	or	a,(OFST+0,sp)
 802  0133 c77f71        	ld	32625,a
 803                     ; 245         break;
 805  0136 2058          	jra	L752
 806  0138               L312:
 807                     ; 255     case ITC_IRQ_SPI:
 807                     ; 256     case ITC_IRQ_TIM1_OVF:
 807                     ; 257         ITC->ISPR3 &= Mask;
 809  0138 c67f72        	ld	a,32626
 810  013b 1401          	and	a,(OFST-1,sp)
 811  013d c77f72        	ld	32626,a
 812                     ; 258         ITC->ISPR3 |= NewPriority;
 814  0140 c67f72        	ld	a,32626
 815  0143 1a02          	or	a,(OFST+0,sp)
 816  0145 c77f72        	ld	32626,a
 817                     ; 259         break;
 819  0148 2046          	jra	L752
 820  014a               L512:
 821                     ; 261     case ITC_IRQ_TIM1_CAPCOM:
 821                     ; 262 #ifdef STM8S903
 821                     ; 263     case ITC_IRQ_TIM5_OVFTRI:
 821                     ; 264     case ITC_IRQ_TIM5_CAPCOM:
 821                     ; 265 #else
 821                     ; 266     case ITC_IRQ_TIM2_OVF:
 821                     ; 267     case ITC_IRQ_TIM2_CAPCOM:
 821                     ; 268 #endif /*STM8S903*/
 821                     ; 269 
 821                     ; 270     case ITC_IRQ_TIM3_OVF:
 821                     ; 271         ITC->ISPR4 &= Mask;
 823  014a c67f73        	ld	a,32627
 824  014d 1401          	and	a,(OFST-1,sp)
 825  014f c77f73        	ld	32627,a
 826                     ; 272         ITC->ISPR4 |= NewPriority;
 828  0152 c67f73        	ld	a,32627
 829  0155 1a02          	or	a,(OFST+0,sp)
 830  0157 c77f73        	ld	32627,a
 831                     ; 273         break;
 833  015a 2034          	jra	L752
 834  015c               L712:
 835                     ; 275     case ITC_IRQ_TIM3_CAPCOM:
 835                     ; 276     case ITC_IRQ_UART1_TX:
 835                     ; 277     case ITC_IRQ_UART1_RX:
 835                     ; 278     case ITC_IRQ_I2C:
 835                     ; 279         ITC->ISPR5 &= Mask;
 837  015c c67f74        	ld	a,32628
 838  015f 1401          	and	a,(OFST-1,sp)
 839  0161 c77f74        	ld	32628,a
 840                     ; 280         ITC->ISPR5 |= NewPriority;
 842  0164 c67f74        	ld	a,32628
 843  0167 1a02          	or	a,(OFST+0,sp)
 844  0169 c77f74        	ld	32628,a
 845                     ; 281         break;
 847  016c 2022          	jra	L752
 848  016e               L122:
 849                     ; 284     case ITC_IRQ_UART2_TX:
 849                     ; 285     case ITC_IRQ_UART2_RX:
 849                     ; 286 #endif /*STM8S105 or STM8AF626x */
 849                     ; 287 
 849                     ; 288 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 849                     ; 289     defined(STM8AF62Ax)
 849                     ; 290     case ITC_IRQ_UART3_TX:
 849                     ; 291     case ITC_IRQ_UART3_RX:
 849                     ; 292     case ITC_IRQ_ADC2:
 849                     ; 293 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 849                     ; 294 
 849                     ; 295 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 849                     ; 296     defined(STM8S903) || defined(STM8AF626x)
 849                     ; 297     case ITC_IRQ_ADC1:
 849                     ; 298 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 849                     ; 299 
 849                     ; 300 #ifdef STM8S903
 849                     ; 301     case ITC_IRQ_TIM6_OVFTRI:
 849                     ; 302 #else
 849                     ; 303     case ITC_IRQ_TIM4_OVF:
 849                     ; 304 #endif /*STM8S903*/
 849                     ; 305         ITC->ISPR6 &= Mask;
 851  016e c67f75        	ld	a,32629
 852  0171 1401          	and	a,(OFST-1,sp)
 853  0173 c77f75        	ld	32629,a
 854                     ; 306         ITC->ISPR6 |= NewPriority;
 856  0176 c67f75        	ld	a,32629
 857  0179 1a02          	or	a,(OFST+0,sp)
 858  017b c77f75        	ld	32629,a
 859                     ; 307         break;
 861  017e 2010          	jra	L752
 862  0180               L322:
 863                     ; 309     case ITC_IRQ_EEPROM_EEC:
 863                     ; 310         ITC->ISPR7 &= Mask;
 865  0180 c67f76        	ld	a,32630
 866  0183 1401          	and	a,(OFST-1,sp)
 867  0185 c77f76        	ld	32630,a
 868                     ; 311         ITC->ISPR7 |= NewPriority;
 870  0188 c67f76        	ld	a,32630
 871  018b 1a02          	or	a,(OFST+0,sp)
 872  018d c77f76        	ld	32630,a
 873                     ; 312         break;
 875                     ; 314     default:
 875                     ; 315         break;
 877  0190               L752:
 878                     ; 319 }
 881  0190 5b04          	addw	sp,#4
 882  0192 81            	ret	
 895                     	xdef	_ITC_GetSoftwarePriority
 896                     	xdef	_ITC_SetSoftwarePriority
 897                     	xdef	_ITC_GetSoftIntStatus
 898                     	xdef	_ITC_DeInit
 899                     	xdef	_ITC_GetCPUCC
 900                     	xref	_assert_failed
 901                     	switch	.const
 902  0064               L102:
 903  0064 6c6962726172  	dc.b	"libraries\src\stm8"
 904  0076 735f6974632e  	dc.b	"s_itc.c",0
 924                     	end
