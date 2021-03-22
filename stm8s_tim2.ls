   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
   4                     ; Optimizer V4.4.7 - 05 Oct 2017
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
 292       ffffffff      OFST: set -1
 295                     ; 89     TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 297  0059 c7530c        	ld	21260,a
 298                     ; 91     TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 300  005c 7b03          	ld	a,(OFST+4,sp)
 301  005e c7530d        	ld	21261,a
 302                     ; 92     TIM2->ARRL = (uint8_t)(TIM2_Period);
 304  0061 7b04          	ld	a,(OFST+5,sp)
 305  0063 c7530e        	ld	21262,a
 306                     ; 93 }
 309  0066 81            	ret	
 465                     ; 104 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 465                     ; 105                   TIM2_OutputState_TypeDef TIM2_OutputState,
 465                     ; 106                   uint16_t TIM2_Pulse,
 465                     ; 107                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 465                     ; 108 {
 466                     	switch	.text
 467  0067               _TIM2_OC1Init:
 469  0067 89            	pushw	x
 470  0068 88            	push	a
 471       00000001      OFST:	set	1
 474                     ; 110     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 476  0069 9e            	ld	a,xh
 477  006a 4d            	tnz	a
 478  006b 2727          	jreq	L61
 479  006d 9e            	ld	a,xh
 480  006e a110          	cp	a,#16
 481  0070 2722          	jreq	L61
 482  0072 9e            	ld	a,xh
 483  0073 a120          	cp	a,#32
 484  0075 271d          	jreq	L61
 485  0077 9e            	ld	a,xh
 486  0078 a130          	cp	a,#48
 487  007a 2718          	jreq	L61
 488  007c 9e            	ld	a,xh
 489  007d a160          	cp	a,#96
 490  007f 2713          	jreq	L61
 491  0081 9e            	ld	a,xh
 492  0082 a170          	cp	a,#112
 493  0084 270e          	jreq	L61
 494  0086 ae006e        	ldw	x,#110
 495  0089 89            	pushw	x
 496  008a 5f            	clrw	x
 497  008b 89            	pushw	x
 498  008c ae0000        	ldw	x,#L302
 499  008f cd0000        	call	_assert_failed
 501  0092 5b04          	addw	sp,#4
 502  0094               L61:
 503                     ; 111     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 505  0094 7b03          	ld	a,(OFST+2,sp)
 506  0096 2712          	jreq	L62
 507  0098 a111          	cp	a,#17
 508  009a 270e          	jreq	L62
 509  009c ae006f        	ldw	x,#111
 510  009f 89            	pushw	x
 511  00a0 5f            	clrw	x
 512  00a1 89            	pushw	x
 513  00a2 ae0000        	ldw	x,#L302
 514  00a5 cd0000        	call	_assert_failed
 516  00a8 5b04          	addw	sp,#4
 517  00aa               L62:
 518                     ; 112     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 520  00aa 7b08          	ld	a,(OFST+7,sp)
 521  00ac 2712          	jreq	L63
 522  00ae a122          	cp	a,#34
 523  00b0 270e          	jreq	L63
 524  00b2 ae0070        	ldw	x,#112
 525  00b5 89            	pushw	x
 526  00b6 5f            	clrw	x
 527  00b7 89            	pushw	x
 528  00b8 ae0000        	ldw	x,#L302
 529  00bb cd0000        	call	_assert_failed
 531  00be 5b04          	addw	sp,#4
 532  00c0               L63:
 533                     ; 115     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 535  00c0 c65308        	ld	a,21256
 536  00c3 a4fc          	and	a,#252
 537  00c5 c75308        	ld	21256,a
 538                     ; 117     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 538                     ; 118                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 540  00c8 7b08          	ld	a,(OFST+7,sp)
 541  00ca a402          	and	a,#2
 542  00cc 6b01          	ld	(OFST+0,sp),a
 544  00ce 7b03          	ld	a,(OFST+2,sp)
 545  00d0 a401          	and	a,#1
 546  00d2 1a01          	or	a,(OFST+0,sp)
 547  00d4 ca5308        	or	a,21256
 548  00d7 c75308        	ld	21256,a
 549                     ; 121     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 549                     ; 122                             (uint8_t)TIM2_OCMode);
 551  00da c65305        	ld	a,21253
 552  00dd a48f          	and	a,#143
 553  00df 1a02          	or	a,(OFST+1,sp)
 554  00e1 c75305        	ld	21253,a
 555                     ; 125     TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 557  00e4 7b06          	ld	a,(OFST+5,sp)
 558  00e6 c7530f        	ld	21263,a
 559                     ; 126     TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 561  00e9 7b07          	ld	a,(OFST+6,sp)
 562  00eb c75310        	ld	21264,a
 563                     ; 127 }
 566  00ee 5b03          	addw	sp,#3
 567  00f0 81            	ret	
 630                     ; 138 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 630                     ; 139                   TIM2_OutputState_TypeDef TIM2_OutputState,
 630                     ; 140                   uint16_t TIM2_Pulse,
 630                     ; 141                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 630                     ; 142 {
 631                     	switch	.text
 632  00f1               _TIM2_OC2Init:
 634  00f1 89            	pushw	x
 635  00f2 88            	push	a
 636       00000001      OFST:	set	1
 639                     ; 144     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 641  00f3 9e            	ld	a,xh
 642  00f4 4d            	tnz	a
 643  00f5 2727          	jreq	L05
 644  00f7 9e            	ld	a,xh
 645  00f8 a110          	cp	a,#16
 646  00fa 2722          	jreq	L05
 647  00fc 9e            	ld	a,xh
 648  00fd a120          	cp	a,#32
 649  00ff 271d          	jreq	L05
 650  0101 9e            	ld	a,xh
 651  0102 a130          	cp	a,#48
 652  0104 2718          	jreq	L05
 653  0106 9e            	ld	a,xh
 654  0107 a160          	cp	a,#96
 655  0109 2713          	jreq	L05
 656  010b 9e            	ld	a,xh
 657  010c a170          	cp	a,#112
 658  010e 270e          	jreq	L05
 659  0110 ae0090        	ldw	x,#144
 660  0113 89            	pushw	x
 661  0114 5f            	clrw	x
 662  0115 89            	pushw	x
 663  0116 ae0000        	ldw	x,#L302
 664  0119 cd0000        	call	_assert_failed
 666  011c 5b04          	addw	sp,#4
 667  011e               L05:
 668                     ; 145     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 670  011e 7b03          	ld	a,(OFST+2,sp)
 671  0120 2712          	jreq	L06
 672  0122 a111          	cp	a,#17
 673  0124 270e          	jreq	L06
 674  0126 ae0091        	ldw	x,#145
 675  0129 89            	pushw	x
 676  012a 5f            	clrw	x
 677  012b 89            	pushw	x
 678  012c ae0000        	ldw	x,#L302
 679  012f cd0000        	call	_assert_failed
 681  0132 5b04          	addw	sp,#4
 682  0134               L06:
 683                     ; 146     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 685  0134 7b08          	ld	a,(OFST+7,sp)
 686  0136 2712          	jreq	L07
 687  0138 a122          	cp	a,#34
 688  013a 270e          	jreq	L07
 689  013c ae0092        	ldw	x,#146
 690  013f 89            	pushw	x
 691  0140 5f            	clrw	x
 692  0141 89            	pushw	x
 693  0142 ae0000        	ldw	x,#L302
 694  0145 cd0000        	call	_assert_failed
 696  0148 5b04          	addw	sp,#4
 697  014a               L07:
 698                     ; 150     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 700  014a c65308        	ld	a,21256
 701  014d a4cf          	and	a,#207
 702  014f c75308        	ld	21256,a
 703                     ; 152     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 703                     ; 153                         (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 705  0152 7b08          	ld	a,(OFST+7,sp)
 706  0154 a420          	and	a,#32
 707  0156 6b01          	ld	(OFST+0,sp),a
 709  0158 7b03          	ld	a,(OFST+2,sp)
 710  015a a410          	and	a,#16
 711  015c 1a01          	or	a,(OFST+0,sp)
 712  015e ca5308        	or	a,21256
 713  0161 c75308        	ld	21256,a
 714                     ; 157     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 714                     ; 158                             (uint8_t)TIM2_OCMode);
 716  0164 c65306        	ld	a,21254
 717  0167 a48f          	and	a,#143
 718  0169 1a02          	or	a,(OFST+1,sp)
 719  016b c75306        	ld	21254,a
 720                     ; 162     TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 722  016e 7b06          	ld	a,(OFST+5,sp)
 723  0170 c75311        	ld	21265,a
 724                     ; 163     TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 726  0173 7b07          	ld	a,(OFST+6,sp)
 727  0175 c75312        	ld	21266,a
 728                     ; 164 }
 731  0178 5b03          	addw	sp,#3
 732  017a 81            	ret	
 795                     ; 175 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 795                     ; 176                   TIM2_OutputState_TypeDef TIM2_OutputState,
 795                     ; 177                   uint16_t TIM2_Pulse,
 795                     ; 178                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 795                     ; 179 {
 796                     	switch	.text
 797  017b               _TIM2_OC3Init:
 799  017b 89            	pushw	x
 800  017c 88            	push	a
 801       00000001      OFST:	set	1
 804                     ; 181     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 806  017d 9e            	ld	a,xh
 807  017e 4d            	tnz	a
 808  017f 2727          	jreq	L201
 809  0181 9e            	ld	a,xh
 810  0182 a110          	cp	a,#16
 811  0184 2722          	jreq	L201
 812  0186 9e            	ld	a,xh
 813  0187 a120          	cp	a,#32
 814  0189 271d          	jreq	L201
 815  018b 9e            	ld	a,xh
 816  018c a130          	cp	a,#48
 817  018e 2718          	jreq	L201
 818  0190 9e            	ld	a,xh
 819  0191 a160          	cp	a,#96
 820  0193 2713          	jreq	L201
 821  0195 9e            	ld	a,xh
 822  0196 a170          	cp	a,#112
 823  0198 270e          	jreq	L201
 824  019a ae00b5        	ldw	x,#181
 825  019d 89            	pushw	x
 826  019e 5f            	clrw	x
 827  019f 89            	pushw	x
 828  01a0 ae0000        	ldw	x,#L302
 829  01a3 cd0000        	call	_assert_failed
 831  01a6 5b04          	addw	sp,#4
 832  01a8               L201:
 833                     ; 182     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 835  01a8 7b03          	ld	a,(OFST+2,sp)
 836  01aa 2712          	jreq	L211
 837  01ac a111          	cp	a,#17
 838  01ae 270e          	jreq	L211
 839  01b0 ae00b6        	ldw	x,#182
 840  01b3 89            	pushw	x
 841  01b4 5f            	clrw	x
 842  01b5 89            	pushw	x
 843  01b6 ae0000        	ldw	x,#L302
 844  01b9 cd0000        	call	_assert_failed
 846  01bc 5b04          	addw	sp,#4
 847  01be               L211:
 848                     ; 183     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 850  01be 7b08          	ld	a,(OFST+7,sp)
 851  01c0 2712          	jreq	L221
 852  01c2 a122          	cp	a,#34
 853  01c4 270e          	jreq	L221
 854  01c6 ae00b7        	ldw	x,#183
 855  01c9 89            	pushw	x
 856  01ca 5f            	clrw	x
 857  01cb 89            	pushw	x
 858  01cc ae0000        	ldw	x,#L302
 859  01cf cd0000        	call	_assert_failed
 861  01d2 5b04          	addw	sp,#4
 862  01d4               L221:
 863                     ; 185     TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 865  01d4 c65309        	ld	a,21257
 866  01d7 a4fc          	and	a,#252
 867  01d9 c75309        	ld	21257,a
 868                     ; 187     TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 868                     ; 188                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 870  01dc 7b08          	ld	a,(OFST+7,sp)
 871  01de a402          	and	a,#2
 872  01e0 6b01          	ld	(OFST+0,sp),a
 874  01e2 7b03          	ld	a,(OFST+2,sp)
 875  01e4 a401          	and	a,#1
 876  01e6 1a01          	or	a,(OFST+0,sp)
 877  01e8 ca5309        	or	a,21257
 878  01eb c75309        	ld	21257,a
 879                     ; 191     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 879                     ; 192                             (uint8_t)TIM2_OCMode);
 881  01ee c65307        	ld	a,21255
 882  01f1 a48f          	and	a,#143
 883  01f3 1a02          	or	a,(OFST+1,sp)
 884  01f5 c75307        	ld	21255,a
 885                     ; 195     TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 887  01f8 7b06          	ld	a,(OFST+5,sp)
 888  01fa c75313        	ld	21267,a
 889                     ; 196     TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 891  01fd 7b07          	ld	a,(OFST+6,sp)
 892  01ff c75314        	ld	21268,a
 893                     ; 198 }
 896  0202 5b03          	addw	sp,#3
 897  0204 81            	ret	
1089                     ; 210 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1089                     ; 211                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1089                     ; 212                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1089                     ; 213                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1089                     ; 214                  uint8_t TIM2_ICFilter)
1089                     ; 215 {
1090                     	switch	.text
1091  0205               _TIM2_ICInit:
1093  0205 89            	pushw	x
1094       00000000      OFST:	set	0
1097                     ; 217     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1099  0206 9e            	ld	a,xh
1100  0207 4d            	tnz	a
1101  0208 2717          	jreq	L431
1102  020a 9e            	ld	a,xh
1103  020b 4a            	dec	a
1104  020c 2713          	jreq	L431
1105  020e 9e            	ld	a,xh
1106  020f a102          	cp	a,#2
1107  0211 270e          	jreq	L431
1108  0213 ae00d9        	ldw	x,#217
1109  0216 89            	pushw	x
1110  0217 5f            	clrw	x
1111  0218 89            	pushw	x
1112  0219 ae0000        	ldw	x,#L302
1113  021c cd0000        	call	_assert_failed
1115  021f 5b04          	addw	sp,#4
1116  0221               L431:
1117                     ; 218     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1119  0221 7b02          	ld	a,(OFST+2,sp)
1120  0223 2712          	jreq	L441
1121  0225 a144          	cp	a,#68
1122  0227 270e          	jreq	L441
1123  0229 ae00da        	ldw	x,#218
1124  022c 89            	pushw	x
1125  022d 5f            	clrw	x
1126  022e 89            	pushw	x
1127  022f ae0000        	ldw	x,#L302
1128  0232 cd0000        	call	_assert_failed
1130  0235 5b04          	addw	sp,#4
1131  0237               L441:
1132                     ; 219     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1134  0237 7b05          	ld	a,(OFST+5,sp)
1135  0239 a101          	cp	a,#1
1136  023b 2716          	jreq	L451
1137  023d a102          	cp	a,#2
1138  023f 2712          	jreq	L451
1139  0241 a103          	cp	a,#3
1140  0243 270e          	jreq	L451
1141  0245 ae00db        	ldw	x,#219
1142  0248 89            	pushw	x
1143  0249 5f            	clrw	x
1144  024a 89            	pushw	x
1145  024b ae0000        	ldw	x,#L302
1146  024e cd0000        	call	_assert_failed
1148  0251 5b04          	addw	sp,#4
1149  0253               L451:
1150                     ; 220     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1152  0253 7b06          	ld	a,(OFST+6,sp)
1153  0255 271a          	jreq	L461
1154  0257 a104          	cp	a,#4
1155  0259 2716          	jreq	L461
1156  025b a108          	cp	a,#8
1157  025d 2712          	jreq	L461
1158  025f a10c          	cp	a,#12
1159  0261 270e          	jreq	L461
1160  0263 ae00dc        	ldw	x,#220
1161  0266 89            	pushw	x
1162  0267 5f            	clrw	x
1163  0268 89            	pushw	x
1164  0269 ae0000        	ldw	x,#L302
1165  026c cd0000        	call	_assert_failed
1167  026f 5b04          	addw	sp,#4
1168  0271               L461:
1169                     ; 221     assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1171  0271 7b07          	ld	a,(OFST+7,sp)
1172  0273 a110          	cp	a,#16
1173  0275 250e          	jrult	L271
1174  0277 ae00dd        	ldw	x,#221
1175  027a 89            	pushw	x
1176  027b 5f            	clrw	x
1177  027c 89            	pushw	x
1178  027d ae0000        	ldw	x,#L302
1179  0280 cd0000        	call	_assert_failed
1181  0283 5b04          	addw	sp,#4
1182  0285               L271:
1183                     ; 223     if (TIM2_Channel == TIM2_CHANNEL_1)
1185  0285 7b01          	ld	a,(OFST+1,sp)
1186  0287 2614          	jrne	L173
1187                     ; 226         TI1_Config((uint8_t)TIM2_ICPolarity,
1187                     ; 227                    (uint8_t)TIM2_ICSelection,
1187                     ; 228                    (uint8_t)TIM2_ICFilter);
1189  0289 7b07          	ld	a,(OFST+7,sp)
1190  028b 88            	push	a
1191  028c 7b06          	ld	a,(OFST+6,sp)
1192  028e 97            	ld	xl,a
1193  028f 7b03          	ld	a,(OFST+3,sp)
1194  0291 95            	ld	xh,a
1195  0292 cd0943        	call	L3_TI1_Config
1197  0295 84            	pop	a
1198                     ; 231         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1200  0296 7b06          	ld	a,(OFST+6,sp)
1201  0298 cd0783        	call	_TIM2_SetIC1Prescaler
1204  029b 2029          	jra	L373
1205  029d               L173:
1206                     ; 233     else if (TIM2_Channel == TIM2_CHANNEL_2)
1208  029d 4a            	dec	a
1209  029e 2614          	jrne	L573
1210                     ; 236         TI2_Config((uint8_t)TIM2_ICPolarity,
1210                     ; 237                    (uint8_t)TIM2_ICSelection,
1210                     ; 238                    (uint8_t)TIM2_ICFilter);
1212  02a0 7b07          	ld	a,(OFST+7,sp)
1213  02a2 88            	push	a
1214  02a3 7b06          	ld	a,(OFST+6,sp)
1215  02a5 97            	ld	xl,a
1216  02a6 7b03          	ld	a,(OFST+3,sp)
1217  02a8 95            	ld	xh,a
1218  02a9 cd0973        	call	L5_TI2_Config
1220  02ac 84            	pop	a
1221                     ; 241         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1223  02ad 7b06          	ld	a,(OFST+6,sp)
1224  02af cd07ad        	call	_TIM2_SetIC2Prescaler
1227  02b2 2012          	jra	L373
1228  02b4               L573:
1229                     ; 246         TI3_Config((uint8_t)TIM2_ICPolarity,
1229                     ; 247                    (uint8_t)TIM2_ICSelection,
1229                     ; 248                    (uint8_t)TIM2_ICFilter);
1231  02b4 7b07          	ld	a,(OFST+7,sp)
1232  02b6 88            	push	a
1233  02b7 7b06          	ld	a,(OFST+6,sp)
1234  02b9 97            	ld	xl,a
1235  02ba 7b03          	ld	a,(OFST+3,sp)
1236  02bc 95            	ld	xh,a
1237  02bd cd09a3        	call	L7_TI3_Config
1239  02c0 84            	pop	a
1240                     ; 251         TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1242  02c1 7b06          	ld	a,(OFST+6,sp)
1243  02c3 cd07d7        	call	_TIM2_SetIC3Prescaler
1245  02c6               L373:
1246                     ; 253 }
1249  02c6 85            	popw	x
1250  02c7 81            	ret	
1341                     ; 265 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1341                     ; 266                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1341                     ; 267                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1341                     ; 268                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1341                     ; 269                      uint8_t TIM2_ICFilter)
1341                     ; 270 {
1342                     	switch	.text
1343  02c8               _TIM2_PWMIConfig:
1345  02c8 89            	pushw	x
1346  02c9 89            	pushw	x
1347       00000002      OFST:	set	2
1350                     ; 271     uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1352                     ; 272     uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1354                     ; 275     assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1356  02ca 9e            	ld	a,xh
1357  02cb 4d            	tnz	a
1358  02cc 2712          	jreq	L022
1359  02ce 9e            	ld	a,xh
1360  02cf 4a            	dec	a
1361  02d0 270e          	jreq	L022
1362  02d2 ae0113        	ldw	x,#275
1363  02d5 89            	pushw	x
1364  02d6 5f            	clrw	x
1365  02d7 89            	pushw	x
1366  02d8 ae0000        	ldw	x,#L302
1367  02db cd0000        	call	_assert_failed
1369  02de 5b04          	addw	sp,#4
1370  02e0               L022:
1371                     ; 276     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1373  02e0 7b04          	ld	a,(OFST+2,sp)
1374  02e2 2712          	jreq	L032
1375  02e4 a144          	cp	a,#68
1376  02e6 270e          	jreq	L032
1377  02e8 ae0114        	ldw	x,#276
1378  02eb 89            	pushw	x
1379  02ec 5f            	clrw	x
1380  02ed 89            	pushw	x
1381  02ee ae0000        	ldw	x,#L302
1382  02f1 cd0000        	call	_assert_failed
1384  02f4 5b04          	addw	sp,#4
1385  02f6               L032:
1386                     ; 277     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1388  02f6 7b07          	ld	a,(OFST+5,sp)
1389  02f8 a101          	cp	a,#1
1390  02fa 2716          	jreq	L042
1391  02fc a102          	cp	a,#2
1392  02fe 2712          	jreq	L042
1393  0300 a103          	cp	a,#3
1394  0302 270e          	jreq	L042
1395  0304 ae0115        	ldw	x,#277
1396  0307 89            	pushw	x
1397  0308 5f            	clrw	x
1398  0309 89            	pushw	x
1399  030a ae0000        	ldw	x,#L302
1400  030d cd0000        	call	_assert_failed
1402  0310 5b04          	addw	sp,#4
1403  0312               L042:
1404                     ; 278     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1406  0312 7b08          	ld	a,(OFST+6,sp)
1407  0314 271a          	jreq	L052
1408  0316 a104          	cp	a,#4
1409  0318 2716          	jreq	L052
1410  031a a108          	cp	a,#8
1411  031c 2712          	jreq	L052
1412  031e a10c          	cp	a,#12
1413  0320 270e          	jreq	L052
1414  0322 ae0116        	ldw	x,#278
1415  0325 89            	pushw	x
1416  0326 5f            	clrw	x
1417  0327 89            	pushw	x
1418  0328 ae0000        	ldw	x,#L302
1419  032b cd0000        	call	_assert_failed
1421  032e 5b04          	addw	sp,#4
1422  0330               L052:
1423                     ; 281     if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1425  0330 7b04          	ld	a,(OFST+2,sp)
1426  0332 a144          	cp	a,#68
1427  0334 2706          	jreq	L144
1428                     ; 283         icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1430  0336 a644          	ld	a,#68
1431  0338 6b01          	ld	(OFST-1,sp),a
1434  033a 2002          	jra	L344
1435  033c               L144:
1436                     ; 287         icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1438  033c 0f01          	clr	(OFST-1,sp)
1440  033e               L344:
1441                     ; 291     if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1443  033e 7b07          	ld	a,(OFST+5,sp)
1444  0340 4a            	dec	a
1445  0341 2604          	jrne	L544
1446                     ; 293         icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1448  0343 a602          	ld	a,#2
1450  0345 2002          	jra	L744
1451  0347               L544:
1452                     ; 297         icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1454  0347 a601          	ld	a,#1
1455  0349               L744:
1456  0349 6b02          	ld	(OFST+0,sp),a
1458                     ; 300     if (TIM2_Channel == TIM2_CHANNEL_1)
1460  034b 7b03          	ld	a,(OFST+1,sp)
1461  034d 2626          	jrne	L154
1462                     ; 303         TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1462                     ; 304                    (uint8_t)TIM2_ICFilter);
1464  034f 7b09          	ld	a,(OFST+7,sp)
1465  0351 88            	push	a
1466  0352 7b08          	ld	a,(OFST+6,sp)
1467  0354 97            	ld	xl,a
1468  0355 7b05          	ld	a,(OFST+3,sp)
1469  0357 95            	ld	xh,a
1470  0358 cd0943        	call	L3_TI1_Config
1472  035b 84            	pop	a
1473                     ; 307         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1475  035c 7b08          	ld	a,(OFST+6,sp)
1476  035e cd0783        	call	_TIM2_SetIC1Prescaler
1478                     ; 310         TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1480  0361 7b09          	ld	a,(OFST+7,sp)
1481  0363 88            	push	a
1482  0364 7b03          	ld	a,(OFST+1,sp)
1483  0366 97            	ld	xl,a
1484  0367 7b02          	ld	a,(OFST+0,sp)
1485  0369 95            	ld	xh,a
1486  036a cd0973        	call	L5_TI2_Config
1488  036d 84            	pop	a
1489                     ; 313         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1491  036e 7b08          	ld	a,(OFST+6,sp)
1492  0370 cd07ad        	call	_TIM2_SetIC2Prescaler
1495  0373 2024          	jra	L354
1496  0375               L154:
1497                     ; 318         TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1497                     ; 319                    (uint8_t)TIM2_ICFilter);
1499  0375 7b09          	ld	a,(OFST+7,sp)
1500  0377 88            	push	a
1501  0378 7b08          	ld	a,(OFST+6,sp)
1502  037a 97            	ld	xl,a
1503  037b 7b05          	ld	a,(OFST+3,sp)
1504  037d 95            	ld	xh,a
1505  037e cd0973        	call	L5_TI2_Config
1507  0381 84            	pop	a
1508                     ; 322         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1510  0382 7b08          	ld	a,(OFST+6,sp)
1511  0384 cd07ad        	call	_TIM2_SetIC2Prescaler
1513                     ; 325         TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1515  0387 7b09          	ld	a,(OFST+7,sp)
1516  0389 88            	push	a
1517  038a 7b03          	ld	a,(OFST+1,sp)
1518  038c 97            	ld	xl,a
1519  038d 7b02          	ld	a,(OFST+0,sp)
1520  038f 95            	ld	xh,a
1521  0390 cd0943        	call	L3_TI1_Config
1523  0393 84            	pop	a
1524                     ; 328         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1526  0394 7b08          	ld	a,(OFST+6,sp)
1527  0396 cd0783        	call	_TIM2_SetIC1Prescaler
1529  0399               L354:
1530                     ; 330 }
1533  0399 5b04          	addw	sp,#4
1534  039b 81            	ret	
1590                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1590                     ; 340 {
1591                     	switch	.text
1592  039c               _TIM2_Cmd:
1594  039c 88            	push	a
1595       00000000      OFST:	set	0
1598                     ; 342     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1600  039d 4d            	tnz	a
1601  039e 2711          	jreq	L203
1602  03a0 4a            	dec	a
1603  03a1 270e          	jreq	L203
1604  03a3 ae0156        	ldw	x,#342
1605  03a6 89            	pushw	x
1606  03a7 5f            	clrw	x
1607  03a8 89            	pushw	x
1608  03a9 ae0000        	ldw	x,#L302
1609  03ac cd0000        	call	_assert_failed
1611  03af 5b04          	addw	sp,#4
1612  03b1               L203:
1613                     ; 345     if (NewState != DISABLE)
1615  03b1 7b01          	ld	a,(OFST+1,sp)
1616  03b3 2706          	jreq	L305
1617                     ; 347         TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1619  03b5 72105300      	bset	21248,#0
1621  03b9 2004          	jra	L505
1622  03bb               L305:
1623                     ; 351         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1625  03bb 72115300      	bres	21248,#0
1626  03bf               L505:
1627                     ; 353 }
1630  03bf 84            	pop	a
1631  03c0 81            	ret	
1711                     ; 369 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1711                     ; 370 {
1712                     	switch	.text
1713  03c1               _TIM2_ITConfig:
1715  03c1 89            	pushw	x
1716       00000000      OFST:	set	0
1719                     ; 372     assert_param(IS_TIM2_IT_OK(TIM2_IT));
1721  03c2 9e            	ld	a,xh
1722  03c3 4d            	tnz	a
1723  03c4 2705          	jreq	L013
1724  03c6 9e            	ld	a,xh
1725  03c7 a110          	cp	a,#16
1726  03c9 250e          	jrult	L213
1727  03cb               L013:
1728  03cb ae0174        	ldw	x,#372
1729  03ce 89            	pushw	x
1730  03cf 5f            	clrw	x
1731  03d0 89            	pushw	x
1732  03d1 ae0000        	ldw	x,#L302
1733  03d4 cd0000        	call	_assert_failed
1735  03d7 5b04          	addw	sp,#4
1736  03d9               L213:
1737                     ; 373     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1739  03d9 7b02          	ld	a,(OFST+2,sp)
1740  03db 2711          	jreq	L223
1741  03dd 4a            	dec	a
1742  03de 270e          	jreq	L223
1743  03e0 ae0175        	ldw	x,#373
1744  03e3 89            	pushw	x
1745  03e4 5f            	clrw	x
1746  03e5 89            	pushw	x
1747  03e6 ae0000        	ldw	x,#L302
1748  03e9 cd0000        	call	_assert_failed
1750  03ec 5b04          	addw	sp,#4
1751  03ee               L223:
1752                     ; 375     if (NewState != DISABLE)
1754  03ee 7b02          	ld	a,(OFST+2,sp)
1755  03f0 2707          	jreq	L545
1756                     ; 378         TIM2->IER |= (uint8_t)TIM2_IT;
1758  03f2 c65301        	ld	a,21249
1759  03f5 1a01          	or	a,(OFST+1,sp)
1761  03f7 2006          	jra	L745
1762  03f9               L545:
1763                     ; 383         TIM2->IER &= (uint8_t)(~TIM2_IT);
1765  03f9 7b01          	ld	a,(OFST+1,sp)
1766  03fb 43            	cpl	a
1767  03fc c45301        	and	a,21249
1768  03ff               L745:
1769  03ff c75301        	ld	21249,a
1770                     ; 385 }
1773  0402 85            	popw	x
1774  0403 81            	ret	
1811                     ; 394 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1811                     ; 395 {
1812                     	switch	.text
1813  0404               _TIM2_UpdateDisableConfig:
1815  0404 88            	push	a
1816       00000000      OFST:	set	0
1819                     ; 397     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1821  0405 4d            	tnz	a
1822  0406 2711          	jreq	L433
1823  0408 4a            	dec	a
1824  0409 270e          	jreq	L433
1825  040b ae018d        	ldw	x,#397
1826  040e 89            	pushw	x
1827  040f 5f            	clrw	x
1828  0410 89            	pushw	x
1829  0411 ae0000        	ldw	x,#L302
1830  0414 cd0000        	call	_assert_failed
1832  0417 5b04          	addw	sp,#4
1833  0419               L433:
1834                     ; 400     if (NewState != DISABLE)
1836  0419 7b01          	ld	a,(OFST+1,sp)
1837  041b 2706          	jreq	L765
1838                     ; 402         TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1840  041d 72125300      	bset	21248,#1
1842  0421 2004          	jra	L175
1843  0423               L765:
1844                     ; 406         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1846  0423 72135300      	bres	21248,#1
1847  0427               L175:
1848                     ; 408 }
1851  0427 84            	pop	a
1852  0428 81            	ret	
1911                     ; 418 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1911                     ; 419 {
1912                     	switch	.text
1913  0429               _TIM2_UpdateRequestConfig:
1915  0429 88            	push	a
1916       00000000      OFST:	set	0
1919                     ; 421     assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1921  042a 4d            	tnz	a
1922  042b 2711          	jreq	L643
1923  042d 4a            	dec	a
1924  042e 270e          	jreq	L643
1925  0430 ae01a5        	ldw	x,#421
1926  0433 89            	pushw	x
1927  0434 5f            	clrw	x
1928  0435 89            	pushw	x
1929  0436 ae0000        	ldw	x,#L302
1930  0439 cd0000        	call	_assert_failed
1932  043c 5b04          	addw	sp,#4
1933  043e               L643:
1934                     ; 424     if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1936  043e 7b01          	ld	a,(OFST+1,sp)
1937  0440 2706          	jreq	L126
1938                     ; 426         TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1940  0442 72145300      	bset	21248,#2
1942  0446 2004          	jra	L326
1943  0448               L126:
1944                     ; 430         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1946  0448 72155300      	bres	21248,#2
1947  044c               L326:
1948                     ; 432 }
1951  044c 84            	pop	a
1952  044d 81            	ret	
2010                     ; 443 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
2010                     ; 444 {
2011                     	switch	.text
2012  044e               _TIM2_SelectOnePulseMode:
2014  044e 88            	push	a
2015       00000000      OFST:	set	0
2018                     ; 446     assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
2020  044f a101          	cp	a,#1
2021  0451 2711          	jreq	L063
2022  0453 4d            	tnz	a
2023  0454 270e          	jreq	L063
2024  0456 ae01be        	ldw	x,#446
2025  0459 89            	pushw	x
2026  045a 5f            	clrw	x
2027  045b 89            	pushw	x
2028  045c ae0000        	ldw	x,#L302
2029  045f cd0000        	call	_assert_failed
2031  0462 5b04          	addw	sp,#4
2032  0464               L063:
2033                     ; 449     if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
2035  0464 7b01          	ld	a,(OFST+1,sp)
2036  0466 2706          	jreq	L356
2037                     ; 451         TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
2039  0468 72165300      	bset	21248,#3
2041  046c 2004          	jra	L556
2042  046e               L356:
2043                     ; 455         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
2045  046e 72175300      	bres	21248,#3
2046  0472               L556:
2047                     ; 458 }
2050  0472 84            	pop	a
2051  0473 81            	ret	
2120                     ; 489 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2120                     ; 490                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2120                     ; 491 {
2121                     	switch	.text
2122  0474               _TIM2_PrescalerConfig:
2124  0474 89            	pushw	x
2125       00000000      OFST:	set	0
2128                     ; 493     assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2130  0475 9f            	ld	a,xl
2131  0476 4d            	tnz	a
2132  0477 2712          	jreq	L273
2133  0479 9f            	ld	a,xl
2134  047a 4a            	dec	a
2135  047b 270e          	jreq	L273
2136  047d ae01ed        	ldw	x,#493
2137  0480 89            	pushw	x
2138  0481 5f            	clrw	x
2139  0482 89            	pushw	x
2140  0483 ae0000        	ldw	x,#L302
2141  0486 cd0000        	call	_assert_failed
2143  0489 5b04          	addw	sp,#4
2144  048b               L273:
2145                     ; 494     assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2147  048b 7b01          	ld	a,(OFST+1,sp)
2148  048d 274c          	jreq	L204
2149  048f a101          	cp	a,#1
2150  0491 2748          	jreq	L204
2151  0493 a102          	cp	a,#2
2152  0495 2744          	jreq	L204
2153  0497 a103          	cp	a,#3
2154  0499 2740          	jreq	L204
2155  049b a104          	cp	a,#4
2156  049d 273c          	jreq	L204
2157  049f a105          	cp	a,#5
2158  04a1 2738          	jreq	L204
2159  04a3 a106          	cp	a,#6
2160  04a5 2734          	jreq	L204
2161  04a7 a107          	cp	a,#7
2162  04a9 2730          	jreq	L204
2163  04ab a108          	cp	a,#8
2164  04ad 272c          	jreq	L204
2165  04af a109          	cp	a,#9
2166  04b1 2728          	jreq	L204
2167  04b3 a10a          	cp	a,#10
2168  04b5 2724          	jreq	L204
2169  04b7 a10b          	cp	a,#11
2170  04b9 2720          	jreq	L204
2171  04bb a10c          	cp	a,#12
2172  04bd 271c          	jreq	L204
2173  04bf a10d          	cp	a,#13
2174  04c1 2718          	jreq	L204
2175  04c3 a10e          	cp	a,#14
2176  04c5 2714          	jreq	L204
2177  04c7 a10f          	cp	a,#15
2178  04c9 2710          	jreq	L204
2179  04cb ae01ee        	ldw	x,#494
2180  04ce 89            	pushw	x
2181  04cf 5f            	clrw	x
2182  04d0 89            	pushw	x
2183  04d1 ae0000        	ldw	x,#L302
2184  04d4 cd0000        	call	_assert_failed
2186  04d7 5b04          	addw	sp,#4
2187  04d9 7b01          	ld	a,(OFST+1,sp)
2188  04db               L204:
2189                     ; 497     TIM2->PSCR = (uint8_t)Prescaler;
2191  04db c7530c        	ld	21260,a
2192                     ; 500     TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2194  04de 7b02          	ld	a,(OFST+2,sp)
2195  04e0 c75304        	ld	21252,a
2196                     ; 501 }
2199  04e3 85            	popw	x
2200  04e4 81            	ret	
2259                     ; 512 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2259                     ; 513 {
2260                     	switch	.text
2261  04e5               _TIM2_ForcedOC1Config:
2263  04e5 88            	push	a
2264       00000000      OFST:	set	0
2267                     ; 515     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2269  04e6 a150          	cp	a,#80
2270  04e8 2712          	jreq	L414
2271  04ea a140          	cp	a,#64
2272  04ec 270e          	jreq	L414
2273  04ee ae0203        	ldw	x,#515
2274  04f1 89            	pushw	x
2275  04f2 5f            	clrw	x
2276  04f3 89            	pushw	x
2277  04f4 ae0000        	ldw	x,#L302
2278  04f7 cd0000        	call	_assert_failed
2280  04fa 5b04          	addw	sp,#4
2281  04fc               L414:
2282                     ; 518     TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2282                     ; 519                               | (uint8_t)TIM2_ForcedAction);
2284  04fc c65305        	ld	a,21253
2285  04ff a48f          	and	a,#143
2286  0501 1a01          	or	a,(OFST+1,sp)
2287  0503 c75305        	ld	21253,a
2288                     ; 520 }
2291  0506 84            	pop	a
2292  0507 81            	ret	
2329                     ; 531 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2329                     ; 532 {
2330                     	switch	.text
2331  0508               _TIM2_ForcedOC2Config:
2333  0508 88            	push	a
2334       00000000      OFST:	set	0
2337                     ; 534     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2339  0509 a150          	cp	a,#80
2340  050b 2712          	jreq	L624
2341  050d a140          	cp	a,#64
2342  050f 270e          	jreq	L624
2343  0511 ae0216        	ldw	x,#534
2344  0514 89            	pushw	x
2345  0515 5f            	clrw	x
2346  0516 89            	pushw	x
2347  0517 ae0000        	ldw	x,#L302
2348  051a cd0000        	call	_assert_failed
2350  051d 5b04          	addw	sp,#4
2351  051f               L624:
2352                     ; 537     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2352                     ; 538                             | (uint8_t)TIM2_ForcedAction);
2354  051f c65306        	ld	a,21254
2355  0522 a48f          	and	a,#143
2356  0524 1a01          	or	a,(OFST+1,sp)
2357  0526 c75306        	ld	21254,a
2358                     ; 539 }
2361  0529 84            	pop	a
2362  052a 81            	ret	
2399                     ; 550 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2399                     ; 551 {
2400                     	switch	.text
2401  052b               _TIM2_ForcedOC3Config:
2403  052b 88            	push	a
2404       00000000      OFST:	set	0
2407                     ; 553     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2409  052c a150          	cp	a,#80
2410  052e 2712          	jreq	L044
2411  0530 a140          	cp	a,#64
2412  0532 270e          	jreq	L044
2413  0534 ae0229        	ldw	x,#553
2414  0537 89            	pushw	x
2415  0538 5f            	clrw	x
2416  0539 89            	pushw	x
2417  053a ae0000        	ldw	x,#L302
2418  053d cd0000        	call	_assert_failed
2420  0540 5b04          	addw	sp,#4
2421  0542               L044:
2422                     ; 556     TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2422                     ; 557                               | (uint8_t)TIM2_ForcedAction);
2424  0542 c65307        	ld	a,21255
2425  0545 a48f          	and	a,#143
2426  0547 1a01          	or	a,(OFST+1,sp)
2427  0549 c75307        	ld	21255,a
2428                     ; 558 }
2431  054c 84            	pop	a
2432  054d 81            	ret	
2469                     ; 567 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2469                     ; 568 {
2470                     	switch	.text
2471  054e               _TIM2_ARRPreloadConfig:
2473  054e 88            	push	a
2474       00000000      OFST:	set	0
2477                     ; 570     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2479  054f 4d            	tnz	a
2480  0550 2711          	jreq	L254
2481  0552 4a            	dec	a
2482  0553 270e          	jreq	L254
2483  0555 ae023a        	ldw	x,#570
2484  0558 89            	pushw	x
2485  0559 5f            	clrw	x
2486  055a 89            	pushw	x
2487  055b ae0000        	ldw	x,#L302
2488  055e cd0000        	call	_assert_failed
2490  0561 5b04          	addw	sp,#4
2491  0563               L254:
2492                     ; 573     if (NewState != DISABLE)
2494  0563 7b01          	ld	a,(OFST+1,sp)
2495  0565 2706          	jreq	L1101
2496                     ; 575         TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2498  0567 721e5300      	bset	21248,#7
2500  056b 2004          	jra	L3101
2501  056d               L1101:
2502                     ; 579         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2504  056d 721f5300      	bres	21248,#7
2505  0571               L3101:
2506                     ; 581 }
2509  0571 84            	pop	a
2510  0572 81            	ret	
2547                     ; 590 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2547                     ; 591 {
2548                     	switch	.text
2549  0573               _TIM2_OC1PreloadConfig:
2551  0573 88            	push	a
2552       00000000      OFST:	set	0
2555                     ; 593     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2557  0574 4d            	tnz	a
2558  0575 2711          	jreq	L464
2559  0577 4a            	dec	a
2560  0578 270e          	jreq	L464
2561  057a ae0251        	ldw	x,#593
2562  057d 89            	pushw	x
2563  057e 5f            	clrw	x
2564  057f 89            	pushw	x
2565  0580 ae0000        	ldw	x,#L302
2566  0583 cd0000        	call	_assert_failed
2568  0586 5b04          	addw	sp,#4
2569  0588               L464:
2570                     ; 596     if (NewState != DISABLE)
2572  0588 7b01          	ld	a,(OFST+1,sp)
2573  058a 2706          	jreq	L3301
2574                     ; 598         TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2576  058c 72165305      	bset	21253,#3
2578  0590 2004          	jra	L5301
2579  0592               L3301:
2580                     ; 602         TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2582  0592 72175305      	bres	21253,#3
2583  0596               L5301:
2584                     ; 604 }
2587  0596 84            	pop	a
2588  0597 81            	ret	
2625                     ; 613 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2625                     ; 614 {
2626                     	switch	.text
2627  0598               _TIM2_OC2PreloadConfig:
2629  0598 88            	push	a
2630       00000000      OFST:	set	0
2633                     ; 616     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2635  0599 4d            	tnz	a
2636  059a 2711          	jreq	L674
2637  059c 4a            	dec	a
2638  059d 270e          	jreq	L674
2639  059f ae0268        	ldw	x,#616
2640  05a2 89            	pushw	x
2641  05a3 5f            	clrw	x
2642  05a4 89            	pushw	x
2643  05a5 ae0000        	ldw	x,#L302
2644  05a8 cd0000        	call	_assert_failed
2646  05ab 5b04          	addw	sp,#4
2647  05ad               L674:
2648                     ; 619     if (NewState != DISABLE)
2650  05ad 7b01          	ld	a,(OFST+1,sp)
2651  05af 2706          	jreq	L5501
2652                     ; 621         TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2654  05b1 72165306      	bset	21254,#3
2656  05b5 2004          	jra	L7501
2657  05b7               L5501:
2658                     ; 625         TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2660  05b7 72175306      	bres	21254,#3
2661  05bb               L7501:
2662                     ; 627 }
2665  05bb 84            	pop	a
2666  05bc 81            	ret	
2703                     ; 636 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2703                     ; 637 {
2704                     	switch	.text
2705  05bd               _TIM2_OC3PreloadConfig:
2707  05bd 88            	push	a
2708       00000000      OFST:	set	0
2711                     ; 639     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2713  05be 4d            	tnz	a
2714  05bf 2711          	jreq	L015
2715  05c1 4a            	dec	a
2716  05c2 270e          	jreq	L015
2717  05c4 ae027f        	ldw	x,#639
2718  05c7 89            	pushw	x
2719  05c8 5f            	clrw	x
2720  05c9 89            	pushw	x
2721  05ca ae0000        	ldw	x,#L302
2722  05cd cd0000        	call	_assert_failed
2724  05d0 5b04          	addw	sp,#4
2725  05d2               L015:
2726                     ; 642     if (NewState != DISABLE)
2728  05d2 7b01          	ld	a,(OFST+1,sp)
2729  05d4 2706          	jreq	L7701
2730                     ; 644         TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2732  05d6 72165307      	bset	21255,#3
2734  05da 2004          	jra	L1011
2735  05dc               L7701:
2736                     ; 648         TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2738  05dc 72175307      	bres	21255,#3
2739  05e0               L1011:
2740                     ; 650 }
2743  05e0 84            	pop	a
2744  05e1 81            	ret	
2818                     ; 663 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2818                     ; 664 {
2819                     	switch	.text
2820  05e2               _TIM2_GenerateEvent:
2822  05e2 88            	push	a
2823       00000000      OFST:	set	0
2826                     ; 666     assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2828  05e3 4d            	tnz	a
2829  05e4 260e          	jrne	L025
2830  05e6 ae029a        	ldw	x,#666
2831  05e9 89            	pushw	x
2832  05ea 5f            	clrw	x
2833  05eb 89            	pushw	x
2834  05ec ae0000        	ldw	x,#L302
2835  05ef cd0000        	call	_assert_failed
2837  05f2 5b04          	addw	sp,#4
2838  05f4               L025:
2839                     ; 669     TIM2->EGR = (uint8_t)TIM2_EventSource;
2841  05f4 7b01          	ld	a,(OFST+1,sp)
2842  05f6 c75304        	ld	21252,a
2843                     ; 670 }
2846  05f9 84            	pop	a
2847  05fa 81            	ret	
2884                     ; 681 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2884                     ; 682 {
2885                     	switch	.text
2886  05fb               _TIM2_OC1PolarityConfig:
2888  05fb 88            	push	a
2889       00000000      OFST:	set	0
2892                     ; 684     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2894  05fc 4d            	tnz	a
2895  05fd 2712          	jreq	L235
2896  05ff a122          	cp	a,#34
2897  0601 270e          	jreq	L235
2898  0603 ae02ac        	ldw	x,#684
2899  0606 89            	pushw	x
2900  0607 5f            	clrw	x
2901  0608 89            	pushw	x
2902  0609 ae0000        	ldw	x,#L302
2903  060c cd0000        	call	_assert_failed
2905  060f 5b04          	addw	sp,#4
2906  0611               L235:
2907                     ; 687     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2909  0611 7b01          	ld	a,(OFST+1,sp)
2910  0613 2706          	jreq	L3511
2911                     ; 689         TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2913  0615 72125308      	bset	21256,#1
2915  0619 2004          	jra	L5511
2916  061b               L3511:
2917                     ; 693         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2919  061b 72135308      	bres	21256,#1
2920  061f               L5511:
2921                     ; 695 }
2924  061f 84            	pop	a
2925  0620 81            	ret	
2962                     ; 706 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2962                     ; 707 {
2963                     	switch	.text
2964  0621               _TIM2_OC2PolarityConfig:
2966  0621 88            	push	a
2967       00000000      OFST:	set	0
2970                     ; 709     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2972  0622 4d            	tnz	a
2973  0623 2712          	jreq	L445
2974  0625 a122          	cp	a,#34
2975  0627 270e          	jreq	L445
2976  0629 ae02c5        	ldw	x,#709
2977  062c 89            	pushw	x
2978  062d 5f            	clrw	x
2979  062e 89            	pushw	x
2980  062f ae0000        	ldw	x,#L302
2981  0632 cd0000        	call	_assert_failed
2983  0635 5b04          	addw	sp,#4
2984  0637               L445:
2985                     ; 712     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2987  0637 7b01          	ld	a,(OFST+1,sp)
2988  0639 2706          	jreq	L5711
2989                     ; 714         TIM2->CCER1 |= TIM2_CCER1_CC2P;
2991  063b 721a5308      	bset	21256,#5
2993  063f 2004          	jra	L7711
2994  0641               L5711:
2995                     ; 718         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2997  0641 721b5308      	bres	21256,#5
2998  0645               L7711:
2999                     ; 720 }
3002  0645 84            	pop	a
3003  0646 81            	ret	
3040                     ; 731 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3040                     ; 732 {
3041                     	switch	.text
3042  0647               _TIM2_OC3PolarityConfig:
3044  0647 88            	push	a
3045       00000000      OFST:	set	0
3048                     ; 734     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3050  0648 4d            	tnz	a
3051  0649 2712          	jreq	L655
3052  064b a122          	cp	a,#34
3053  064d 270e          	jreq	L655
3054  064f ae02de        	ldw	x,#734
3055  0652 89            	pushw	x
3056  0653 5f            	clrw	x
3057  0654 89            	pushw	x
3058  0655 ae0000        	ldw	x,#L302
3059  0658 cd0000        	call	_assert_failed
3061  065b 5b04          	addw	sp,#4
3062  065d               L655:
3063                     ; 737     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3065  065d 7b01          	ld	a,(OFST+1,sp)
3066  065f 2706          	jreq	L7121
3067                     ; 739         TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3069  0661 72125309      	bset	21257,#1
3071  0665 2004          	jra	L1221
3072  0667               L7121:
3073                     ; 743         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3075  0667 72135309      	bres	21257,#1
3076  066b               L1221:
3077                     ; 745 }
3080  066b 84            	pop	a
3081  066c 81            	ret	
3127                     ; 759 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3127                     ; 760 {
3128                     	switch	.text
3129  066d               _TIM2_CCxCmd:
3131  066d 89            	pushw	x
3132       00000000      OFST:	set	0
3135                     ; 762     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3137  066e 9e            	ld	a,xh
3138  066f 4d            	tnz	a
3139  0670 2717          	jreq	L075
3140  0672 9e            	ld	a,xh
3141  0673 4a            	dec	a
3142  0674 2713          	jreq	L075
3143  0676 9e            	ld	a,xh
3144  0677 a102          	cp	a,#2
3145  0679 270e          	jreq	L075
3146  067b ae02fa        	ldw	x,#762
3147  067e 89            	pushw	x
3148  067f 5f            	clrw	x
3149  0680 89            	pushw	x
3150  0681 ae0000        	ldw	x,#L302
3151  0684 cd0000        	call	_assert_failed
3153  0687 5b04          	addw	sp,#4
3154  0689               L075:
3155                     ; 763     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3157  0689 7b02          	ld	a,(OFST+2,sp)
3158  068b 2711          	jreq	L006
3159  068d 4a            	dec	a
3160  068e 270e          	jreq	L006
3161  0690 ae02fb        	ldw	x,#763
3162  0693 89            	pushw	x
3163  0694 5f            	clrw	x
3164  0695 89            	pushw	x
3165  0696 ae0000        	ldw	x,#L302
3166  0699 cd0000        	call	_assert_failed
3168  069c 5b04          	addw	sp,#4
3169  069e               L006:
3170                     ; 765     if (TIM2_Channel == TIM2_CHANNEL_1)
3172  069e 7b01          	ld	a,(OFST+1,sp)
3173  06a0 2610          	jrne	L5421
3174                     ; 768         if (NewState != DISABLE)
3176  06a2 7b02          	ld	a,(OFST+2,sp)
3177  06a4 2706          	jreq	L7421
3178                     ; 770             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3180  06a6 72105308      	bset	21256,#0
3182  06aa 2027          	jra	L3521
3183  06ac               L7421:
3184                     ; 774             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3186  06ac 72115308      	bres	21256,#0
3187  06b0 2021          	jra	L3521
3188  06b2               L5421:
3189                     ; 778     else if (TIM2_Channel == TIM2_CHANNEL_2)
3191  06b2 4a            	dec	a
3192  06b3 2610          	jrne	L5521
3193                     ; 781         if (NewState != DISABLE)
3195  06b5 7b02          	ld	a,(OFST+2,sp)
3196  06b7 2706          	jreq	L7521
3197                     ; 783             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3199  06b9 72185308      	bset	21256,#4
3201  06bd 2014          	jra	L3521
3202  06bf               L7521:
3203                     ; 787             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3205  06bf 72195308      	bres	21256,#4
3206  06c3 200e          	jra	L3521
3207  06c5               L5521:
3208                     ; 793         if (NewState != DISABLE)
3210  06c5 7b02          	ld	a,(OFST+2,sp)
3211  06c7 2706          	jreq	L5621
3212                     ; 795             TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3214  06c9 72105309      	bset	21257,#0
3216  06cd 2004          	jra	L3521
3217  06cf               L5621:
3218                     ; 799             TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3220  06cf 72115309      	bres	21257,#0
3221  06d3               L3521:
3222                     ; 802 }
3225  06d3 85            	popw	x
3226  06d4 81            	ret	
3272                     ; 824 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3272                     ; 825 {
3273                     	switch	.text
3274  06d5               _TIM2_SelectOCxM:
3276  06d5 89            	pushw	x
3277       00000000      OFST:	set	0
3280                     ; 827     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3282  06d6 9e            	ld	a,xh
3283  06d7 4d            	tnz	a
3284  06d8 2717          	jreq	L216
3285  06da 9e            	ld	a,xh
3286  06db 4a            	dec	a
3287  06dc 2713          	jreq	L216
3288  06de 9e            	ld	a,xh
3289  06df a102          	cp	a,#2
3290  06e1 270e          	jreq	L216
3291  06e3 ae033b        	ldw	x,#827
3292  06e6 89            	pushw	x
3293  06e7 5f            	clrw	x
3294  06e8 89            	pushw	x
3295  06e9 ae0000        	ldw	x,#L302
3296  06ec cd0000        	call	_assert_failed
3298  06ef 5b04          	addw	sp,#4
3299  06f1               L216:
3300                     ; 828     assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3302  06f1 7b02          	ld	a,(OFST+2,sp)
3303  06f3 272a          	jreq	L226
3304  06f5 a110          	cp	a,#16
3305  06f7 2726          	jreq	L226
3306  06f9 a120          	cp	a,#32
3307  06fb 2722          	jreq	L226
3308  06fd a130          	cp	a,#48
3309  06ff 271e          	jreq	L226
3310  0701 a160          	cp	a,#96
3311  0703 271a          	jreq	L226
3312  0705 a170          	cp	a,#112
3313  0707 2716          	jreq	L226
3314  0709 a150          	cp	a,#80
3315  070b 2712          	jreq	L226
3316  070d a140          	cp	a,#64
3317  070f 270e          	jreq	L226
3318  0711 ae033c        	ldw	x,#828
3319  0714 89            	pushw	x
3320  0715 5f            	clrw	x
3321  0716 89            	pushw	x
3322  0717 ae0000        	ldw	x,#L302
3323  071a cd0000        	call	_assert_failed
3325  071d 5b04          	addw	sp,#4
3326  071f               L226:
3327                     ; 830     if (TIM2_Channel == TIM2_CHANNEL_1)
3329  071f 7b01          	ld	a,(OFST+1,sp)
3330  0721 2610          	jrne	L3131
3331                     ; 833         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3333  0723 72115308      	bres	21256,#0
3334                     ; 836         TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3334                     ; 837                                | (uint8_t)TIM2_OCMode);
3336  0727 c65305        	ld	a,21253
3337  072a a48f          	and	a,#143
3338  072c 1a02          	or	a,(OFST+2,sp)
3339  072e c75305        	ld	21253,a
3341  0731 2021          	jra	L5131
3342  0733               L3131:
3343                     ; 839     else if (TIM2_Channel == TIM2_CHANNEL_2)
3345  0733 4a            	dec	a
3346  0734 2610          	jrne	L7131
3347                     ; 842         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3349  0736 72195308      	bres	21256,#4
3350                     ; 845         TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3350                     ; 846                                 | (uint8_t)TIM2_OCMode);
3352  073a c65306        	ld	a,21254
3353  073d a48f          	and	a,#143
3354  073f 1a02          	or	a,(OFST+2,sp)
3355  0741 c75306        	ld	21254,a
3357  0744 200e          	jra	L5131
3358  0746               L7131:
3359                     ; 851         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3361  0746 72115309      	bres	21257,#0
3362                     ; 854         TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3362                     ; 855                                 | (uint8_t)TIM2_OCMode);
3364  074a c65307        	ld	a,21255
3365  074d a48f          	and	a,#143
3366  074f 1a02          	or	a,(OFST+2,sp)
3367  0751 c75307        	ld	21255,a
3368  0754               L5131:
3369                     ; 857 }
3372  0754 85            	popw	x
3373  0755 81            	ret	
3405                     ; 866 void TIM2_SetCounter(uint16_t Counter)
3405                     ; 867 {
3406                     	switch	.text
3407  0756               _TIM2_SetCounter:
3411                     ; 869     TIM2->CNTRH = (uint8_t)(Counter >> 8);
3413  0756 9e            	ld	a,xh
3414  0757 c7530a        	ld	21258,a
3415                     ; 870     TIM2->CNTRL = (uint8_t)(Counter);
3417  075a 9f            	ld	a,xl
3418  075b c7530b        	ld	21259,a
3419                     ; 872 }
3422  075e 81            	ret	
3454                     ; 881 void TIM2_SetAutoreload(uint16_t Autoreload)
3454                     ; 882 {
3455                     	switch	.text
3456  075f               _TIM2_SetAutoreload:
3460                     ; 885     TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3462  075f 9e            	ld	a,xh
3463  0760 c7530d        	ld	21261,a
3464                     ; 886     TIM2->ARRL = (uint8_t)(Autoreload);
3466  0763 9f            	ld	a,xl
3467  0764 c7530e        	ld	21262,a
3468                     ; 888 }
3471  0767 81            	ret	
3503                     ; 897 void TIM2_SetCompare1(uint16_t Compare1)
3503                     ; 898 {
3504                     	switch	.text
3505  0768               _TIM2_SetCompare1:
3509                     ; 900     TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3511  0768 9e            	ld	a,xh
3512  0769 c7530f        	ld	21263,a
3513                     ; 901     TIM2->CCR1L = (uint8_t)(Compare1);
3515  076c 9f            	ld	a,xl
3516  076d c75310        	ld	21264,a
3517                     ; 903 }
3520  0770 81            	ret	
3552                     ; 912 void TIM2_SetCompare2(uint16_t Compare2)
3552                     ; 913 {
3553                     	switch	.text
3554  0771               _TIM2_SetCompare2:
3558                     ; 915     TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3560  0771 9e            	ld	a,xh
3561  0772 c75311        	ld	21265,a
3562                     ; 916     TIM2->CCR2L = (uint8_t)(Compare2);
3564  0775 9f            	ld	a,xl
3565  0776 c75312        	ld	21266,a
3566                     ; 918 }
3569  0779 81            	ret	
3601                     ; 927 void TIM2_SetCompare3(uint16_t Compare3)
3601                     ; 928 {
3602                     	switch	.text
3603  077a               _TIM2_SetCompare3:
3607                     ; 930     TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3609  077a 9e            	ld	a,xh
3610  077b c75313        	ld	21267,a
3611                     ; 931     TIM2->CCR3L = (uint8_t)(Compare3);
3613  077e 9f            	ld	a,xl
3614  077f c75314        	ld	21268,a
3615                     ; 933 }
3618  0782 81            	ret	
3655                     ; 946 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3655                     ; 947 {
3656                     	switch	.text
3657  0783               _TIM2_SetIC1Prescaler:
3659  0783 88            	push	a
3660       00000000      OFST:	set	0
3663                     ; 949     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3665  0784 4d            	tnz	a
3666  0785 271a          	jreq	L646
3667  0787 a104          	cp	a,#4
3668  0789 2716          	jreq	L646
3669  078b a108          	cp	a,#8
3670  078d 2712          	jreq	L646
3671  078f a10c          	cp	a,#12
3672  0791 270e          	jreq	L646
3673  0793 ae03b5        	ldw	x,#949
3674  0796 89            	pushw	x
3675  0797 5f            	clrw	x
3676  0798 89            	pushw	x
3677  0799 ae0000        	ldw	x,#L302
3678  079c cd0000        	call	_assert_failed
3680  079f 5b04          	addw	sp,#4
3681  07a1               L646:
3682                     ; 952     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3682                     ; 953                             | (uint8_t)TIM2_IC1Prescaler);
3684  07a1 c65305        	ld	a,21253
3685  07a4 a4f3          	and	a,#243
3686  07a6 1a01          	or	a,(OFST+1,sp)
3687  07a8 c75305        	ld	21253,a
3688                     ; 954 }
3691  07ab 84            	pop	a
3692  07ac 81            	ret	
3729                     ; 966 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3729                     ; 967 {
3730                     	switch	.text
3731  07ad               _TIM2_SetIC2Prescaler:
3733  07ad 88            	push	a
3734       00000000      OFST:	set	0
3737                     ; 969     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3739  07ae 4d            	tnz	a
3740  07af 271a          	jreq	L066
3741  07b1 a104          	cp	a,#4
3742  07b3 2716          	jreq	L066
3743  07b5 a108          	cp	a,#8
3744  07b7 2712          	jreq	L066
3745  07b9 a10c          	cp	a,#12
3746  07bb 270e          	jreq	L066
3747  07bd ae03c9        	ldw	x,#969
3748  07c0 89            	pushw	x
3749  07c1 5f            	clrw	x
3750  07c2 89            	pushw	x
3751  07c3 ae0000        	ldw	x,#L302
3752  07c6 cd0000        	call	_assert_failed
3754  07c9 5b04          	addw	sp,#4
3755  07cb               L066:
3756                     ; 972     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3756                     ; 973                             | (uint8_t)TIM2_IC2Prescaler);
3758  07cb c65306        	ld	a,21254
3759  07ce a4f3          	and	a,#243
3760  07d0 1a01          	or	a,(OFST+1,sp)
3761  07d2 c75306        	ld	21254,a
3762                     ; 974 }
3765  07d5 84            	pop	a
3766  07d6 81            	ret	
3803                     ; 986 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3803                     ; 987 {
3804                     	switch	.text
3805  07d7               _TIM2_SetIC3Prescaler:
3807  07d7 88            	push	a
3808       00000000      OFST:	set	0
3811                     ; 990     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3813  07d8 4d            	tnz	a
3814  07d9 271a          	jreq	L276
3815  07db a104          	cp	a,#4
3816  07dd 2716          	jreq	L276
3817  07df a108          	cp	a,#8
3818  07e1 2712          	jreq	L276
3819  07e3 a10c          	cp	a,#12
3820  07e5 270e          	jreq	L276
3821  07e7 ae03de        	ldw	x,#990
3822  07ea 89            	pushw	x
3823  07eb 5f            	clrw	x
3824  07ec 89            	pushw	x
3825  07ed ae0000        	ldw	x,#L302
3826  07f0 cd0000        	call	_assert_failed
3828  07f3 5b04          	addw	sp,#4
3829  07f5               L276:
3830                     ; 992     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3830                     ; 993                             | (uint8_t)TIM2_IC3Prescaler);
3832  07f5 c65307        	ld	a,21255
3833  07f8 a4f3          	and	a,#243
3834  07fa 1a01          	or	a,(OFST+1,sp)
3835  07fc c75307        	ld	21255,a
3836                     ; 994 }
3839  07ff 84            	pop	a
3840  0800 81            	ret	
3886                     ; 1001 uint16_t TIM2_GetCapture1(void)
3886                     ; 1002 {
3887                     	switch	.text
3888  0801               _TIM2_GetCapture1:
3890  0801 5204          	subw	sp,#4
3891       00000004      OFST:	set	4
3894                     ; 1004     uint16_t tmpccr1 = 0;
3896                     ; 1005     uint8_t tmpccr1l=0, tmpccr1h=0;
3900                     ; 1007     tmpccr1h = TIM2->CCR1H;
3902  0803 c6530f        	ld	a,21263
3903  0806 6b02          	ld	(OFST-2,sp),a
3905                     ; 1008     tmpccr1l = TIM2->CCR1L;
3907  0808 c65310        	ld	a,21264
3908  080b 6b01          	ld	(OFST-3,sp),a
3910                     ; 1010     tmpccr1 = (uint16_t)(tmpccr1l);
3912  080d 5f            	clrw	x
3913  080e 97            	ld	xl,a
3914  080f 1f03          	ldw	(OFST-1,sp),x
3916                     ; 1011     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3918  0811 5f            	clrw	x
3919  0812 7b02          	ld	a,(OFST-2,sp)
3920  0814 97            	ld	xl,a
3921  0815 7b04          	ld	a,(OFST+0,sp)
3922  0817 01            	rrwa	x,a
3923  0818 1a03          	or	a,(OFST-1,sp)
3924  081a 01            	rrwa	x,a
3926                     ; 1013     return (uint16_t)tmpccr1;
3930  081b 5b04          	addw	sp,#4
3931  081d 81            	ret	
3977                     ; 1021 uint16_t TIM2_GetCapture2(void)
3977                     ; 1022 {
3978                     	switch	.text
3979  081e               _TIM2_GetCapture2:
3981  081e 5204          	subw	sp,#4
3982       00000004      OFST:	set	4
3985                     ; 1024     uint16_t tmpccr2 = 0;
3987                     ; 1025     uint8_t tmpccr2l=0, tmpccr2h=0;
3991                     ; 1027     tmpccr2h = TIM2->CCR2H;
3993  0820 c65311        	ld	a,21265
3994  0823 6b02          	ld	(OFST-2,sp),a
3996                     ; 1028     tmpccr2l = TIM2->CCR2L;
3998  0825 c65312        	ld	a,21266
3999  0828 6b01          	ld	(OFST-3,sp),a
4001                     ; 1030     tmpccr2 = (uint16_t)(tmpccr2l);
4003  082a 5f            	clrw	x
4004  082b 97            	ld	xl,a
4005  082c 1f03          	ldw	(OFST-1,sp),x
4007                     ; 1031     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
4009  082e 5f            	clrw	x
4010  082f 7b02          	ld	a,(OFST-2,sp)
4011  0831 97            	ld	xl,a
4012  0832 7b04          	ld	a,(OFST+0,sp)
4013  0834 01            	rrwa	x,a
4014  0835 1a03          	or	a,(OFST-1,sp)
4015  0837 01            	rrwa	x,a
4017                     ; 1033     return (uint16_t)tmpccr2;
4021  0838 5b04          	addw	sp,#4
4022  083a 81            	ret	
4068                     ; 1041 uint16_t TIM2_GetCapture3(void)
4068                     ; 1042 {
4069                     	switch	.text
4070  083b               _TIM2_GetCapture3:
4072  083b 5204          	subw	sp,#4
4073       00000004      OFST:	set	4
4076                     ; 1044     uint16_t tmpccr3 = 0;
4078                     ; 1045     uint8_t tmpccr3l=0, tmpccr3h=0;
4082                     ; 1047     tmpccr3h = TIM2->CCR3H;
4084  083d c65313        	ld	a,21267
4085  0840 6b02          	ld	(OFST-2,sp),a
4087                     ; 1048     tmpccr3l = TIM2->CCR3L;
4089  0842 c65314        	ld	a,21268
4090  0845 6b01          	ld	(OFST-3,sp),a
4092                     ; 1050     tmpccr3 = (uint16_t)(tmpccr3l);
4094  0847 5f            	clrw	x
4095  0848 97            	ld	xl,a
4096  0849 1f03          	ldw	(OFST-1,sp),x
4098                     ; 1051     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4100  084b 5f            	clrw	x
4101  084c 7b02          	ld	a,(OFST-2,sp)
4102  084e 97            	ld	xl,a
4103  084f 7b04          	ld	a,(OFST+0,sp)
4104  0851 01            	rrwa	x,a
4105  0852 1a03          	or	a,(OFST-1,sp)
4106  0854 01            	rrwa	x,a
4108                     ; 1053     return (uint16_t)tmpccr3;
4112  0855 5b04          	addw	sp,#4
4113  0857 81            	ret	
4145                     ; 1061 uint16_t TIM2_GetCounter(void)
4145                     ; 1062 {
4146                     	switch	.text
4147  0858               _TIM2_GetCounter:
4149  0858 89            	pushw	x
4150       00000002      OFST:	set	2
4153                     ; 1063      uint16_t tmpcntr = 0;
4155                     ; 1065     tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4157  0859 c6530a        	ld	a,21258
4158  085c 97            	ld	xl,a
4159  085d 4f            	clr	a
4160  085e 02            	rlwa	x,a
4161  085f 1f01          	ldw	(OFST-1,sp),x
4163                     ; 1067     return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4165  0861 c6530b        	ld	a,21259
4166  0864 5f            	clrw	x
4167  0865 97            	ld	xl,a
4168  0866 01            	rrwa	x,a
4169  0867 1a02          	or	a,(OFST+0,sp)
4170  0869 01            	rrwa	x,a
4171  086a 1a01          	or	a,(OFST-1,sp)
4172  086c 01            	rrwa	x,a
4175  086d 5b02          	addw	sp,#2
4176  086f 81            	ret	
4200                     ; 1076 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4200                     ; 1077 {
4201                     	switch	.text
4202  0870               _TIM2_GetPrescaler:
4206                     ; 1079     return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4208  0870 c6530c        	ld	a,21260
4211  0873 81            	ret	
4347                     ; 1096 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4347                     ; 1097 {
4348                     	switch	.text
4349  0874               _TIM2_GetFlagStatus:
4351  0874 89            	pushw	x
4352  0875 89            	pushw	x
4353       00000002      OFST:	set	2
4356                     ; 1098     FlagStatus bitstatus = RESET;
4358                     ; 1099     uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4362                     ; 1102     assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4364  0876 a30001        	cpw	x,#1
4365  0879 272c          	jreq	L617
4366  087b a30002        	cpw	x,#2
4367  087e 2727          	jreq	L617
4368  0880 a30004        	cpw	x,#4
4369  0883 2722          	jreq	L617
4370  0885 a30008        	cpw	x,#8
4371  0888 271d          	jreq	L617
4372  088a a30200        	cpw	x,#512
4373  088d 2718          	jreq	L617
4374  088f a30400        	cpw	x,#1024
4375  0892 2713          	jreq	L617
4376  0894 a30800        	cpw	x,#2048
4377  0897 270e          	jreq	L617
4378  0899 ae044e        	ldw	x,#1102
4379  089c 89            	pushw	x
4380  089d 5f            	clrw	x
4381  089e 89            	pushw	x
4382  089f ae0000        	ldw	x,#L302
4383  08a2 cd0000        	call	_assert_failed
4385  08a5 5b04          	addw	sp,#4
4386  08a7               L617:
4387                     ; 1104     tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4389  08a7 c65302        	ld	a,21250
4390  08aa 1404          	and	a,(OFST+2,sp)
4391  08ac 6b01          	ld	(OFST-1,sp),a
4393                     ; 1105     tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4395  08ae 7b03          	ld	a,(OFST+1,sp)
4396  08b0 6b02          	ld	(OFST+0,sp),a
4398                     ; 1107     if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4400  08b2 c45303        	and	a,21251
4401  08b5 1a01          	or	a,(OFST-1,sp)
4402  08b7 2702          	jreq	L5561
4403                     ; 1109         bitstatus = SET;
4405  08b9 a601          	ld	a,#1
4408  08bb               L5561:
4409                     ; 1113         bitstatus = RESET;
4412                     ; 1115     return (FlagStatus)bitstatus;
4416  08bb 5b04          	addw	sp,#4
4417  08bd 81            	ret	
4453                     ; 1132 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4453                     ; 1133 {
4454                     	switch	.text
4455  08be               _TIM2_ClearFlag:
4457  08be 89            	pushw	x
4458       00000000      OFST:	set	0
4461                     ; 1135     assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4463  08bf 01            	rrwa	x,a
4464  08c0 a4f0          	and	a,#240
4465  08c2 01            	rrwa	x,a
4466  08c3 a4f1          	and	a,#241
4467  08c5 01            	rrwa	x,a
4468  08c6 5d            	tnzw	x
4469  08c7 2604          	jrne	L427
4470  08c9 1e01          	ldw	x,(OFST+1,sp)
4471  08cb 260e          	jrne	L627
4472  08cd               L427:
4473  08cd ae046f        	ldw	x,#1135
4474  08d0 89            	pushw	x
4475  08d1 5f            	clrw	x
4476  08d2 89            	pushw	x
4477  08d3 ae0000        	ldw	x,#L302
4478  08d6 cd0000        	call	_assert_failed
4480  08d9 5b04          	addw	sp,#4
4481  08db               L627:
4482                     ; 1138     TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4484  08db 7b02          	ld	a,(OFST+2,sp)
4485  08dd 43            	cpl	a
4486  08de c75302        	ld	21250,a
4487                     ; 1139     TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4489  08e1 35ff5303      	mov	21251,#255
4490                     ; 1140 }
4493  08e5 85            	popw	x
4494  08e6 81            	ret	
4555                     ; 1154 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4555                     ; 1155 {
4556                     	switch	.text
4557  08e7               _TIM2_GetITStatus:
4559  08e7 88            	push	a
4560  08e8 89            	pushw	x
4561       00000002      OFST:	set	2
4564                     ; 1156     ITStatus bitstatus = RESET;
4566                     ; 1157     uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4570                     ; 1160     assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4572  08e9 a101          	cp	a,#1
4573  08eb 271a          	jreq	L047
4574  08ed a102          	cp	a,#2
4575  08ef 2716          	jreq	L047
4576  08f1 a104          	cp	a,#4
4577  08f3 2712          	jreq	L047
4578  08f5 a108          	cp	a,#8
4579  08f7 270e          	jreq	L047
4580  08f9 ae0488        	ldw	x,#1160
4581  08fc 89            	pushw	x
4582  08fd 5f            	clrw	x
4583  08fe 89            	pushw	x
4584  08ff ae0000        	ldw	x,#L302
4585  0902 cd0000        	call	_assert_failed
4587  0905 5b04          	addw	sp,#4
4588  0907               L047:
4589                     ; 1162     TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4591  0907 c65302        	ld	a,21250
4592  090a 1403          	and	a,(OFST+1,sp)
4593  090c 6b01          	ld	(OFST-1,sp),a
4595                     ; 1164     TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4597  090e c65301        	ld	a,21249
4598  0911 1403          	and	a,(OFST+1,sp)
4599  0913 6b02          	ld	(OFST+0,sp),a
4601                     ; 1166     if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4603  0915 7b01          	ld	a,(OFST-1,sp)
4604  0917 2708          	jreq	L5271
4606  0919 7b02          	ld	a,(OFST+0,sp)
4607  091b 2704          	jreq	L5271
4608                     ; 1168         bitstatus = SET;
4610  091d a601          	ld	a,#1
4613  091f 2001          	jra	L7271
4614  0921               L5271:
4615                     ; 1172         bitstatus = RESET;
4617  0921 4f            	clr	a
4619  0922               L7271:
4620                     ; 1174     return (ITStatus)(bitstatus);
4624  0922 5b03          	addw	sp,#3
4625  0924 81            	ret	
4662                     ; 1188 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4662                     ; 1189 {
4663                     	switch	.text
4664  0925               _TIM2_ClearITPendingBit:
4666  0925 88            	push	a
4667       00000000      OFST:	set	0
4670                     ; 1191     assert_param(IS_TIM2_IT_OK(TIM2_IT));
4672  0926 4d            	tnz	a
4673  0927 2704          	jreq	L647
4674  0929 a110          	cp	a,#16
4675  092b 250e          	jrult	L057
4676  092d               L647:
4677  092d ae04a7        	ldw	x,#1191
4678  0930 89            	pushw	x
4679  0931 5f            	clrw	x
4680  0932 89            	pushw	x
4681  0933 ae0000        	ldw	x,#L302
4682  0936 cd0000        	call	_assert_failed
4684  0939 5b04          	addw	sp,#4
4685  093b               L057:
4686                     ; 1194     TIM2->SR1 = (uint8_t)(~TIM2_IT);
4688  093b 7b01          	ld	a,(OFST+1,sp)
4689  093d 43            	cpl	a
4690  093e c75302        	ld	21250,a
4691                     ; 1195 }
4694  0941 84            	pop	a
4695  0942 81            	ret	
4741                     ; 1214 static void TI1_Config(uint8_t TIM2_ICPolarity,
4741                     ; 1215                        uint8_t TIM2_ICSelection,
4741                     ; 1216                        uint8_t TIM2_ICFilter)
4741                     ; 1217 {
4742                     	switch	.text
4743  0943               L3_TI1_Config:
4745  0943 89            	pushw	x
4746  0944 88            	push	a
4747       00000001      OFST:	set	1
4750                     ; 1219     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4752  0945 72115308      	bres	21256,#0
4753                     ; 1222     TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4753                     ; 1223                              | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4755  0949 7b06          	ld	a,(OFST+5,sp)
4756  094b 97            	ld	xl,a
4757  094c a610          	ld	a,#16
4758  094e 42            	mul	x,a
4759  094f 9f            	ld	a,xl
4760  0950 1a03          	or	a,(OFST+2,sp)
4761  0952 6b01          	ld	(OFST+0,sp),a
4763  0954 c65305        	ld	a,21253
4764  0957 a40c          	and	a,#12
4765  0959 1a01          	or	a,(OFST+0,sp)
4766  095b c75305        	ld	21253,a
4767                     ; 1226     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4769  095e 7b02          	ld	a,(OFST+1,sp)
4770  0960 2706          	jreq	L7671
4771                     ; 1228         TIM2->CCER1 |= TIM2_CCER1_CC1P;
4773  0962 72125308      	bset	21256,#1
4775  0966 2004          	jra	L1771
4776  0968               L7671:
4777                     ; 1232         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4779  0968 72135308      	bres	21256,#1
4780  096c               L1771:
4781                     ; 1235     TIM2->CCER1 |= TIM2_CCER1_CC1E;
4783  096c 72105308      	bset	21256,#0
4784                     ; 1236 }
4787  0970 5b03          	addw	sp,#3
4788  0972 81            	ret	
4834                     ; 1255 static void TI2_Config(uint8_t TIM2_ICPolarity,
4834                     ; 1256                        uint8_t TIM2_ICSelection,
4834                     ; 1257                        uint8_t TIM2_ICFilter)
4834                     ; 1258 {
4835                     	switch	.text
4836  0973               L5_TI2_Config:
4838  0973 89            	pushw	x
4839  0974 88            	push	a
4840       00000001      OFST:	set	1
4843                     ; 1260     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4845  0975 72195308      	bres	21256,#4
4846                     ; 1263     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4846                     ; 1264                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4848  0979 7b06          	ld	a,(OFST+5,sp)
4849  097b 97            	ld	xl,a
4850  097c a610          	ld	a,#16
4851  097e 42            	mul	x,a
4852  097f 9f            	ld	a,xl
4853  0980 1a03          	or	a,(OFST+2,sp)
4854  0982 6b01          	ld	(OFST+0,sp),a
4856  0984 c65306        	ld	a,21254
4857  0987 a40c          	and	a,#12
4858  0989 1a01          	or	a,(OFST+0,sp)
4859  098b c75306        	ld	21254,a
4860                     ; 1268     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4862  098e 7b02          	ld	a,(OFST+1,sp)
4863  0990 2706          	jreq	L3102
4864                     ; 1270         TIM2->CCER1 |= TIM2_CCER1_CC2P;
4866  0992 721a5308      	bset	21256,#5
4868  0996 2004          	jra	L5102
4869  0998               L3102:
4870                     ; 1274         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4872  0998 721b5308      	bres	21256,#5
4873  099c               L5102:
4874                     ; 1278     TIM2->CCER1 |= TIM2_CCER1_CC2E;
4876  099c 72185308      	bset	21256,#4
4877                     ; 1280 }
4880  09a0 5b03          	addw	sp,#3
4881  09a2 81            	ret	
4927                     ; 1296 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4927                     ; 1297                        uint8_t TIM2_ICFilter)
4927                     ; 1298 {
4928                     	switch	.text
4929  09a3               L7_TI3_Config:
4931  09a3 89            	pushw	x
4932  09a4 88            	push	a
4933       00000001      OFST:	set	1
4936                     ; 1300     TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4938  09a5 72115309      	bres	21257,#0
4939                     ; 1303     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4939                     ; 1304                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4941  09a9 7b06          	ld	a,(OFST+5,sp)
4942  09ab 97            	ld	xl,a
4943  09ac a610          	ld	a,#16
4944  09ae 42            	mul	x,a
4945  09af 9f            	ld	a,xl
4946  09b0 1a03          	or	a,(OFST+2,sp)
4947  09b2 6b01          	ld	(OFST+0,sp),a
4949  09b4 c65307        	ld	a,21255
4950  09b7 a40c          	and	a,#12
4951  09b9 1a01          	or	a,(OFST+0,sp)
4952  09bb c75307        	ld	21255,a
4953                     ; 1308     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4955  09be 7b02          	ld	a,(OFST+1,sp)
4956  09c0 2706          	jreq	L7302
4957                     ; 1310         TIM2->CCER2 |= TIM2_CCER2_CC3P;
4959  09c2 72125309      	bset	21257,#1
4961  09c6 2004          	jra	L1402
4962  09c8               L7302:
4963                     ; 1314         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4965  09c8 72135309      	bres	21257,#1
4966  09cc               L1402:
4967                     ; 1317     TIM2->CCER2 |= TIM2_CCER2_CC3E;
4969  09cc 72105309      	bset	21257,#0
4970                     ; 1318 }
4973  09d0 5b03          	addw	sp,#3
4974  09d2 81            	ret	
4987                     	xdef	_TIM2_ClearITPendingBit
4988                     	xdef	_TIM2_GetITStatus
4989                     	xdef	_TIM2_ClearFlag
4990                     	xdef	_TIM2_GetFlagStatus
4991                     	xdef	_TIM2_GetPrescaler
4992                     	xdef	_TIM2_GetCounter
4993                     	xdef	_TIM2_GetCapture3
4994                     	xdef	_TIM2_GetCapture2
4995                     	xdef	_TIM2_GetCapture1
4996                     	xdef	_TIM2_SetIC3Prescaler
4997                     	xdef	_TIM2_SetIC2Prescaler
4998                     	xdef	_TIM2_SetIC1Prescaler
4999                     	xdef	_TIM2_SetCompare3
5000                     	xdef	_TIM2_SetCompare2
5001                     	xdef	_TIM2_SetCompare1
5002                     	xdef	_TIM2_SetAutoreload
5003                     	xdef	_TIM2_SetCounter
5004                     	xdef	_TIM2_SelectOCxM
5005                     	xdef	_TIM2_CCxCmd
5006                     	xdef	_TIM2_OC3PolarityConfig
5007                     	xdef	_TIM2_OC2PolarityConfig
5008                     	xdef	_TIM2_OC1PolarityConfig
5009                     	xdef	_TIM2_GenerateEvent
5010                     	xdef	_TIM2_OC3PreloadConfig
5011                     	xdef	_TIM2_OC2PreloadConfig
5012                     	xdef	_TIM2_OC1PreloadConfig
5013                     	xdef	_TIM2_ARRPreloadConfig
5014                     	xdef	_TIM2_ForcedOC3Config
5015                     	xdef	_TIM2_ForcedOC2Config
5016                     	xdef	_TIM2_ForcedOC1Config
5017                     	xdef	_TIM2_PrescalerConfig
5018                     	xdef	_TIM2_SelectOnePulseMode
5019                     	xdef	_TIM2_UpdateRequestConfig
5020                     	xdef	_TIM2_UpdateDisableConfig
5021                     	xdef	_TIM2_ITConfig
5022                     	xdef	_TIM2_Cmd
5023                     	xdef	_TIM2_PWMIConfig
5024                     	xdef	_TIM2_ICInit
5025                     	xdef	_TIM2_OC3Init
5026                     	xdef	_TIM2_OC2Init
5027                     	xdef	_TIM2_OC1Init
5028                     	xdef	_TIM2_TimeBaseInit
5029                     	xdef	_TIM2_DeInit
5030                     	xref	_assert_failed
5031                     .const:	section	.text
5032  0000               L302:
5033  0000 6c6962726172  	dc.b	"libraries\src\stm8"
5034  0012 735f74696d32  	dc.b	"s_tim2.c",0
5054                     	end
