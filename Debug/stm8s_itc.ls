   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.21 - 04 Feb 2014
   3                     ; Generator (Limited) V4.3.12 - 11 Feb 2014
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
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
 459                     ; 105     uint8_t Mask = 0;
 461                     ; 108     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 463  002d a119          	cp	a,#25
 464  002f 250e          	jrult	L02
 465  0031 ae006c        	ldw	x,#108
 466  0034 89            	pushw	x
 467  0035 5f            	clrw	x
 468  0036 89            	pushw	x
 469  0037 ae0064        	ldw	x,#L102
 470  003a cd0000        	call	_assert_failed
 472  003d 5b04          	addw	sp,#4
 473  003f               L02:
 474                     ; 111     Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 476  003f 7b03          	ld	a,(OFST+1,sp)
 477  0041 a403          	and	a,#3
 478  0043 48            	sll	a
 479  0044 5f            	clrw	x
 480  0045 97            	ld	xl,a
 481  0046 a603          	ld	a,#3
 482  0048 5d            	tnzw	x
 483  0049 2704          	jreq	L42
 484  004b               L62:
 485  004b 48            	sll	a
 486  004c 5a            	decw	x
 487  004d 26fc          	jrne	L62
 488  004f               L42:
 489  004f 6b01          	ld	(OFST-1,sp),a
 490                     ; 113     switch (IrqNum)
 492  0051 7b03          	ld	a,(OFST+1,sp)
 494                     ; 185     default:
 494                     ; 186         break;
 495  0053 a119          	cp	a,#25
 496  0055 242c          	jruge	L502
 497  0057 5f            	clrw	x
 498  0058 97            	ld	xl,a
 499  0059 58            	sllw	x
 500  005a de0000        	ldw	x,(L23,x)
 501  005d fc            	jp	(x)
 502  005e               L14:
 503                     ; 115     case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 503                     ; 116     case ITC_IRQ_AWU:
 503                     ; 117     case ITC_IRQ_CLK:
 503                     ; 118     case ITC_IRQ_PORTA:
 503                     ; 119         Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 505  005e c67f70        	ld	a,32624
 506                     ; 120         break;
 508  0061 201c          	jp	LC001
 509  0063               L34:
 510                     ; 121     case ITC_IRQ_PORTB:
 510                     ; 122     case ITC_IRQ_PORTC:
 510                     ; 123     case ITC_IRQ_PORTD:
 510                     ; 124     case ITC_IRQ_PORTE:
 510                     ; 125         Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 512  0063 c67f71        	ld	a,32625
 513                     ; 126         break;
 515  0066 2017          	jp	LC001
 516  0068               L54:
 517                     ; 136     case ITC_IRQ_SPI:
 517                     ; 137     case ITC_IRQ_TIM1_OVF:
 517                     ; 138         Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 519  0068 c67f72        	ld	a,32626
 520                     ; 139         break;
 522  006b 2012          	jp	LC001
 523  006d               L74:
 524                     ; 140     case ITC_IRQ_TIM1_CAPCOM:
 524                     ; 141 #ifdef STM8S903
 524                     ; 142     case ITC_IRQ_TIM5_OVFTRI:
 524                     ; 143     case ITC_IRQ_TIM5_CAPCOM:
 524                     ; 144 #else
 524                     ; 145     case ITC_IRQ_TIM2_OVF:
 524                     ; 146     case ITC_IRQ_TIM2_CAPCOM:
 524                     ; 147 #endif /*STM8S903*/
 524                     ; 148 
 524                     ; 149     case ITC_IRQ_TIM3_OVF:
 524                     ; 150         Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 526  006d c67f73        	ld	a,32627
 527                     ; 151         break;
 529  0070 200d          	jp	LC001
 530  0072               L15:
 531                     ; 152     case ITC_IRQ_TIM3_CAPCOM:
 531                     ; 153     case ITC_IRQ_UART1_TX:
 531                     ; 154     case ITC_IRQ_UART1_RX:
 531                     ; 155     case ITC_IRQ_I2C:
 531                     ; 156         Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 533  0072 c67f74        	ld	a,32628
 534                     ; 157         break;
 536  0075 2008          	jp	LC001
 537  0077               L35:
 538                     ; 159     case ITC_IRQ_UART2_TX:
 538                     ; 160     case ITC_IRQ_UART2_RX:
 538                     ; 161 #endif /*STM8S105 or STM8AF626x*/
 538                     ; 162 
 538                     ; 163 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 538                     ; 164     defined(STM8AF62Ax)
 538                     ; 165     case ITC_IRQ_UART3_TX:
 538                     ; 166     case ITC_IRQ_UART3_RX:
 538                     ; 167     case ITC_IRQ_ADC2:
 538                     ; 168 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 538                     ; 169 
 538                     ; 170 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 538                     ; 171     defined(STM8S903) || defined(STM8AF626x)
 538                     ; 172     case ITC_IRQ_ADC1:
 538                     ; 173 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 538                     ; 174 
 538                     ; 175 #ifdef STM8S903
 538                     ; 176     case ITC_IRQ_TIM6_OVFTRI:
 538                     ; 177 #else
 538                     ; 178     case ITC_IRQ_TIM4_OVF:
 538                     ; 179 #endif /*STM8S903*/
 538                     ; 180         Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 540  0077 c67f75        	ld	a,32629
 541                     ; 181         break;
 543  007a 2003          	jp	LC001
 544  007c               L55:
 545                     ; 182     case ITC_IRQ_EEPROM_EEC:
 545                     ; 183         Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 547  007c c67f76        	ld	a,32630
 548  007f               LC001:
 549  007f 1401          	and	a,(OFST-1,sp)
 550  0081 6b02          	ld	(OFST+0,sp),a
 551                     ; 184         break;
 553                     ; 185     default:
 553                     ; 186         break;
 555  0083               L502:
 556                     ; 189     Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 558  0083 7b03          	ld	a,(OFST+1,sp)
 559  0085 a403          	and	a,#3
 560  0087 48            	sll	a
 561  0088 5f            	clrw	x
 562  0089 97            	ld	xl,a
 563  008a 7b02          	ld	a,(OFST+0,sp)
 564  008c 5d            	tnzw	x
 565  008d 2704          	jreq	L43
 566  008f               L63:
 567  008f 44            	srl	a
 568  0090 5a            	decw	x
 569  0091 26fc          	jrne	L63
 570  0093               L43:
 571                     ; 191     return((ITC_PriorityLevel_TypeDef)Value);
 575  0093 5b03          	addw	sp,#3
 576  0095 81            	ret	
 638                     	switch	.const
 639  0032               L201:
 640  0032 0114          	dc.w	L702
 641  0034 0114          	dc.w	L702
 642  0036 0114          	dc.w	L702
 643  0038 0114          	dc.w	L702
 644  003a 0126          	dc.w	L112
 645  003c 0126          	dc.w	L112
 646  003e 0126          	dc.w	L112
 647  0040 0126          	dc.w	L112
 648  0042 0190          	dc.w	L752
 649  0044 0190          	dc.w	L752
 650  0046 0138          	dc.w	L312
 651  0048 0138          	dc.w	L312
 652  004a 014a          	dc.w	L512
 653  004c 014a          	dc.w	L512
 654  004e 014a          	dc.w	L512
 655  0050 014a          	dc.w	L512
 656  0052 015c          	dc.w	L712
 657  0054 015c          	dc.w	L712
 658  0056 015c          	dc.w	L712
 659  0058 015c          	dc.w	L712
 660  005a 016e          	dc.w	L122
 661  005c 016e          	dc.w	L122
 662  005e 016e          	dc.w	L122
 663  0060 016e          	dc.w	L122
 664  0062 0180          	dc.w	L322
 665                     ; 208 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 665                     ; 209 {
 666                     	switch	.text
 667  0096               _ITC_SetSoftwarePriority:
 669  0096 89            	pushw	x
 670  0097 89            	pushw	x
 671       00000002      OFST:	set	2
 674                     ; 211     uint8_t Mask = 0;
 676                     ; 212     uint8_t NewPriority = 0;
 678                     ; 215     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 680  0098 9e            	ld	a,xh
 681  0099 a119          	cp	a,#25
 682  009b 250e          	jrult	L44
 683  009d ae00d7        	ldw	x,#215
 684  00a0 89            	pushw	x
 685  00a1 5f            	clrw	x
 686  00a2 89            	pushw	x
 687  00a3 ae0064        	ldw	x,#L102
 688  00a6 cd0000        	call	_assert_failed
 690  00a9 5b04          	addw	sp,#4
 691  00ab               L44:
 692                     ; 216     assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 694  00ab 7b04          	ld	a,(OFST+2,sp)
 695  00ad a102          	cp	a,#2
 696  00af 2719          	jreq	L45
 697  00b1 4a            	dec	a
 698  00b2 2716          	jreq	L45
 699  00b4 7b04          	ld	a,(OFST+2,sp)
 700  00b6 2712          	jreq	L45
 701  00b8 a103          	cp	a,#3
 702  00ba 270e          	jreq	L45
 703  00bc ae00d8        	ldw	x,#216
 704  00bf 89            	pushw	x
 705  00c0 5f            	clrw	x
 706  00c1 89            	pushw	x
 707  00c2 ae0064        	ldw	x,#L102
 708  00c5 cd0000        	call	_assert_failed
 710  00c8 5b04          	addw	sp,#4
 711  00ca               L45:
 712                     ; 219     assert_param(IS_ITC_INTERRUPTS_DISABLED);
 714  00ca cd0024        	call	_ITC_GetSoftIntStatus
 716  00cd a128          	cp	a,#40
 717  00cf 270e          	jreq	L46
 718  00d1 ae00db        	ldw	x,#219
 719  00d4 89            	pushw	x
 720  00d5 5f            	clrw	x
 721  00d6 89            	pushw	x
 722  00d7 ae0064        	ldw	x,#L102
 723  00da cd0000        	call	_assert_failed
 725  00dd 5b04          	addw	sp,#4
 726  00df               L46:
 727                     ; 223     Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 729  00df 7b03          	ld	a,(OFST+1,sp)
 730  00e1 a403          	and	a,#3
 731  00e3 48            	sll	a
 732  00e4 5f            	clrw	x
 733  00e5 97            	ld	xl,a
 734  00e6 a603          	ld	a,#3
 735  00e8 5d            	tnzw	x
 736  00e9 2704          	jreq	L07
 737  00eb               L27:
 738  00eb 48            	sll	a
 739  00ec 5a            	decw	x
 740  00ed 26fc          	jrne	L27
 741  00ef               L07:
 742  00ef 43            	cpl	a
 743  00f0 6b01          	ld	(OFST-1,sp),a
 744                     ; 226     NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 746  00f2 7b03          	ld	a,(OFST+1,sp)
 747  00f4 a403          	and	a,#3
 748  00f6 48            	sll	a
 749  00f7 5f            	clrw	x
 750  00f8 97            	ld	xl,a
 751  00f9 7b04          	ld	a,(OFST+2,sp)
 752  00fb 5d            	tnzw	x
 753  00fc 2704          	jreq	L47
 754  00fe               L67:
 755  00fe 48            	sll	a
 756  00ff 5a            	decw	x
 757  0100 26fc          	jrne	L67
 758  0102               L47:
 759  0102 6b02          	ld	(OFST+0,sp),a
 760                     ; 228     switch (IrqNum)
 762  0104 7b03          	ld	a,(OFST+1,sp)
 764                     ; 314     default:
 764                     ; 315         break;
 765  0106 a119          	cp	a,#25
 766  0108 2503cc0190    	jruge	L752
 767  010d 5f            	clrw	x
 768  010e 97            	ld	xl,a
 769  010f 58            	sllw	x
 770  0110 de0032        	ldw	x,(L201,x)
 771  0113 fc            	jp	(x)
 772  0114               L702:
 773                     ; 231     case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 773                     ; 232     case ITC_IRQ_AWU:
 773                     ; 233     case ITC_IRQ_CLK:
 773                     ; 234     case ITC_IRQ_PORTA:
 773                     ; 235         ITC->ISPR1 &= Mask;
 775  0114 c67f70        	ld	a,32624
 776  0117 1401          	and	a,(OFST-1,sp)
 777  0119 c77f70        	ld	32624,a
 778                     ; 236         ITC->ISPR1 |= NewPriority;
 780  011c c67f70        	ld	a,32624
 781  011f 1a02          	or	a,(OFST+0,sp)
 782  0121 c77f70        	ld	32624,a
 783                     ; 237         break;
 785  0124 206a          	jra	L752
 786  0126               L112:
 787                     ; 239     case ITC_IRQ_PORTB:
 787                     ; 240     case ITC_IRQ_PORTC:
 787                     ; 241     case ITC_IRQ_PORTD:
 787                     ; 242     case ITC_IRQ_PORTE:
 787                     ; 243         ITC->ISPR2 &= Mask;
 789  0126 c67f71        	ld	a,32625
 790  0129 1401          	and	a,(OFST-1,sp)
 791  012b c77f71        	ld	32625,a
 792                     ; 244         ITC->ISPR2 |= NewPriority;
 794  012e c67f71        	ld	a,32625
 795  0131 1a02          	or	a,(OFST+0,sp)
 796  0133 c77f71        	ld	32625,a
 797                     ; 245         break;
 799  0136 2058          	jra	L752
 800  0138               L312:
 801                     ; 255     case ITC_IRQ_SPI:
 801                     ; 256     case ITC_IRQ_TIM1_OVF:
 801                     ; 257         ITC->ISPR3 &= Mask;
 803  0138 c67f72        	ld	a,32626
 804  013b 1401          	and	a,(OFST-1,sp)
 805  013d c77f72        	ld	32626,a
 806                     ; 258         ITC->ISPR3 |= NewPriority;
 808  0140 c67f72        	ld	a,32626
 809  0143 1a02          	or	a,(OFST+0,sp)
 810  0145 c77f72        	ld	32626,a
 811                     ; 259         break;
 813  0148 2046          	jra	L752
 814  014a               L512:
 815                     ; 261     case ITC_IRQ_TIM1_CAPCOM:
 815                     ; 262 #ifdef STM8S903
 815                     ; 263     case ITC_IRQ_TIM5_OVFTRI:
 815                     ; 264     case ITC_IRQ_TIM5_CAPCOM:
 815                     ; 265 #else
 815                     ; 266     case ITC_IRQ_TIM2_OVF:
 815                     ; 267     case ITC_IRQ_TIM2_CAPCOM:
 815                     ; 268 #endif /*STM8S903*/
 815                     ; 269 
 815                     ; 270     case ITC_IRQ_TIM3_OVF:
 815                     ; 271         ITC->ISPR4 &= Mask;
 817  014a c67f73        	ld	a,32627
 818  014d 1401          	and	a,(OFST-1,sp)
 819  014f c77f73        	ld	32627,a
 820                     ; 272         ITC->ISPR4 |= NewPriority;
 822  0152 c67f73        	ld	a,32627
 823  0155 1a02          	or	a,(OFST+0,sp)
 824  0157 c77f73        	ld	32627,a
 825                     ; 273         break;
 827  015a 2034          	jra	L752
 828  015c               L712:
 829                     ; 275     case ITC_IRQ_TIM3_CAPCOM:
 829                     ; 276     case ITC_IRQ_UART1_TX:
 829                     ; 277     case ITC_IRQ_UART1_RX:
 829                     ; 278     case ITC_IRQ_I2C:
 829                     ; 279         ITC->ISPR5 &= Mask;
 831  015c c67f74        	ld	a,32628
 832  015f 1401          	and	a,(OFST-1,sp)
 833  0161 c77f74        	ld	32628,a
 834                     ; 280         ITC->ISPR5 |= NewPriority;
 836  0164 c67f74        	ld	a,32628
 837  0167 1a02          	or	a,(OFST+0,sp)
 838  0169 c77f74        	ld	32628,a
 839                     ; 281         break;
 841  016c 2022          	jra	L752
 842  016e               L122:
 843                     ; 284     case ITC_IRQ_UART2_TX:
 843                     ; 285     case ITC_IRQ_UART2_RX:
 843                     ; 286 #endif /*STM8S105 or STM8AF626x */
 843                     ; 287 
 843                     ; 288 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 843                     ; 289     defined(STM8AF62Ax)
 843                     ; 290     case ITC_IRQ_UART3_TX:
 843                     ; 291     case ITC_IRQ_UART3_RX:
 843                     ; 292     case ITC_IRQ_ADC2:
 843                     ; 293 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 843                     ; 294 
 843                     ; 295 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 843                     ; 296     defined(STM8S903) || defined(STM8AF626x)
 843                     ; 297     case ITC_IRQ_ADC1:
 843                     ; 298 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 843                     ; 299 
 843                     ; 300 #ifdef STM8S903
 843                     ; 301     case ITC_IRQ_TIM6_OVFTRI:
 843                     ; 302 #else
 843                     ; 303     case ITC_IRQ_TIM4_OVF:
 843                     ; 304 #endif /*STM8S903*/
 843                     ; 305         ITC->ISPR6 &= Mask;
 845  016e c67f75        	ld	a,32629
 846  0171 1401          	and	a,(OFST-1,sp)
 847  0173 c77f75        	ld	32629,a
 848                     ; 306         ITC->ISPR6 |= NewPriority;
 850  0176 c67f75        	ld	a,32629
 851  0179 1a02          	or	a,(OFST+0,sp)
 852  017b c77f75        	ld	32629,a
 853                     ; 307         break;
 855  017e 2010          	jra	L752
 856  0180               L322:
 857                     ; 309     case ITC_IRQ_EEPROM_EEC:
 857                     ; 310         ITC->ISPR7 &= Mask;
 859  0180 c67f76        	ld	a,32630
 860  0183 1401          	and	a,(OFST-1,sp)
 861  0185 c77f76        	ld	32630,a
 862                     ; 311         ITC->ISPR7 |= NewPriority;
 864  0188 c67f76        	ld	a,32630
 865  018b 1a02          	or	a,(OFST+0,sp)
 866  018d c77f76        	ld	32630,a
 867                     ; 312         break;
 869                     ; 314     default:
 869                     ; 315         break;
 871  0190               L752:
 872                     ; 319 }
 875  0190 5b04          	addw	sp,#4
 876  0192 81            	ret	
 889                     	xdef	_ITC_GetSoftwarePriority
 890                     	xdef	_ITC_SetSoftwarePriority
 891                     	xdef	_ITC_GetSoftIntStatus
 892                     	xdef	_ITC_DeInit
 893                     	xdef	_ITC_GetCPUCC
 894                     	xref	_assert_failed
 895                     	switch	.const
 896  0064               L102:
 897  0064 6c6962726172  	dc.b	"libraries\src\stm8"
 898  0076 735f6974632e  	dc.b	"s_itc.c",0
 918                     	end
