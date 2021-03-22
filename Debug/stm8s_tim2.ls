   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.21 - 04 Feb 2014
   3                     ; Generator (Limited) V4.3.12 - 11 Feb 2014
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
  46                     ; 46 void TIM2_DeInit(void)
  46                     ; 47 {
  48                     	switch	.text
  49  0000               _TIM2_DeInit:
  53                     ; 49     TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  55  0000 725f5300      	clr	21248
  56                     ; 50     TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  58  0004 725f5301      	clr	21249
  59                     ; 51     TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  61  0008 725f5303      	clr	21251
  62                     ; 54     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  64  000c 725f5308      	clr	21256
  65                     ; 55     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  67  0010 725f5309      	clr	21257
  68                     ; 59     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  70  0014 725f5308      	clr	21256
  71                     ; 60     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  73  0018 725f5309      	clr	21257
  74                     ; 61     TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  76  001c 725f5305      	clr	21253
  77                     ; 62     TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  79  0020 725f5306      	clr	21254
  80                     ; 63     TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  82  0024 725f5307      	clr	21255
  83                     ; 64     TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  85  0028 725f530a      	clr	21258
  86                     ; 65     TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  88  002c 725f530b      	clr	21259
  89                     ; 66     TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  91  0030 725f530c      	clr	21260
  92                     ; 67     TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  94  0034 35ff530d      	mov	21261,#255
  95                     ; 68     TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  97  0038 35ff530e      	mov	21262,#255
  98                     ; 69     TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
 100  003c 725f530f      	clr	21263
 101                     ; 70     TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 103  0040 725f5310      	clr	21264
 104                     ; 71     TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 106  0044 725f5311      	clr	21265
 107                     ; 72     TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 109  0048 725f5312      	clr	21266
 110                     ; 73     TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 112  004c 725f5313      	clr	21267
 113                     ; 74     TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 115  0050 725f5314      	clr	21268
 116                     ; 75     TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 118  0054 725f5302      	clr	21250
 119                     ; 76 }
 122  0058 81            	ret	
 288                     ; 85 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 288                     ; 86                         uint16_t TIM2_Period)
 288                     ; 87 {
 289                     	switch	.text
 290  0059               _TIM2_TimeBaseInit:
 292  0059 88            	push	a
 293       00000000      OFST:	set	0
 296                     ; 89     TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 298  005a c7530c        	ld	21260,a
 299                     ; 91     TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 301  005d 7b04          	ld	a,(OFST+4,sp)
 302  005f c7530d        	ld	21261,a
 303                     ; 92     TIM2->ARRL = (uint8_t)(TIM2_Period);
 305  0062 7b05          	ld	a,(OFST+5,sp)
 306  0064 c7530e        	ld	21262,a
 307                     ; 93 }
 310  0067 84            	pop	a
 311  0068 81            	ret	
 467                     ; 104 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 467                     ; 105                   TIM2_OutputState_TypeDef TIM2_OutputState,
 467                     ; 106                   uint16_t TIM2_Pulse,
 467                     ; 107                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 467                     ; 108 {
 468                     	switch	.text
 469  0069               _TIM2_OC1Init:
 471  0069 89            	pushw	x
 472  006a 88            	push	a
 473       00000001      OFST:	set	1
 476                     ; 110     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 478  006b 9e            	ld	a,xh
 479  006c 4d            	tnz	a
 480  006d 2727          	jreq	L61
 481  006f 9e            	ld	a,xh
 482  0070 a110          	cp	a,#16
 483  0072 2722          	jreq	L61
 484  0074 9e            	ld	a,xh
 485  0075 a120          	cp	a,#32
 486  0077 271d          	jreq	L61
 487  0079 9e            	ld	a,xh
 488  007a a130          	cp	a,#48
 489  007c 2718          	jreq	L61
 490  007e 9e            	ld	a,xh
 491  007f a160          	cp	a,#96
 492  0081 2713          	jreq	L61
 493  0083 9e            	ld	a,xh
 494  0084 a170          	cp	a,#112
 495  0086 270e          	jreq	L61
 496  0088 ae006e        	ldw	x,#110
 497  008b 89            	pushw	x
 498  008c 5f            	clrw	x
 499  008d 89            	pushw	x
 500  008e ae0000        	ldw	x,#L302
 501  0091 cd0000        	call	_assert_failed
 503  0094 5b04          	addw	sp,#4
 504  0096               L61:
 505                     ; 111     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 507  0096 7b03          	ld	a,(OFST+2,sp)
 508  0098 2712          	jreq	L62
 509  009a a111          	cp	a,#17
 510  009c 270e          	jreq	L62
 511  009e ae006f        	ldw	x,#111
 512  00a1 89            	pushw	x
 513  00a2 5f            	clrw	x
 514  00a3 89            	pushw	x
 515  00a4 ae0000        	ldw	x,#L302
 516  00a7 cd0000        	call	_assert_failed
 518  00aa 5b04          	addw	sp,#4
 519  00ac               L62:
 520                     ; 112     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 522  00ac 7b08          	ld	a,(OFST+7,sp)
 523  00ae 2712          	jreq	L63
 524  00b0 a122          	cp	a,#34
 525  00b2 270e          	jreq	L63
 526  00b4 ae0070        	ldw	x,#112
 527  00b7 89            	pushw	x
 528  00b8 5f            	clrw	x
 529  00b9 89            	pushw	x
 530  00ba ae0000        	ldw	x,#L302
 531  00bd cd0000        	call	_assert_failed
 533  00c0 5b04          	addw	sp,#4
 534  00c2               L63:
 535                     ; 115     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 537  00c2 c65308        	ld	a,21256
 538  00c5 a4fc          	and	a,#252
 539  00c7 c75308        	ld	21256,a
 540                     ; 117     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 540                     ; 118                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 542  00ca 7b08          	ld	a,(OFST+7,sp)
 543  00cc a402          	and	a,#2
 544  00ce 6b01          	ld	(OFST+0,sp),a
 545  00d0 7b03          	ld	a,(OFST+2,sp)
 546  00d2 a401          	and	a,#1
 547  00d4 1a01          	or	a,(OFST+0,sp)
 548  00d6 ca5308        	or	a,21256
 549  00d9 c75308        	ld	21256,a
 550                     ; 121     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 550                     ; 122                             (uint8_t)TIM2_OCMode);
 552  00dc c65305        	ld	a,21253
 553  00df a48f          	and	a,#143
 554  00e1 1a02          	or	a,(OFST+1,sp)
 555  00e3 c75305        	ld	21253,a
 556                     ; 125     TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 558  00e6 7b06          	ld	a,(OFST+5,sp)
 559  00e8 c7530f        	ld	21263,a
 560                     ; 126     TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 562  00eb 7b07          	ld	a,(OFST+6,sp)
 563  00ed c75310        	ld	21264,a
 564                     ; 127 }
 567  00f0 5b03          	addw	sp,#3
 568  00f2 81            	ret	
 631                     ; 138 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 631                     ; 139                   TIM2_OutputState_TypeDef TIM2_OutputState,
 631                     ; 140                   uint16_t TIM2_Pulse,
 631                     ; 141                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 631                     ; 142 {
 632                     	switch	.text
 633  00f3               _TIM2_OC2Init:
 635  00f3 89            	pushw	x
 636  00f4 88            	push	a
 637       00000001      OFST:	set	1
 640                     ; 144     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 642  00f5 9e            	ld	a,xh
 643  00f6 4d            	tnz	a
 644  00f7 2727          	jreq	L05
 645  00f9 9e            	ld	a,xh
 646  00fa a110          	cp	a,#16
 647  00fc 2722          	jreq	L05
 648  00fe 9e            	ld	a,xh
 649  00ff a120          	cp	a,#32
 650  0101 271d          	jreq	L05
 651  0103 9e            	ld	a,xh
 652  0104 a130          	cp	a,#48
 653  0106 2718          	jreq	L05
 654  0108 9e            	ld	a,xh
 655  0109 a160          	cp	a,#96
 656  010b 2713          	jreq	L05
 657  010d 9e            	ld	a,xh
 658  010e a170          	cp	a,#112
 659  0110 270e          	jreq	L05
 660  0112 ae0090        	ldw	x,#144
 661  0115 89            	pushw	x
 662  0116 5f            	clrw	x
 663  0117 89            	pushw	x
 664  0118 ae0000        	ldw	x,#L302
 665  011b cd0000        	call	_assert_failed
 667  011e 5b04          	addw	sp,#4
 668  0120               L05:
 669                     ; 145     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 671  0120 7b03          	ld	a,(OFST+2,sp)
 672  0122 2712          	jreq	L06
 673  0124 a111          	cp	a,#17
 674  0126 270e          	jreq	L06
 675  0128 ae0091        	ldw	x,#145
 676  012b 89            	pushw	x
 677  012c 5f            	clrw	x
 678  012d 89            	pushw	x
 679  012e ae0000        	ldw	x,#L302
 680  0131 cd0000        	call	_assert_failed
 682  0134 5b04          	addw	sp,#4
 683  0136               L06:
 684                     ; 146     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 686  0136 7b08          	ld	a,(OFST+7,sp)
 687  0138 2712          	jreq	L07
 688  013a a122          	cp	a,#34
 689  013c 270e          	jreq	L07
 690  013e ae0092        	ldw	x,#146
 691  0141 89            	pushw	x
 692  0142 5f            	clrw	x
 693  0143 89            	pushw	x
 694  0144 ae0000        	ldw	x,#L302
 695  0147 cd0000        	call	_assert_failed
 697  014a 5b04          	addw	sp,#4
 698  014c               L07:
 699                     ; 150     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 701  014c c65308        	ld	a,21256
 702  014f a4cf          	and	a,#207
 703  0151 c75308        	ld	21256,a
 704                     ; 152     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 704                     ; 153                         (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 706  0154 7b08          	ld	a,(OFST+7,sp)
 707  0156 a420          	and	a,#32
 708  0158 6b01          	ld	(OFST+0,sp),a
 709  015a 7b03          	ld	a,(OFST+2,sp)
 710  015c a410          	and	a,#16
 711  015e 1a01          	or	a,(OFST+0,sp)
 712  0160 ca5308        	or	a,21256
 713  0163 c75308        	ld	21256,a
 714                     ; 157     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 714                     ; 158                             (uint8_t)TIM2_OCMode);
 716  0166 c65306        	ld	a,21254
 717  0169 a48f          	and	a,#143
 718  016b 1a02          	or	a,(OFST+1,sp)
 719  016d c75306        	ld	21254,a
 720                     ; 162     TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 722  0170 7b06          	ld	a,(OFST+5,sp)
 723  0172 c75311        	ld	21265,a
 724                     ; 163     TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 726  0175 7b07          	ld	a,(OFST+6,sp)
 727  0177 c75312        	ld	21266,a
 728                     ; 164 }
 731  017a 5b03          	addw	sp,#3
 732  017c 81            	ret	
 795                     ; 175 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 795                     ; 176                   TIM2_OutputState_TypeDef TIM2_OutputState,
 795                     ; 177                   uint16_t TIM2_Pulse,
 795                     ; 178                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 795                     ; 179 {
 796                     	switch	.text
 797  017d               _TIM2_OC3Init:
 799  017d 89            	pushw	x
 800  017e 88            	push	a
 801       00000001      OFST:	set	1
 804                     ; 181     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 806  017f 9e            	ld	a,xh
 807  0180 4d            	tnz	a
 808  0181 2727          	jreq	L201
 809  0183 9e            	ld	a,xh
 810  0184 a110          	cp	a,#16
 811  0186 2722          	jreq	L201
 812  0188 9e            	ld	a,xh
 813  0189 a120          	cp	a,#32
 814  018b 271d          	jreq	L201
 815  018d 9e            	ld	a,xh
 816  018e a130          	cp	a,#48
 817  0190 2718          	jreq	L201
 818  0192 9e            	ld	a,xh
 819  0193 a160          	cp	a,#96
 820  0195 2713          	jreq	L201
 821  0197 9e            	ld	a,xh
 822  0198 a170          	cp	a,#112
 823  019a 270e          	jreq	L201
 824  019c ae00b5        	ldw	x,#181
 825  019f 89            	pushw	x
 826  01a0 5f            	clrw	x
 827  01a1 89            	pushw	x
 828  01a2 ae0000        	ldw	x,#L302
 829  01a5 cd0000        	call	_assert_failed
 831  01a8 5b04          	addw	sp,#4
 832  01aa               L201:
 833                     ; 182     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 835  01aa 7b03          	ld	a,(OFST+2,sp)
 836  01ac 2712          	jreq	L211
 837  01ae a111          	cp	a,#17
 838  01b0 270e          	jreq	L211
 839  01b2 ae00b6        	ldw	x,#182
 840  01b5 89            	pushw	x
 841  01b6 5f            	clrw	x
 842  01b7 89            	pushw	x
 843  01b8 ae0000        	ldw	x,#L302
 844  01bb cd0000        	call	_assert_failed
 846  01be 5b04          	addw	sp,#4
 847  01c0               L211:
 848                     ; 183     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 850  01c0 7b08          	ld	a,(OFST+7,sp)
 851  01c2 2712          	jreq	L221
 852  01c4 a122          	cp	a,#34
 853  01c6 270e          	jreq	L221
 854  01c8 ae00b7        	ldw	x,#183
 855  01cb 89            	pushw	x
 856  01cc 5f            	clrw	x
 857  01cd 89            	pushw	x
 858  01ce ae0000        	ldw	x,#L302
 859  01d1 cd0000        	call	_assert_failed
 861  01d4 5b04          	addw	sp,#4
 862  01d6               L221:
 863                     ; 185     TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 865  01d6 c65309        	ld	a,21257
 866  01d9 a4fc          	and	a,#252
 867  01db c75309        	ld	21257,a
 868                     ; 187     TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 868                     ; 188                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 870  01de 7b08          	ld	a,(OFST+7,sp)
 871  01e0 a402          	and	a,#2
 872  01e2 6b01          	ld	(OFST+0,sp),a
 873  01e4 7b03          	ld	a,(OFST+2,sp)
 874  01e6 a401          	and	a,#1
 875  01e8 1a01          	or	a,(OFST+0,sp)
 876  01ea ca5309        	or	a,21257
 877  01ed c75309        	ld	21257,a
 878                     ; 191     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 878                     ; 192                             (uint8_t)TIM2_OCMode);
 880  01f0 c65307        	ld	a,21255
 881  01f3 a48f          	and	a,#143
 882  01f5 1a02          	or	a,(OFST+1,sp)
 883  01f7 c75307        	ld	21255,a
 884                     ; 195     TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 886  01fa 7b06          	ld	a,(OFST+5,sp)
 887  01fc c75313        	ld	21267,a
 888                     ; 196     TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 890  01ff 7b07          	ld	a,(OFST+6,sp)
 891  0201 c75314        	ld	21268,a
 892                     ; 198 }
 895  0204 5b03          	addw	sp,#3
 896  0206 81            	ret	
1088                     ; 210 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1088                     ; 211                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1088                     ; 212                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1088                     ; 213                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1088                     ; 214                  uint8_t TIM2_ICFilter)
1088                     ; 215 {
1089                     	switch	.text
1090  0207               _TIM2_ICInit:
1092  0207 89            	pushw	x
1093       00000000      OFST:	set	0
1096                     ; 217     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1098  0208 9e            	ld	a,xh
1099  0209 4d            	tnz	a
1100  020a 2717          	jreq	L431
1101  020c 9e            	ld	a,xh
1102  020d 4a            	dec	a
1103  020e 2713          	jreq	L431
1104  0210 9e            	ld	a,xh
1105  0211 a102          	cp	a,#2
1106  0213 270e          	jreq	L431
1107  0215 ae00d9        	ldw	x,#217
1108  0218 89            	pushw	x
1109  0219 5f            	clrw	x
1110  021a 89            	pushw	x
1111  021b ae0000        	ldw	x,#L302
1112  021e cd0000        	call	_assert_failed
1114  0221 5b04          	addw	sp,#4
1115  0223               L431:
1116                     ; 218     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1118  0223 7b02          	ld	a,(OFST+2,sp)
1119  0225 2712          	jreq	L441
1120  0227 a144          	cp	a,#68
1121  0229 270e          	jreq	L441
1122  022b ae00da        	ldw	x,#218
1123  022e 89            	pushw	x
1124  022f 5f            	clrw	x
1125  0230 89            	pushw	x
1126  0231 ae0000        	ldw	x,#L302
1127  0234 cd0000        	call	_assert_failed
1129  0237 5b04          	addw	sp,#4
1130  0239               L441:
1131                     ; 219     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1133  0239 7b05          	ld	a,(OFST+5,sp)
1134  023b a101          	cp	a,#1
1135  023d 2716          	jreq	L451
1136  023f a102          	cp	a,#2
1137  0241 2712          	jreq	L451
1138  0243 a103          	cp	a,#3
1139  0245 270e          	jreq	L451
1140  0247 ae00db        	ldw	x,#219
1141  024a 89            	pushw	x
1142  024b 5f            	clrw	x
1143  024c 89            	pushw	x
1144  024d ae0000        	ldw	x,#L302
1145  0250 cd0000        	call	_assert_failed
1147  0253 5b04          	addw	sp,#4
1148  0255               L451:
1149                     ; 220     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1151  0255 7b06          	ld	a,(OFST+6,sp)
1152  0257 271a          	jreq	L461
1153  0259 a104          	cp	a,#4
1154  025b 2716          	jreq	L461
1155  025d a108          	cp	a,#8
1156  025f 2712          	jreq	L461
1157  0261 a10c          	cp	a,#12
1158  0263 270e          	jreq	L461
1159  0265 ae00dc        	ldw	x,#220
1160  0268 89            	pushw	x
1161  0269 5f            	clrw	x
1162  026a 89            	pushw	x
1163  026b ae0000        	ldw	x,#L302
1164  026e cd0000        	call	_assert_failed
1166  0271 5b04          	addw	sp,#4
1167  0273               L461:
1168                     ; 221     assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1170  0273 7b07          	ld	a,(OFST+7,sp)
1171  0275 a110          	cp	a,#16
1172  0277 250e          	jrult	L271
1173  0279 ae00dd        	ldw	x,#221
1174  027c 89            	pushw	x
1175  027d 5f            	clrw	x
1176  027e 89            	pushw	x
1177  027f ae0000        	ldw	x,#L302
1178  0282 cd0000        	call	_assert_failed
1180  0285 5b04          	addw	sp,#4
1181  0287               L271:
1182                     ; 223     if (TIM2_Channel == TIM2_CHANNEL_1)
1184  0287 7b01          	ld	a,(OFST+1,sp)
1185  0289 2614          	jrne	L173
1186                     ; 226         TI1_Config((uint8_t)TIM2_ICPolarity,
1186                     ; 227                    (uint8_t)TIM2_ICSelection,
1186                     ; 228                    (uint8_t)TIM2_ICFilter);
1188  028b 7b07          	ld	a,(OFST+7,sp)
1189  028d 88            	push	a
1190  028e 7b06          	ld	a,(OFST+6,sp)
1191  0290 97            	ld	xl,a
1192  0291 7b03          	ld	a,(OFST+3,sp)
1193  0293 95            	ld	xh,a
1194  0294 cd0945        	call	L3_TI1_Config
1196  0297 84            	pop	a
1197                     ; 231         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1199  0298 7b06          	ld	a,(OFST+6,sp)
1200  029a cd0785        	call	_TIM2_SetIC1Prescaler
1203  029d 2029          	jra	L373
1204  029f               L173:
1205                     ; 233     else if (TIM2_Channel == TIM2_CHANNEL_2)
1207  029f 4a            	dec	a
1208  02a0 2614          	jrne	L573
1209                     ; 236         TI2_Config((uint8_t)TIM2_ICPolarity,
1209                     ; 237                    (uint8_t)TIM2_ICSelection,
1209                     ; 238                    (uint8_t)TIM2_ICFilter);
1211  02a2 7b07          	ld	a,(OFST+7,sp)
1212  02a4 88            	push	a
1213  02a5 7b06          	ld	a,(OFST+6,sp)
1214  02a7 97            	ld	xl,a
1215  02a8 7b03          	ld	a,(OFST+3,sp)
1216  02aa 95            	ld	xh,a
1217  02ab cd0975        	call	L5_TI2_Config
1219  02ae 84            	pop	a
1220                     ; 241         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1222  02af 7b06          	ld	a,(OFST+6,sp)
1223  02b1 cd07af        	call	_TIM2_SetIC2Prescaler
1226  02b4 2012          	jra	L373
1227  02b6               L573:
1228                     ; 246         TI3_Config((uint8_t)TIM2_ICPolarity,
1228                     ; 247                    (uint8_t)TIM2_ICSelection,
1228                     ; 248                    (uint8_t)TIM2_ICFilter);
1230  02b6 7b07          	ld	a,(OFST+7,sp)
1231  02b8 88            	push	a
1232  02b9 7b06          	ld	a,(OFST+6,sp)
1233  02bb 97            	ld	xl,a
1234  02bc 7b03          	ld	a,(OFST+3,sp)
1235  02be 95            	ld	xh,a
1236  02bf cd09a5        	call	L7_TI3_Config
1238  02c2 84            	pop	a
1239                     ; 251         TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1241  02c3 7b06          	ld	a,(OFST+6,sp)
1242  02c5 cd07d9        	call	_TIM2_SetIC3Prescaler
1244  02c8               L373:
1245                     ; 253 }
1248  02c8 85            	popw	x
1249  02c9 81            	ret	
1340                     ; 265 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1340                     ; 266                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1340                     ; 267                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1340                     ; 268                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1340                     ; 269                      uint8_t TIM2_ICFilter)
1340                     ; 270 {
1341                     	switch	.text
1342  02ca               _TIM2_PWMIConfig:
1344  02ca 89            	pushw	x
1345  02cb 89            	pushw	x
1346       00000002      OFST:	set	2
1349                     ; 271     uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1351                     ; 272     uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1353                     ; 275     assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1355  02cc 9e            	ld	a,xh
1356  02cd 4d            	tnz	a
1357  02ce 2712          	jreq	L022
1358  02d0 9e            	ld	a,xh
1359  02d1 4a            	dec	a
1360  02d2 270e          	jreq	L022
1361  02d4 ae0113        	ldw	x,#275
1362  02d7 89            	pushw	x
1363  02d8 5f            	clrw	x
1364  02d9 89            	pushw	x
1365  02da ae0000        	ldw	x,#L302
1366  02dd cd0000        	call	_assert_failed
1368  02e0 5b04          	addw	sp,#4
1369  02e2               L022:
1370                     ; 276     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1372  02e2 7b04          	ld	a,(OFST+2,sp)
1373  02e4 2712          	jreq	L032
1374  02e6 a144          	cp	a,#68
1375  02e8 270e          	jreq	L032
1376  02ea ae0114        	ldw	x,#276
1377  02ed 89            	pushw	x
1378  02ee 5f            	clrw	x
1379  02ef 89            	pushw	x
1380  02f0 ae0000        	ldw	x,#L302
1381  02f3 cd0000        	call	_assert_failed
1383  02f6 5b04          	addw	sp,#4
1384  02f8               L032:
1385                     ; 277     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1387  02f8 7b07          	ld	a,(OFST+5,sp)
1388  02fa a101          	cp	a,#1
1389  02fc 2716          	jreq	L042
1390  02fe a102          	cp	a,#2
1391  0300 2712          	jreq	L042
1392  0302 a103          	cp	a,#3
1393  0304 270e          	jreq	L042
1394  0306 ae0115        	ldw	x,#277
1395  0309 89            	pushw	x
1396  030a 5f            	clrw	x
1397  030b 89            	pushw	x
1398  030c ae0000        	ldw	x,#L302
1399  030f cd0000        	call	_assert_failed
1401  0312 5b04          	addw	sp,#4
1402  0314               L042:
1403                     ; 278     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1405  0314 7b08          	ld	a,(OFST+6,sp)
1406  0316 271a          	jreq	L052
1407  0318 a104          	cp	a,#4
1408  031a 2716          	jreq	L052
1409  031c a108          	cp	a,#8
1410  031e 2712          	jreq	L052
1411  0320 a10c          	cp	a,#12
1412  0322 270e          	jreq	L052
1413  0324 ae0116        	ldw	x,#278
1414  0327 89            	pushw	x
1415  0328 5f            	clrw	x
1416  0329 89            	pushw	x
1417  032a ae0000        	ldw	x,#L302
1418  032d cd0000        	call	_assert_failed
1420  0330 5b04          	addw	sp,#4
1421  0332               L052:
1422                     ; 281     if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1424  0332 7b04          	ld	a,(OFST+2,sp)
1425  0334 a144          	cp	a,#68
1426  0336 2706          	jreq	L144
1427                     ; 283         icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1429  0338 a644          	ld	a,#68
1430  033a 6b01          	ld	(OFST-1,sp),a
1432  033c 2002          	jra	L344
1433  033e               L144:
1434                     ; 287         icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1436  033e 0f01          	clr	(OFST-1,sp)
1437  0340               L344:
1438                     ; 291     if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1440  0340 7b07          	ld	a,(OFST+5,sp)
1441  0342 4a            	dec	a
1442  0343 2604          	jrne	L544
1443                     ; 293         icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1445  0345 a602          	ld	a,#2
1447  0347 2002          	jra	L744
1448  0349               L544:
1449                     ; 297         icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1451  0349 a601          	ld	a,#1
1452  034b               L744:
1453  034b 6b02          	ld	(OFST+0,sp),a
1454                     ; 300     if (TIM2_Channel == TIM2_CHANNEL_1)
1456  034d 7b03          	ld	a,(OFST+1,sp)
1457  034f 2626          	jrne	L154
1458                     ; 303         TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1458                     ; 304                    (uint8_t)TIM2_ICFilter);
1460  0351 7b09          	ld	a,(OFST+7,sp)
1461  0353 88            	push	a
1462  0354 7b08          	ld	a,(OFST+6,sp)
1463  0356 97            	ld	xl,a
1464  0357 7b05          	ld	a,(OFST+3,sp)
1465  0359 95            	ld	xh,a
1466  035a cd0945        	call	L3_TI1_Config
1468  035d 84            	pop	a
1469                     ; 307         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1471  035e 7b08          	ld	a,(OFST+6,sp)
1472  0360 cd0785        	call	_TIM2_SetIC1Prescaler
1474                     ; 310         TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1476  0363 7b09          	ld	a,(OFST+7,sp)
1477  0365 88            	push	a
1478  0366 7b03          	ld	a,(OFST+1,sp)
1479  0368 97            	ld	xl,a
1480  0369 7b02          	ld	a,(OFST+0,sp)
1481  036b 95            	ld	xh,a
1482  036c cd0975        	call	L5_TI2_Config
1484  036f 84            	pop	a
1485                     ; 313         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1487  0370 7b08          	ld	a,(OFST+6,sp)
1488  0372 cd07af        	call	_TIM2_SetIC2Prescaler
1491  0375 2024          	jra	L354
1492  0377               L154:
1493                     ; 318         TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1493                     ; 319                    (uint8_t)TIM2_ICFilter);
1495  0377 7b09          	ld	a,(OFST+7,sp)
1496  0379 88            	push	a
1497  037a 7b08          	ld	a,(OFST+6,sp)
1498  037c 97            	ld	xl,a
1499  037d 7b05          	ld	a,(OFST+3,sp)
1500  037f 95            	ld	xh,a
1501  0380 cd0975        	call	L5_TI2_Config
1503  0383 84            	pop	a
1504                     ; 322         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1506  0384 7b08          	ld	a,(OFST+6,sp)
1507  0386 cd07af        	call	_TIM2_SetIC2Prescaler
1509                     ; 325         TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1511  0389 7b09          	ld	a,(OFST+7,sp)
1512  038b 88            	push	a
1513  038c 7b03          	ld	a,(OFST+1,sp)
1514  038e 97            	ld	xl,a
1515  038f 7b02          	ld	a,(OFST+0,sp)
1516  0391 95            	ld	xh,a
1517  0392 cd0945        	call	L3_TI1_Config
1519  0395 84            	pop	a
1520                     ; 328         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1522  0396 7b08          	ld	a,(OFST+6,sp)
1523  0398 cd0785        	call	_TIM2_SetIC1Prescaler
1525  039b               L354:
1526                     ; 330 }
1529  039b 5b04          	addw	sp,#4
1530  039d 81            	ret	
1586                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1586                     ; 340 {
1587                     	switch	.text
1588  039e               _TIM2_Cmd:
1590  039e 88            	push	a
1591       00000000      OFST:	set	0
1594                     ; 342     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1596  039f 4d            	tnz	a
1597  03a0 2711          	jreq	L203
1598  03a2 4a            	dec	a
1599  03a3 270e          	jreq	L203
1600  03a5 ae0156        	ldw	x,#342
1601  03a8 89            	pushw	x
1602  03a9 5f            	clrw	x
1603  03aa 89            	pushw	x
1604  03ab ae0000        	ldw	x,#L302
1605  03ae cd0000        	call	_assert_failed
1607  03b1 5b04          	addw	sp,#4
1608  03b3               L203:
1609                     ; 345     if (NewState != DISABLE)
1611  03b3 7b01          	ld	a,(OFST+1,sp)
1612  03b5 2706          	jreq	L305
1613                     ; 347         TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1615  03b7 72105300      	bset	21248,#0
1617  03bb 2004          	jra	L505
1618  03bd               L305:
1619                     ; 351         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1621  03bd 72115300      	bres	21248,#0
1622  03c1               L505:
1623                     ; 353 }
1626  03c1 84            	pop	a
1627  03c2 81            	ret	
1707                     ; 369 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1707                     ; 370 {
1708                     	switch	.text
1709  03c3               _TIM2_ITConfig:
1711  03c3 89            	pushw	x
1712       00000000      OFST:	set	0
1715                     ; 372     assert_param(IS_TIM2_IT_OK(TIM2_IT));
1717  03c4 9e            	ld	a,xh
1718  03c5 4d            	tnz	a
1719  03c6 2705          	jreq	L013
1720  03c8 9e            	ld	a,xh
1721  03c9 a110          	cp	a,#16
1722  03cb 250e          	jrult	L213
1723  03cd               L013:
1724  03cd ae0174        	ldw	x,#372
1725  03d0 89            	pushw	x
1726  03d1 5f            	clrw	x
1727  03d2 89            	pushw	x
1728  03d3 ae0000        	ldw	x,#L302
1729  03d6 cd0000        	call	_assert_failed
1731  03d9 5b04          	addw	sp,#4
1732  03db               L213:
1733                     ; 373     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1735  03db 7b02          	ld	a,(OFST+2,sp)
1736  03dd 2711          	jreq	L223
1737  03df 4a            	dec	a
1738  03e0 270e          	jreq	L223
1739  03e2 ae0175        	ldw	x,#373
1740  03e5 89            	pushw	x
1741  03e6 5f            	clrw	x
1742  03e7 89            	pushw	x
1743  03e8 ae0000        	ldw	x,#L302
1744  03eb cd0000        	call	_assert_failed
1746  03ee 5b04          	addw	sp,#4
1747  03f0               L223:
1748                     ; 375     if (NewState != DISABLE)
1750  03f0 7b02          	ld	a,(OFST+2,sp)
1751  03f2 2707          	jreq	L545
1752                     ; 378         TIM2->IER |= (uint8_t)TIM2_IT;
1754  03f4 c65301        	ld	a,21249
1755  03f7 1a01          	or	a,(OFST+1,sp)
1757  03f9 2006          	jra	L745
1758  03fb               L545:
1759                     ; 383         TIM2->IER &= (uint8_t)(~TIM2_IT);
1761  03fb 7b01          	ld	a,(OFST+1,sp)
1762  03fd 43            	cpl	a
1763  03fe c45301        	and	a,21249
1764  0401               L745:
1765  0401 c75301        	ld	21249,a
1766                     ; 385 }
1769  0404 85            	popw	x
1770  0405 81            	ret	
1807                     ; 394 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1807                     ; 395 {
1808                     	switch	.text
1809  0406               _TIM2_UpdateDisableConfig:
1811  0406 88            	push	a
1812       00000000      OFST:	set	0
1815                     ; 397     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1817  0407 4d            	tnz	a
1818  0408 2711          	jreq	L433
1819  040a 4a            	dec	a
1820  040b 270e          	jreq	L433
1821  040d ae018d        	ldw	x,#397
1822  0410 89            	pushw	x
1823  0411 5f            	clrw	x
1824  0412 89            	pushw	x
1825  0413 ae0000        	ldw	x,#L302
1826  0416 cd0000        	call	_assert_failed
1828  0419 5b04          	addw	sp,#4
1829  041b               L433:
1830                     ; 400     if (NewState != DISABLE)
1832  041b 7b01          	ld	a,(OFST+1,sp)
1833  041d 2706          	jreq	L765
1834                     ; 402         TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1836  041f 72125300      	bset	21248,#1
1838  0423 2004          	jra	L175
1839  0425               L765:
1840                     ; 406         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1842  0425 72135300      	bres	21248,#1
1843  0429               L175:
1844                     ; 408 }
1847  0429 84            	pop	a
1848  042a 81            	ret	
1907                     ; 418 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1907                     ; 419 {
1908                     	switch	.text
1909  042b               _TIM2_UpdateRequestConfig:
1911  042b 88            	push	a
1912       00000000      OFST:	set	0
1915                     ; 421     assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1917  042c 4d            	tnz	a
1918  042d 2711          	jreq	L643
1919  042f 4a            	dec	a
1920  0430 270e          	jreq	L643
1921  0432 ae01a5        	ldw	x,#421
1922  0435 89            	pushw	x
1923  0436 5f            	clrw	x
1924  0437 89            	pushw	x
1925  0438 ae0000        	ldw	x,#L302
1926  043b cd0000        	call	_assert_failed
1928  043e 5b04          	addw	sp,#4
1929  0440               L643:
1930                     ; 424     if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1932  0440 7b01          	ld	a,(OFST+1,sp)
1933  0442 2706          	jreq	L126
1934                     ; 426         TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1936  0444 72145300      	bset	21248,#2
1938  0448 2004          	jra	L326
1939  044a               L126:
1940                     ; 430         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1942  044a 72155300      	bres	21248,#2
1943  044e               L326:
1944                     ; 432 }
1947  044e 84            	pop	a
1948  044f 81            	ret	
2006                     ; 443 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
2006                     ; 444 {
2007                     	switch	.text
2008  0450               _TIM2_SelectOnePulseMode:
2010  0450 88            	push	a
2011       00000000      OFST:	set	0
2014                     ; 446     assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
2016  0451 a101          	cp	a,#1
2017  0453 2711          	jreq	L063
2018  0455 4d            	tnz	a
2019  0456 270e          	jreq	L063
2020  0458 ae01be        	ldw	x,#446
2021  045b 89            	pushw	x
2022  045c 5f            	clrw	x
2023  045d 89            	pushw	x
2024  045e ae0000        	ldw	x,#L302
2025  0461 cd0000        	call	_assert_failed
2027  0464 5b04          	addw	sp,#4
2028  0466               L063:
2029                     ; 449     if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
2031  0466 7b01          	ld	a,(OFST+1,sp)
2032  0468 2706          	jreq	L356
2033                     ; 451         TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
2035  046a 72165300      	bset	21248,#3
2037  046e 2004          	jra	L556
2038  0470               L356:
2039                     ; 455         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
2041  0470 72175300      	bres	21248,#3
2042  0474               L556:
2043                     ; 458 }
2046  0474 84            	pop	a
2047  0475 81            	ret	
2116                     ; 489 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2116                     ; 490                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2116                     ; 491 {
2117                     	switch	.text
2118  0476               _TIM2_PrescalerConfig:
2120  0476 89            	pushw	x
2121       00000000      OFST:	set	0
2124                     ; 493     assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2126  0477 9f            	ld	a,xl
2127  0478 4d            	tnz	a
2128  0479 2712          	jreq	L273
2129  047b 9f            	ld	a,xl
2130  047c 4a            	dec	a
2131  047d 270e          	jreq	L273
2132  047f ae01ed        	ldw	x,#493
2133  0482 89            	pushw	x
2134  0483 5f            	clrw	x
2135  0484 89            	pushw	x
2136  0485 ae0000        	ldw	x,#L302
2137  0488 cd0000        	call	_assert_failed
2139  048b 5b04          	addw	sp,#4
2140  048d               L273:
2141                     ; 494     assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2143  048d 7b01          	ld	a,(OFST+1,sp)
2144  048f 274c          	jreq	L204
2145  0491 a101          	cp	a,#1
2146  0493 2748          	jreq	L204
2147  0495 a102          	cp	a,#2
2148  0497 2744          	jreq	L204
2149  0499 a103          	cp	a,#3
2150  049b 2740          	jreq	L204
2151  049d a104          	cp	a,#4
2152  049f 273c          	jreq	L204
2153  04a1 a105          	cp	a,#5
2154  04a3 2738          	jreq	L204
2155  04a5 a106          	cp	a,#6
2156  04a7 2734          	jreq	L204
2157  04a9 a107          	cp	a,#7
2158  04ab 2730          	jreq	L204
2159  04ad a108          	cp	a,#8
2160  04af 272c          	jreq	L204
2161  04b1 a109          	cp	a,#9
2162  04b3 2728          	jreq	L204
2163  04b5 a10a          	cp	a,#10
2164  04b7 2724          	jreq	L204
2165  04b9 a10b          	cp	a,#11
2166  04bb 2720          	jreq	L204
2167  04bd a10c          	cp	a,#12
2168  04bf 271c          	jreq	L204
2169  04c1 a10d          	cp	a,#13
2170  04c3 2718          	jreq	L204
2171  04c5 a10e          	cp	a,#14
2172  04c7 2714          	jreq	L204
2173  04c9 a10f          	cp	a,#15
2174  04cb 2710          	jreq	L204
2175  04cd ae01ee        	ldw	x,#494
2176  04d0 89            	pushw	x
2177  04d1 5f            	clrw	x
2178  04d2 89            	pushw	x
2179  04d3 ae0000        	ldw	x,#L302
2180  04d6 cd0000        	call	_assert_failed
2182  04d9 5b04          	addw	sp,#4
2183  04db 7b01          	ld	a,(OFST+1,sp)
2184  04dd               L204:
2185                     ; 497     TIM2->PSCR = (uint8_t)Prescaler;
2187  04dd c7530c        	ld	21260,a
2188                     ; 500     TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2190  04e0 7b02          	ld	a,(OFST+2,sp)
2191  04e2 c75304        	ld	21252,a
2192                     ; 501 }
2195  04e5 85            	popw	x
2196  04e6 81            	ret	
2255                     ; 512 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2255                     ; 513 {
2256                     	switch	.text
2257  04e7               _TIM2_ForcedOC1Config:
2259  04e7 88            	push	a
2260       00000000      OFST:	set	0
2263                     ; 515     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2265  04e8 a150          	cp	a,#80
2266  04ea 2712          	jreq	L414
2267  04ec a140          	cp	a,#64
2268  04ee 270e          	jreq	L414
2269  04f0 ae0203        	ldw	x,#515
2270  04f3 89            	pushw	x
2271  04f4 5f            	clrw	x
2272  04f5 89            	pushw	x
2273  04f6 ae0000        	ldw	x,#L302
2274  04f9 cd0000        	call	_assert_failed
2276  04fc 5b04          	addw	sp,#4
2277  04fe               L414:
2278                     ; 518     TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2278                     ; 519                               | (uint8_t)TIM2_ForcedAction);
2280  04fe c65305        	ld	a,21253
2281  0501 a48f          	and	a,#143
2282  0503 1a01          	or	a,(OFST+1,sp)
2283  0505 c75305        	ld	21253,a
2284                     ; 520 }
2287  0508 84            	pop	a
2288  0509 81            	ret	
2325                     ; 531 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2325                     ; 532 {
2326                     	switch	.text
2327  050a               _TIM2_ForcedOC2Config:
2329  050a 88            	push	a
2330       00000000      OFST:	set	0
2333                     ; 534     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2335  050b a150          	cp	a,#80
2336  050d 2712          	jreq	L624
2337  050f a140          	cp	a,#64
2338  0511 270e          	jreq	L624
2339  0513 ae0216        	ldw	x,#534
2340  0516 89            	pushw	x
2341  0517 5f            	clrw	x
2342  0518 89            	pushw	x
2343  0519 ae0000        	ldw	x,#L302
2344  051c cd0000        	call	_assert_failed
2346  051f 5b04          	addw	sp,#4
2347  0521               L624:
2348                     ; 537     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2348                     ; 538                             | (uint8_t)TIM2_ForcedAction);
2350  0521 c65306        	ld	a,21254
2351  0524 a48f          	and	a,#143
2352  0526 1a01          	or	a,(OFST+1,sp)
2353  0528 c75306        	ld	21254,a
2354                     ; 539 }
2357  052b 84            	pop	a
2358  052c 81            	ret	
2395                     ; 550 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2395                     ; 551 {
2396                     	switch	.text
2397  052d               _TIM2_ForcedOC3Config:
2399  052d 88            	push	a
2400       00000000      OFST:	set	0
2403                     ; 553     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2405  052e a150          	cp	a,#80
2406  0530 2712          	jreq	L044
2407  0532 a140          	cp	a,#64
2408  0534 270e          	jreq	L044
2409  0536 ae0229        	ldw	x,#553
2410  0539 89            	pushw	x
2411  053a 5f            	clrw	x
2412  053b 89            	pushw	x
2413  053c ae0000        	ldw	x,#L302
2414  053f cd0000        	call	_assert_failed
2416  0542 5b04          	addw	sp,#4
2417  0544               L044:
2418                     ; 556     TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2418                     ; 557                               | (uint8_t)TIM2_ForcedAction);
2420  0544 c65307        	ld	a,21255
2421  0547 a48f          	and	a,#143
2422  0549 1a01          	or	a,(OFST+1,sp)
2423  054b c75307        	ld	21255,a
2424                     ; 558 }
2427  054e 84            	pop	a
2428  054f 81            	ret	
2465                     ; 567 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2465                     ; 568 {
2466                     	switch	.text
2467  0550               _TIM2_ARRPreloadConfig:
2469  0550 88            	push	a
2470       00000000      OFST:	set	0
2473                     ; 570     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2475  0551 4d            	tnz	a
2476  0552 2711          	jreq	L254
2477  0554 4a            	dec	a
2478  0555 270e          	jreq	L254
2479  0557 ae023a        	ldw	x,#570
2480  055a 89            	pushw	x
2481  055b 5f            	clrw	x
2482  055c 89            	pushw	x
2483  055d ae0000        	ldw	x,#L302
2484  0560 cd0000        	call	_assert_failed
2486  0563 5b04          	addw	sp,#4
2487  0565               L254:
2488                     ; 573     if (NewState != DISABLE)
2490  0565 7b01          	ld	a,(OFST+1,sp)
2491  0567 2706          	jreq	L1101
2492                     ; 575         TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2494  0569 721e5300      	bset	21248,#7
2496  056d 2004          	jra	L3101
2497  056f               L1101:
2498                     ; 579         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2500  056f 721f5300      	bres	21248,#7
2501  0573               L3101:
2502                     ; 581 }
2505  0573 84            	pop	a
2506  0574 81            	ret	
2543                     ; 590 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2543                     ; 591 {
2544                     	switch	.text
2545  0575               _TIM2_OC1PreloadConfig:
2547  0575 88            	push	a
2548       00000000      OFST:	set	0
2551                     ; 593     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2553  0576 4d            	tnz	a
2554  0577 2711          	jreq	L464
2555  0579 4a            	dec	a
2556  057a 270e          	jreq	L464
2557  057c ae0251        	ldw	x,#593
2558  057f 89            	pushw	x
2559  0580 5f            	clrw	x
2560  0581 89            	pushw	x
2561  0582 ae0000        	ldw	x,#L302
2562  0585 cd0000        	call	_assert_failed
2564  0588 5b04          	addw	sp,#4
2565  058a               L464:
2566                     ; 596     if (NewState != DISABLE)
2568  058a 7b01          	ld	a,(OFST+1,sp)
2569  058c 2706          	jreq	L3301
2570                     ; 598         TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2572  058e 72165305      	bset	21253,#3
2574  0592 2004          	jra	L5301
2575  0594               L3301:
2576                     ; 602         TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2578  0594 72175305      	bres	21253,#3
2579  0598               L5301:
2580                     ; 604 }
2583  0598 84            	pop	a
2584  0599 81            	ret	
2621                     ; 613 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2621                     ; 614 {
2622                     	switch	.text
2623  059a               _TIM2_OC2PreloadConfig:
2625  059a 88            	push	a
2626       00000000      OFST:	set	0
2629                     ; 616     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2631  059b 4d            	tnz	a
2632  059c 2711          	jreq	L674
2633  059e 4a            	dec	a
2634  059f 270e          	jreq	L674
2635  05a1 ae0268        	ldw	x,#616
2636  05a4 89            	pushw	x
2637  05a5 5f            	clrw	x
2638  05a6 89            	pushw	x
2639  05a7 ae0000        	ldw	x,#L302
2640  05aa cd0000        	call	_assert_failed
2642  05ad 5b04          	addw	sp,#4
2643  05af               L674:
2644                     ; 619     if (NewState != DISABLE)
2646  05af 7b01          	ld	a,(OFST+1,sp)
2647  05b1 2706          	jreq	L5501
2648                     ; 621         TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2650  05b3 72165306      	bset	21254,#3
2652  05b7 2004          	jra	L7501
2653  05b9               L5501:
2654                     ; 625         TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2656  05b9 72175306      	bres	21254,#3
2657  05bd               L7501:
2658                     ; 627 }
2661  05bd 84            	pop	a
2662  05be 81            	ret	
2699                     ; 636 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2699                     ; 637 {
2700                     	switch	.text
2701  05bf               _TIM2_OC3PreloadConfig:
2703  05bf 88            	push	a
2704       00000000      OFST:	set	0
2707                     ; 639     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2709  05c0 4d            	tnz	a
2710  05c1 2711          	jreq	L015
2711  05c3 4a            	dec	a
2712  05c4 270e          	jreq	L015
2713  05c6 ae027f        	ldw	x,#639
2714  05c9 89            	pushw	x
2715  05ca 5f            	clrw	x
2716  05cb 89            	pushw	x
2717  05cc ae0000        	ldw	x,#L302
2718  05cf cd0000        	call	_assert_failed
2720  05d2 5b04          	addw	sp,#4
2721  05d4               L015:
2722                     ; 642     if (NewState != DISABLE)
2724  05d4 7b01          	ld	a,(OFST+1,sp)
2725  05d6 2706          	jreq	L7701
2726                     ; 644         TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2728  05d8 72165307      	bset	21255,#3
2730  05dc 2004          	jra	L1011
2731  05de               L7701:
2732                     ; 648         TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2734  05de 72175307      	bres	21255,#3
2735  05e2               L1011:
2736                     ; 650 }
2739  05e2 84            	pop	a
2740  05e3 81            	ret	
2814                     ; 663 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2814                     ; 664 {
2815                     	switch	.text
2816  05e4               _TIM2_GenerateEvent:
2818  05e4 88            	push	a
2819       00000000      OFST:	set	0
2822                     ; 666     assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2824  05e5 4d            	tnz	a
2825  05e6 260e          	jrne	L025
2826  05e8 ae029a        	ldw	x,#666
2827  05eb 89            	pushw	x
2828  05ec 5f            	clrw	x
2829  05ed 89            	pushw	x
2830  05ee ae0000        	ldw	x,#L302
2831  05f1 cd0000        	call	_assert_failed
2833  05f4 5b04          	addw	sp,#4
2834  05f6               L025:
2835                     ; 669     TIM2->EGR = (uint8_t)TIM2_EventSource;
2837  05f6 7b01          	ld	a,(OFST+1,sp)
2838  05f8 c75304        	ld	21252,a
2839                     ; 670 }
2842  05fb 84            	pop	a
2843  05fc 81            	ret	
2880                     ; 681 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2880                     ; 682 {
2881                     	switch	.text
2882  05fd               _TIM2_OC1PolarityConfig:
2884  05fd 88            	push	a
2885       00000000      OFST:	set	0
2888                     ; 684     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2890  05fe 4d            	tnz	a
2891  05ff 2712          	jreq	L235
2892  0601 a122          	cp	a,#34
2893  0603 270e          	jreq	L235
2894  0605 ae02ac        	ldw	x,#684
2895  0608 89            	pushw	x
2896  0609 5f            	clrw	x
2897  060a 89            	pushw	x
2898  060b ae0000        	ldw	x,#L302
2899  060e cd0000        	call	_assert_failed
2901  0611 5b04          	addw	sp,#4
2902  0613               L235:
2903                     ; 687     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2905  0613 7b01          	ld	a,(OFST+1,sp)
2906  0615 2706          	jreq	L3511
2907                     ; 689         TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2909  0617 72125308      	bset	21256,#1
2911  061b 2004          	jra	L5511
2912  061d               L3511:
2913                     ; 693         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2915  061d 72135308      	bres	21256,#1
2916  0621               L5511:
2917                     ; 695 }
2920  0621 84            	pop	a
2921  0622 81            	ret	
2958                     ; 706 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2958                     ; 707 {
2959                     	switch	.text
2960  0623               _TIM2_OC2PolarityConfig:
2962  0623 88            	push	a
2963       00000000      OFST:	set	0
2966                     ; 709     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2968  0624 4d            	tnz	a
2969  0625 2712          	jreq	L445
2970  0627 a122          	cp	a,#34
2971  0629 270e          	jreq	L445
2972  062b ae02c5        	ldw	x,#709
2973  062e 89            	pushw	x
2974  062f 5f            	clrw	x
2975  0630 89            	pushw	x
2976  0631 ae0000        	ldw	x,#L302
2977  0634 cd0000        	call	_assert_failed
2979  0637 5b04          	addw	sp,#4
2980  0639               L445:
2981                     ; 712     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2983  0639 7b01          	ld	a,(OFST+1,sp)
2984  063b 2706          	jreq	L5711
2985                     ; 714         TIM2->CCER1 |= TIM2_CCER1_CC2P;
2987  063d 721a5308      	bset	21256,#5
2989  0641 2004          	jra	L7711
2990  0643               L5711:
2991                     ; 718         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2993  0643 721b5308      	bres	21256,#5
2994  0647               L7711:
2995                     ; 720 }
2998  0647 84            	pop	a
2999  0648 81            	ret	
3036                     ; 731 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3036                     ; 732 {
3037                     	switch	.text
3038  0649               _TIM2_OC3PolarityConfig:
3040  0649 88            	push	a
3041       00000000      OFST:	set	0
3044                     ; 734     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3046  064a 4d            	tnz	a
3047  064b 2712          	jreq	L655
3048  064d a122          	cp	a,#34
3049  064f 270e          	jreq	L655
3050  0651 ae02de        	ldw	x,#734
3051  0654 89            	pushw	x
3052  0655 5f            	clrw	x
3053  0656 89            	pushw	x
3054  0657 ae0000        	ldw	x,#L302
3055  065a cd0000        	call	_assert_failed
3057  065d 5b04          	addw	sp,#4
3058  065f               L655:
3059                     ; 737     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3061  065f 7b01          	ld	a,(OFST+1,sp)
3062  0661 2706          	jreq	L7121
3063                     ; 739         TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3065  0663 72125309      	bset	21257,#1
3067  0667 2004          	jra	L1221
3068  0669               L7121:
3069                     ; 743         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3071  0669 72135309      	bres	21257,#1
3072  066d               L1221:
3073                     ; 745 }
3076  066d 84            	pop	a
3077  066e 81            	ret	
3123                     ; 759 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3123                     ; 760 {
3124                     	switch	.text
3125  066f               _TIM2_CCxCmd:
3127  066f 89            	pushw	x
3128       00000000      OFST:	set	0
3131                     ; 762     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3133  0670 9e            	ld	a,xh
3134  0671 4d            	tnz	a
3135  0672 2717          	jreq	L075
3136  0674 9e            	ld	a,xh
3137  0675 4a            	dec	a
3138  0676 2713          	jreq	L075
3139  0678 9e            	ld	a,xh
3140  0679 a102          	cp	a,#2
3141  067b 270e          	jreq	L075
3142  067d ae02fa        	ldw	x,#762
3143  0680 89            	pushw	x
3144  0681 5f            	clrw	x
3145  0682 89            	pushw	x
3146  0683 ae0000        	ldw	x,#L302
3147  0686 cd0000        	call	_assert_failed
3149  0689 5b04          	addw	sp,#4
3150  068b               L075:
3151                     ; 763     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3153  068b 7b02          	ld	a,(OFST+2,sp)
3154  068d 2711          	jreq	L006
3155  068f 4a            	dec	a
3156  0690 270e          	jreq	L006
3157  0692 ae02fb        	ldw	x,#763
3158  0695 89            	pushw	x
3159  0696 5f            	clrw	x
3160  0697 89            	pushw	x
3161  0698 ae0000        	ldw	x,#L302
3162  069b cd0000        	call	_assert_failed
3164  069e 5b04          	addw	sp,#4
3165  06a0               L006:
3166                     ; 765     if (TIM2_Channel == TIM2_CHANNEL_1)
3168  06a0 7b01          	ld	a,(OFST+1,sp)
3169  06a2 2610          	jrne	L5421
3170                     ; 768         if (NewState != DISABLE)
3172  06a4 7b02          	ld	a,(OFST+2,sp)
3173  06a6 2706          	jreq	L7421
3174                     ; 770             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3176  06a8 72105308      	bset	21256,#0
3178  06ac 2027          	jra	L3521
3179  06ae               L7421:
3180                     ; 774             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3182  06ae 72115308      	bres	21256,#0
3183  06b2 2021          	jra	L3521
3184  06b4               L5421:
3185                     ; 778     else if (TIM2_Channel == TIM2_CHANNEL_2)
3187  06b4 4a            	dec	a
3188  06b5 2610          	jrne	L5521
3189                     ; 781         if (NewState != DISABLE)
3191  06b7 7b02          	ld	a,(OFST+2,sp)
3192  06b9 2706          	jreq	L7521
3193                     ; 783             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3195  06bb 72185308      	bset	21256,#4
3197  06bf 2014          	jra	L3521
3198  06c1               L7521:
3199                     ; 787             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3201  06c1 72195308      	bres	21256,#4
3202  06c5 200e          	jra	L3521
3203  06c7               L5521:
3204                     ; 793         if (NewState != DISABLE)
3206  06c7 7b02          	ld	a,(OFST+2,sp)
3207  06c9 2706          	jreq	L5621
3208                     ; 795             TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3210  06cb 72105309      	bset	21257,#0
3212  06cf 2004          	jra	L3521
3213  06d1               L5621:
3214                     ; 799             TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3216  06d1 72115309      	bres	21257,#0
3217  06d5               L3521:
3218                     ; 802 }
3221  06d5 85            	popw	x
3222  06d6 81            	ret	
3268                     ; 824 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3268                     ; 825 {
3269                     	switch	.text
3270  06d7               _TIM2_SelectOCxM:
3272  06d7 89            	pushw	x
3273       00000000      OFST:	set	0
3276                     ; 827     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3278  06d8 9e            	ld	a,xh
3279  06d9 4d            	tnz	a
3280  06da 2717          	jreq	L216
3281  06dc 9e            	ld	a,xh
3282  06dd 4a            	dec	a
3283  06de 2713          	jreq	L216
3284  06e0 9e            	ld	a,xh
3285  06e1 a102          	cp	a,#2
3286  06e3 270e          	jreq	L216
3287  06e5 ae033b        	ldw	x,#827
3288  06e8 89            	pushw	x
3289  06e9 5f            	clrw	x
3290  06ea 89            	pushw	x
3291  06eb ae0000        	ldw	x,#L302
3292  06ee cd0000        	call	_assert_failed
3294  06f1 5b04          	addw	sp,#4
3295  06f3               L216:
3296                     ; 828     assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3298  06f3 7b02          	ld	a,(OFST+2,sp)
3299  06f5 272a          	jreq	L226
3300  06f7 a110          	cp	a,#16
3301  06f9 2726          	jreq	L226
3302  06fb a120          	cp	a,#32
3303  06fd 2722          	jreq	L226
3304  06ff a130          	cp	a,#48
3305  0701 271e          	jreq	L226
3306  0703 a160          	cp	a,#96
3307  0705 271a          	jreq	L226
3308  0707 a170          	cp	a,#112
3309  0709 2716          	jreq	L226
3310  070b a150          	cp	a,#80
3311  070d 2712          	jreq	L226
3312  070f a140          	cp	a,#64
3313  0711 270e          	jreq	L226
3314  0713 ae033c        	ldw	x,#828
3315  0716 89            	pushw	x
3316  0717 5f            	clrw	x
3317  0718 89            	pushw	x
3318  0719 ae0000        	ldw	x,#L302
3319  071c cd0000        	call	_assert_failed
3321  071f 5b04          	addw	sp,#4
3322  0721               L226:
3323                     ; 830     if (TIM2_Channel == TIM2_CHANNEL_1)
3325  0721 7b01          	ld	a,(OFST+1,sp)
3326  0723 2610          	jrne	L3131
3327                     ; 833         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3329  0725 72115308      	bres	21256,#0
3330                     ; 836         TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3330                     ; 837                                | (uint8_t)TIM2_OCMode);
3332  0729 c65305        	ld	a,21253
3333  072c a48f          	and	a,#143
3334  072e 1a02          	or	a,(OFST+2,sp)
3335  0730 c75305        	ld	21253,a
3337  0733 2021          	jra	L5131
3338  0735               L3131:
3339                     ; 839     else if (TIM2_Channel == TIM2_CHANNEL_2)
3341  0735 4a            	dec	a
3342  0736 2610          	jrne	L7131
3343                     ; 842         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3345  0738 72195308      	bres	21256,#4
3346                     ; 845         TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3346                     ; 846                                 | (uint8_t)TIM2_OCMode);
3348  073c c65306        	ld	a,21254
3349  073f a48f          	and	a,#143
3350  0741 1a02          	or	a,(OFST+2,sp)
3351  0743 c75306        	ld	21254,a
3353  0746 200e          	jra	L5131
3354  0748               L7131:
3355                     ; 851         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3357  0748 72115309      	bres	21257,#0
3358                     ; 854         TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3358                     ; 855                                 | (uint8_t)TIM2_OCMode);
3360  074c c65307        	ld	a,21255
3361  074f a48f          	and	a,#143
3362  0751 1a02          	or	a,(OFST+2,sp)
3363  0753 c75307        	ld	21255,a
3364  0756               L5131:
3365                     ; 857 }
3368  0756 85            	popw	x
3369  0757 81            	ret	
3401                     ; 866 void TIM2_SetCounter(uint16_t Counter)
3401                     ; 867 {
3402                     	switch	.text
3403  0758               _TIM2_SetCounter:
3407                     ; 869     TIM2->CNTRH = (uint8_t)(Counter >> 8);
3409  0758 9e            	ld	a,xh
3410  0759 c7530a        	ld	21258,a
3411                     ; 870     TIM2->CNTRL = (uint8_t)(Counter);
3413  075c 9f            	ld	a,xl
3414  075d c7530b        	ld	21259,a
3415                     ; 872 }
3418  0760 81            	ret	
3450                     ; 881 void TIM2_SetAutoreload(uint16_t Autoreload)
3450                     ; 882 {
3451                     	switch	.text
3452  0761               _TIM2_SetAutoreload:
3456                     ; 885     TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3458  0761 9e            	ld	a,xh
3459  0762 c7530d        	ld	21261,a
3460                     ; 886     TIM2->ARRL = (uint8_t)(Autoreload);
3462  0765 9f            	ld	a,xl
3463  0766 c7530e        	ld	21262,a
3464                     ; 888 }
3467  0769 81            	ret	
3499                     ; 897 void TIM2_SetCompare1(uint16_t Compare1)
3499                     ; 898 {
3500                     	switch	.text
3501  076a               _TIM2_SetCompare1:
3505                     ; 900     TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3507  076a 9e            	ld	a,xh
3508  076b c7530f        	ld	21263,a
3509                     ; 901     TIM2->CCR1L = (uint8_t)(Compare1);
3511  076e 9f            	ld	a,xl
3512  076f c75310        	ld	21264,a
3513                     ; 903 }
3516  0772 81            	ret	
3548                     ; 912 void TIM2_SetCompare2(uint16_t Compare2)
3548                     ; 913 {
3549                     	switch	.text
3550  0773               _TIM2_SetCompare2:
3554                     ; 915     TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3556  0773 9e            	ld	a,xh
3557  0774 c75311        	ld	21265,a
3558                     ; 916     TIM2->CCR2L = (uint8_t)(Compare2);
3560  0777 9f            	ld	a,xl
3561  0778 c75312        	ld	21266,a
3562                     ; 918 }
3565  077b 81            	ret	
3597                     ; 927 void TIM2_SetCompare3(uint16_t Compare3)
3597                     ; 928 {
3598                     	switch	.text
3599  077c               _TIM2_SetCompare3:
3603                     ; 930     TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3605  077c 9e            	ld	a,xh
3606  077d c75313        	ld	21267,a
3607                     ; 931     TIM2->CCR3L = (uint8_t)(Compare3);
3609  0780 9f            	ld	a,xl
3610  0781 c75314        	ld	21268,a
3611                     ; 933 }
3614  0784 81            	ret	
3651                     ; 946 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3651                     ; 947 {
3652                     	switch	.text
3653  0785               _TIM2_SetIC1Prescaler:
3655  0785 88            	push	a
3656       00000000      OFST:	set	0
3659                     ; 949     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3661  0786 4d            	tnz	a
3662  0787 271a          	jreq	L646
3663  0789 a104          	cp	a,#4
3664  078b 2716          	jreq	L646
3665  078d a108          	cp	a,#8
3666  078f 2712          	jreq	L646
3667  0791 a10c          	cp	a,#12
3668  0793 270e          	jreq	L646
3669  0795 ae03b5        	ldw	x,#949
3670  0798 89            	pushw	x
3671  0799 5f            	clrw	x
3672  079a 89            	pushw	x
3673  079b ae0000        	ldw	x,#L302
3674  079e cd0000        	call	_assert_failed
3676  07a1 5b04          	addw	sp,#4
3677  07a3               L646:
3678                     ; 952     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3678                     ; 953                             | (uint8_t)TIM2_IC1Prescaler);
3680  07a3 c65305        	ld	a,21253
3681  07a6 a4f3          	and	a,#243
3682  07a8 1a01          	or	a,(OFST+1,sp)
3683  07aa c75305        	ld	21253,a
3684                     ; 954 }
3687  07ad 84            	pop	a
3688  07ae 81            	ret	
3725                     ; 966 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3725                     ; 967 {
3726                     	switch	.text
3727  07af               _TIM2_SetIC2Prescaler:
3729  07af 88            	push	a
3730       00000000      OFST:	set	0
3733                     ; 969     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3735  07b0 4d            	tnz	a
3736  07b1 271a          	jreq	L066
3737  07b3 a104          	cp	a,#4
3738  07b5 2716          	jreq	L066
3739  07b7 a108          	cp	a,#8
3740  07b9 2712          	jreq	L066
3741  07bb a10c          	cp	a,#12
3742  07bd 270e          	jreq	L066
3743  07bf ae03c9        	ldw	x,#969
3744  07c2 89            	pushw	x
3745  07c3 5f            	clrw	x
3746  07c4 89            	pushw	x
3747  07c5 ae0000        	ldw	x,#L302
3748  07c8 cd0000        	call	_assert_failed
3750  07cb 5b04          	addw	sp,#4
3751  07cd               L066:
3752                     ; 972     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3752                     ; 973                             | (uint8_t)TIM2_IC2Prescaler);
3754  07cd c65306        	ld	a,21254
3755  07d0 a4f3          	and	a,#243
3756  07d2 1a01          	or	a,(OFST+1,sp)
3757  07d4 c75306        	ld	21254,a
3758                     ; 974 }
3761  07d7 84            	pop	a
3762  07d8 81            	ret	
3799                     ; 986 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3799                     ; 987 {
3800                     	switch	.text
3801  07d9               _TIM2_SetIC3Prescaler:
3803  07d9 88            	push	a
3804       00000000      OFST:	set	0
3807                     ; 990     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3809  07da 4d            	tnz	a
3810  07db 271a          	jreq	L276
3811  07dd a104          	cp	a,#4
3812  07df 2716          	jreq	L276
3813  07e1 a108          	cp	a,#8
3814  07e3 2712          	jreq	L276
3815  07e5 a10c          	cp	a,#12
3816  07e7 270e          	jreq	L276
3817  07e9 ae03de        	ldw	x,#990
3818  07ec 89            	pushw	x
3819  07ed 5f            	clrw	x
3820  07ee 89            	pushw	x
3821  07ef ae0000        	ldw	x,#L302
3822  07f2 cd0000        	call	_assert_failed
3824  07f5 5b04          	addw	sp,#4
3825  07f7               L276:
3826                     ; 992     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3826                     ; 993                             | (uint8_t)TIM2_IC3Prescaler);
3828  07f7 c65307        	ld	a,21255
3829  07fa a4f3          	and	a,#243
3830  07fc 1a01          	or	a,(OFST+1,sp)
3831  07fe c75307        	ld	21255,a
3832                     ; 994 }
3835  0801 84            	pop	a
3836  0802 81            	ret	
3882                     ; 1001 uint16_t TIM2_GetCapture1(void)
3882                     ; 1002 {
3883                     	switch	.text
3884  0803               _TIM2_GetCapture1:
3886  0803 5204          	subw	sp,#4
3887       00000004      OFST:	set	4
3890                     ; 1004     uint16_t tmpccr1 = 0;
3892                     ; 1005     uint8_t tmpccr1l=0, tmpccr1h=0;
3896                     ; 1007     tmpccr1h = TIM2->CCR1H;
3898  0805 c6530f        	ld	a,21263
3899  0808 6b02          	ld	(OFST-2,sp),a
3900                     ; 1008     tmpccr1l = TIM2->CCR1L;
3902  080a c65310        	ld	a,21264
3903  080d 6b01          	ld	(OFST-3,sp),a
3904                     ; 1010     tmpccr1 = (uint16_t)(tmpccr1l);
3906  080f 5f            	clrw	x
3907  0810 97            	ld	xl,a
3908  0811 1f03          	ldw	(OFST-1,sp),x
3909                     ; 1011     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3911  0813 5f            	clrw	x
3912  0814 7b02          	ld	a,(OFST-2,sp)
3913  0816 97            	ld	xl,a
3914  0817 7b04          	ld	a,(OFST+0,sp)
3915  0819 01            	rrwa	x,a
3916  081a 1a03          	or	a,(OFST-1,sp)
3917  081c 01            	rrwa	x,a
3918                     ; 1013     return (uint16_t)tmpccr1;
3922  081d 5b04          	addw	sp,#4
3923  081f 81            	ret	
3969                     ; 1021 uint16_t TIM2_GetCapture2(void)
3969                     ; 1022 {
3970                     	switch	.text
3971  0820               _TIM2_GetCapture2:
3973  0820 5204          	subw	sp,#4
3974       00000004      OFST:	set	4
3977                     ; 1024     uint16_t tmpccr2 = 0;
3979                     ; 1025     uint8_t tmpccr2l=0, tmpccr2h=0;
3983                     ; 1027     tmpccr2h = TIM2->CCR2H;
3985  0822 c65311        	ld	a,21265
3986  0825 6b02          	ld	(OFST-2,sp),a
3987                     ; 1028     tmpccr2l = TIM2->CCR2L;
3989  0827 c65312        	ld	a,21266
3990  082a 6b01          	ld	(OFST-3,sp),a
3991                     ; 1030     tmpccr2 = (uint16_t)(tmpccr2l);
3993  082c 5f            	clrw	x
3994  082d 97            	ld	xl,a
3995  082e 1f03          	ldw	(OFST-1,sp),x
3996                     ; 1031     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3998  0830 5f            	clrw	x
3999  0831 7b02          	ld	a,(OFST-2,sp)
4000  0833 97            	ld	xl,a
4001  0834 7b04          	ld	a,(OFST+0,sp)
4002  0836 01            	rrwa	x,a
4003  0837 1a03          	or	a,(OFST-1,sp)
4004  0839 01            	rrwa	x,a
4005                     ; 1033     return (uint16_t)tmpccr2;
4009  083a 5b04          	addw	sp,#4
4010  083c 81            	ret	
4056                     ; 1041 uint16_t TIM2_GetCapture3(void)
4056                     ; 1042 {
4057                     	switch	.text
4058  083d               _TIM2_GetCapture3:
4060  083d 5204          	subw	sp,#4
4061       00000004      OFST:	set	4
4064                     ; 1044     uint16_t tmpccr3 = 0;
4066                     ; 1045     uint8_t tmpccr3l=0, tmpccr3h=0;
4070                     ; 1047     tmpccr3h = TIM2->CCR3H;
4072  083f c65313        	ld	a,21267
4073  0842 6b02          	ld	(OFST-2,sp),a
4074                     ; 1048     tmpccr3l = TIM2->CCR3L;
4076  0844 c65314        	ld	a,21268
4077  0847 6b01          	ld	(OFST-3,sp),a
4078                     ; 1050     tmpccr3 = (uint16_t)(tmpccr3l);
4080  0849 5f            	clrw	x
4081  084a 97            	ld	xl,a
4082  084b 1f03          	ldw	(OFST-1,sp),x
4083                     ; 1051     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4085  084d 5f            	clrw	x
4086  084e 7b02          	ld	a,(OFST-2,sp)
4087  0850 97            	ld	xl,a
4088  0851 7b04          	ld	a,(OFST+0,sp)
4089  0853 01            	rrwa	x,a
4090  0854 1a03          	or	a,(OFST-1,sp)
4091  0856 01            	rrwa	x,a
4092                     ; 1053     return (uint16_t)tmpccr3;
4096  0857 5b04          	addw	sp,#4
4097  0859 81            	ret	
4129                     ; 1061 uint16_t TIM2_GetCounter(void)
4129                     ; 1062 {
4130                     	switch	.text
4131  085a               _TIM2_GetCounter:
4133  085a 89            	pushw	x
4134       00000002      OFST:	set	2
4137                     ; 1063      uint16_t tmpcntr = 0;
4139                     ; 1065     tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4141  085b c6530a        	ld	a,21258
4142  085e 97            	ld	xl,a
4143  085f 4f            	clr	a
4144  0860 02            	rlwa	x,a
4145  0861 1f01          	ldw	(OFST-1,sp),x
4146                     ; 1067     return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4148  0863 c6530b        	ld	a,21259
4149  0866 5f            	clrw	x
4150  0867 97            	ld	xl,a
4151  0868 01            	rrwa	x,a
4152  0869 1a02          	or	a,(OFST+0,sp)
4153  086b 01            	rrwa	x,a
4154  086c 1a01          	or	a,(OFST-1,sp)
4155  086e 01            	rrwa	x,a
4158  086f 5b02          	addw	sp,#2
4159  0871 81            	ret	
4183                     ; 1076 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4183                     ; 1077 {
4184                     	switch	.text
4185  0872               _TIM2_GetPrescaler:
4189                     ; 1079     return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4191  0872 c6530c        	ld	a,21260
4194  0875 81            	ret	
4330                     ; 1096 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4330                     ; 1097 {
4331                     	switch	.text
4332  0876               _TIM2_GetFlagStatus:
4334  0876 89            	pushw	x
4335  0877 89            	pushw	x
4336       00000002      OFST:	set	2
4339                     ; 1098     FlagStatus bitstatus = RESET;
4341                     ; 1099     uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4345                     ; 1102     assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4347  0878 a30001        	cpw	x,#1
4348  087b 272c          	jreq	L617
4349  087d a30002        	cpw	x,#2
4350  0880 2727          	jreq	L617
4351  0882 a30004        	cpw	x,#4
4352  0885 2722          	jreq	L617
4353  0887 a30008        	cpw	x,#8
4354  088a 271d          	jreq	L617
4355  088c a30200        	cpw	x,#512
4356  088f 2718          	jreq	L617
4357  0891 a30400        	cpw	x,#1024
4358  0894 2713          	jreq	L617
4359  0896 a30800        	cpw	x,#2048
4360  0899 270e          	jreq	L617
4361  089b ae044e        	ldw	x,#1102
4362  089e 89            	pushw	x
4363  089f 5f            	clrw	x
4364  08a0 89            	pushw	x
4365  08a1 ae0000        	ldw	x,#L302
4366  08a4 cd0000        	call	_assert_failed
4368  08a7 5b04          	addw	sp,#4
4369  08a9               L617:
4370                     ; 1104     tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4372  08a9 c65302        	ld	a,21250
4373  08ac 1404          	and	a,(OFST+2,sp)
4374  08ae 6b01          	ld	(OFST-1,sp),a
4375                     ; 1105     tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4377  08b0 7b03          	ld	a,(OFST+1,sp)
4378  08b2 6b02          	ld	(OFST+0,sp),a
4379                     ; 1107     if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4381  08b4 c45303        	and	a,21251
4382  08b7 1a01          	or	a,(OFST-1,sp)
4383  08b9 2702          	jreq	L5561
4384                     ; 1109         bitstatus = SET;
4386  08bb a601          	ld	a,#1
4388  08bd               L5561:
4389                     ; 1113         bitstatus = RESET;
4391                     ; 1115     return (FlagStatus)bitstatus;
4395  08bd 5b04          	addw	sp,#4
4396  08bf 81            	ret	
4432                     ; 1132 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4432                     ; 1133 {
4433                     	switch	.text
4434  08c0               _TIM2_ClearFlag:
4436  08c0 89            	pushw	x
4437       00000000      OFST:	set	0
4440                     ; 1135     assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4442  08c1 01            	rrwa	x,a
4443  08c2 a4f0          	and	a,#240
4444  08c4 01            	rrwa	x,a
4445  08c5 a4f1          	and	a,#241
4446  08c7 01            	rrwa	x,a
4447  08c8 5d            	tnzw	x
4448  08c9 2604          	jrne	L427
4449  08cb 1e01          	ldw	x,(OFST+1,sp)
4450  08cd 260e          	jrne	L627
4451  08cf               L427:
4452  08cf ae046f        	ldw	x,#1135
4453  08d2 89            	pushw	x
4454  08d3 5f            	clrw	x
4455  08d4 89            	pushw	x
4456  08d5 ae0000        	ldw	x,#L302
4457  08d8 cd0000        	call	_assert_failed
4459  08db 5b04          	addw	sp,#4
4460  08dd               L627:
4461                     ; 1138     TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4463  08dd 7b02          	ld	a,(OFST+2,sp)
4464  08df 43            	cpl	a
4465  08e0 c75302        	ld	21250,a
4466                     ; 1139     TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4468  08e3 35ff5303      	mov	21251,#255
4469                     ; 1140 }
4472  08e7 85            	popw	x
4473  08e8 81            	ret	
4534                     ; 1154 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4534                     ; 1155 {
4535                     	switch	.text
4536  08e9               _TIM2_GetITStatus:
4538  08e9 88            	push	a
4539  08ea 89            	pushw	x
4540       00000002      OFST:	set	2
4543                     ; 1156     ITStatus bitstatus = RESET;
4545                     ; 1157     uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4549                     ; 1160     assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4551  08eb a101          	cp	a,#1
4552  08ed 271a          	jreq	L047
4553  08ef a102          	cp	a,#2
4554  08f1 2716          	jreq	L047
4555  08f3 a104          	cp	a,#4
4556  08f5 2712          	jreq	L047
4557  08f7 a108          	cp	a,#8
4558  08f9 270e          	jreq	L047
4559  08fb ae0488        	ldw	x,#1160
4560  08fe 89            	pushw	x
4561  08ff 5f            	clrw	x
4562  0900 89            	pushw	x
4563  0901 ae0000        	ldw	x,#L302
4564  0904 cd0000        	call	_assert_failed
4566  0907 5b04          	addw	sp,#4
4567  0909               L047:
4568                     ; 1162     TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4570  0909 c65302        	ld	a,21250
4571  090c 1403          	and	a,(OFST+1,sp)
4572  090e 6b01          	ld	(OFST-1,sp),a
4573                     ; 1164     TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4575  0910 c65301        	ld	a,21249
4576  0913 1403          	and	a,(OFST+1,sp)
4577  0915 6b02          	ld	(OFST+0,sp),a
4578                     ; 1166     if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4580  0917 7b01          	ld	a,(OFST-1,sp)
4581  0919 2708          	jreq	L5271
4583  091b 7b02          	ld	a,(OFST+0,sp)
4584  091d 2704          	jreq	L5271
4585                     ; 1168         bitstatus = SET;
4587  091f a601          	ld	a,#1
4589  0921 2001          	jra	L7271
4590  0923               L5271:
4591                     ; 1172         bitstatus = RESET;
4593  0923 4f            	clr	a
4594  0924               L7271:
4595                     ; 1174     return (ITStatus)(bitstatus);
4599  0924 5b03          	addw	sp,#3
4600  0926 81            	ret	
4637                     ; 1188 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4637                     ; 1189 {
4638                     	switch	.text
4639  0927               _TIM2_ClearITPendingBit:
4641  0927 88            	push	a
4642       00000000      OFST:	set	0
4645                     ; 1191     assert_param(IS_TIM2_IT_OK(TIM2_IT));
4647  0928 4d            	tnz	a
4648  0929 2704          	jreq	L647
4649  092b a110          	cp	a,#16
4650  092d 250e          	jrult	L057
4651  092f               L647:
4652  092f ae04a7        	ldw	x,#1191
4653  0932 89            	pushw	x
4654  0933 5f            	clrw	x
4655  0934 89            	pushw	x
4656  0935 ae0000        	ldw	x,#L302
4657  0938 cd0000        	call	_assert_failed
4659  093b 5b04          	addw	sp,#4
4660  093d               L057:
4661                     ; 1194     TIM2->SR1 = (uint8_t)(~TIM2_IT);
4663  093d 7b01          	ld	a,(OFST+1,sp)
4664  093f 43            	cpl	a
4665  0940 c75302        	ld	21250,a
4666                     ; 1195 }
4669  0943 84            	pop	a
4670  0944 81            	ret	
4716                     ; 1214 static void TI1_Config(uint8_t TIM2_ICPolarity,
4716                     ; 1215                        uint8_t TIM2_ICSelection,
4716                     ; 1216                        uint8_t TIM2_ICFilter)
4716                     ; 1217 {
4717                     	switch	.text
4718  0945               L3_TI1_Config:
4720  0945 89            	pushw	x
4721  0946 88            	push	a
4722       00000001      OFST:	set	1
4725                     ; 1219     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4727  0947 72115308      	bres	21256,#0
4728                     ; 1222     TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4728                     ; 1223                              | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4730  094b 7b06          	ld	a,(OFST+5,sp)
4731  094d 97            	ld	xl,a
4732  094e a610          	ld	a,#16
4733  0950 42            	mul	x,a
4734  0951 9f            	ld	a,xl
4735  0952 1a03          	or	a,(OFST+2,sp)
4736  0954 6b01          	ld	(OFST+0,sp),a
4737  0956 c65305        	ld	a,21253
4738  0959 a40c          	and	a,#12
4739  095b 1a01          	or	a,(OFST+0,sp)
4740  095d c75305        	ld	21253,a
4741                     ; 1226     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4743  0960 7b02          	ld	a,(OFST+1,sp)
4744  0962 2706          	jreq	L7671
4745                     ; 1228         TIM2->CCER1 |= TIM2_CCER1_CC1P;
4747  0964 72125308      	bset	21256,#1
4749  0968 2004          	jra	L1771
4750  096a               L7671:
4751                     ; 1232         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4753  096a 72135308      	bres	21256,#1
4754  096e               L1771:
4755                     ; 1235     TIM2->CCER1 |= TIM2_CCER1_CC1E;
4757  096e 72105308      	bset	21256,#0
4758                     ; 1236 }
4761  0972 5b03          	addw	sp,#3
4762  0974 81            	ret	
4808                     ; 1255 static void TI2_Config(uint8_t TIM2_ICPolarity,
4808                     ; 1256                        uint8_t TIM2_ICSelection,
4808                     ; 1257                        uint8_t TIM2_ICFilter)
4808                     ; 1258 {
4809                     	switch	.text
4810  0975               L5_TI2_Config:
4812  0975 89            	pushw	x
4813  0976 88            	push	a
4814       00000001      OFST:	set	1
4817                     ; 1260     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4819  0977 72195308      	bres	21256,#4
4820                     ; 1263     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4820                     ; 1264                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4822  097b 7b06          	ld	a,(OFST+5,sp)
4823  097d 97            	ld	xl,a
4824  097e a610          	ld	a,#16
4825  0980 42            	mul	x,a
4826  0981 9f            	ld	a,xl
4827  0982 1a03          	or	a,(OFST+2,sp)
4828  0984 6b01          	ld	(OFST+0,sp),a
4829  0986 c65306        	ld	a,21254
4830  0989 a40c          	and	a,#12
4831  098b 1a01          	or	a,(OFST+0,sp)
4832  098d c75306        	ld	21254,a
4833                     ; 1268     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4835  0990 7b02          	ld	a,(OFST+1,sp)
4836  0992 2706          	jreq	L3102
4837                     ; 1270         TIM2->CCER1 |= TIM2_CCER1_CC2P;
4839  0994 721a5308      	bset	21256,#5
4841  0998 2004          	jra	L5102
4842  099a               L3102:
4843                     ; 1274         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4845  099a 721b5308      	bres	21256,#5
4846  099e               L5102:
4847                     ; 1278     TIM2->CCER1 |= TIM2_CCER1_CC2E;
4849  099e 72185308      	bset	21256,#4
4850                     ; 1280 }
4853  09a2 5b03          	addw	sp,#3
4854  09a4 81            	ret	
4900                     ; 1296 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4900                     ; 1297                        uint8_t TIM2_ICFilter)
4900                     ; 1298 {
4901                     	switch	.text
4902  09a5               L7_TI3_Config:
4904  09a5 89            	pushw	x
4905  09a6 88            	push	a
4906       00000001      OFST:	set	1
4909                     ; 1300     TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4911  09a7 72115309      	bres	21257,#0
4912                     ; 1303     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4912                     ; 1304                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4914  09ab 7b06          	ld	a,(OFST+5,sp)
4915  09ad 97            	ld	xl,a
4916  09ae a610          	ld	a,#16
4917  09b0 42            	mul	x,a
4918  09b1 9f            	ld	a,xl
4919  09b2 1a03          	or	a,(OFST+2,sp)
4920  09b4 6b01          	ld	(OFST+0,sp),a
4921  09b6 c65307        	ld	a,21255
4922  09b9 a40c          	and	a,#12
4923  09bb 1a01          	or	a,(OFST+0,sp)
4924  09bd c75307        	ld	21255,a
4925                     ; 1308     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4927  09c0 7b02          	ld	a,(OFST+1,sp)
4928  09c2 2706          	jreq	L7302
4929                     ; 1310         TIM2->CCER2 |= TIM2_CCER2_CC3P;
4931  09c4 72125309      	bset	21257,#1
4933  09c8 2004          	jra	L1402
4934  09ca               L7302:
4935                     ; 1314         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4937  09ca 72135309      	bres	21257,#1
4938  09ce               L1402:
4939                     ; 1317     TIM2->CCER2 |= TIM2_CCER2_CC3E;
4941  09ce 72105309      	bset	21257,#0
4942                     ; 1318 }
4945  09d2 5b03          	addw	sp,#3
4946  09d4 81            	ret	
4959                     	xdef	_TIM2_ClearITPendingBit
4960                     	xdef	_TIM2_GetITStatus
4961                     	xdef	_TIM2_ClearFlag
4962                     	xdef	_TIM2_GetFlagStatus
4963                     	xdef	_TIM2_GetPrescaler
4964                     	xdef	_TIM2_GetCounter
4965                     	xdef	_TIM2_GetCapture3
4966                     	xdef	_TIM2_GetCapture2
4967                     	xdef	_TIM2_GetCapture1
4968                     	xdef	_TIM2_SetIC3Prescaler
4969                     	xdef	_TIM2_SetIC2Prescaler
4970                     	xdef	_TIM2_SetIC1Prescaler
4971                     	xdef	_TIM2_SetCompare3
4972                     	xdef	_TIM2_SetCompare2
4973                     	xdef	_TIM2_SetCompare1
4974                     	xdef	_TIM2_SetAutoreload
4975                     	xdef	_TIM2_SetCounter
4976                     	xdef	_TIM2_SelectOCxM
4977                     	xdef	_TIM2_CCxCmd
4978                     	xdef	_TIM2_OC3PolarityConfig
4979                     	xdef	_TIM2_OC2PolarityConfig
4980                     	xdef	_TIM2_OC1PolarityConfig
4981                     	xdef	_TIM2_GenerateEvent
4982                     	xdef	_TIM2_OC3PreloadConfig
4983                     	xdef	_TIM2_OC2PreloadConfig
4984                     	xdef	_TIM2_OC1PreloadConfig
4985                     	xdef	_TIM2_ARRPreloadConfig
4986                     	xdef	_TIM2_ForcedOC3Config
4987                     	xdef	_TIM2_ForcedOC2Config
4988                     	xdef	_TIM2_ForcedOC1Config
4989                     	xdef	_TIM2_PrescalerConfig
4990                     	xdef	_TIM2_SelectOnePulseMode
4991                     	xdef	_TIM2_UpdateRequestConfig
4992                     	xdef	_TIM2_UpdateDisableConfig
4993                     	xdef	_TIM2_ITConfig
4994                     	xdef	_TIM2_Cmd
4995                     	xdef	_TIM2_PWMIConfig
4996                     	xdef	_TIM2_ICInit
4997                     	xdef	_TIM2_OC3Init
4998                     	xdef	_TIM2_OC2Init
4999                     	xdef	_TIM2_OC1Init
5000                     	xdef	_TIM2_TimeBaseInit
5001                     	xdef	_TIM2_DeInit
5002                     	xref	_assert_failed
5003                     .const:	section	.text
5004  0000               L302:
5005  0000 6c6962726172  	dc.b	"libraries\src\stm8"
5006  0012 735f74696d32  	dc.b	"s_tim2.c",0
5026                     	end
