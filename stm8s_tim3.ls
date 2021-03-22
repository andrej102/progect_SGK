   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
   4                     ; Optimizer V4.4.7 - 05 Oct 2017
  46                     ; 45 void TIM3_DeInit(void)
  46                     ; 46 {
  48                     	switch	.text
  49  0000               _TIM3_DeInit:
  53                     ; 48     TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
  55  0000 725f5320      	clr	21280
  56                     ; 49     TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
  58  0004 725f5321      	clr	21281
  59                     ; 50     TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
  61  0008 725f5323      	clr	21283
  62                     ; 53     TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
  64  000c 725f5327      	clr	21287
  65                     ; 56     TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
  67  0010 725f5327      	clr	21287
  68                     ; 57     TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
  70  0014 725f5325      	clr	21285
  71                     ; 58     TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
  73  0018 725f5326      	clr	21286
  74                     ; 59     TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
  76  001c 725f5328      	clr	21288
  77                     ; 60     TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
  79  0020 725f5329      	clr	21289
  80                     ; 61     TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
  82  0024 725f532a      	clr	21290
  83                     ; 62     TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
  85  0028 35ff532b      	mov	21291,#255
  86                     ; 63     TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
  88  002c 35ff532c      	mov	21292,#255
  89                     ; 64     TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
  91  0030 725f532d      	clr	21293
  92                     ; 65     TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
  94  0034 725f532e      	clr	21294
  95                     ; 66     TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
  97  0038 725f532f      	clr	21295
  98                     ; 67     TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
 100  003c 725f5330      	clr	21296
 101                     ; 68     TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
 103  0040 725f5322      	clr	21282
 104                     ; 69 }
 107  0044 81            	ret	
 273                     ; 78 void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
 273                     ; 79                         uint16_t TIM3_Period)
 273                     ; 80 {
 274                     	switch	.text
 275  0045               _TIM3_TimeBaseInit:
 277       ffffffff      OFST: set -1
 280                     ; 82     TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
 282  0045 c7532a        	ld	21290,a
 283                     ; 84     TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
 285  0048 7b03          	ld	a,(OFST+4,sp)
 286  004a c7532b        	ld	21291,a
 287                     ; 85     TIM3->ARRL = (uint8_t)(TIM3_Period);
 289  004d 7b04          	ld	a,(OFST+5,sp)
 290  004f c7532c        	ld	21292,a
 291                     ; 86 }
 294  0052 81            	ret	
 450                     ; 96 void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 450                     ; 97                   TIM3_OutputState_TypeDef TIM3_OutputState,
 450                     ; 98                   uint16_t TIM3_Pulse,
 450                     ; 99                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 450                     ; 100 {
 451                     	switch	.text
 452  0053               _TIM3_OC1Init:
 454  0053 89            	pushw	x
 455  0054 88            	push	a
 456       00000001      OFST:	set	1
 459                     ; 102     assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 461  0055 9e            	ld	a,xh
 462  0056 4d            	tnz	a
 463  0057 2727          	jreq	L61
 464  0059 9e            	ld	a,xh
 465  005a a110          	cp	a,#16
 466  005c 2722          	jreq	L61
 467  005e 9e            	ld	a,xh
 468  005f a120          	cp	a,#32
 469  0061 271d          	jreq	L61
 470  0063 9e            	ld	a,xh
 471  0064 a130          	cp	a,#48
 472  0066 2718          	jreq	L61
 473  0068 9e            	ld	a,xh
 474  0069 a160          	cp	a,#96
 475  006b 2713          	jreq	L61
 476  006d 9e            	ld	a,xh
 477  006e a170          	cp	a,#112
 478  0070 270e          	jreq	L61
 479  0072 ae0066        	ldw	x,#102
 480  0075 89            	pushw	x
 481  0076 5f            	clrw	x
 482  0077 89            	pushw	x
 483  0078 ae0000        	ldw	x,#L102
 484  007b cd0000        	call	_assert_failed
 486  007e 5b04          	addw	sp,#4
 487  0080               L61:
 488                     ; 103     assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 490  0080 7b03          	ld	a,(OFST+2,sp)
 491  0082 2712          	jreq	L62
 492  0084 a111          	cp	a,#17
 493  0086 270e          	jreq	L62
 494  0088 ae0067        	ldw	x,#103
 495  008b 89            	pushw	x
 496  008c 5f            	clrw	x
 497  008d 89            	pushw	x
 498  008e ae0000        	ldw	x,#L102
 499  0091 cd0000        	call	_assert_failed
 501  0094 5b04          	addw	sp,#4
 502  0096               L62:
 503                     ; 104     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 505  0096 7b08          	ld	a,(OFST+7,sp)
 506  0098 2712          	jreq	L63
 507  009a a122          	cp	a,#34
 508  009c 270e          	jreq	L63
 509  009e ae0068        	ldw	x,#104
 510  00a1 89            	pushw	x
 511  00a2 5f            	clrw	x
 512  00a3 89            	pushw	x
 513  00a4 ae0000        	ldw	x,#L102
 514  00a7 cd0000        	call	_assert_failed
 516  00aa 5b04          	addw	sp,#4
 517  00ac               L63:
 518                     ; 107     TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
 520  00ac c65327        	ld	a,21287
 521  00af a4fc          	and	a,#252
 522  00b1 c75327        	ld	21287,a
 523                     ; 109     TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
 525  00b4 7b08          	ld	a,(OFST+7,sp)
 526  00b6 a402          	and	a,#2
 527  00b8 6b01          	ld	(OFST+0,sp),a
 529  00ba 7b03          	ld	a,(OFST+2,sp)
 530  00bc a401          	and	a,#1
 531  00be 1a01          	or	a,(OFST+0,sp)
 532  00c0 ca5327        	or	a,21287
 533  00c3 c75327        	ld	21287,a
 534                     ; 112     TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
 536  00c6 c65325        	ld	a,21285
 537  00c9 a48f          	and	a,#143
 538  00cb 1a02          	or	a,(OFST+1,sp)
 539  00cd c75325        	ld	21285,a
 540                     ; 115     TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
 542  00d0 7b06          	ld	a,(OFST+5,sp)
 543  00d2 c7532d        	ld	21293,a
 544                     ; 116     TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
 546  00d5 7b07          	ld	a,(OFST+6,sp)
 547  00d7 c7532e        	ld	21294,a
 548                     ; 117 }
 551  00da 5b03          	addw	sp,#3
 552  00dc 81            	ret	
 615                     ; 128 void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 615                     ; 129                   TIM3_OutputState_TypeDef TIM3_OutputState,
 615                     ; 130                   uint16_t TIM3_Pulse,
 615                     ; 131                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 615                     ; 132 {
 616                     	switch	.text
 617  00dd               _TIM3_OC2Init:
 619  00dd 89            	pushw	x
 620  00de 88            	push	a
 621       00000001      OFST:	set	1
 624                     ; 134     assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 626  00df 9e            	ld	a,xh
 627  00e0 4d            	tnz	a
 628  00e1 2727          	jreq	L05
 629  00e3 9e            	ld	a,xh
 630  00e4 a110          	cp	a,#16
 631  00e6 2722          	jreq	L05
 632  00e8 9e            	ld	a,xh
 633  00e9 a120          	cp	a,#32
 634  00eb 271d          	jreq	L05
 635  00ed 9e            	ld	a,xh
 636  00ee a130          	cp	a,#48
 637  00f0 2718          	jreq	L05
 638  00f2 9e            	ld	a,xh
 639  00f3 a160          	cp	a,#96
 640  00f5 2713          	jreq	L05
 641  00f7 9e            	ld	a,xh
 642  00f8 a170          	cp	a,#112
 643  00fa 270e          	jreq	L05
 644  00fc ae0086        	ldw	x,#134
 645  00ff 89            	pushw	x
 646  0100 5f            	clrw	x
 647  0101 89            	pushw	x
 648  0102 ae0000        	ldw	x,#L102
 649  0105 cd0000        	call	_assert_failed
 651  0108 5b04          	addw	sp,#4
 652  010a               L05:
 653                     ; 135     assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 655  010a 7b03          	ld	a,(OFST+2,sp)
 656  010c 2712          	jreq	L06
 657  010e a111          	cp	a,#17
 658  0110 270e          	jreq	L06
 659  0112 ae0087        	ldw	x,#135
 660  0115 89            	pushw	x
 661  0116 5f            	clrw	x
 662  0117 89            	pushw	x
 663  0118 ae0000        	ldw	x,#L102
 664  011b cd0000        	call	_assert_failed
 666  011e 5b04          	addw	sp,#4
 667  0120               L06:
 668                     ; 136     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 670  0120 7b08          	ld	a,(OFST+7,sp)
 671  0122 2712          	jreq	L07
 672  0124 a122          	cp	a,#34
 673  0126 270e          	jreq	L07
 674  0128 ae0088        	ldw	x,#136
 675  012b 89            	pushw	x
 676  012c 5f            	clrw	x
 677  012d 89            	pushw	x
 678  012e ae0000        	ldw	x,#L102
 679  0131 cd0000        	call	_assert_failed
 681  0134 5b04          	addw	sp,#4
 682  0136               L07:
 683                     ; 140     TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
 685  0136 c65327        	ld	a,21287
 686  0139 a4cf          	and	a,#207
 687  013b c75327        	ld	21287,a
 688                     ; 142     TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
 690  013e 7b08          	ld	a,(OFST+7,sp)
 691  0140 a420          	and	a,#32
 692  0142 6b01          	ld	(OFST+0,sp),a
 694  0144 7b03          	ld	a,(OFST+2,sp)
 695  0146 a410          	and	a,#16
 696  0148 1a01          	or	a,(OFST+0,sp)
 697  014a ca5327        	or	a,21287
 698  014d c75327        	ld	21287,a
 699                     ; 146     TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
 701  0150 c65326        	ld	a,21286
 702  0153 a48f          	and	a,#143
 703  0155 1a02          	or	a,(OFST+1,sp)
 704  0157 c75326        	ld	21286,a
 705                     ; 150     TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
 707  015a 7b06          	ld	a,(OFST+5,sp)
 708  015c c7532f        	ld	21295,a
 709                     ; 151     TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
 711  015f 7b07          	ld	a,(OFST+6,sp)
 712  0161 c75330        	ld	21296,a
 713                     ; 152 }
 716  0164 5b03          	addw	sp,#3
 717  0166 81            	ret	
 900                     ; 163 void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
 900                     ; 164                  TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
 900                     ; 165                  TIM3_ICSelection_TypeDef TIM3_ICSelection,
 900                     ; 166                  TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
 900                     ; 167                  uint8_t TIM3_ICFilter)
 900                     ; 168 {
 901                     	switch	.text
 902  0167               _TIM3_ICInit:
 904  0167 89            	pushw	x
 905       00000000      OFST:	set	0
 908                     ; 170     assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
 910  0168 9e            	ld	a,xh
 911  0169 4d            	tnz	a
 912  016a 2712          	jreq	L201
 913  016c 9e            	ld	a,xh
 914  016d 4a            	dec	a
 915  016e 270e          	jreq	L201
 916  0170 ae00aa        	ldw	x,#170
 917  0173 89            	pushw	x
 918  0174 5f            	clrw	x
 919  0175 89            	pushw	x
 920  0176 ae0000        	ldw	x,#L102
 921  0179 cd0000        	call	_assert_failed
 923  017c 5b04          	addw	sp,#4
 924  017e               L201:
 925                     ; 171     assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
 927  017e 7b02          	ld	a,(OFST+2,sp)
 928  0180 2712          	jreq	L211
 929  0182 a144          	cp	a,#68
 930  0184 270e          	jreq	L211
 931  0186 ae00ab        	ldw	x,#171
 932  0189 89            	pushw	x
 933  018a 5f            	clrw	x
 934  018b 89            	pushw	x
 935  018c ae0000        	ldw	x,#L102
 936  018f cd0000        	call	_assert_failed
 938  0192 5b04          	addw	sp,#4
 939  0194               L211:
 940                     ; 172     assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
 942  0194 7b05          	ld	a,(OFST+5,sp)
 943  0196 a101          	cp	a,#1
 944  0198 2716          	jreq	L221
 945  019a a102          	cp	a,#2
 946  019c 2712          	jreq	L221
 947  019e a103          	cp	a,#3
 948  01a0 270e          	jreq	L221
 949  01a2 ae00ac        	ldw	x,#172
 950  01a5 89            	pushw	x
 951  01a6 5f            	clrw	x
 952  01a7 89            	pushw	x
 953  01a8 ae0000        	ldw	x,#L102
 954  01ab cd0000        	call	_assert_failed
 956  01ae 5b04          	addw	sp,#4
 957  01b0               L221:
 958                     ; 173     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
 960  01b0 7b06          	ld	a,(OFST+6,sp)
 961  01b2 271a          	jreq	L231
 962  01b4 a104          	cp	a,#4
 963  01b6 2716          	jreq	L231
 964  01b8 a108          	cp	a,#8
 965  01ba 2712          	jreq	L231
 966  01bc a10c          	cp	a,#12
 967  01be 270e          	jreq	L231
 968  01c0 ae00ad        	ldw	x,#173
 969  01c3 89            	pushw	x
 970  01c4 5f            	clrw	x
 971  01c5 89            	pushw	x
 972  01c6 ae0000        	ldw	x,#L102
 973  01c9 cd0000        	call	_assert_failed
 975  01cc 5b04          	addw	sp,#4
 976  01ce               L231:
 977                     ; 174     assert_param(IS_TIM3_IC_FILTER_OK(TIM3_ICFilter));
 979  01ce 7b07          	ld	a,(OFST+7,sp)
 980  01d0 a110          	cp	a,#16
 981  01d2 250e          	jrult	L041
 982  01d4 ae00ae        	ldw	x,#174
 983  01d7 89            	pushw	x
 984  01d8 5f            	clrw	x
 985  01d9 89            	pushw	x
 986  01da ae0000        	ldw	x,#L102
 987  01dd cd0000        	call	_assert_failed
 989  01e0 5b04          	addw	sp,#4
 990  01e2               L041:
 991                     ; 176     if (TIM3_Channel != TIM3_CHANNEL_2)
 993  01e2 7b01          	ld	a,(OFST+1,sp)
 994  01e4 4a            	dec	a
 995  01e5 2714          	jreq	L533
 996                     ; 179         TI1_Config((uint8_t)TIM3_ICPolarity,
 996                     ; 180                    (uint8_t)TIM3_ICSelection,
 996                     ; 181                    (uint8_t)TIM3_ICFilter);
 998  01e7 7b07          	ld	a,(OFST+7,sp)
 999  01e9 88            	push	a
1000  01ea 7b06          	ld	a,(OFST+6,sp)
1001  01ec 97            	ld	xl,a
1002  01ed 7b03          	ld	a,(OFST+3,sp)
1003  01ef 95            	ld	xh,a
1004  01f0 cd0791        	call	L3_TI1_Config
1006  01f3 84            	pop	a
1007                     ; 184         TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1009  01f4 7b06          	ld	a,(OFST+6,sp)
1010  01f6 cd0624        	call	_TIM3_SetIC1Prescaler
1013  01f9 2012          	jra	L733
1014  01fb               L533:
1015                     ; 189         TI2_Config((uint8_t)TIM3_ICPolarity,
1015                     ; 190                    (uint8_t)TIM3_ICSelection,
1015                     ; 191                    (uint8_t)TIM3_ICFilter);
1017  01fb 7b07          	ld	a,(OFST+7,sp)
1018  01fd 88            	push	a
1019  01fe 7b06          	ld	a,(OFST+6,sp)
1020  0200 97            	ld	xl,a
1021  0201 7b03          	ld	a,(OFST+3,sp)
1022  0203 95            	ld	xh,a
1023  0204 cd07c1        	call	L5_TI2_Config
1025  0207 84            	pop	a
1026                     ; 194         TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1028  0208 7b06          	ld	a,(OFST+6,sp)
1029  020a cd064e        	call	_TIM3_SetIC2Prescaler
1031  020d               L733:
1032                     ; 196 }
1035  020d 85            	popw	x
1036  020e 81            	ret	
1127                     ; 206 void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
1127                     ; 207                      TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
1127                     ; 208                      TIM3_ICSelection_TypeDef TIM3_ICSelection,
1127                     ; 209                      TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
1127                     ; 210                      uint8_t TIM3_ICFilter)
1127                     ; 211 {
1128                     	switch	.text
1129  020f               _TIM3_PWMIConfig:
1131  020f 89            	pushw	x
1132  0210 89            	pushw	x
1133       00000002      OFST:	set	2
1136                     ; 212     uint8_t icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
1138                     ; 213     uint8_t icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
1140                     ; 216     assert_param(IS_TIM3_PWMI_CHANNEL_OK(TIM3_Channel));
1142  0211 9e            	ld	a,xh
1143  0212 4d            	tnz	a
1144  0213 2712          	jreq	L261
1145  0215 9e            	ld	a,xh
1146  0216 4a            	dec	a
1147  0217 270e          	jreq	L261
1148  0219 ae00d8        	ldw	x,#216
1149  021c 89            	pushw	x
1150  021d 5f            	clrw	x
1151  021e 89            	pushw	x
1152  021f ae0000        	ldw	x,#L102
1153  0222 cd0000        	call	_assert_failed
1155  0225 5b04          	addw	sp,#4
1156  0227               L261:
1157                     ; 217     assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
1159  0227 7b04          	ld	a,(OFST+2,sp)
1160  0229 2712          	jreq	L271
1161  022b a144          	cp	a,#68
1162  022d 270e          	jreq	L271
1163  022f ae00d9        	ldw	x,#217
1164  0232 89            	pushw	x
1165  0233 5f            	clrw	x
1166  0234 89            	pushw	x
1167  0235 ae0000        	ldw	x,#L102
1168  0238 cd0000        	call	_assert_failed
1170  023b 5b04          	addw	sp,#4
1171  023d               L271:
1172                     ; 218     assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
1174  023d 7b07          	ld	a,(OFST+5,sp)
1175  023f a101          	cp	a,#1
1176  0241 2716          	jreq	L202
1177  0243 a102          	cp	a,#2
1178  0245 2712          	jreq	L202
1179  0247 a103          	cp	a,#3
1180  0249 270e          	jreq	L202
1181  024b ae00da        	ldw	x,#218
1182  024e 89            	pushw	x
1183  024f 5f            	clrw	x
1184  0250 89            	pushw	x
1185  0251 ae0000        	ldw	x,#L102
1186  0254 cd0000        	call	_assert_failed
1188  0257 5b04          	addw	sp,#4
1189  0259               L202:
1190                     ; 219     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
1192  0259 7b08          	ld	a,(OFST+6,sp)
1193  025b 271a          	jreq	L212
1194  025d a104          	cp	a,#4
1195  025f 2716          	jreq	L212
1196  0261 a108          	cp	a,#8
1197  0263 2712          	jreq	L212
1198  0265 a10c          	cp	a,#12
1199  0267 270e          	jreq	L212
1200  0269 ae00db        	ldw	x,#219
1201  026c 89            	pushw	x
1202  026d 5f            	clrw	x
1203  026e 89            	pushw	x
1204  026f ae0000        	ldw	x,#L102
1205  0272 cd0000        	call	_assert_failed
1207  0275 5b04          	addw	sp,#4
1208  0277               L212:
1209                     ; 222     if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
1211  0277 7b04          	ld	a,(OFST+2,sp)
1212  0279 a144          	cp	a,#68
1213  027b 2706          	jreq	L104
1214                     ; 224         icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
1216  027d a644          	ld	a,#68
1217  027f 6b01          	ld	(OFST-1,sp),a
1220  0281 2002          	jra	L304
1221  0283               L104:
1222                     ; 228         icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
1224  0283 0f01          	clr	(OFST-1,sp)
1226  0285               L304:
1227                     ; 232     if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
1229  0285 7b07          	ld	a,(OFST+5,sp)
1230  0287 4a            	dec	a
1231  0288 2604          	jrne	L504
1232                     ; 234         icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
1234  028a a602          	ld	a,#2
1236  028c 2002          	jra	L704
1237  028e               L504:
1238                     ; 238         icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
1240  028e a601          	ld	a,#1
1241  0290               L704:
1242  0290 6b02          	ld	(OFST+0,sp),a
1244                     ; 241     if (TIM3_Channel != TIM3_CHANNEL_2)
1246  0292 7b03          	ld	a,(OFST+1,sp)
1247  0294 4a            	dec	a
1248  0295 2726          	jreq	L114
1249                     ; 244         TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
1249                     ; 245                    (uint8_t)TIM3_ICFilter);
1251  0297 7b09          	ld	a,(OFST+7,sp)
1252  0299 88            	push	a
1253  029a 7b08          	ld	a,(OFST+6,sp)
1254  029c 97            	ld	xl,a
1255  029d 7b05          	ld	a,(OFST+3,sp)
1256  029f 95            	ld	xh,a
1257  02a0 cd0791        	call	L3_TI1_Config
1259  02a3 84            	pop	a
1260                     ; 248         TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1262  02a4 7b08          	ld	a,(OFST+6,sp)
1263  02a6 cd0624        	call	_TIM3_SetIC1Prescaler
1265                     ; 251         TI2_Config(icpolarity, icselection, TIM3_ICFilter);
1267  02a9 7b09          	ld	a,(OFST+7,sp)
1268  02ab 88            	push	a
1269  02ac 7b03          	ld	a,(OFST+1,sp)
1270  02ae 97            	ld	xl,a
1271  02af 7b02          	ld	a,(OFST+0,sp)
1272  02b1 95            	ld	xh,a
1273  02b2 cd07c1        	call	L5_TI2_Config
1275  02b5 84            	pop	a
1276                     ; 254         TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1278  02b6 7b08          	ld	a,(OFST+6,sp)
1279  02b8 cd064e        	call	_TIM3_SetIC2Prescaler
1282  02bb 2024          	jra	L314
1283  02bd               L114:
1284                     ; 259         TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
1284                     ; 260                    (uint8_t)TIM3_ICFilter);
1286  02bd 7b09          	ld	a,(OFST+7,sp)
1287  02bf 88            	push	a
1288  02c0 7b08          	ld	a,(OFST+6,sp)
1289  02c2 97            	ld	xl,a
1290  02c3 7b05          	ld	a,(OFST+3,sp)
1291  02c5 95            	ld	xh,a
1292  02c6 cd07c1        	call	L5_TI2_Config
1294  02c9 84            	pop	a
1295                     ; 263         TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1297  02ca 7b08          	ld	a,(OFST+6,sp)
1298  02cc cd064e        	call	_TIM3_SetIC2Prescaler
1300                     ; 266         TI1_Config(icpolarity, icselection, TIM3_ICFilter);
1302  02cf 7b09          	ld	a,(OFST+7,sp)
1303  02d1 88            	push	a
1304  02d2 7b03          	ld	a,(OFST+1,sp)
1305  02d4 97            	ld	xl,a
1306  02d5 7b02          	ld	a,(OFST+0,sp)
1307  02d7 95            	ld	xh,a
1308  02d8 cd0791        	call	L3_TI1_Config
1310  02db 84            	pop	a
1311                     ; 269         TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1313  02dc 7b08          	ld	a,(OFST+6,sp)
1314  02de cd0624        	call	_TIM3_SetIC1Prescaler
1316  02e1               L314:
1317                     ; 271 }
1320  02e1 5b04          	addw	sp,#4
1321  02e3 81            	ret	
1377                     ; 280 void TIM3_Cmd(FunctionalState NewState)
1377                     ; 281 {
1378                     	switch	.text
1379  02e4               _TIM3_Cmd:
1381  02e4 88            	push	a
1382       00000000      OFST:	set	0
1385                     ; 283     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1387  02e5 4d            	tnz	a
1388  02e6 2711          	jreq	L442
1389  02e8 4a            	dec	a
1390  02e9 270e          	jreq	L442
1391  02eb ae011b        	ldw	x,#283
1392  02ee 89            	pushw	x
1393  02ef 5f            	clrw	x
1394  02f0 89            	pushw	x
1395  02f1 ae0000        	ldw	x,#L102
1396  02f4 cd0000        	call	_assert_failed
1398  02f7 5b04          	addw	sp,#4
1399  02f9               L442:
1400                     ; 286     if (NewState != DISABLE)
1402  02f9 7b01          	ld	a,(OFST+1,sp)
1403  02fb 2706          	jreq	L344
1404                     ; 288         TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
1406  02fd 72105320      	bset	21280,#0
1408  0301 2004          	jra	L544
1409  0303               L344:
1410                     ; 292         TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
1412  0303 72115320      	bres	21280,#0
1413  0307               L544:
1414                     ; 294 }
1417  0307 84            	pop	a
1418  0308 81            	ret	
1491                     ; 309 void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
1491                     ; 310 {
1492                     	switch	.text
1493  0309               _TIM3_ITConfig:
1495  0309 89            	pushw	x
1496       00000000      OFST:	set	0
1499                     ; 312     assert_param(IS_TIM3_IT_OK(TIM3_IT));
1501  030a 9e            	ld	a,xh
1502  030b 4d            	tnz	a
1503  030c 2705          	jreq	L252
1504  030e 9e            	ld	a,xh
1505  030f a108          	cp	a,#8
1506  0311 250e          	jrult	L452
1507  0313               L252:
1508  0313 ae0138        	ldw	x,#312
1509  0316 89            	pushw	x
1510  0317 5f            	clrw	x
1511  0318 89            	pushw	x
1512  0319 ae0000        	ldw	x,#L102
1513  031c cd0000        	call	_assert_failed
1515  031f 5b04          	addw	sp,#4
1516  0321               L452:
1517                     ; 313     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1519  0321 7b02          	ld	a,(OFST+2,sp)
1520  0323 2711          	jreq	L462
1521  0325 4a            	dec	a
1522  0326 270e          	jreq	L462
1523  0328 ae0139        	ldw	x,#313
1524  032b 89            	pushw	x
1525  032c 5f            	clrw	x
1526  032d 89            	pushw	x
1527  032e ae0000        	ldw	x,#L102
1528  0331 cd0000        	call	_assert_failed
1530  0334 5b04          	addw	sp,#4
1531  0336               L462:
1532                     ; 315     if (NewState != DISABLE)
1534  0336 7b02          	ld	a,(OFST+2,sp)
1535  0338 2707          	jreq	L305
1536                     ; 318         TIM3->IER |= (uint8_t)TIM3_IT;
1538  033a c65321        	ld	a,21281
1539  033d 1a01          	or	a,(OFST+1,sp)
1541  033f 2006          	jra	L505
1542  0341               L305:
1543                     ; 323         TIM3->IER &= (uint8_t)(~TIM3_IT);
1545  0341 7b01          	ld	a,(OFST+1,sp)
1546  0343 43            	cpl	a
1547  0344 c45321        	and	a,21281
1548  0347               L505:
1549  0347 c75321        	ld	21281,a
1550                     ; 325 }
1553  034a 85            	popw	x
1554  034b 81            	ret	
1591                     ; 334 void TIM3_UpdateDisableConfig(FunctionalState NewState)
1591                     ; 335 {
1592                     	switch	.text
1593  034c               _TIM3_UpdateDisableConfig:
1595  034c 88            	push	a
1596       00000000      OFST:	set	0
1599                     ; 337     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1601  034d 4d            	tnz	a
1602  034e 2711          	jreq	L672
1603  0350 4a            	dec	a
1604  0351 270e          	jreq	L672
1605  0353 ae0151        	ldw	x,#337
1606  0356 89            	pushw	x
1607  0357 5f            	clrw	x
1608  0358 89            	pushw	x
1609  0359 ae0000        	ldw	x,#L102
1610  035c cd0000        	call	_assert_failed
1612  035f 5b04          	addw	sp,#4
1613  0361               L672:
1614                     ; 340     if (NewState != DISABLE)
1616  0361 7b01          	ld	a,(OFST+1,sp)
1617  0363 2706          	jreq	L525
1618                     ; 342         TIM3->CR1 |= TIM3_CR1_UDIS;
1620  0365 72125320      	bset	21280,#1
1622  0369 2004          	jra	L725
1623  036b               L525:
1624                     ; 346         TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
1626  036b 72135320      	bres	21280,#1
1627  036f               L725:
1628                     ; 348 }
1631  036f 84            	pop	a
1632  0370 81            	ret	
1691                     ; 358 void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
1691                     ; 359 {
1692                     	switch	.text
1693  0371               _TIM3_UpdateRequestConfig:
1695  0371 88            	push	a
1696       00000000      OFST:	set	0
1699                     ; 361     assert_param(IS_TIM3_UPDATE_SOURCE_OK(TIM3_UpdateSource));
1701  0372 4d            	tnz	a
1702  0373 2711          	jreq	L013
1703  0375 4a            	dec	a
1704  0376 270e          	jreq	L013
1705  0378 ae0169        	ldw	x,#361
1706  037b 89            	pushw	x
1707  037c 5f            	clrw	x
1708  037d 89            	pushw	x
1709  037e ae0000        	ldw	x,#L102
1710  0381 cd0000        	call	_assert_failed
1712  0384 5b04          	addw	sp,#4
1713  0386               L013:
1714                     ; 364     if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
1716  0386 7b01          	ld	a,(OFST+1,sp)
1717  0388 2706          	jreq	L755
1718                     ; 366         TIM3->CR1 |= TIM3_CR1_URS;
1720  038a 72145320      	bset	21280,#2
1722  038e 2004          	jra	L165
1723  0390               L755:
1724                     ; 370         TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
1726  0390 72155320      	bres	21280,#2
1727  0394               L165:
1728                     ; 372 }
1731  0394 84            	pop	a
1732  0395 81            	ret	
1790                     ; 383 void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
1790                     ; 384 {
1791                     	switch	.text
1792  0396               _TIM3_SelectOnePulseMode:
1794  0396 88            	push	a
1795       00000000      OFST:	set	0
1798                     ; 386     assert_param(IS_TIM3_OPM_MODE_OK(TIM3_OPMode));
1800  0397 a101          	cp	a,#1
1801  0399 2711          	jreq	L223
1802  039b 4d            	tnz	a
1803  039c 270e          	jreq	L223
1804  039e ae0182        	ldw	x,#386
1805  03a1 89            	pushw	x
1806  03a2 5f            	clrw	x
1807  03a3 89            	pushw	x
1808  03a4 ae0000        	ldw	x,#L102
1809  03a7 cd0000        	call	_assert_failed
1811  03aa 5b04          	addw	sp,#4
1812  03ac               L223:
1813                     ; 389     if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
1815  03ac 7b01          	ld	a,(OFST+1,sp)
1816  03ae 2706          	jreq	L116
1817                     ; 391         TIM3->CR1 |= TIM3_CR1_OPM;
1819  03b0 72165320      	bset	21280,#3
1821  03b4 2004          	jra	L316
1822  03b6               L116:
1823                     ; 395         TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
1825  03b6 72175320      	bres	21280,#3
1826  03ba               L316:
1827                     ; 398 }
1830  03ba 84            	pop	a
1831  03bb 81            	ret	
1900                     ; 429 void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
1900                     ; 430                           TIM3_PSCReloadMode_TypeDef TIM3_PSCReloadMode)
1900                     ; 431 {
1901                     	switch	.text
1902  03bc               _TIM3_PrescalerConfig:
1904  03bc 89            	pushw	x
1905       00000000      OFST:	set	0
1908                     ; 433     assert_param(IS_TIM3_PRESCALER_RELOAD_OK(TIM3_PSCReloadMode));
1910  03bd 9f            	ld	a,xl
1911  03be 4d            	tnz	a
1912  03bf 2712          	jreq	L433
1913  03c1 9f            	ld	a,xl
1914  03c2 4a            	dec	a
1915  03c3 270e          	jreq	L433
1916  03c5 ae01b1        	ldw	x,#433
1917  03c8 89            	pushw	x
1918  03c9 5f            	clrw	x
1919  03ca 89            	pushw	x
1920  03cb ae0000        	ldw	x,#L102
1921  03ce cd0000        	call	_assert_failed
1923  03d1 5b04          	addw	sp,#4
1924  03d3               L433:
1925                     ; 434     assert_param(IS_TIM3_PRESCALER_OK(Prescaler));
1927  03d3 7b01          	ld	a,(OFST+1,sp)
1928  03d5 274c          	jreq	L443
1929  03d7 a101          	cp	a,#1
1930  03d9 2748          	jreq	L443
1931  03db a102          	cp	a,#2
1932  03dd 2744          	jreq	L443
1933  03df a103          	cp	a,#3
1934  03e1 2740          	jreq	L443
1935  03e3 a104          	cp	a,#4
1936  03e5 273c          	jreq	L443
1937  03e7 a105          	cp	a,#5
1938  03e9 2738          	jreq	L443
1939  03eb a106          	cp	a,#6
1940  03ed 2734          	jreq	L443
1941  03ef a107          	cp	a,#7
1942  03f1 2730          	jreq	L443
1943  03f3 a108          	cp	a,#8
1944  03f5 272c          	jreq	L443
1945  03f7 a109          	cp	a,#9
1946  03f9 2728          	jreq	L443
1947  03fb a10a          	cp	a,#10
1948  03fd 2724          	jreq	L443
1949  03ff a10b          	cp	a,#11
1950  0401 2720          	jreq	L443
1951  0403 a10c          	cp	a,#12
1952  0405 271c          	jreq	L443
1953  0407 a10d          	cp	a,#13
1954  0409 2718          	jreq	L443
1955  040b a10e          	cp	a,#14
1956  040d 2714          	jreq	L443
1957  040f a10f          	cp	a,#15
1958  0411 2710          	jreq	L443
1959  0413 ae01b2        	ldw	x,#434
1960  0416 89            	pushw	x
1961  0417 5f            	clrw	x
1962  0418 89            	pushw	x
1963  0419 ae0000        	ldw	x,#L102
1964  041c cd0000        	call	_assert_failed
1966  041f 5b04          	addw	sp,#4
1967  0421 7b01          	ld	a,(OFST+1,sp)
1968  0423               L443:
1969                     ; 437     TIM3->PSCR = (uint8_t)Prescaler;
1971  0423 c7532a        	ld	21290,a
1972                     ; 440     TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
1974  0426 7b02          	ld	a,(OFST+2,sp)
1975  0428 c75324        	ld	21284,a
1976                     ; 441 }
1979  042b 85            	popw	x
1980  042c 81            	ret	
2039                     ; 452 void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
2039                     ; 453 {
2040                     	switch	.text
2041  042d               _TIM3_ForcedOC1Config:
2043  042d 88            	push	a
2044       00000000      OFST:	set	0
2047                     ; 455     assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
2049  042e a150          	cp	a,#80
2050  0430 2712          	jreq	L653
2051  0432 a140          	cp	a,#64
2052  0434 270e          	jreq	L653
2053  0436 ae01c7        	ldw	x,#455
2054  0439 89            	pushw	x
2055  043a 5f            	clrw	x
2056  043b 89            	pushw	x
2057  043c ae0000        	ldw	x,#L102
2058  043f cd0000        	call	_assert_failed
2060  0442 5b04          	addw	sp,#4
2061  0444               L653:
2062                     ; 458     TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
2064  0444 c65325        	ld	a,21285
2065  0447 a48f          	and	a,#143
2066  0449 1a01          	or	a,(OFST+1,sp)
2067  044b c75325        	ld	21285,a
2068                     ; 459 }
2071  044e 84            	pop	a
2072  044f 81            	ret	
2109                     ; 470 void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
2109                     ; 471 {
2110                     	switch	.text
2111  0450               _TIM3_ForcedOC2Config:
2113  0450 88            	push	a
2114       00000000      OFST:	set	0
2117                     ; 473     assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
2119  0451 a150          	cp	a,#80
2120  0453 2712          	jreq	L073
2121  0455 a140          	cp	a,#64
2122  0457 270e          	jreq	L073
2123  0459 ae01d9        	ldw	x,#473
2124  045c 89            	pushw	x
2125  045d 5f            	clrw	x
2126  045e 89            	pushw	x
2127  045f ae0000        	ldw	x,#L102
2128  0462 cd0000        	call	_assert_failed
2130  0465 5b04          	addw	sp,#4
2131  0467               L073:
2132                     ; 476     TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
2134  0467 c65326        	ld	a,21286
2135  046a a48f          	and	a,#143
2136  046c 1a01          	or	a,(OFST+1,sp)
2137  046e c75326        	ld	21286,a
2138                     ; 477 }
2141  0471 84            	pop	a
2142  0472 81            	ret	
2179                     ; 486 void TIM3_ARRPreloadConfig(FunctionalState NewState)
2179                     ; 487 {
2180                     	switch	.text
2181  0473               _TIM3_ARRPreloadConfig:
2183  0473 88            	push	a
2184       00000000      OFST:	set	0
2187                     ; 489     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2189  0474 4d            	tnz	a
2190  0475 2711          	jreq	L204
2191  0477 4a            	dec	a
2192  0478 270e          	jreq	L204
2193  047a ae01e9        	ldw	x,#489
2194  047d 89            	pushw	x
2195  047e 5f            	clrw	x
2196  047f 89            	pushw	x
2197  0480 ae0000        	ldw	x,#L102
2198  0483 cd0000        	call	_assert_failed
2200  0486 5b04          	addw	sp,#4
2201  0488               L204:
2202                     ; 492     if (NewState != DISABLE)
2204  0488 7b01          	ld	a,(OFST+1,sp)
2205  048a 2706          	jreq	L137
2206                     ; 494         TIM3->CR1 |= TIM3_CR1_ARPE;
2208  048c 721e5320      	bset	21280,#7
2210  0490 2004          	jra	L337
2211  0492               L137:
2212                     ; 498         TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
2214  0492 721f5320      	bres	21280,#7
2215  0496               L337:
2216                     ; 500 }
2219  0496 84            	pop	a
2220  0497 81            	ret	
2257                     ; 509 void TIM3_OC1PreloadConfig(FunctionalState NewState)
2257                     ; 510 {
2258                     	switch	.text
2259  0498               _TIM3_OC1PreloadConfig:
2261  0498 88            	push	a
2262       00000000      OFST:	set	0
2265                     ; 512     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2267  0499 4d            	tnz	a
2268  049a 2711          	jreq	L414
2269  049c 4a            	dec	a
2270  049d 270e          	jreq	L414
2271  049f ae0200        	ldw	x,#512
2272  04a2 89            	pushw	x
2273  04a3 5f            	clrw	x
2274  04a4 89            	pushw	x
2275  04a5 ae0000        	ldw	x,#L102
2276  04a8 cd0000        	call	_assert_failed
2278  04ab 5b04          	addw	sp,#4
2279  04ad               L414:
2280                     ; 515     if (NewState != DISABLE)
2282  04ad 7b01          	ld	a,(OFST+1,sp)
2283  04af 2706          	jreq	L357
2284                     ; 517         TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
2286  04b1 72165325      	bset	21285,#3
2288  04b5 2004          	jra	L557
2289  04b7               L357:
2290                     ; 521         TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
2292  04b7 72175325      	bres	21285,#3
2293  04bb               L557:
2294                     ; 523 }
2297  04bb 84            	pop	a
2298  04bc 81            	ret	
2335                     ; 532 void TIM3_OC2PreloadConfig(FunctionalState NewState)
2335                     ; 533 {
2336                     	switch	.text
2337  04bd               _TIM3_OC2PreloadConfig:
2339  04bd 88            	push	a
2340       00000000      OFST:	set	0
2343                     ; 535     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2345  04be 4d            	tnz	a
2346  04bf 2711          	jreq	L624
2347  04c1 4a            	dec	a
2348  04c2 270e          	jreq	L624
2349  04c4 ae0217        	ldw	x,#535
2350  04c7 89            	pushw	x
2351  04c8 5f            	clrw	x
2352  04c9 89            	pushw	x
2353  04ca ae0000        	ldw	x,#L102
2354  04cd cd0000        	call	_assert_failed
2356  04d0 5b04          	addw	sp,#4
2357  04d2               L624:
2358                     ; 538     if (NewState != DISABLE)
2360  04d2 7b01          	ld	a,(OFST+1,sp)
2361  04d4 2706          	jreq	L577
2362                     ; 540         TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
2364  04d6 72165326      	bset	21286,#3
2366  04da 2004          	jra	L777
2367  04dc               L577:
2368                     ; 544         TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
2370  04dc 72175326      	bres	21286,#3
2371  04e0               L777:
2372                     ; 546 }
2375  04e0 84            	pop	a
2376  04e1 81            	ret	
2442                     ; 557 void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
2442                     ; 558 {
2443                     	switch	.text
2444  04e2               _TIM3_GenerateEvent:
2446  04e2 88            	push	a
2447       00000000      OFST:	set	0
2450                     ; 560     assert_param(IS_TIM3_EVENT_SOURCE_OK(TIM3_EventSource));
2452  04e3 4d            	tnz	a
2453  04e4 260e          	jrne	L634
2454  04e6 ae0230        	ldw	x,#560
2455  04e9 89            	pushw	x
2456  04ea 5f            	clrw	x
2457  04eb 89            	pushw	x
2458  04ec ae0000        	ldw	x,#L102
2459  04ef cd0000        	call	_assert_failed
2461  04f2 5b04          	addw	sp,#4
2462  04f4               L634:
2463                     ; 563     TIM3->EGR = (uint8_t)TIM3_EventSource;
2465  04f4 7b01          	ld	a,(OFST+1,sp)
2466  04f6 c75324        	ld	21284,a
2467                     ; 564 }
2470  04f9 84            	pop	a
2471  04fa 81            	ret	
2508                     ; 575 void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2508                     ; 576 {
2509                     	switch	.text
2510  04fb               _TIM3_OC1PolarityConfig:
2512  04fb 88            	push	a
2513       00000000      OFST:	set	0
2516                     ; 578     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2518  04fc 4d            	tnz	a
2519  04fd 2712          	jreq	L054
2520  04ff a122          	cp	a,#34
2521  0501 270e          	jreq	L054
2522  0503 ae0242        	ldw	x,#578
2523  0506 89            	pushw	x
2524  0507 5f            	clrw	x
2525  0508 89            	pushw	x
2526  0509 ae0000        	ldw	x,#L102
2527  050c cd0000        	call	_assert_failed
2529  050f 5b04          	addw	sp,#4
2530  0511               L054:
2531                     ; 581     if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2533  0511 7b01          	ld	a,(OFST+1,sp)
2534  0513 2706          	jreq	L7401
2535                     ; 583         TIM3->CCER1 |= TIM3_CCER1_CC1P;
2537  0515 72125327      	bset	21287,#1
2539  0519 2004          	jra	L1501
2540  051b               L7401:
2541                     ; 587         TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
2543  051b 72135327      	bres	21287,#1
2544  051f               L1501:
2545                     ; 589 }
2548  051f 84            	pop	a
2549  0520 81            	ret	
2586                     ; 600 void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2586                     ; 601 {
2587                     	switch	.text
2588  0521               _TIM3_OC2PolarityConfig:
2590  0521 88            	push	a
2591       00000000      OFST:	set	0
2594                     ; 603     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2596  0522 4d            	tnz	a
2597  0523 2712          	jreq	L264
2598  0525 a122          	cp	a,#34
2599  0527 270e          	jreq	L264
2600  0529 ae025b        	ldw	x,#603
2601  052c 89            	pushw	x
2602  052d 5f            	clrw	x
2603  052e 89            	pushw	x
2604  052f ae0000        	ldw	x,#L102
2605  0532 cd0000        	call	_assert_failed
2607  0535 5b04          	addw	sp,#4
2608  0537               L264:
2609                     ; 606     if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2611  0537 7b01          	ld	a,(OFST+1,sp)
2612  0539 2706          	jreq	L1701
2613                     ; 608         TIM3->CCER1 |= TIM3_CCER1_CC2P;
2615  053b 721a5327      	bset	21287,#5
2617  053f 2004          	jra	L3701
2618  0541               L1701:
2619                     ; 612         TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
2621  0541 721b5327      	bres	21287,#5
2622  0545               L3701:
2623                     ; 614 }
2626  0545 84            	pop	a
2627  0546 81            	ret	
2673                     ; 627 void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
2673                     ; 628 {
2674                     	switch	.text
2675  0547               _TIM3_CCxCmd:
2677  0547 89            	pushw	x
2678       00000000      OFST:	set	0
2681                     ; 630     assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2683  0548 9e            	ld	a,xh
2684  0549 4d            	tnz	a
2685  054a 2712          	jreq	L474
2686  054c 9e            	ld	a,xh
2687  054d 4a            	dec	a
2688  054e 270e          	jreq	L474
2689  0550 ae0276        	ldw	x,#630
2690  0553 89            	pushw	x
2691  0554 5f            	clrw	x
2692  0555 89            	pushw	x
2693  0556 ae0000        	ldw	x,#L102
2694  0559 cd0000        	call	_assert_failed
2696  055c 5b04          	addw	sp,#4
2697  055e               L474:
2698                     ; 631     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2700  055e 7b02          	ld	a,(OFST+2,sp)
2701  0560 2711          	jreq	L405
2702  0562 4a            	dec	a
2703  0563 270e          	jreq	L405
2704  0565 ae0277        	ldw	x,#631
2705  0568 89            	pushw	x
2706  0569 5f            	clrw	x
2707  056a 89            	pushw	x
2708  056b ae0000        	ldw	x,#L102
2709  056e cd0000        	call	_assert_failed
2711  0571 5b04          	addw	sp,#4
2712  0573               L405:
2713                     ; 633     if (TIM3_Channel == TIM3_CHANNEL_1)
2715  0573 7b01          	ld	a,(OFST+1,sp)
2716  0575 2610          	jrne	L7111
2717                     ; 636         if (NewState != DISABLE)
2719  0577 7b02          	ld	a,(OFST+2,sp)
2720  0579 2706          	jreq	L1211
2721                     ; 638             TIM3->CCER1 |= TIM3_CCER1_CC1E;
2723  057b 72105327      	bset	21287,#0
2725  057f 2014          	jra	L5211
2726  0581               L1211:
2727                     ; 642             TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
2729  0581 72115327      	bres	21287,#0
2730  0585 200e          	jra	L5211
2731  0587               L7111:
2732                     ; 649         if (NewState != DISABLE)
2734  0587 7b02          	ld	a,(OFST+2,sp)
2735  0589 2706          	jreq	L7211
2736                     ; 651             TIM3->CCER1 |= TIM3_CCER1_CC2E;
2738  058b 72185327      	bset	21287,#4
2740  058f 2004          	jra	L5211
2741  0591               L7211:
2742                     ; 655             TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
2744  0591 72195327      	bres	21287,#4
2745  0595               L5211:
2746                     ; 659 }
2749  0595 85            	popw	x
2750  0596 81            	ret	
2796                     ; 680 void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
2796                     ; 681 {
2797                     	switch	.text
2798  0597               _TIM3_SelectOCxM:
2800  0597 89            	pushw	x
2801       00000000      OFST:	set	0
2804                     ; 683     assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2806  0598 9e            	ld	a,xh
2807  0599 4d            	tnz	a
2808  059a 2712          	jreq	L615
2809  059c 9e            	ld	a,xh
2810  059d 4a            	dec	a
2811  059e 270e          	jreq	L615
2812  05a0 ae02ab        	ldw	x,#683
2813  05a3 89            	pushw	x
2814  05a4 5f            	clrw	x
2815  05a5 89            	pushw	x
2816  05a6 ae0000        	ldw	x,#L102
2817  05a9 cd0000        	call	_assert_failed
2819  05ac 5b04          	addw	sp,#4
2820  05ae               L615:
2821                     ; 684     assert_param(IS_TIM3_OCM_OK(TIM3_OCMode));
2823  05ae 7b02          	ld	a,(OFST+2,sp)
2824  05b0 272a          	jreq	L625
2825  05b2 a110          	cp	a,#16
2826  05b4 2726          	jreq	L625
2827  05b6 a120          	cp	a,#32
2828  05b8 2722          	jreq	L625
2829  05ba a130          	cp	a,#48
2830  05bc 271e          	jreq	L625
2831  05be a160          	cp	a,#96
2832  05c0 271a          	jreq	L625
2833  05c2 a170          	cp	a,#112
2834  05c4 2716          	jreq	L625
2835  05c6 a150          	cp	a,#80
2836  05c8 2712          	jreq	L625
2837  05ca a140          	cp	a,#64
2838  05cc 270e          	jreq	L625
2839  05ce ae02ac        	ldw	x,#684
2840  05d1 89            	pushw	x
2841  05d2 5f            	clrw	x
2842  05d3 89            	pushw	x
2843  05d4 ae0000        	ldw	x,#L102
2844  05d7 cd0000        	call	_assert_failed
2846  05da 5b04          	addw	sp,#4
2847  05dc               L625:
2848                     ; 686     if (TIM3_Channel == TIM3_CHANNEL_1)
2850  05dc 7b01          	ld	a,(OFST+1,sp)
2851  05de 2610          	jrne	L5511
2852                     ; 689         TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
2854  05e0 72115327      	bres	21287,#0
2855                     ; 692         TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
2857  05e4 c65325        	ld	a,21285
2858  05e7 a48f          	and	a,#143
2859  05e9 1a02          	or	a,(OFST+2,sp)
2860  05eb c75325        	ld	21285,a
2862  05ee 200e          	jra	L7511
2863  05f0               L5511:
2864                     ; 697         TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
2866  05f0 72195327      	bres	21287,#4
2867                     ; 700         TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
2869  05f4 c65326        	ld	a,21286
2870  05f7 a48f          	and	a,#143
2871  05f9 1a02          	or	a,(OFST+2,sp)
2872  05fb c75326        	ld	21286,a
2873  05fe               L7511:
2874                     ; 702 }
2877  05fe 85            	popw	x
2878  05ff 81            	ret	
2910                     ; 711 void TIM3_SetCounter(uint16_t Counter)
2910                     ; 712 {
2911                     	switch	.text
2912  0600               _TIM3_SetCounter:
2916                     ; 714     TIM3->CNTRH = (uint8_t)(Counter >> 8);
2918  0600 9e            	ld	a,xh
2919  0601 c75328        	ld	21288,a
2920                     ; 715     TIM3->CNTRL = (uint8_t)(Counter);
2922  0604 9f            	ld	a,xl
2923  0605 c75329        	ld	21289,a
2924                     ; 717 }
2927  0608 81            	ret	
2959                     ; 726 void TIM3_SetAutoreload(uint16_t Autoreload)
2959                     ; 727 {
2960                     	switch	.text
2961  0609               _TIM3_SetAutoreload:
2965                     ; 729     TIM3->ARRH = (uint8_t)(Autoreload >> 8);
2967  0609 9e            	ld	a,xh
2968  060a c7532b        	ld	21291,a
2969                     ; 730     TIM3->ARRL = (uint8_t)(Autoreload);
2971  060d 9f            	ld	a,xl
2972  060e c7532c        	ld	21292,a
2973                     ; 731 }
2976  0611 81            	ret	
3008                     ; 740 void TIM3_SetCompare1(uint16_t Compare1)
3008                     ; 741 {
3009                     	switch	.text
3010  0612               _TIM3_SetCompare1:
3014                     ; 743     TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
3016  0612 9e            	ld	a,xh
3017  0613 c7532d        	ld	21293,a
3018                     ; 744     TIM3->CCR1L = (uint8_t)(Compare1);
3020  0616 9f            	ld	a,xl
3021  0617 c7532e        	ld	21294,a
3022                     ; 745 }
3025  061a 81            	ret	
3057                     ; 754 void TIM3_SetCompare2(uint16_t Compare2)
3057                     ; 755 {
3058                     	switch	.text
3059  061b               _TIM3_SetCompare2:
3063                     ; 757     TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
3065  061b 9e            	ld	a,xh
3066  061c c7532f        	ld	21295,a
3067                     ; 758     TIM3->CCR2L = (uint8_t)(Compare2);
3069  061f 9f            	ld	a,xl
3070  0620 c75330        	ld	21296,a
3071                     ; 759 }
3074  0623 81            	ret	
3111                     ; 772 void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
3111                     ; 773 {
3112                     	switch	.text
3113  0624               _TIM3_SetIC1Prescaler:
3115  0624 88            	push	a
3116       00000000      OFST:	set	0
3119                     ; 775     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC1Prescaler));
3121  0625 4d            	tnz	a
3122  0626 271a          	jreq	L055
3123  0628 a104          	cp	a,#4
3124  062a 2716          	jreq	L055
3125  062c a108          	cp	a,#8
3126  062e 2712          	jreq	L055
3127  0630 a10c          	cp	a,#12
3128  0632 270e          	jreq	L055
3129  0634 ae0307        	ldw	x,#775
3130  0637 89            	pushw	x
3131  0638 5f            	clrw	x
3132  0639 89            	pushw	x
3133  063a ae0000        	ldw	x,#L102
3134  063d cd0000        	call	_assert_failed
3136  0640 5b04          	addw	sp,#4
3137  0642               L055:
3138                     ; 778     TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
3140  0642 c65325        	ld	a,21285
3141  0645 a4f3          	and	a,#243
3142  0647 1a01          	or	a,(OFST+1,sp)
3143  0649 c75325        	ld	21285,a
3144                     ; 779 }
3147  064c 84            	pop	a
3148  064d 81            	ret	
3185                     ; 791 void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
3185                     ; 792 {
3186                     	switch	.text
3187  064e               _TIM3_SetIC2Prescaler:
3189  064e 88            	push	a
3190       00000000      OFST:	set	0
3193                     ; 794     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC2Prescaler));
3195  064f 4d            	tnz	a
3196  0650 271a          	jreq	L265
3197  0652 a104          	cp	a,#4
3198  0654 2716          	jreq	L265
3199  0656 a108          	cp	a,#8
3200  0658 2712          	jreq	L265
3201  065a a10c          	cp	a,#12
3202  065c 270e          	jreq	L265
3203  065e ae031a        	ldw	x,#794
3204  0661 89            	pushw	x
3205  0662 5f            	clrw	x
3206  0663 89            	pushw	x
3207  0664 ae0000        	ldw	x,#L102
3208  0667 cd0000        	call	_assert_failed
3210  066a 5b04          	addw	sp,#4
3211  066c               L265:
3212                     ; 797     TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
3214  066c c65326        	ld	a,21286
3215  066f a4f3          	and	a,#243
3216  0671 1a01          	or	a,(OFST+1,sp)
3217  0673 c75326        	ld	21286,a
3218                     ; 798 }
3221  0676 84            	pop	a
3222  0677 81            	ret	
3268                     ; 804 uint16_t TIM3_GetCapture1(void)
3268                     ; 805 {
3269                     	switch	.text
3270  0678               _TIM3_GetCapture1:
3272  0678 5204          	subw	sp,#4
3273       00000004      OFST:	set	4
3276                     ; 807     uint16_t tmpccr1 = 0;
3278                     ; 808     uint8_t tmpccr1l=0, tmpccr1h=0;
3282                     ; 810     tmpccr1h = TIM3->CCR1H;
3284  067a c6532d        	ld	a,21293
3285  067d 6b02          	ld	(OFST-2,sp),a
3287                     ; 811     tmpccr1l = TIM3->CCR1L;
3289  067f c6532e        	ld	a,21294
3290  0682 6b01          	ld	(OFST-3,sp),a
3292                     ; 813     tmpccr1 = (uint16_t)(tmpccr1l);
3294  0684 5f            	clrw	x
3295  0685 97            	ld	xl,a
3296  0686 1f03          	ldw	(OFST-1,sp),x
3298                     ; 814     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3300  0688 5f            	clrw	x
3301  0689 7b02          	ld	a,(OFST-2,sp)
3302  068b 97            	ld	xl,a
3303  068c 7b04          	ld	a,(OFST+0,sp)
3304  068e 01            	rrwa	x,a
3305  068f 1a03          	or	a,(OFST-1,sp)
3306  0691 01            	rrwa	x,a
3308                     ; 816     return (uint16_t)tmpccr1;
3312  0692 5b04          	addw	sp,#4
3313  0694 81            	ret	
3359                     ; 824 uint16_t TIM3_GetCapture2(void)
3359                     ; 825 {
3360                     	switch	.text
3361  0695               _TIM3_GetCapture2:
3363  0695 5204          	subw	sp,#4
3364       00000004      OFST:	set	4
3367                     ; 827     uint16_t tmpccr2 = 0;
3369                     ; 828     uint8_t tmpccr2l=0, tmpccr2h=0;
3373                     ; 830     tmpccr2h = TIM3->CCR2H;
3375  0697 c6532f        	ld	a,21295
3376  069a 6b02          	ld	(OFST-2,sp),a
3378                     ; 831     tmpccr2l = TIM3->CCR2L;
3380  069c c65330        	ld	a,21296
3381  069f 6b01          	ld	(OFST-3,sp),a
3383                     ; 833     tmpccr2 = (uint16_t)(tmpccr2l);
3385  06a1 5f            	clrw	x
3386  06a2 97            	ld	xl,a
3387  06a3 1f03          	ldw	(OFST-1,sp),x
3389                     ; 834     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3391  06a5 5f            	clrw	x
3392  06a6 7b02          	ld	a,(OFST-2,sp)
3393  06a8 97            	ld	xl,a
3394  06a9 7b04          	ld	a,(OFST+0,sp)
3395  06ab 01            	rrwa	x,a
3396  06ac 1a03          	or	a,(OFST-1,sp)
3397  06ae 01            	rrwa	x,a
3399                     ; 836     return (uint16_t)tmpccr2;
3403  06af 5b04          	addw	sp,#4
3404  06b1 81            	ret	
3436                     ; 844 uint16_t TIM3_GetCounter(void)
3436                     ; 845 {
3437                     	switch	.text
3438  06b2               _TIM3_GetCounter:
3440  06b2 89            	pushw	x
3441       00000002      OFST:	set	2
3444                     ; 846    uint16_t tmpcntr = 0;
3446                     ; 848    tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
3448  06b3 c65328        	ld	a,21288
3449  06b6 97            	ld	xl,a
3450  06b7 4f            	clr	a
3451  06b8 02            	rlwa	x,a
3452  06b9 1f01          	ldw	(OFST-1,sp),x
3454                     ; 850     return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
3456  06bb c65329        	ld	a,21289
3457  06be 5f            	clrw	x
3458  06bf 97            	ld	xl,a
3459  06c0 01            	rrwa	x,a
3460  06c1 1a02          	or	a,(OFST+0,sp)
3461  06c3 01            	rrwa	x,a
3462  06c4 1a01          	or	a,(OFST-1,sp)
3463  06c6 01            	rrwa	x,a
3466  06c7 5b02          	addw	sp,#2
3467  06c9 81            	ret	
3491                     ; 859 TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
3491                     ; 860 {
3492                     	switch	.text
3493  06ca               _TIM3_GetPrescaler:
3497                     ; 862     return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
3499  06ca c6532a        	ld	a,21290
3502  06cd 81            	ret	
3624                     ; 877 FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
3624                     ; 878 {
3625                     	switch	.text
3626  06ce               _TIM3_GetFlagStatus:
3628  06ce 89            	pushw	x
3629  06cf 89            	pushw	x
3630       00000002      OFST:	set	2
3633                     ; 879    FlagStatus bitstatus = RESET;
3635                     ; 880    uint8_t tim3_flag_l = 0, tim3_flag_h = 0;
3639                     ; 883     assert_param(IS_TIM3_GET_FLAG_OK(TIM3_FLAG));
3641  06d0 a30001        	cpw	x,#1
3642  06d3 2722          	jreq	L406
3643  06d5 a30002        	cpw	x,#2
3644  06d8 271d          	jreq	L406
3645  06da a30004        	cpw	x,#4
3646  06dd 2718          	jreq	L406
3647  06df a30200        	cpw	x,#512
3648  06e2 2713          	jreq	L406
3649  06e4 a30400        	cpw	x,#1024
3650  06e7 270e          	jreq	L406
3651  06e9 ae0373        	ldw	x,#883
3652  06ec 89            	pushw	x
3653  06ed 5f            	clrw	x
3654  06ee 89            	pushw	x
3655  06ef ae0000        	ldw	x,#L102
3656  06f2 cd0000        	call	_assert_failed
3658  06f5 5b04          	addw	sp,#4
3659  06f7               L406:
3660                     ; 885     tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
3662  06f7 c65322        	ld	a,21282
3663  06fa 1404          	and	a,(OFST+2,sp)
3664  06fc 6b01          	ld	(OFST-1,sp),a
3666                     ; 886     tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
3668  06fe 7b03          	ld	a,(OFST+1,sp)
3669  0700 6b02          	ld	(OFST+0,sp),a
3671                     ; 888     if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
3673  0702 c45323        	and	a,21283
3674  0705 1a01          	or	a,(OFST-1,sp)
3675  0707 2702          	jreq	L5341
3676                     ; 890         bitstatus = SET;
3678  0709 a601          	ld	a,#1
3681  070b               L5341:
3682                     ; 894         bitstatus = RESET;
3685                     ; 896     return (FlagStatus)bitstatus;
3689  070b 5b04          	addw	sp,#4
3690  070d 81            	ret	
3726                     ; 911 void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
3726                     ; 912 {
3727                     	switch	.text
3728  070e               _TIM3_ClearFlag:
3730  070e 89            	pushw	x
3731       00000000      OFST:	set	0
3734                     ; 914     assert_param(IS_TIM3_CLEAR_FLAG_OK(TIM3_FLAG));
3736  070f 01            	rrwa	x,a
3737  0710 a4f8          	and	a,#248
3738  0712 01            	rrwa	x,a
3739  0713 a4f9          	and	a,#249
3740  0715 01            	rrwa	x,a
3741  0716 5d            	tnzw	x
3742  0717 2604          	jrne	L216
3743  0719 1e01          	ldw	x,(OFST+1,sp)
3744  071b 260e          	jrne	L416
3745  071d               L216:
3746  071d ae0392        	ldw	x,#914
3747  0720 89            	pushw	x
3748  0721 5f            	clrw	x
3749  0722 89            	pushw	x
3750  0723 ae0000        	ldw	x,#L102
3751  0726 cd0000        	call	_assert_failed
3753  0729 5b04          	addw	sp,#4
3754  072b               L416:
3755                     ; 917     TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
3757  072b 7b02          	ld	a,(OFST+2,sp)
3758  072d 43            	cpl	a
3759  072e c75322        	ld	21282,a
3760                     ; 918     TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
3762  0731 7b01          	ld	a,(OFST+1,sp)
3763  0733 43            	cpl	a
3764  0734 c75323        	ld	21283,a
3765                     ; 919 }
3768  0737 85            	popw	x
3769  0738 81            	ret	
3830                     ; 932 ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
3830                     ; 933 {
3831                     	switch	.text
3832  0739               _TIM3_GetITStatus:
3834  0739 88            	push	a
3835  073a 89            	pushw	x
3836       00000002      OFST:	set	2
3839                     ; 934     ITStatus bitstatus = RESET;
3841                     ; 935     uint8_t TIM3_itStatus = 0, TIM3_itEnable = 0;
3845                     ; 938     assert_param(IS_TIM3_GET_IT_OK(TIM3_IT));
3847  073b a101          	cp	a,#1
3848  073d 2716          	jreq	L626
3849  073f a102          	cp	a,#2
3850  0741 2712          	jreq	L626
3851  0743 a104          	cp	a,#4
3852  0745 270e          	jreq	L626
3853  0747 ae03aa        	ldw	x,#938
3854  074a 89            	pushw	x
3855  074b 5f            	clrw	x
3856  074c 89            	pushw	x
3857  074d ae0000        	ldw	x,#L102
3858  0750 cd0000        	call	_assert_failed
3860  0753 5b04          	addw	sp,#4
3861  0755               L626:
3862                     ; 940     TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
3864  0755 c65322        	ld	a,21282
3865  0758 1403          	and	a,(OFST+1,sp)
3866  075a 6b01          	ld	(OFST-1,sp),a
3868                     ; 942     TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
3870  075c c65321        	ld	a,21281
3871  075f 1403          	and	a,(OFST+1,sp)
3872  0761 6b02          	ld	(OFST+0,sp),a
3874                     ; 944     if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
3876  0763 7b01          	ld	a,(OFST-1,sp)
3877  0765 2708          	jreq	L5051
3879  0767 7b02          	ld	a,(OFST+0,sp)
3880  0769 2704          	jreq	L5051
3881                     ; 946         bitstatus = SET;
3883  076b a601          	ld	a,#1
3886  076d 2001          	jra	L7051
3887  076f               L5051:
3888                     ; 950         bitstatus = RESET;
3890  076f 4f            	clr	a
3892  0770               L7051:
3893                     ; 952     return (ITStatus)(bitstatus);
3897  0770 5b03          	addw	sp,#3
3898  0772 81            	ret	
3935                     ; 965 void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
3935                     ; 966 {
3936                     	switch	.text
3937  0773               _TIM3_ClearITPendingBit:
3939  0773 88            	push	a
3940       00000000      OFST:	set	0
3943                     ; 968     assert_param(IS_TIM3_IT_OK(TIM3_IT));
3945  0774 4d            	tnz	a
3946  0775 2704          	jreq	L436
3947  0777 a108          	cp	a,#8
3948  0779 250e          	jrult	L636
3949  077b               L436:
3950  077b ae03c8        	ldw	x,#968
3951  077e 89            	pushw	x
3952  077f 5f            	clrw	x
3953  0780 89            	pushw	x
3954  0781 ae0000        	ldw	x,#L102
3955  0784 cd0000        	call	_assert_failed
3957  0787 5b04          	addw	sp,#4
3958  0789               L636:
3959                     ; 971     TIM3->SR1 = (uint8_t)(~TIM3_IT);
3961  0789 7b01          	ld	a,(OFST+1,sp)
3962  078b 43            	cpl	a
3963  078c c75322        	ld	21282,a
3964                     ; 972 }
3967  078f 84            	pop	a
3968  0790 81            	ret	
4014                     ; 991 static void TI1_Config(uint8_t TIM3_ICPolarity,
4014                     ; 992                        uint8_t TIM3_ICSelection,
4014                     ; 993                        uint8_t TIM3_ICFilter)
4014                     ; 994 {
4015                     	switch	.text
4016  0791               L3_TI1_Config:
4018  0791 89            	pushw	x
4019  0792 88            	push	a
4020       00000001      OFST:	set	1
4023                     ; 996     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
4025  0793 72115327      	bres	21287,#0
4026                     ; 999     TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
4028  0797 7b06          	ld	a,(OFST+5,sp)
4029  0799 97            	ld	xl,a
4030  079a a610          	ld	a,#16
4031  079c 42            	mul	x,a
4032  079d 9f            	ld	a,xl
4033  079e 1a03          	or	a,(OFST+2,sp)
4034  07a0 6b01          	ld	(OFST+0,sp),a
4036  07a2 c65325        	ld	a,21285
4037  07a5 a40c          	and	a,#12
4038  07a7 1a01          	or	a,(OFST+0,sp)
4039  07a9 c75325        	ld	21285,a
4040                     ; 1002     if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
4042  07ac 7b02          	ld	a,(OFST+1,sp)
4043  07ae 2706          	jreq	L7451
4044                     ; 1004         TIM3->CCER1 |= TIM3_CCER1_CC1P;
4046  07b0 72125327      	bset	21287,#1
4048  07b4 2004          	jra	L1551
4049  07b6               L7451:
4050                     ; 1008         TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
4052  07b6 72135327      	bres	21287,#1
4053  07ba               L1551:
4054                     ; 1011     TIM3->CCER1 |= TIM3_CCER1_CC1E;
4056  07ba 72105327      	bset	21287,#0
4057                     ; 1012 }
4060  07be 5b03          	addw	sp,#3
4061  07c0 81            	ret	
4107                     ; 1031 static void TI2_Config(uint8_t TIM3_ICPolarity,
4107                     ; 1032                        uint8_t TIM3_ICSelection,
4107                     ; 1033                        uint8_t TIM3_ICFilter)
4107                     ; 1034 {
4108                     	switch	.text
4109  07c1               L5_TI2_Config:
4111  07c1 89            	pushw	x
4112  07c2 88            	push	a
4113       00000001      OFST:	set	1
4116                     ; 1036     TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
4118  07c3 72195327      	bres	21287,#4
4119                     ; 1039     TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
4119                     ; 1040                   TIM3_CCMR_ICxF    ))) | (uint8_t)(( (TIM3_ICSelection)) | 
4119                     ; 1041                   ((uint8_t)( TIM3_ICFilter << 4))));
4121  07c7 7b06          	ld	a,(OFST+5,sp)
4122  07c9 97            	ld	xl,a
4123  07ca a610          	ld	a,#16
4124  07cc 42            	mul	x,a
4125  07cd 9f            	ld	a,xl
4126  07ce 1a03          	or	a,(OFST+2,sp)
4127  07d0 6b01          	ld	(OFST+0,sp),a
4129  07d2 c65326        	ld	a,21286
4130  07d5 a40c          	and	a,#12
4131  07d7 1a01          	or	a,(OFST+0,sp)
4132  07d9 c75326        	ld	21286,a
4133                     ; 1044     if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
4135  07dc 7b02          	ld	a,(OFST+1,sp)
4136  07de 2706          	jreq	L3751
4137                     ; 1046         TIM3->CCER1 |= TIM3_CCER1_CC2P;
4139  07e0 721a5327      	bset	21287,#5
4141  07e4 2004          	jra	L5751
4142  07e6               L3751:
4143                     ; 1050         TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
4145  07e6 721b5327      	bres	21287,#5
4146  07ea               L5751:
4147                     ; 1054     TIM3->CCER1 |= TIM3_CCER1_CC2E;
4149  07ea 72185327      	bset	21287,#4
4150                     ; 1056 }
4153  07ee 5b03          	addw	sp,#3
4154  07f0 81            	ret	
4167                     	xdef	_TIM3_ClearITPendingBit
4168                     	xdef	_TIM3_GetITStatus
4169                     	xdef	_TIM3_ClearFlag
4170                     	xdef	_TIM3_GetFlagStatus
4171                     	xdef	_TIM3_GetPrescaler
4172                     	xdef	_TIM3_GetCounter
4173                     	xdef	_TIM3_GetCapture2
4174                     	xdef	_TIM3_GetCapture1
4175                     	xdef	_TIM3_SetIC2Prescaler
4176                     	xdef	_TIM3_SetIC1Prescaler
4177                     	xdef	_TIM3_SetCompare2
4178                     	xdef	_TIM3_SetCompare1
4179                     	xdef	_TIM3_SetAutoreload
4180                     	xdef	_TIM3_SetCounter
4181                     	xdef	_TIM3_SelectOCxM
4182                     	xdef	_TIM3_CCxCmd
4183                     	xdef	_TIM3_OC2PolarityConfig
4184                     	xdef	_TIM3_OC1PolarityConfig
4185                     	xdef	_TIM3_GenerateEvent
4186                     	xdef	_TIM3_OC2PreloadConfig
4187                     	xdef	_TIM3_OC1PreloadConfig
4188                     	xdef	_TIM3_ARRPreloadConfig
4189                     	xdef	_TIM3_ForcedOC2Config
4190                     	xdef	_TIM3_ForcedOC1Config
4191                     	xdef	_TIM3_PrescalerConfig
4192                     	xdef	_TIM3_SelectOnePulseMode
4193                     	xdef	_TIM3_UpdateRequestConfig
4194                     	xdef	_TIM3_UpdateDisableConfig
4195                     	xdef	_TIM3_ITConfig
4196                     	xdef	_TIM3_Cmd
4197                     	xdef	_TIM3_PWMIConfig
4198                     	xdef	_TIM3_ICInit
4199                     	xdef	_TIM3_OC2Init
4200                     	xdef	_TIM3_OC1Init
4201                     	xdef	_TIM3_TimeBaseInit
4202                     	xdef	_TIM3_DeInit
4203                     	xref	_assert_failed
4204                     .const:	section	.text
4205  0000               L102:
4206  0000 6c6962726172  	dc.b	"libraries\src\stm8"
4207  0012 735f74696d33  	dc.b	"s_tim3.c",0
4227                     	end
