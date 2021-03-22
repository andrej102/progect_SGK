   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
   4                     ; Optimizer V4.4.7 - 05 Oct 2017
  46                     ; 52 void TIM1_DeInit(void)
  46                     ; 53 {
  48                     	switch	.text
  49  0000               _TIM1_DeInit:
  53                     ; 54     TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  55  0000 725f5250      	clr	21072
  56                     ; 55     TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  58  0004 725f5251      	clr	21073
  59                     ; 56     TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  61  0008 725f5252      	clr	21074
  62                     ; 57     TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  64  000c 725f5253      	clr	21075
  65                     ; 58     TIM1->IER  = TIM1_IER_RESET_VALUE;
  67  0010 725f5254      	clr	21076
  68                     ; 59     TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  70  0014 725f5256      	clr	21078
  71                     ; 61     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  73  0018 725f525c      	clr	21084
  74                     ; 62     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  76  001c 725f525d      	clr	21085
  77                     ; 64     TIM1->CCMR1 = 0x01;
  79  0020 35015258      	mov	21080,#1
  80                     ; 65     TIM1->CCMR2 = 0x01;
  82  0024 35015259      	mov	21081,#1
  83                     ; 66     TIM1->CCMR3 = 0x01;
  85  0028 3501525a      	mov	21082,#1
  86                     ; 67     TIM1->CCMR4 = 0x01;
  88  002c 3501525b      	mov	21083,#1
  89                     ; 69     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  91  0030 725f525c      	clr	21084
  92                     ; 70     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  94  0034 725f525d      	clr	21085
  95                     ; 71     TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  97  0038 725f5258      	clr	21080
  98                     ; 72     TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
 100  003c 725f5259      	clr	21081
 101                     ; 73     TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 103  0040 725f525a      	clr	21082
 104                     ; 74     TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 106  0044 725f525b      	clr	21083
 107                     ; 75     TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 109  0048 725f525e      	clr	21086
 110                     ; 76     TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 112  004c 725f525f      	clr	21087
 113                     ; 77     TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 115  0050 725f5260      	clr	21088
 116                     ; 78     TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 118  0054 725f5261      	clr	21089
 119                     ; 79     TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 121  0058 35ff5262      	mov	21090,#255
 122                     ; 80     TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 124  005c 35ff5263      	mov	21091,#255
 125                     ; 81     TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 127  0060 725f5265      	clr	21093
 128                     ; 82     TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 130  0064 725f5266      	clr	21094
 131                     ; 83     TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 133  0068 725f5267      	clr	21095
 134                     ; 84     TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 136  006c 725f5268      	clr	21096
 137                     ; 85     TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 139  0070 725f5269      	clr	21097
 140                     ; 86     TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 142  0074 725f526a      	clr	21098
 143                     ; 87     TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 145  0078 725f526b      	clr	21099
 146                     ; 88     TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 148  007c 725f526c      	clr	21100
 149                     ; 89     TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 151  0080 725f526f      	clr	21103
 152                     ; 90     TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 154  0084 35015257      	mov	21079,#1
 155                     ; 91     TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 157  0088 725f526e      	clr	21102
 158                     ; 92     TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 160  008c 725f526d      	clr	21101
 161                     ; 93     TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 163  0090 725f5264      	clr	21092
 164                     ; 94     TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 166  0094 725f5255      	clr	21077
 167                     ; 95 }
 170  0098 81            	ret	
 274                     ; 105 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 274                     ; 106                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 274                     ; 107                        uint16_t TIM1_Period,
 274                     ; 108                        uint8_t TIM1_RepetitionCounter)
 274                     ; 109 {
 275                     	switch	.text
 276  0099               _TIM1_TimeBaseInit:
 278  0099 89            	pushw	x
 279       00000000      OFST:	set	0
 282                     ; 112     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 284  009a 7b05          	ld	a,(OFST+5,sp)
 285  009c 271e          	jreq	L41
 286  009e a110          	cp	a,#16
 287  00a0 271a          	jreq	L41
 288  00a2 a120          	cp	a,#32
 289  00a4 2716          	jreq	L41
 290  00a6 a140          	cp	a,#64
 291  00a8 2712          	jreq	L41
 292  00aa a160          	cp	a,#96
 293  00ac 270e          	jreq	L41
 294  00ae ae0070        	ldw	x,#112
 295  00b1 89            	pushw	x
 296  00b2 5f            	clrw	x
 297  00b3 89            	pushw	x
 298  00b4 ae0000        	ldw	x,#L37
 299  00b7 cd0000        	call	_assert_failed
 301  00ba 5b04          	addw	sp,#4
 302  00bc               L41:
 303                     ; 115     TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 305  00bc 7b06          	ld	a,(OFST+6,sp)
 306  00be c75262        	ld	21090,a
 307                     ; 116     TIM1->ARRL = (uint8_t)(TIM1_Period);
 309  00c1 7b07          	ld	a,(OFST+7,sp)
 310  00c3 c75263        	ld	21091,a
 311                     ; 119     TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 313  00c6 7b01          	ld	a,(OFST+1,sp)
 314  00c8 c75260        	ld	21088,a
 315                     ; 120     TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 317  00cb 7b02          	ld	a,(OFST+2,sp)
 318  00cd c75261        	ld	21089,a
 319                     ; 123     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 319                     ; 124                            | (uint8_t)(TIM1_CounterMode));
 321  00d0 c65250        	ld	a,21072
 322  00d3 a48f          	and	a,#143
 323  00d5 1a05          	or	a,(OFST+5,sp)
 324  00d7 c75250        	ld	21072,a
 325                     ; 127     TIM1->RCR = TIM1_RepetitionCounter;
 327  00da 7b08          	ld	a,(OFST+8,sp)
 328  00dc c75264        	ld	21092,a
 329                     ; 129 }
 332  00df 85            	popw	x
 333  00e0 81            	ret	
 617                     ; 150 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 617                     ; 151                   TIM1_OutputState_TypeDef TIM1_OutputState,
 617                     ; 152                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 617                     ; 153                   uint16_t TIM1_Pulse,
 617                     ; 154                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 617                     ; 155                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 617                     ; 156                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 617                     ; 157                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 617                     ; 158 {
 618                     	switch	.text
 619  00e1               _TIM1_OC1Init:
 621  00e1 89            	pushw	x
 622  00e2 5203          	subw	sp,#3
 623       00000003      OFST:	set	3
 626                     ; 160     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 628  00e4 9e            	ld	a,xh
 629  00e5 4d            	tnz	a
 630  00e6 2727          	jreq	L62
 631  00e8 9e            	ld	a,xh
 632  00e9 a110          	cp	a,#16
 633  00eb 2722          	jreq	L62
 634  00ed 9e            	ld	a,xh
 635  00ee a120          	cp	a,#32
 636  00f0 271d          	jreq	L62
 637  00f2 9e            	ld	a,xh
 638  00f3 a130          	cp	a,#48
 639  00f5 2718          	jreq	L62
 640  00f7 9e            	ld	a,xh
 641  00f8 a160          	cp	a,#96
 642  00fa 2713          	jreq	L62
 643  00fc 9e            	ld	a,xh
 644  00fd a170          	cp	a,#112
 645  00ff 270e          	jreq	L62
 646  0101 ae00a0        	ldw	x,#160
 647  0104 89            	pushw	x
 648  0105 5f            	clrw	x
 649  0106 89            	pushw	x
 650  0107 ae0000        	ldw	x,#L37
 651  010a cd0000        	call	_assert_failed
 653  010d 5b04          	addw	sp,#4
 654  010f               L62:
 655                     ; 161     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 657  010f 7b05          	ld	a,(OFST+2,sp)
 658  0111 2712          	jreq	L63
 659  0113 a111          	cp	a,#17
 660  0115 270e          	jreq	L63
 661  0117 ae00a1        	ldw	x,#161
 662  011a 89            	pushw	x
 663  011b 5f            	clrw	x
 664  011c 89            	pushw	x
 665  011d ae0000        	ldw	x,#L37
 666  0120 cd0000        	call	_assert_failed
 668  0123 5b04          	addw	sp,#4
 669  0125               L63:
 670                     ; 162     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 672  0125 7b08          	ld	a,(OFST+5,sp)
 673  0127 2712          	jreq	L64
 674  0129 a144          	cp	a,#68
 675  012b 270e          	jreq	L64
 676  012d ae00a2        	ldw	x,#162
 677  0130 89            	pushw	x
 678  0131 5f            	clrw	x
 679  0132 89            	pushw	x
 680  0133 ae0000        	ldw	x,#L37
 681  0136 cd0000        	call	_assert_failed
 683  0139 5b04          	addw	sp,#4
 684  013b               L64:
 685                     ; 163     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 687  013b 7b0b          	ld	a,(OFST+8,sp)
 688  013d 2712          	jreq	L65
 689  013f a122          	cp	a,#34
 690  0141 270e          	jreq	L65
 691  0143 ae00a3        	ldw	x,#163
 692  0146 89            	pushw	x
 693  0147 5f            	clrw	x
 694  0148 89            	pushw	x
 695  0149 ae0000        	ldw	x,#L37
 696  014c cd0000        	call	_assert_failed
 698  014f 5b04          	addw	sp,#4
 699  0151               L65:
 700                     ; 164     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 702  0151 7b0c          	ld	a,(OFST+9,sp)
 703  0153 2712          	jreq	L66
 704  0155 a188          	cp	a,#136
 705  0157 270e          	jreq	L66
 706  0159 ae00a4        	ldw	x,#164
 707  015c 89            	pushw	x
 708  015d 5f            	clrw	x
 709  015e 89            	pushw	x
 710  015f ae0000        	ldw	x,#L37
 711  0162 cd0000        	call	_assert_failed
 713  0165 5b04          	addw	sp,#4
 714  0167               L66:
 715                     ; 165     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 717  0167 7b0d          	ld	a,(OFST+10,sp)
 718  0169 a155          	cp	a,#85
 719  016b 2712          	jreq	L67
 720  016d 7b0d          	ld	a,(OFST+10,sp)
 721  016f 270e          	jreq	L67
 722  0171 ae00a5        	ldw	x,#165
 723  0174 89            	pushw	x
 724  0175 5f            	clrw	x
 725  0176 89            	pushw	x
 726  0177 ae0000        	ldw	x,#L37
 727  017a cd0000        	call	_assert_failed
 729  017d 5b04          	addw	sp,#4
 730  017f               L67:
 731                     ; 166     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 733  017f 7b0e          	ld	a,(OFST+11,sp)
 734  0181 a12a          	cp	a,#42
 735  0183 2712          	jreq	L601
 736  0185 7b0e          	ld	a,(OFST+11,sp)
 737  0187 270e          	jreq	L601
 738  0189 ae00a6        	ldw	x,#166
 739  018c 89            	pushw	x
 740  018d 5f            	clrw	x
 741  018e 89            	pushw	x
 742  018f ae0000        	ldw	x,#L37
 743  0192 cd0000        	call	_assert_failed
 745  0195 5b04          	addw	sp,#4
 746  0197               L601:
 747                     ; 170     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 747                     ; 171                                | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 749  0197 c6525c        	ld	a,21084
 750  019a a4f0          	and	a,#240
 751  019c c7525c        	ld	21084,a
 752                     ; 174   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 752                     ; 175                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 752                     ; 176                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 752                     ; 177                                         | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 754  019f 7b0c          	ld	a,(OFST+9,sp)
 755  01a1 a408          	and	a,#8
 756  01a3 6b03          	ld	(OFST+0,sp),a
 758  01a5 7b0b          	ld	a,(OFST+8,sp)
 759  01a7 a402          	and	a,#2
 760  01a9 1a03          	or	a,(OFST+0,sp)
 761  01ab 6b02          	ld	(OFST-1,sp),a
 763  01ad 7b08          	ld	a,(OFST+5,sp)
 764  01af a404          	and	a,#4
 765  01b1 6b01          	ld	(OFST-2,sp),a
 767  01b3 7b05          	ld	a,(OFST+2,sp)
 768  01b5 a401          	and	a,#1
 769  01b7 1a01          	or	a,(OFST-2,sp)
 770  01b9 1a02          	or	a,(OFST-1,sp)
 771  01bb ca525c        	or	a,21084
 772  01be c7525c        	ld	21084,a
 773                     ; 180     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 773                     ; 181                             (uint8_t)TIM1_OCMode);
 775  01c1 c65258        	ld	a,21080
 776  01c4 a48f          	and	a,#143
 777  01c6 1a04          	or	a,(OFST+1,sp)
 778  01c8 c75258        	ld	21080,a
 779                     ; 184     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 781  01cb c6526f        	ld	a,21103
 782  01ce a4fc          	and	a,#252
 783  01d0 c7526f        	ld	21103,a
 784                     ; 186     TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 784                     ; 187                             (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 786  01d3 7b0e          	ld	a,(OFST+11,sp)
 787  01d5 a402          	and	a,#2
 788  01d7 6b03          	ld	(OFST+0,sp),a
 790  01d9 7b0d          	ld	a,(OFST+10,sp)
 791  01db a401          	and	a,#1
 792  01dd 1a03          	or	a,(OFST+0,sp)
 793  01df ca526f        	or	a,21103
 794  01e2 c7526f        	ld	21103,a
 795                     ; 190     TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 797  01e5 7b09          	ld	a,(OFST+6,sp)
 798  01e7 c75265        	ld	21093,a
 799                     ; 191     TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 801  01ea 7b0a          	ld	a,(OFST+7,sp)
 802  01ec c75266        	ld	21094,a
 803                     ; 192 }
 806  01ef 5b05          	addw	sp,#5
 807  01f1 81            	ret	
 910                     ; 213 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 910                     ; 214                   TIM1_OutputState_TypeDef TIM1_OutputState,
 910                     ; 215                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 910                     ; 216                   uint16_t TIM1_Pulse,
 910                     ; 217                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 910                     ; 218                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 910                     ; 219                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 910                     ; 220                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 910                     ; 221 {
 911                     	switch	.text
 912  01f2               _TIM1_OC2Init:
 914  01f2 89            	pushw	x
 915  01f3 5203          	subw	sp,#3
 916       00000003      OFST:	set	3
 919                     ; 223     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 921  01f5 9e            	ld	a,xh
 922  01f6 4d            	tnz	a
 923  01f7 2727          	jreq	L021
 924  01f9 9e            	ld	a,xh
 925  01fa a110          	cp	a,#16
 926  01fc 2722          	jreq	L021
 927  01fe 9e            	ld	a,xh
 928  01ff a120          	cp	a,#32
 929  0201 271d          	jreq	L021
 930  0203 9e            	ld	a,xh
 931  0204 a130          	cp	a,#48
 932  0206 2718          	jreq	L021
 933  0208 9e            	ld	a,xh
 934  0209 a160          	cp	a,#96
 935  020b 2713          	jreq	L021
 936  020d 9e            	ld	a,xh
 937  020e a170          	cp	a,#112
 938  0210 270e          	jreq	L021
 939  0212 ae00df        	ldw	x,#223
 940  0215 89            	pushw	x
 941  0216 5f            	clrw	x
 942  0217 89            	pushw	x
 943  0218 ae0000        	ldw	x,#L37
 944  021b cd0000        	call	_assert_failed
 946  021e 5b04          	addw	sp,#4
 947  0220               L021:
 948                     ; 224     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 950  0220 7b05          	ld	a,(OFST+2,sp)
 951  0222 2712          	jreq	L031
 952  0224 a111          	cp	a,#17
 953  0226 270e          	jreq	L031
 954  0228 ae00e0        	ldw	x,#224
 955  022b 89            	pushw	x
 956  022c 5f            	clrw	x
 957  022d 89            	pushw	x
 958  022e ae0000        	ldw	x,#L37
 959  0231 cd0000        	call	_assert_failed
 961  0234 5b04          	addw	sp,#4
 962  0236               L031:
 963                     ; 225     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 965  0236 7b08          	ld	a,(OFST+5,sp)
 966  0238 2712          	jreq	L041
 967  023a a144          	cp	a,#68
 968  023c 270e          	jreq	L041
 969  023e ae00e1        	ldw	x,#225
 970  0241 89            	pushw	x
 971  0242 5f            	clrw	x
 972  0243 89            	pushw	x
 973  0244 ae0000        	ldw	x,#L37
 974  0247 cd0000        	call	_assert_failed
 976  024a 5b04          	addw	sp,#4
 977  024c               L041:
 978                     ; 226     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 980  024c 7b0b          	ld	a,(OFST+8,sp)
 981  024e 2712          	jreq	L051
 982  0250 a122          	cp	a,#34
 983  0252 270e          	jreq	L051
 984  0254 ae00e2        	ldw	x,#226
 985  0257 89            	pushw	x
 986  0258 5f            	clrw	x
 987  0259 89            	pushw	x
 988  025a ae0000        	ldw	x,#L37
 989  025d cd0000        	call	_assert_failed
 991  0260 5b04          	addw	sp,#4
 992  0262               L051:
 993                     ; 227     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 995  0262 7b0c          	ld	a,(OFST+9,sp)
 996  0264 2712          	jreq	L061
 997  0266 a188          	cp	a,#136
 998  0268 270e          	jreq	L061
 999  026a ae00e3        	ldw	x,#227
1000  026d 89            	pushw	x
1001  026e 5f            	clrw	x
1002  026f 89            	pushw	x
1003  0270 ae0000        	ldw	x,#L37
1004  0273 cd0000        	call	_assert_failed
1006  0276 5b04          	addw	sp,#4
1007  0278               L061:
1008                     ; 228     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1010  0278 7b0d          	ld	a,(OFST+10,sp)
1011  027a a155          	cp	a,#85
1012  027c 2712          	jreq	L071
1013  027e 7b0d          	ld	a,(OFST+10,sp)
1014  0280 270e          	jreq	L071
1015  0282 ae00e4        	ldw	x,#228
1016  0285 89            	pushw	x
1017  0286 5f            	clrw	x
1018  0287 89            	pushw	x
1019  0288 ae0000        	ldw	x,#L37
1020  028b cd0000        	call	_assert_failed
1022  028e 5b04          	addw	sp,#4
1023  0290               L071:
1024                     ; 229     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1026  0290 7b0e          	ld	a,(OFST+11,sp)
1027  0292 a12a          	cp	a,#42
1028  0294 2712          	jreq	L002
1029  0296 7b0e          	ld	a,(OFST+11,sp)
1030  0298 270e          	jreq	L002
1031  029a ae00e5        	ldw	x,#229
1032  029d 89            	pushw	x
1033  029e 5f            	clrw	x
1034  029f 89            	pushw	x
1035  02a0 ae0000        	ldw	x,#L37
1036  02a3 cd0000        	call	_assert_failed
1038  02a6 5b04          	addw	sp,#4
1039  02a8               L002:
1040                     ; 233     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
1040                     ; 234                                 TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
1042  02a8 c6525c        	ld	a,21084
1043  02ab a40f          	and	a,#15
1044  02ad c7525c        	ld	21084,a
1045                     ; 238     TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
1045                     ; 239                              (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
1045                     ; 240                              (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
1045                     ; 241                              (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
1047  02b0 7b0c          	ld	a,(OFST+9,sp)
1048  02b2 a480          	and	a,#128
1049  02b4 6b03          	ld	(OFST+0,sp),a
1051  02b6 7b0b          	ld	a,(OFST+8,sp)
1052  02b8 a420          	and	a,#32
1053  02ba 1a03          	or	a,(OFST+0,sp)
1054  02bc 6b02          	ld	(OFST-1,sp),a
1056  02be 7b08          	ld	a,(OFST+5,sp)
1057  02c0 a440          	and	a,#64
1058  02c2 6b01          	ld	(OFST-2,sp),a
1060  02c4 7b05          	ld	a,(OFST+2,sp)
1061  02c6 a410          	and	a,#16
1062  02c8 1a01          	or	a,(OFST-2,sp)
1063  02ca 1a02          	or	a,(OFST-1,sp)
1064  02cc ca525c        	or	a,21084
1065  02cf c7525c        	ld	21084,a
1066                     ; 244     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1066                     ; 245                              (uint8_t)TIM1_OCMode);
1068  02d2 c65259        	ld	a,21081
1069  02d5 a48f          	and	a,#143
1070  02d7 1a04          	or	a,(OFST+1,sp)
1071  02d9 c75259        	ld	21081,a
1072                     ; 248     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1074  02dc c6526f        	ld	a,21103
1075  02df a4f3          	and	a,#243
1076  02e1 c7526f        	ld	21103,a
1077                     ; 250     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1077                     ; 251                             (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1079  02e4 7b0e          	ld	a,(OFST+11,sp)
1080  02e6 a408          	and	a,#8
1081  02e8 6b03          	ld	(OFST+0,sp),a
1083  02ea 7b0d          	ld	a,(OFST+10,sp)
1084  02ec a404          	and	a,#4
1085  02ee 1a03          	or	a,(OFST+0,sp)
1086  02f0 ca526f        	or	a,21103
1087  02f3 c7526f        	ld	21103,a
1088                     ; 254     TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1090  02f6 7b09          	ld	a,(OFST+6,sp)
1091  02f8 c75267        	ld	21095,a
1092                     ; 255     TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1094  02fb 7b0a          	ld	a,(OFST+7,sp)
1095  02fd c75268        	ld	21096,a
1096                     ; 257 }
1099  0300 5b05          	addw	sp,#5
1100  0302 81            	ret	
1203                     ; 278 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1203                     ; 279                   TIM1_OutputState_TypeDef TIM1_OutputState,
1203                     ; 280                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1203                     ; 281                   uint16_t TIM1_Pulse,
1203                     ; 282                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1203                     ; 283                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1203                     ; 284                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1203                     ; 285                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1203                     ; 286 {
1204                     	switch	.text
1205  0303               _TIM1_OC3Init:
1207  0303 89            	pushw	x
1208  0304 5203          	subw	sp,#3
1209       00000003      OFST:	set	3
1212                     ; 288     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1214  0306 9e            	ld	a,xh
1215  0307 4d            	tnz	a
1216  0308 2727          	jreq	L212
1217  030a 9e            	ld	a,xh
1218  030b a110          	cp	a,#16
1219  030d 2722          	jreq	L212
1220  030f 9e            	ld	a,xh
1221  0310 a120          	cp	a,#32
1222  0312 271d          	jreq	L212
1223  0314 9e            	ld	a,xh
1224  0315 a130          	cp	a,#48
1225  0317 2718          	jreq	L212
1226  0319 9e            	ld	a,xh
1227  031a a160          	cp	a,#96
1228  031c 2713          	jreq	L212
1229  031e 9e            	ld	a,xh
1230  031f a170          	cp	a,#112
1231  0321 270e          	jreq	L212
1232  0323 ae0120        	ldw	x,#288
1233  0326 89            	pushw	x
1234  0327 5f            	clrw	x
1235  0328 89            	pushw	x
1236  0329 ae0000        	ldw	x,#L37
1237  032c cd0000        	call	_assert_failed
1239  032f 5b04          	addw	sp,#4
1240  0331               L212:
1241                     ; 289     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1243  0331 7b05          	ld	a,(OFST+2,sp)
1244  0333 2712          	jreq	L222
1245  0335 a111          	cp	a,#17
1246  0337 270e          	jreq	L222
1247  0339 ae0121        	ldw	x,#289
1248  033c 89            	pushw	x
1249  033d 5f            	clrw	x
1250  033e 89            	pushw	x
1251  033f ae0000        	ldw	x,#L37
1252  0342 cd0000        	call	_assert_failed
1254  0345 5b04          	addw	sp,#4
1255  0347               L222:
1256                     ; 290     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1258  0347 7b08          	ld	a,(OFST+5,sp)
1259  0349 2712          	jreq	L232
1260  034b a144          	cp	a,#68
1261  034d 270e          	jreq	L232
1262  034f ae0122        	ldw	x,#290
1263  0352 89            	pushw	x
1264  0353 5f            	clrw	x
1265  0354 89            	pushw	x
1266  0355 ae0000        	ldw	x,#L37
1267  0358 cd0000        	call	_assert_failed
1269  035b 5b04          	addw	sp,#4
1270  035d               L232:
1271                     ; 291     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1273  035d 7b0b          	ld	a,(OFST+8,sp)
1274  035f 2712          	jreq	L242
1275  0361 a122          	cp	a,#34
1276  0363 270e          	jreq	L242
1277  0365 ae0123        	ldw	x,#291
1278  0368 89            	pushw	x
1279  0369 5f            	clrw	x
1280  036a 89            	pushw	x
1281  036b ae0000        	ldw	x,#L37
1282  036e cd0000        	call	_assert_failed
1284  0371 5b04          	addw	sp,#4
1285  0373               L242:
1286                     ; 292     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1288  0373 7b0c          	ld	a,(OFST+9,sp)
1289  0375 2712          	jreq	L252
1290  0377 a188          	cp	a,#136
1291  0379 270e          	jreq	L252
1292  037b ae0124        	ldw	x,#292
1293  037e 89            	pushw	x
1294  037f 5f            	clrw	x
1295  0380 89            	pushw	x
1296  0381 ae0000        	ldw	x,#L37
1297  0384 cd0000        	call	_assert_failed
1299  0387 5b04          	addw	sp,#4
1300  0389               L252:
1301                     ; 293     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1303  0389 7b0d          	ld	a,(OFST+10,sp)
1304  038b a155          	cp	a,#85
1305  038d 2712          	jreq	L262
1306  038f 7b0d          	ld	a,(OFST+10,sp)
1307  0391 270e          	jreq	L262
1308  0393 ae0125        	ldw	x,#293
1309  0396 89            	pushw	x
1310  0397 5f            	clrw	x
1311  0398 89            	pushw	x
1312  0399 ae0000        	ldw	x,#L37
1313  039c cd0000        	call	_assert_failed
1315  039f 5b04          	addw	sp,#4
1316  03a1               L262:
1317                     ; 294     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1319  03a1 7b0e          	ld	a,(OFST+11,sp)
1320  03a3 a12a          	cp	a,#42
1321  03a5 2712          	jreq	L272
1322  03a7 7b0e          	ld	a,(OFST+11,sp)
1323  03a9 270e          	jreq	L272
1324  03ab ae0126        	ldw	x,#294
1325  03ae 89            	pushw	x
1326  03af 5f            	clrw	x
1327  03b0 89            	pushw	x
1328  03b1 ae0000        	ldw	x,#L37
1329  03b4 cd0000        	call	_assert_failed
1331  03b7 5b04          	addw	sp,#4
1332  03b9               L272:
1333                     ; 298     TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1333                     ; 299                                 TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1335  03b9 c6525d        	ld	a,21085
1336  03bc a4f0          	and	a,#240
1337  03be c7525d        	ld	21085,a
1338                     ; 302     TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1338                     ; 303                              (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1338                     ; 304                              (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1338                     ; 305                              (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1340  03c1 7b0c          	ld	a,(OFST+9,sp)
1341  03c3 a408          	and	a,#8
1342  03c5 6b03          	ld	(OFST+0,sp),a
1344  03c7 7b0b          	ld	a,(OFST+8,sp)
1345  03c9 a402          	and	a,#2
1346  03cb 1a03          	or	a,(OFST+0,sp)
1347  03cd 6b02          	ld	(OFST-1,sp),a
1349  03cf 7b08          	ld	a,(OFST+5,sp)
1350  03d1 a404          	and	a,#4
1351  03d3 6b01          	ld	(OFST-2,sp),a
1353  03d5 7b05          	ld	a,(OFST+2,sp)
1354  03d7 a401          	and	a,#1
1355  03d9 1a01          	or	a,(OFST-2,sp)
1356  03db 1a02          	or	a,(OFST-1,sp)
1357  03dd ca525d        	or	a,21085
1358  03e0 c7525d        	ld	21085,a
1359                     ; 308     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1359                     ; 309                              (uint8_t)TIM1_OCMode);
1361  03e3 c6525a        	ld	a,21082
1362  03e6 a48f          	and	a,#143
1363  03e8 1a04          	or	a,(OFST+1,sp)
1364  03ea c7525a        	ld	21082,a
1365                     ; 312     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1367  03ed c6526f        	ld	a,21103
1368  03f0 a4cf          	and	a,#207
1369  03f2 c7526f        	ld	21103,a
1370                     ; 314     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1370                     ; 315                             (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1372  03f5 7b0e          	ld	a,(OFST+11,sp)
1373  03f7 a420          	and	a,#32
1374  03f9 6b03          	ld	(OFST+0,sp),a
1376  03fb 7b0d          	ld	a,(OFST+10,sp)
1377  03fd a410          	and	a,#16
1378  03ff 1a03          	or	a,(OFST+0,sp)
1379  0401 ca526f        	or	a,21103
1380  0404 c7526f        	ld	21103,a
1381                     ; 318     TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1383  0407 7b09          	ld	a,(OFST+6,sp)
1384  0409 c75269        	ld	21097,a
1385                     ; 319     TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1387  040c 7b0a          	ld	a,(OFST+7,sp)
1388  040e c7526a        	ld	21098,a
1389                     ; 321 }
1392  0411 5b05          	addw	sp,#5
1393  0413 81            	ret	
1466                     ; 336 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1466                     ; 337                   TIM1_OutputState_TypeDef TIM1_OutputState,
1466                     ; 338                   uint16_t TIM1_Pulse,
1466                     ; 339                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1466                     ; 340                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1466                     ; 341 {
1467                     	switch	.text
1468  0414               _TIM1_OC4Init:
1470  0414 89            	pushw	x
1471  0415 88            	push	a
1472       00000001      OFST:	set	1
1475                     ; 343     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1477  0416 9e            	ld	a,xh
1478  0417 4d            	tnz	a
1479  0418 2727          	jreq	L403
1480  041a 9e            	ld	a,xh
1481  041b a110          	cp	a,#16
1482  041d 2722          	jreq	L403
1483  041f 9e            	ld	a,xh
1484  0420 a120          	cp	a,#32
1485  0422 271d          	jreq	L403
1486  0424 9e            	ld	a,xh
1487  0425 a130          	cp	a,#48
1488  0427 2718          	jreq	L403
1489  0429 9e            	ld	a,xh
1490  042a a160          	cp	a,#96
1491  042c 2713          	jreq	L403
1492  042e 9e            	ld	a,xh
1493  042f a170          	cp	a,#112
1494  0431 270e          	jreq	L403
1495  0433 ae0157        	ldw	x,#343
1496  0436 89            	pushw	x
1497  0437 5f            	clrw	x
1498  0438 89            	pushw	x
1499  0439 ae0000        	ldw	x,#L37
1500  043c cd0000        	call	_assert_failed
1502  043f 5b04          	addw	sp,#4
1503  0441               L403:
1504                     ; 344     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1506  0441 7b03          	ld	a,(OFST+2,sp)
1507  0443 2712          	jreq	L413
1508  0445 a111          	cp	a,#17
1509  0447 270e          	jreq	L413
1510  0449 ae0158        	ldw	x,#344
1511  044c 89            	pushw	x
1512  044d 5f            	clrw	x
1513  044e 89            	pushw	x
1514  044f ae0000        	ldw	x,#L37
1515  0452 cd0000        	call	_assert_failed
1517  0455 5b04          	addw	sp,#4
1518  0457               L413:
1519                     ; 345     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1521  0457 7b08          	ld	a,(OFST+7,sp)
1522  0459 2712          	jreq	L423
1523  045b a122          	cp	a,#34
1524  045d 270e          	jreq	L423
1525  045f ae0159        	ldw	x,#345
1526  0462 89            	pushw	x
1527  0463 5f            	clrw	x
1528  0464 89            	pushw	x
1529  0465 ae0000        	ldw	x,#L37
1530  0468 cd0000        	call	_assert_failed
1532  046b 5b04          	addw	sp,#4
1533  046d               L423:
1534                     ; 346     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1536  046d 7b09          	ld	a,(OFST+8,sp)
1537  046f a155          	cp	a,#85
1538  0471 2712          	jreq	L433
1539  0473 7b09          	ld	a,(OFST+8,sp)
1540  0475 270e          	jreq	L433
1541  0477 ae015a        	ldw	x,#346
1542  047a 89            	pushw	x
1543  047b 5f            	clrw	x
1544  047c 89            	pushw	x
1545  047d ae0000        	ldw	x,#L37
1546  0480 cd0000        	call	_assert_failed
1548  0483 5b04          	addw	sp,#4
1549  0485               L433:
1550                     ; 349     TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1552  0485 c6525d        	ld	a,21085
1553  0488 a4cf          	and	a,#207
1554  048a c7525d        	ld	21085,a
1555                     ; 351     TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1555                     ; 352                              (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1557  048d 7b08          	ld	a,(OFST+7,sp)
1558  048f a420          	and	a,#32
1559  0491 6b01          	ld	(OFST+0,sp),a
1561  0493 7b03          	ld	a,(OFST+2,sp)
1562  0495 a410          	and	a,#16
1563  0497 1a01          	or	a,(OFST+0,sp)
1564  0499 ca525d        	or	a,21085
1565  049c c7525d        	ld	21085,a
1566                     ; 355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1566                     ; 356                             TIM1_OCMode);
1568  049f c6525b        	ld	a,21083
1569  04a2 a48f          	and	a,#143
1570  04a4 1a02          	or	a,(OFST+1,sp)
1571  04a6 c7525b        	ld	21083,a
1572                     ; 359     if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1574  04a9 7b09          	ld	a,(OFST+8,sp)
1575  04ab 270a          	jreq	L124
1576                     ; 361         TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1578  04ad c6526f        	ld	a,21103
1579  04b0 aadf          	or	a,#223
1580  04b2 c7526f        	ld	21103,a
1582  04b5 2004          	jra	L324
1583  04b7               L124:
1584                     ; 365         TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1586  04b7 721d526f      	bres	21103,#6
1587  04bb               L324:
1588                     ; 369     TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1590  04bb 7b06          	ld	a,(OFST+5,sp)
1591  04bd c7526b        	ld	21099,a
1592                     ; 370     TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1594  04c0 7b07          	ld	a,(OFST+6,sp)
1595  04c2 c7526c        	ld	21100,a
1596                     ; 372 }
1599  04c5 5b03          	addw	sp,#3
1600  04c7 81            	ret	
1804                     ; 387 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1804                     ; 388                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1804                     ; 389                      uint8_t TIM1_DeadTime,
1804                     ; 390                      TIM1_BreakState_TypeDef TIM1_Break,
1804                     ; 391                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1804                     ; 392                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1804                     ; 393 {
1805                     	switch	.text
1806  04c8               _TIM1_BDTRConfig:
1808  04c8 89            	pushw	x
1809  04c9 88            	push	a
1810       00000001      OFST:	set	1
1813                     ; 395     assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1815  04ca 9e            	ld	a,xh
1816  04cb a104          	cp	a,#4
1817  04cd 2712          	jreq	L643
1818  04cf 9e            	ld	a,xh
1819  04d0 4d            	tnz	a
1820  04d1 270e          	jreq	L643
1821  04d3 ae018b        	ldw	x,#395
1822  04d6 89            	pushw	x
1823  04d7 5f            	clrw	x
1824  04d8 89            	pushw	x
1825  04d9 ae0000        	ldw	x,#L37
1826  04dc cd0000        	call	_assert_failed
1828  04df 5b04          	addw	sp,#4
1829  04e1               L643:
1830                     ; 396     assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1832  04e1 7b03          	ld	a,(OFST+2,sp)
1833  04e3 271a          	jreq	L653
1834  04e5 a101          	cp	a,#1
1835  04e7 2716          	jreq	L653
1836  04e9 a102          	cp	a,#2
1837  04eb 2712          	jreq	L653
1838  04ed a103          	cp	a,#3
1839  04ef 270e          	jreq	L653
1840  04f1 ae018c        	ldw	x,#396
1841  04f4 89            	pushw	x
1842  04f5 5f            	clrw	x
1843  04f6 89            	pushw	x
1844  04f7 ae0000        	ldw	x,#L37
1845  04fa cd0000        	call	_assert_failed
1847  04fd 5b04          	addw	sp,#4
1848  04ff               L653:
1849                     ; 397     assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1851  04ff 7b07          	ld	a,(OFST+6,sp)
1852  0501 a110          	cp	a,#16
1853  0503 2712          	jreq	L663
1854  0505 7b07          	ld	a,(OFST+6,sp)
1855  0507 270e          	jreq	L663
1856  0509 ae018d        	ldw	x,#397
1857  050c 89            	pushw	x
1858  050d 5f            	clrw	x
1859  050e 89            	pushw	x
1860  050f ae0000        	ldw	x,#L37
1861  0512 cd0000        	call	_assert_failed
1863  0515 5b04          	addw	sp,#4
1864  0517               L663:
1865                     ; 398     assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1867  0517 7b08          	ld	a,(OFST+7,sp)
1868  0519 2712          	jreq	L673
1869  051b a120          	cp	a,#32
1870  051d 270e          	jreq	L673
1871  051f ae018e        	ldw	x,#398
1872  0522 89            	pushw	x
1873  0523 5f            	clrw	x
1874  0524 89            	pushw	x
1875  0525 ae0000        	ldw	x,#L37
1876  0528 cd0000        	call	_assert_failed
1878  052b 5b04          	addw	sp,#4
1879  052d               L673:
1880                     ; 399     assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1882  052d 7b09          	ld	a,(OFST+8,sp)
1883  052f a140          	cp	a,#64
1884  0531 2712          	jreq	L604
1885  0533 7b09          	ld	a,(OFST+8,sp)
1886  0535 270e          	jreq	L604
1887  0537 ae018f        	ldw	x,#399
1888  053a 89            	pushw	x
1889  053b 5f            	clrw	x
1890  053c 89            	pushw	x
1891  053d ae0000        	ldw	x,#L37
1892  0540 cd0000        	call	_assert_failed
1894  0543 5b04          	addw	sp,#4
1895  0545               L604:
1896                     ; 401     TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1898  0545 7b06          	ld	a,(OFST+5,sp)
1899  0547 c7526e        	ld	21102,a
1900                     ; 405     TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1900                     ; 406                             (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1900                     ; 407                             (uint8_t)TIM1_AutomaticOutput));
1902  054a 7b07          	ld	a,(OFST+6,sp)
1903  054c 1a08          	or	a,(OFST+7,sp)
1904  054e 1a09          	or	a,(OFST+8,sp)
1905  0550 6b01          	ld	(OFST+0,sp),a
1907  0552 7b02          	ld	a,(OFST+1,sp)
1908  0554 1a03          	or	a,(OFST+2,sp)
1909  0556 1a01          	or	a,(OFST+0,sp)
1910  0558 c7526d        	ld	21101,a
1911                     ; 409 }
1914  055b 5b03          	addw	sp,#3
1915  055d 81            	ret	
2116                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
2116                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2116                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
2116                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2116                     ; 427                  uint8_t TIM1_ICFilter)
2116                     ; 428 {
2117                     	switch	.text
2118  055e               _TIM1_ICInit:
2120  055e 89            	pushw	x
2121       00000000      OFST:	set	0
2124                     ; 431     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
2126  055f 9e            	ld	a,xh
2127  0560 4d            	tnz	a
2128  0561 271c          	jreq	L024
2129  0563 9e            	ld	a,xh
2130  0564 4a            	dec	a
2131  0565 2718          	jreq	L024
2132  0567 9e            	ld	a,xh
2133  0568 a102          	cp	a,#2
2134  056a 2713          	jreq	L024
2135  056c 9e            	ld	a,xh
2136  056d a103          	cp	a,#3
2137  056f 270e          	jreq	L024
2138  0571 ae01af        	ldw	x,#431
2139  0574 89            	pushw	x
2140  0575 5f            	clrw	x
2141  0576 89            	pushw	x
2142  0577 ae0000        	ldw	x,#L37
2143  057a cd0000        	call	_assert_failed
2145  057d 5b04          	addw	sp,#4
2146  057f               L024:
2147                     ; 432     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2149  057f 7b02          	ld	a,(OFST+2,sp)
2150  0581 2711          	jreq	L034
2151  0583 4a            	dec	a
2152  0584 270e          	jreq	L034
2153  0586 ae01b0        	ldw	x,#432
2154  0589 89            	pushw	x
2155  058a 5f            	clrw	x
2156  058b 89            	pushw	x
2157  058c ae0000        	ldw	x,#L37
2158  058f cd0000        	call	_assert_failed
2160  0592 5b04          	addw	sp,#4
2161  0594               L034:
2162                     ; 433     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2164  0594 7b05          	ld	a,(OFST+5,sp)
2165  0596 a101          	cp	a,#1
2166  0598 2716          	jreq	L044
2167  059a a102          	cp	a,#2
2168  059c 2712          	jreq	L044
2169  059e a103          	cp	a,#3
2170  05a0 270e          	jreq	L044
2171  05a2 ae01b1        	ldw	x,#433
2172  05a5 89            	pushw	x
2173  05a6 5f            	clrw	x
2174  05a7 89            	pushw	x
2175  05a8 ae0000        	ldw	x,#L37
2176  05ab cd0000        	call	_assert_failed
2178  05ae 5b04          	addw	sp,#4
2179  05b0               L044:
2180                     ; 434     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2182  05b0 7b06          	ld	a,(OFST+6,sp)
2183  05b2 271a          	jreq	L054
2184  05b4 a104          	cp	a,#4
2185  05b6 2716          	jreq	L054
2186  05b8 a108          	cp	a,#8
2187  05ba 2712          	jreq	L054
2188  05bc a10c          	cp	a,#12
2189  05be 270e          	jreq	L054
2190  05c0 ae01b2        	ldw	x,#434
2191  05c3 89            	pushw	x
2192  05c4 5f            	clrw	x
2193  05c5 89            	pushw	x
2194  05c6 ae0000        	ldw	x,#L37
2195  05c9 cd0000        	call	_assert_failed
2197  05cc 5b04          	addw	sp,#4
2198  05ce               L054:
2199                     ; 435     assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2201  05ce 7b07          	ld	a,(OFST+7,sp)
2202  05d0 a110          	cp	a,#16
2203  05d2 250e          	jrult	L654
2204  05d4 ae01b3        	ldw	x,#435
2205  05d7 89            	pushw	x
2206  05d8 5f            	clrw	x
2207  05d9 89            	pushw	x
2208  05da ae0000        	ldw	x,#L37
2209  05dd cd0000        	call	_assert_failed
2211  05e0 5b04          	addw	sp,#4
2212  05e2               L654:
2213                     ; 437     if (TIM1_Channel == TIM1_CHANNEL_1)
2215  05e2 7b01          	ld	a,(OFST+1,sp)
2216  05e4 2614          	jrne	L746
2217                     ; 440         TI1_Config((uint8_t)TIM1_ICPolarity,
2217                     ; 441                    (uint8_t)TIM1_ICSelection,
2217                     ; 442                    (uint8_t)TIM1_ICFilter);
2219  05e6 7b07          	ld	a,(OFST+7,sp)
2220  05e8 88            	push	a
2221  05e9 7b06          	ld	a,(OFST+6,sp)
2222  05eb 97            	ld	xl,a
2223  05ec 7b03          	ld	a,(OFST+3,sp)
2224  05ee 95            	ld	xh,a
2225  05ef cd123c        	call	L3_TI1_Config
2227  05f2 84            	pop	a
2228                     ; 444         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2230  05f3 7b06          	ld	a,(OFST+6,sp)
2231  05f5 cd0ff8        	call	_TIM1_SetIC1Prescaler
2234  05f8 2042          	jra	L156
2235  05fa               L746:
2236                     ; 446     else if (TIM1_Channel == TIM1_CHANNEL_2)
2238  05fa a101          	cp	a,#1
2239  05fc 2614          	jrne	L356
2240                     ; 449         TI2_Config((uint8_t)TIM1_ICPolarity,
2240                     ; 450                    (uint8_t)TIM1_ICSelection,
2240                     ; 451                    (uint8_t)TIM1_ICFilter);
2242  05fe 7b07          	ld	a,(OFST+7,sp)
2243  0600 88            	push	a
2244  0601 7b06          	ld	a,(OFST+6,sp)
2245  0603 97            	ld	xl,a
2246  0604 7b03          	ld	a,(OFST+3,sp)
2247  0606 95            	ld	xh,a
2248  0607 cd126c        	call	L5_TI2_Config
2250  060a 84            	pop	a
2251                     ; 453         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2253  060b 7b06          	ld	a,(OFST+6,sp)
2254  060d cd1022        	call	_TIM1_SetIC2Prescaler
2257  0610 202a          	jra	L156
2258  0612               L356:
2259                     ; 455     else if (TIM1_Channel == TIM1_CHANNEL_3)
2261  0612 a102          	cp	a,#2
2262  0614 2614          	jrne	L756
2263                     ; 458         TI3_Config((uint8_t)TIM1_ICPolarity,
2263                     ; 459                    (uint8_t)TIM1_ICSelection,
2263                     ; 460                    (uint8_t)TIM1_ICFilter);
2265  0616 7b07          	ld	a,(OFST+7,sp)
2266  0618 88            	push	a
2267  0619 7b06          	ld	a,(OFST+6,sp)
2268  061b 97            	ld	xl,a
2269  061c 7b03          	ld	a,(OFST+3,sp)
2270  061e 95            	ld	xh,a
2271  061f cd129c        	call	L7_TI3_Config
2273  0622 84            	pop	a
2274                     ; 462         TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2276  0623 7b06          	ld	a,(OFST+6,sp)
2277  0625 cd104c        	call	_TIM1_SetIC3Prescaler
2280  0628 2012          	jra	L156
2281  062a               L756:
2282                     ; 467         TI4_Config((uint8_t)TIM1_ICPolarity,
2282                     ; 468                    (uint8_t)TIM1_ICSelection,
2282                     ; 469                    (uint8_t)TIM1_ICFilter);
2284  062a 7b07          	ld	a,(OFST+7,sp)
2285  062c 88            	push	a
2286  062d 7b06          	ld	a,(OFST+6,sp)
2287  062f 97            	ld	xl,a
2288  0630 7b03          	ld	a,(OFST+3,sp)
2289  0632 95            	ld	xh,a
2290  0633 cd12cc        	call	L11_TI4_Config
2292  0636 84            	pop	a
2293                     ; 471         TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2295  0637 7b06          	ld	a,(OFST+6,sp)
2296  0639 cd1076        	call	_TIM1_SetIC4Prescaler
2298  063c               L156:
2299                     ; 474 }
2302  063c 85            	popw	x
2303  063d 81            	ret	
2394                     ; 490 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2394                     ; 491                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2394                     ; 492                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2394                     ; 493                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2394                     ; 494                      uint8_t TIM1_ICFilter)
2394                     ; 495 {
2395                     	switch	.text
2396  063e               _TIM1_PWMIConfig:
2398  063e 89            	pushw	x
2399  063f 89            	pushw	x
2400       00000002      OFST:	set	2
2403                     ; 496     uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2405                     ; 497     uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2407                     ; 500     assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2409  0640 9e            	ld	a,xh
2410  0641 4d            	tnz	a
2411  0642 2712          	jreq	L015
2412  0644 9e            	ld	a,xh
2413  0645 4a            	dec	a
2414  0646 270e          	jreq	L015
2415  0648 ae01f4        	ldw	x,#500
2416  064b 89            	pushw	x
2417  064c 5f            	clrw	x
2418  064d 89            	pushw	x
2419  064e ae0000        	ldw	x,#L37
2420  0651 cd0000        	call	_assert_failed
2422  0654 5b04          	addw	sp,#4
2423  0656               L015:
2424                     ; 501     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2426  0656 7b04          	ld	a,(OFST+2,sp)
2427  0658 2711          	jreq	L025
2428  065a 4a            	dec	a
2429  065b 270e          	jreq	L025
2430  065d ae01f5        	ldw	x,#501
2431  0660 89            	pushw	x
2432  0661 5f            	clrw	x
2433  0662 89            	pushw	x
2434  0663 ae0000        	ldw	x,#L37
2435  0666 cd0000        	call	_assert_failed
2437  0669 5b04          	addw	sp,#4
2438  066b               L025:
2439                     ; 502     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2441  066b 7b07          	ld	a,(OFST+5,sp)
2442  066d a101          	cp	a,#1
2443  066f 2716          	jreq	L035
2444  0671 a102          	cp	a,#2
2445  0673 2712          	jreq	L035
2446  0675 a103          	cp	a,#3
2447  0677 270e          	jreq	L035
2448  0679 ae01f6        	ldw	x,#502
2449  067c 89            	pushw	x
2450  067d 5f            	clrw	x
2451  067e 89            	pushw	x
2452  067f ae0000        	ldw	x,#L37
2453  0682 cd0000        	call	_assert_failed
2455  0685 5b04          	addw	sp,#4
2456  0687               L035:
2457                     ; 503     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2459  0687 7b08          	ld	a,(OFST+6,sp)
2460  0689 271a          	jreq	L045
2461  068b a104          	cp	a,#4
2462  068d 2716          	jreq	L045
2463  068f a108          	cp	a,#8
2464  0691 2712          	jreq	L045
2465  0693 a10c          	cp	a,#12
2466  0695 270e          	jreq	L045
2467  0697 ae01f7        	ldw	x,#503
2468  069a 89            	pushw	x
2469  069b 5f            	clrw	x
2470  069c 89            	pushw	x
2471  069d ae0000        	ldw	x,#L37
2472  06a0 cd0000        	call	_assert_failed
2474  06a3 5b04          	addw	sp,#4
2475  06a5               L045:
2476                     ; 506     if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2478  06a5 7b04          	ld	a,(OFST+2,sp)
2479  06a7 4a            	dec	a
2480  06a8 2702          	jreq	L327
2481                     ; 508         icpolarity = TIM1_ICPOLARITY_FALLING;
2483  06aa a601          	ld	a,#1
2485  06ac               L327:
2486                     ; 512         icpolarity = TIM1_ICPOLARITY_RISING;
2488  06ac 6b01          	ld	(OFST-1,sp),a
2490                     ; 516     if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2492  06ae 7b07          	ld	a,(OFST+5,sp)
2493  06b0 4a            	dec	a
2494  06b1 2604          	jrne	L727
2495                     ; 518         icselection = TIM1_ICSELECTION_INDIRECTTI;
2497  06b3 a602          	ld	a,#2
2499  06b5 2002          	jra	L137
2500  06b7               L727:
2501                     ; 522         icselection = TIM1_ICSELECTION_DIRECTTI;
2503  06b7 a601          	ld	a,#1
2504  06b9               L137:
2505  06b9 6b02          	ld	(OFST+0,sp),a
2507                     ; 525     if (TIM1_Channel == TIM1_CHANNEL_1)
2509  06bb 7b03          	ld	a,(OFST+1,sp)
2510  06bd 2626          	jrne	L337
2511                     ; 528         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2511                     ; 529                    (uint8_t)TIM1_ICFilter);
2513  06bf 7b09          	ld	a,(OFST+7,sp)
2514  06c1 88            	push	a
2515  06c2 7b08          	ld	a,(OFST+6,sp)
2516  06c4 97            	ld	xl,a
2517  06c5 7b05          	ld	a,(OFST+3,sp)
2518  06c7 95            	ld	xh,a
2519  06c8 cd123c        	call	L3_TI1_Config
2521  06cb 84            	pop	a
2522                     ; 532         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2524  06cc 7b08          	ld	a,(OFST+6,sp)
2525  06ce cd0ff8        	call	_TIM1_SetIC1Prescaler
2527                     ; 535         TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2529  06d1 7b09          	ld	a,(OFST+7,sp)
2530  06d3 88            	push	a
2531  06d4 7b03          	ld	a,(OFST+1,sp)
2532  06d6 97            	ld	xl,a
2533  06d7 7b02          	ld	a,(OFST+0,sp)
2534  06d9 95            	ld	xh,a
2535  06da cd126c        	call	L5_TI2_Config
2537  06dd 84            	pop	a
2538                     ; 538         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2540  06de 7b08          	ld	a,(OFST+6,sp)
2541  06e0 cd1022        	call	_TIM1_SetIC2Prescaler
2544  06e3 2024          	jra	L537
2545  06e5               L337:
2546                     ; 543         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2546                     ; 544                    (uint8_t)TIM1_ICFilter);
2548  06e5 7b09          	ld	a,(OFST+7,sp)
2549  06e7 88            	push	a
2550  06e8 7b08          	ld	a,(OFST+6,sp)
2551  06ea 97            	ld	xl,a
2552  06eb 7b05          	ld	a,(OFST+3,sp)
2553  06ed 95            	ld	xh,a
2554  06ee cd126c        	call	L5_TI2_Config
2556  06f1 84            	pop	a
2557                     ; 547         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2559  06f2 7b08          	ld	a,(OFST+6,sp)
2560  06f4 cd1022        	call	_TIM1_SetIC2Prescaler
2562                     ; 550         TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2564  06f7 7b09          	ld	a,(OFST+7,sp)
2565  06f9 88            	push	a
2566  06fa 7b03          	ld	a,(OFST+1,sp)
2567  06fc 97            	ld	xl,a
2568  06fd 7b02          	ld	a,(OFST+0,sp)
2569  06ff 95            	ld	xh,a
2570  0700 cd123c        	call	L3_TI1_Config
2572  0703 84            	pop	a
2573                     ; 553         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2575  0704 7b08          	ld	a,(OFST+6,sp)
2576  0706 cd0ff8        	call	_TIM1_SetIC1Prescaler
2578  0709               L537:
2579                     ; 555 }
2582  0709 5b04          	addw	sp,#4
2583  070b 81            	ret	
2639                     ; 563 void TIM1_Cmd(FunctionalState NewState)
2639                     ; 564 {
2640                     	switch	.text
2641  070c               _TIM1_Cmd:
2643  070c 88            	push	a
2644       00000000      OFST:	set	0
2647                     ; 566     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2649  070d 4d            	tnz	a
2650  070e 2711          	jreq	L275
2651  0710 4a            	dec	a
2652  0711 270e          	jreq	L275
2653  0713 ae0236        	ldw	x,#566
2654  0716 89            	pushw	x
2655  0717 5f            	clrw	x
2656  0718 89            	pushw	x
2657  0719 ae0000        	ldw	x,#L37
2658  071c cd0000        	call	_assert_failed
2660  071f 5b04          	addw	sp,#4
2661  0721               L275:
2662                     ; 569     if (NewState != DISABLE)
2664  0721 7b01          	ld	a,(OFST+1,sp)
2665  0723 2706          	jreq	L567
2666                     ; 571         TIM1->CR1 |= TIM1_CR1_CEN;
2668  0725 72105250      	bset	21072,#0
2670  0729 2004          	jra	L767
2671  072b               L567:
2672                     ; 575         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2674  072b 72115250      	bres	21072,#0
2675  072f               L767:
2676                     ; 577 }
2679  072f 84            	pop	a
2680  0730 81            	ret	
2717                     ; 585 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2717                     ; 586 {
2718                     	switch	.text
2719  0731               _TIM1_CtrlPWMOutputs:
2721  0731 88            	push	a
2722       00000000      OFST:	set	0
2725                     ; 588     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2727  0732 4d            	tnz	a
2728  0733 2711          	jreq	L406
2729  0735 4a            	dec	a
2730  0736 270e          	jreq	L406
2731  0738 ae024c        	ldw	x,#588
2732  073b 89            	pushw	x
2733  073c 5f            	clrw	x
2734  073d 89            	pushw	x
2735  073e ae0000        	ldw	x,#L37
2736  0741 cd0000        	call	_assert_failed
2738  0744 5b04          	addw	sp,#4
2739  0746               L406:
2740                     ; 592     if (NewState != DISABLE)
2742  0746 7b01          	ld	a,(OFST+1,sp)
2743  0748 2706          	jreq	L7001
2744                     ; 594         TIM1->BKR |= TIM1_BKR_MOE;
2746  074a 721e526d      	bset	21101,#7
2748  074e 2004          	jra	L1101
2749  0750               L7001:
2750                     ; 598         TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2752  0750 721f526d      	bres	21101,#7
2753  0754               L1101:
2754                     ; 600 }
2757  0754 84            	pop	a
2758  0755 81            	ret	
2866                     ; 619 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2866                     ; 620 {
2867                     	switch	.text
2868  0756               _TIM1_ITConfig:
2870  0756 89            	pushw	x
2871       00000000      OFST:	set	0
2874                     ; 622     assert_param(IS_TIM1_IT_OK(TIM1_IT));
2876  0757 9e            	ld	a,xh
2877  0758 4d            	tnz	a
2878  0759 260e          	jrne	L416
2879  075b ae026e        	ldw	x,#622
2880  075e 89            	pushw	x
2881  075f 5f            	clrw	x
2882  0760 89            	pushw	x
2883  0761 ae0000        	ldw	x,#L37
2884  0764 cd0000        	call	_assert_failed
2886  0767 5b04          	addw	sp,#4
2887  0769               L416:
2888                     ; 623     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2890  0769 7b02          	ld	a,(OFST+2,sp)
2891  076b 2711          	jreq	L426
2892  076d 4a            	dec	a
2893  076e 270e          	jreq	L426
2894  0770 ae026f        	ldw	x,#623
2895  0773 89            	pushw	x
2896  0774 5f            	clrw	x
2897  0775 89            	pushw	x
2898  0776 ae0000        	ldw	x,#L37
2899  0779 cd0000        	call	_assert_failed
2901  077c 5b04          	addw	sp,#4
2902  077e               L426:
2903                     ; 625     if (NewState != DISABLE)
2905  077e 7b02          	ld	a,(OFST+2,sp)
2906  0780 2707          	jreq	L1601
2907                     ; 628         TIM1->IER |= (uint8_t)TIM1_IT;
2909  0782 c65254        	ld	a,21076
2910  0785 1a01          	or	a,(OFST+1,sp)
2912  0787 2006          	jra	L3601
2913  0789               L1601:
2914                     ; 633         TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2916  0789 7b01          	ld	a,(OFST+1,sp)
2917  078b 43            	cpl	a
2918  078c c45254        	and	a,21076
2919  078f               L3601:
2920  078f c75254        	ld	21076,a
2921                     ; 635 }
2924  0792 85            	popw	x
2925  0793 81            	ret	
2949                     ; 642 void TIM1_InternalClockConfig(void)
2949                     ; 643 {
2950                     	switch	.text
2951  0794               _TIM1_InternalClockConfig:
2955                     ; 645     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2957  0794 c65252        	ld	a,21074
2958  0797 a4f8          	and	a,#248
2959  0799 c75252        	ld	21074,a
2960                     ; 646 }
2963  079c 81            	ret	
3079                     ; 664 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3079                     ; 665                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3079                     ; 666                               uint8_t ExtTRGFilter)
3079                     ; 667 {
3080                     	switch	.text
3081  079d               _TIM1_ETRClockMode1Config:
3083  079d 89            	pushw	x
3084       00000000      OFST:	set	0
3087                     ; 669     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3089  079e 9e            	ld	a,xh
3090  079f 4d            	tnz	a
3091  07a0 271d          	jreq	L046
3092  07a2 9e            	ld	a,xh
3093  07a3 a110          	cp	a,#16
3094  07a5 2718          	jreq	L046
3095  07a7 9e            	ld	a,xh
3096  07a8 a120          	cp	a,#32
3097  07aa 2713          	jreq	L046
3098  07ac 9e            	ld	a,xh
3099  07ad a130          	cp	a,#48
3100  07af 270e          	jreq	L046
3101  07b1 ae029d        	ldw	x,#669
3102  07b4 89            	pushw	x
3103  07b5 5f            	clrw	x
3104  07b6 89            	pushw	x
3105  07b7 ae0000        	ldw	x,#L37
3106  07ba cd0000        	call	_assert_failed
3108  07bd 5b04          	addw	sp,#4
3109  07bf               L046:
3110                     ; 670     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3112  07bf 7b02          	ld	a,(OFST+2,sp)
3113  07c1 a180          	cp	a,#128
3114  07c3 2712          	jreq	L056
3115  07c5 7b02          	ld	a,(OFST+2,sp)
3116  07c7 270e          	jreq	L056
3117  07c9 ae029e        	ldw	x,#670
3118  07cc 89            	pushw	x
3119  07cd 5f            	clrw	x
3120  07ce 89            	pushw	x
3121  07cf ae0000        	ldw	x,#L37
3122  07d2 cd0000        	call	_assert_failed
3124  07d5 5b04          	addw	sp,#4
3125  07d7               L056:
3126                     ; 673     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3128  07d7 7b05          	ld	a,(OFST+5,sp)
3129  07d9 88            	push	a
3130  07da 7b03          	ld	a,(OFST+3,sp)
3131  07dc 97            	ld	xl,a
3132  07dd 7b02          	ld	a,(OFST+2,sp)
3133  07df 95            	ld	xh,a
3134  07e0 ad57          	call	_TIM1_ETRConfig
3136  07e2 84            	pop	a
3137                     ; 676     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
3137                     ; 677                            | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
3139  07e3 c65252        	ld	a,21074
3140  07e6 aa77          	or	a,#119
3141  07e8 c75252        	ld	21074,a
3142                     ; 678 }
3145  07eb 85            	popw	x
3146  07ec 81            	ret	
3203                     ; 696 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3203                     ; 697                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3203                     ; 698                               uint8_t ExtTRGFilter)
3203                     ; 699 {
3204                     	switch	.text
3205  07ed               _TIM1_ETRClockMode2Config:
3207  07ed 89            	pushw	x
3208       00000000      OFST:	set	0
3211                     ; 701     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3213  07ee 9e            	ld	a,xh
3214  07ef 4d            	tnz	a
3215  07f0 271d          	jreq	L466
3216  07f2 9e            	ld	a,xh
3217  07f3 a110          	cp	a,#16
3218  07f5 2718          	jreq	L466
3219  07f7 9e            	ld	a,xh
3220  07f8 a120          	cp	a,#32
3221  07fa 2713          	jreq	L466
3222  07fc 9e            	ld	a,xh
3223  07fd a130          	cp	a,#48
3224  07ff 270e          	jreq	L466
3225  0801 ae02bd        	ldw	x,#701
3226  0804 89            	pushw	x
3227  0805 5f            	clrw	x
3228  0806 89            	pushw	x
3229  0807 ae0000        	ldw	x,#L37
3230  080a cd0000        	call	_assert_failed
3232  080d 5b04          	addw	sp,#4
3233  080f               L466:
3234                     ; 702     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3236  080f 7b02          	ld	a,(OFST+2,sp)
3237  0811 a180          	cp	a,#128
3238  0813 2712          	jreq	L476
3239  0815 7b02          	ld	a,(OFST+2,sp)
3240  0817 270e          	jreq	L476
3241  0819 ae02be        	ldw	x,#702
3242  081c 89            	pushw	x
3243  081d 5f            	clrw	x
3244  081e 89            	pushw	x
3245  081f ae0000        	ldw	x,#L37
3246  0822 cd0000        	call	_assert_failed
3248  0825 5b04          	addw	sp,#4
3249  0827               L476:
3250                     ; 705     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3252  0827 7b05          	ld	a,(OFST+5,sp)
3253  0829 88            	push	a
3254  082a 7b03          	ld	a,(OFST+3,sp)
3255  082c 97            	ld	xl,a
3256  082d 7b02          	ld	a,(OFST+2,sp)
3257  082f 95            	ld	xh,a
3258  0830 ad07          	call	_TIM1_ETRConfig
3260  0832 721c5253      	bset	21075,#6
3261                     ; 708     TIM1->ETR |= TIM1_ETR_ECE;
3263                     ; 709 }
3266  0836 5b03          	addw	sp,#3
3267  0838 81            	ret	
3322                     ; 727 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3322                     ; 728                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3322                     ; 729                     uint8_t ExtTRGFilter)
3322                     ; 730 {
3323                     	switch	.text
3324  0839               _TIM1_ETRConfig:
3326  0839 89            	pushw	x
3327       00000000      OFST:	set	0
3330                     ; 732     assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3332  083a 7b05          	ld	a,(OFST+5,sp)
3333  083c a110          	cp	a,#16
3334  083e 250e          	jrult	L607
3335  0840 ae02dc        	ldw	x,#732
3336  0843 89            	pushw	x
3337  0844 5f            	clrw	x
3338  0845 89            	pushw	x
3339  0846 ae0000        	ldw	x,#L37
3340  0849 cd0000        	call	_assert_failed
3342  084c 5b04          	addw	sp,#4
3343  084e               L607:
3344                     ; 734     TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3344                     ; 735                       (uint8_t)ExtTRGFilter );
3346  084e 7b01          	ld	a,(OFST+1,sp)
3347  0850 1a02          	or	a,(OFST+2,sp)
3348  0852 1a05          	or	a,(OFST+5,sp)
3349  0854 ca5253        	or	a,21075
3350  0857 c75253        	ld	21075,a
3351                     ; 736 }
3354  085a 85            	popw	x
3355  085b 81            	ret	
3443                     ; 753 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3443                     ; 754                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3443                     ; 755                                  uint8_t ICFilter)
3443                     ; 756 {
3444                     	switch	.text
3445  085c               _TIM1_TIxExternalClockConfig:
3447  085c 89            	pushw	x
3448       00000000      OFST:	set	0
3451                     ; 758     assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3453  085d 9e            	ld	a,xh
3454  085e a140          	cp	a,#64
3455  0860 2718          	jreq	L027
3456  0862 9e            	ld	a,xh
3457  0863 a160          	cp	a,#96
3458  0865 2713          	jreq	L027
3459  0867 9e            	ld	a,xh
3460  0868 a150          	cp	a,#80
3461  086a 270e          	jreq	L027
3462  086c ae02f6        	ldw	x,#758
3463  086f 89            	pushw	x
3464  0870 5f            	clrw	x
3465  0871 89            	pushw	x
3466  0872 ae0000        	ldw	x,#L37
3467  0875 cd0000        	call	_assert_failed
3469  0878 5b04          	addw	sp,#4
3470  087a               L027:
3471                     ; 759     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3473  087a 7b02          	ld	a,(OFST+2,sp)
3474  087c 2711          	jreq	L037
3475  087e 4a            	dec	a
3476  087f 270e          	jreq	L037
3477  0881 ae02f7        	ldw	x,#759
3478  0884 89            	pushw	x
3479  0885 5f            	clrw	x
3480  0886 89            	pushw	x
3481  0887 ae0000        	ldw	x,#L37
3482  088a cd0000        	call	_assert_failed
3484  088d 5b04          	addw	sp,#4
3485  088f               L037:
3486                     ; 760     assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3488  088f 7b05          	ld	a,(OFST+5,sp)
3489  0891 a110          	cp	a,#16
3490  0893 250e          	jrult	L637
3491  0895 ae02f8        	ldw	x,#760
3492  0898 89            	pushw	x
3493  0899 5f            	clrw	x
3494  089a 89            	pushw	x
3495  089b ae0000        	ldw	x,#L37
3496  089e cd0000        	call	_assert_failed
3498  08a1 5b04          	addw	sp,#4
3499  08a3               L637:
3500                     ; 763     if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3502  08a3 7b01          	ld	a,(OFST+1,sp)
3503  08a5 a160          	cp	a,#96
3504  08a7 260e          	jrne	L3521
3505                     ; 765         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3507  08a9 7b05          	ld	a,(OFST+5,sp)
3508  08ab 88            	push	a
3509  08ac 7b03          	ld	a,(OFST+3,sp)
3510  08ae ae0001        	ldw	x,#1
3511  08b1 95            	ld	xh,a
3512  08b2 cd126c        	call	L5_TI2_Config
3515  08b5 200c          	jra	L5521
3516  08b7               L3521:
3517                     ; 769         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3519  08b7 7b05          	ld	a,(OFST+5,sp)
3520  08b9 88            	push	a
3521  08ba 7b03          	ld	a,(OFST+3,sp)
3522  08bc ae0001        	ldw	x,#1
3523  08bf 95            	ld	xh,a
3524  08c0 cd123c        	call	L3_TI1_Config
3526  08c3               L5521:
3527  08c3 84            	pop	a
3528                     ; 773     TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3530  08c4 7b01          	ld	a,(OFST+1,sp)
3531  08c6 ad0a          	call	_TIM1_SelectInputTrigger
3533                     ; 776     TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3535  08c8 c65252        	ld	a,21074
3536  08cb aa07          	or	a,#7
3537  08cd c75252        	ld	21074,a
3538                     ; 777 }
3541  08d0 85            	popw	x
3542  08d1 81            	ret	
3628                     ; 789 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3628                     ; 790 {
3629                     	switch	.text
3630  08d2               _TIM1_SelectInputTrigger:
3632  08d2 88            	push	a
3633       00000000      OFST:	set	0
3636                     ; 792     assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3638  08d3 a140          	cp	a,#64
3639  08d5 2721          	jreq	L657
3640  08d7 a150          	cp	a,#80
3641  08d9 271d          	jreq	L657
3642  08db a160          	cp	a,#96
3643  08dd 2719          	jreq	L657
3644  08df a170          	cp	a,#112
3645  08e1 2715          	jreq	L657
3646  08e3 a130          	cp	a,#48
3647  08e5 2711          	jreq	L657
3648  08e7 4d            	tnz	a
3649  08e8 270e          	jreq	L657
3650  08ea ae0318        	ldw	x,#792
3651  08ed 89            	pushw	x
3652  08ee 5f            	clrw	x
3653  08ef 89            	pushw	x
3654  08f0 ae0000        	ldw	x,#L37
3655  08f3 cd0000        	call	_assert_failed
3657  08f6 5b04          	addw	sp,#4
3658  08f8               L657:
3659                     ; 795     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3661  08f8 c65252        	ld	a,21074
3662  08fb a48f          	and	a,#143
3663  08fd 1a01          	or	a,(OFST+1,sp)
3664  08ff c75252        	ld	21074,a
3665                     ; 796 }
3668  0902 84            	pop	a
3669  0903 81            	ret	
3706                     ; 806 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3706                     ; 807 {
3707                     	switch	.text
3708  0904               _TIM1_UpdateDisableConfig:
3710  0904 88            	push	a
3711       00000000      OFST:	set	0
3714                     ; 809     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3716  0905 4d            	tnz	a
3717  0906 2711          	jreq	L077
3718  0908 4a            	dec	a
3719  0909 270e          	jreq	L077
3720  090b ae0329        	ldw	x,#809
3721  090e 89            	pushw	x
3722  090f 5f            	clrw	x
3723  0910 89            	pushw	x
3724  0911 ae0000        	ldw	x,#L37
3725  0914 cd0000        	call	_assert_failed
3727  0917 5b04          	addw	sp,#4
3728  0919               L077:
3729                     ; 812     if (NewState != DISABLE)
3731  0919 7b01          	ld	a,(OFST+1,sp)
3732  091b 2706          	jreq	L3331
3733                     ; 814         TIM1->CR1 |= TIM1_CR1_UDIS;
3735  091d 72125250      	bset	21072,#1
3737  0921 2004          	jra	L5331
3738  0923               L3331:
3739                     ; 818         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3741  0923 72135250      	bres	21072,#1
3742  0927               L5331:
3743                     ; 820 }
3746  0927 84            	pop	a
3747  0928 81            	ret	
3806                     ; 830 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
3806                     ; 831 {
3807                     	switch	.text
3808  0929               _TIM1_UpdateRequestConfig:
3810  0929 88            	push	a
3811       00000000      OFST:	set	0
3814                     ; 833     assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
3816  092a 4d            	tnz	a
3817  092b 2711          	jreq	L2001
3818  092d 4a            	dec	a
3819  092e 270e          	jreq	L2001
3820  0930 ae0341        	ldw	x,#833
3821  0933 89            	pushw	x
3822  0934 5f            	clrw	x
3823  0935 89            	pushw	x
3824  0936 ae0000        	ldw	x,#L37
3825  0939 cd0000        	call	_assert_failed
3827  093c 5b04          	addw	sp,#4
3828  093e               L2001:
3829                     ; 836     if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
3831  093e 7b01          	ld	a,(OFST+1,sp)
3832  0940 2706          	jreq	L5631
3833                     ; 838         TIM1->CR1 |= TIM1_CR1_URS;
3835  0942 72145250      	bset	21072,#2
3837  0946 2004          	jra	L7631
3838  0948               L5631:
3839                     ; 842         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3841  0948 72155250      	bres	21072,#2
3842  094c               L7631:
3843                     ; 844 }
3846  094c 84            	pop	a
3847  094d 81            	ret	
3884                     ; 853 void TIM1_SelectHallSensor(FunctionalState NewState)
3884                     ; 854 {
3885                     	switch	.text
3886  094e               _TIM1_SelectHallSensor:
3888  094e 88            	push	a
3889       00000000      OFST:	set	0
3892                     ; 856     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3894  094f 4d            	tnz	a
3895  0950 2711          	jreq	L4101
3896  0952 4a            	dec	a
3897  0953 270e          	jreq	L4101
3898  0955 ae0358        	ldw	x,#856
3899  0958 89            	pushw	x
3900  0959 5f            	clrw	x
3901  095a 89            	pushw	x
3902  095b ae0000        	ldw	x,#L37
3903  095e cd0000        	call	_assert_failed
3905  0961 5b04          	addw	sp,#4
3906  0963               L4101:
3907                     ; 859     if (NewState != DISABLE)
3909  0963 7b01          	ld	a,(OFST+1,sp)
3910  0965 2706          	jreq	L7041
3911                     ; 861         TIM1->CR2 |= TIM1_CR2_TI1S;
3913  0967 721e5251      	bset	21073,#7
3915  096b 2004          	jra	L1141
3916  096d               L7041:
3917                     ; 865         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3919  096d 721f5251      	bres	21073,#7
3920  0971               L1141:
3921                     ; 867 }
3924  0971 84            	pop	a
3925  0972 81            	ret	
3983                     ; 878 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3983                     ; 879 {
3984                     	switch	.text
3985  0973               _TIM1_SelectOnePulseMode:
3987  0973 88            	push	a
3988       00000000      OFST:	set	0
3991                     ; 881     assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3993  0974 a101          	cp	a,#1
3994  0976 2711          	jreq	L6201
3995  0978 4d            	tnz	a
3996  0979 270e          	jreq	L6201
3997  097b ae0371        	ldw	x,#881
3998  097e 89            	pushw	x
3999  097f 5f            	clrw	x
4000  0980 89            	pushw	x
4001  0981 ae0000        	ldw	x,#L37
4002  0984 cd0000        	call	_assert_failed
4004  0987 5b04          	addw	sp,#4
4005  0989               L6201:
4006                     ; 884     if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
4008  0989 7b01          	ld	a,(OFST+1,sp)
4009  098b 2706          	jreq	L1441
4010                     ; 886         TIM1->CR1 |= TIM1_CR1_OPM;
4012  098d 72165250      	bset	21072,#3
4014  0991 2004          	jra	L3441
4015  0993               L1441:
4016                     ; 890         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
4018  0993 72175250      	bres	21072,#3
4019  0997               L3441:
4020                     ; 893 }
4023  0997 84            	pop	a
4024  0998 81            	ret	
4123                     ; 909 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
4123                     ; 910 {
4124                     	switch	.text
4125  0999               _TIM1_SelectOutputTrigger:
4127  0999 88            	push	a
4128       00000000      OFST:	set	0
4131                     ; 912     assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
4133  099a 4d            	tnz	a
4134  099b 2726          	jreq	L0401
4135  099d a110          	cp	a,#16
4136  099f 2722          	jreq	L0401
4137  09a1 a120          	cp	a,#32
4138  09a3 271e          	jreq	L0401
4139  09a5 a130          	cp	a,#48
4140  09a7 271a          	jreq	L0401
4141  09a9 a140          	cp	a,#64
4142  09ab 2716          	jreq	L0401
4143  09ad a150          	cp	a,#80
4144  09af 2712          	jreq	L0401
4145  09b1 a160          	cp	a,#96
4146  09b3 270e          	jreq	L0401
4147  09b5 ae0390        	ldw	x,#912
4148  09b8 89            	pushw	x
4149  09b9 5f            	clrw	x
4150  09ba 89            	pushw	x
4151  09bb ae0000        	ldw	x,#L37
4152  09be cd0000        	call	_assert_failed
4154  09c1 5b04          	addw	sp,#4
4155  09c3               L0401:
4156                     ; 915     TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
4156                     ; 916                           (uint8_t) TIM1_TRGOSource);
4158  09c3 c65251        	ld	a,21073
4159  09c6 a48f          	and	a,#143
4160  09c8 1a01          	or	a,(OFST+1,sp)
4161  09ca c75251        	ld	21073,a
4162                     ; 917 }
4165  09cd 84            	pop	a
4166  09ce 81            	ret	
4241                     ; 929 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4241                     ; 930 {
4242                     	switch	.text
4243  09cf               _TIM1_SelectSlaveMode:
4245  09cf 88            	push	a
4246       00000000      OFST:	set	0
4249                     ; 933     assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4251  09d0 a104          	cp	a,#4
4252  09d2 271a          	jreq	L2501
4253  09d4 a105          	cp	a,#5
4254  09d6 2716          	jreq	L2501
4255  09d8 a106          	cp	a,#6
4256  09da 2712          	jreq	L2501
4257  09dc a107          	cp	a,#7
4258  09de 270e          	jreq	L2501
4259  09e0 ae03a5        	ldw	x,#933
4260  09e3 89            	pushw	x
4261  09e4 5f            	clrw	x
4262  09e5 89            	pushw	x
4263  09e6 ae0000        	ldw	x,#L37
4264  09e9 cd0000        	call	_assert_failed
4266  09ec 5b04          	addw	sp,#4
4267  09ee               L2501:
4268                     ; 936     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4268                     ; 937                            (uint8_t)TIM1_SlaveMode);
4270  09ee c65252        	ld	a,21074
4271  09f1 a4f8          	and	a,#248
4272  09f3 1a01          	or	a,(OFST+1,sp)
4273  09f5 c75252        	ld	21074,a
4274                     ; 939 }
4277  09f8 84            	pop	a
4278  09f9 81            	ret	
4315                     ; 947 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4315                     ; 948 {
4316                     	switch	.text
4317  09fa               _TIM1_SelectMasterSlaveMode:
4319  09fa 88            	push	a
4320       00000000      OFST:	set	0
4323                     ; 950     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4325  09fb 4d            	tnz	a
4326  09fc 2711          	jreq	L4601
4327  09fe 4a            	dec	a
4328  09ff 270e          	jreq	L4601
4329  0a01 ae03b6        	ldw	x,#950
4330  0a04 89            	pushw	x
4331  0a05 5f            	clrw	x
4332  0a06 89            	pushw	x
4333  0a07 ae0000        	ldw	x,#L37
4334  0a0a cd0000        	call	_assert_failed
4336  0a0d 5b04          	addw	sp,#4
4337  0a0f               L4601:
4338                     ; 953     if (NewState != DISABLE)
4340  0a0f 7b01          	ld	a,(OFST+1,sp)
4341  0a11 2706          	jreq	L5551
4342                     ; 955         TIM1->SMCR |= TIM1_SMCR_MSM;
4344  0a13 721e5252      	bset	21074,#7
4346  0a17 2004          	jra	L7551
4347  0a19               L5551:
4348                     ; 959         TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4350  0a19 721f5252      	bres	21074,#7
4351  0a1d               L7551:
4352                     ; 961 }
4355  0a1d 84            	pop	a
4356  0a1e 81            	ret	
4443                     ; 983 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4443                     ; 984                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4443                     ; 985                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4443                     ; 986 {
4444                     	switch	.text
4445  0a1f               _TIM1_EncoderInterfaceConfig:
4447  0a1f 89            	pushw	x
4448       00000000      OFST:	set	0
4451                     ; 990     assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4453  0a20 9e            	ld	a,xh
4454  0a21 4a            	dec	a
4455  0a22 2718          	jreq	L6701
4456  0a24 9e            	ld	a,xh
4457  0a25 a102          	cp	a,#2
4458  0a27 2713          	jreq	L6701
4459  0a29 9e            	ld	a,xh
4460  0a2a a103          	cp	a,#3
4461  0a2c 270e          	jreq	L6701
4462  0a2e ae03de        	ldw	x,#990
4463  0a31 89            	pushw	x
4464  0a32 5f            	clrw	x
4465  0a33 89            	pushw	x
4466  0a34 ae0000        	ldw	x,#L37
4467  0a37 cd0000        	call	_assert_failed
4469  0a3a 5b04          	addw	sp,#4
4470  0a3c               L6701:
4471                     ; 991     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4473  0a3c 7b02          	ld	a,(OFST+2,sp)
4474  0a3e 2711          	jreq	L6011
4475  0a40 4a            	dec	a
4476  0a41 270e          	jreq	L6011
4477  0a43 ae03df        	ldw	x,#991
4478  0a46 89            	pushw	x
4479  0a47 5f            	clrw	x
4480  0a48 89            	pushw	x
4481  0a49 ae0000        	ldw	x,#L37
4482  0a4c cd0000        	call	_assert_failed
4484  0a4f 5b04          	addw	sp,#4
4485  0a51               L6011:
4486                     ; 992     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4488  0a51 7b05          	ld	a,(OFST+5,sp)
4489  0a53 2711          	jreq	L6111
4490  0a55 4a            	dec	a
4491  0a56 270e          	jreq	L6111
4492  0a58 ae03e0        	ldw	x,#992
4493  0a5b 89            	pushw	x
4494  0a5c 5f            	clrw	x
4495  0a5d 89            	pushw	x
4496  0a5e ae0000        	ldw	x,#L37
4497  0a61 cd0000        	call	_assert_failed
4499  0a64 5b04          	addw	sp,#4
4500  0a66               L6111:
4501                     ; 995     if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4503  0a66 7b02          	ld	a,(OFST+2,sp)
4504  0a68 2706          	jreq	L1261
4505                     ; 997         TIM1->CCER1 |= TIM1_CCER1_CC1P;
4507  0a6a 7212525c      	bset	21084,#1
4509  0a6e 2004          	jra	L3261
4510  0a70               L1261:
4511                     ; 1001         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4513  0a70 7213525c      	bres	21084,#1
4514  0a74               L3261:
4515                     ; 1004     if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4517  0a74 7b05          	ld	a,(OFST+5,sp)
4518  0a76 2706          	jreq	L5261
4519                     ; 1006         TIM1->CCER1 |= TIM1_CCER1_CC2P;
4521  0a78 721a525c      	bset	21084,#5
4523  0a7c 2004          	jra	L7261
4524  0a7e               L5261:
4525                     ; 1010         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4527  0a7e 721b525c      	bres	21084,#5
4528  0a82               L7261:
4529                     ; 1013     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4529                     ; 1014                            | (uint8_t) TIM1_EncoderMode);
4531  0a82 c65252        	ld	a,21074
4532  0a85 a4f0          	and	a,#240
4533  0a87 1a01          	or	a,(OFST+1,sp)
4534  0a89 c75252        	ld	21074,a
4535                     ; 1017     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4535                     ; 1018                             | (uint8_t) CCMR_TIxDirect_Set);
4537  0a8c c65258        	ld	a,21080
4538  0a8f a4fc          	and	a,#252
4539  0a91 aa01          	or	a,#1
4540  0a93 c75258        	ld	21080,a
4541                     ; 1019     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4541                     ; 1020                             | (uint8_t) CCMR_TIxDirect_Set);
4543  0a96 c65259        	ld	a,21081
4544  0a99 a4fc          	and	a,#252
4545  0a9b aa01          	or	a,#1
4546  0a9d c75259        	ld	21081,a
4547                     ; 1022 }
4550  0aa0 85            	popw	x
4551  0aa1 81            	ret	
4617                     ; 1035 void TIM1_PrescalerConfig(uint16_t Prescaler,
4617                     ; 1036                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4617                     ; 1037 {
4618                     	switch	.text
4619  0aa2               _TIM1_PrescalerConfig:
4621  0aa2 89            	pushw	x
4622       00000000      OFST:	set	0
4625                     ; 1039     assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4627  0aa3 7b05          	ld	a,(OFST+5,sp)
4628  0aa5 2711          	jreq	L0311
4629  0aa7 4a            	dec	a
4630  0aa8 270e          	jreq	L0311
4631  0aaa ae040f        	ldw	x,#1039
4632  0aad 89            	pushw	x
4633  0aae 5f            	clrw	x
4634  0aaf 89            	pushw	x
4635  0ab0 ae0000        	ldw	x,#L37
4636  0ab3 cd0000        	call	_assert_failed
4638  0ab6 5b04          	addw	sp,#4
4639  0ab8               L0311:
4640                     ; 1042     TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4642  0ab8 7b01          	ld	a,(OFST+1,sp)
4643  0aba c75260        	ld	21088,a
4644                     ; 1043     TIM1->PSCRL = (uint8_t)(Prescaler);
4646  0abd 7b02          	ld	a,(OFST+2,sp)
4647  0abf c75261        	ld	21089,a
4648                     ; 1046     TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4650  0ac2 7b05          	ld	a,(OFST+5,sp)
4651  0ac4 c75257        	ld	21079,a
4652                     ; 1048 }
4655  0ac7 85            	popw	x
4656  0ac8 81            	ret	
4693                     ; 1061 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4693                     ; 1062 {
4694                     	switch	.text
4695  0ac9               _TIM1_CounterModeConfig:
4697  0ac9 88            	push	a
4698       00000000      OFST:	set	0
4701                     ; 1064     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
4703  0aca 4d            	tnz	a
4704  0acb 271e          	jreq	L2411
4705  0acd a110          	cp	a,#16
4706  0acf 271a          	jreq	L2411
4707  0ad1 a120          	cp	a,#32
4708  0ad3 2716          	jreq	L2411
4709  0ad5 a140          	cp	a,#64
4710  0ad7 2712          	jreq	L2411
4711  0ad9 a160          	cp	a,#96
4712  0adb 270e          	jreq	L2411
4713  0add ae0428        	ldw	x,#1064
4714  0ae0 89            	pushw	x
4715  0ae1 5f            	clrw	x
4716  0ae2 89            	pushw	x
4717  0ae3 ae0000        	ldw	x,#L37
4718  0ae6 cd0000        	call	_assert_failed
4720  0ae9 5b04          	addw	sp,#4
4721  0aeb               L2411:
4722                     ; 1068     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
4722                     ; 1069                           | (uint8_t)TIM1_CounterMode);
4724  0aeb c65250        	ld	a,21072
4725  0aee a48f          	and	a,#143
4726  0af0 1a01          	or	a,(OFST+1,sp)
4727  0af2 c75250        	ld	21072,a
4728                     ; 1070 }
4731  0af5 84            	pop	a
4732  0af6 81            	ret	
4791                     ; 1081 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4791                     ; 1082 {
4792                     	switch	.text
4793  0af7               _TIM1_ForcedOC1Config:
4795  0af7 88            	push	a
4796       00000000      OFST:	set	0
4799                     ; 1084     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4801  0af8 a150          	cp	a,#80
4802  0afa 2712          	jreq	L4511
4803  0afc a140          	cp	a,#64
4804  0afe 270e          	jreq	L4511
4805  0b00 ae043c        	ldw	x,#1084
4806  0b03 89            	pushw	x
4807  0b04 5f            	clrw	x
4808  0b05 89            	pushw	x
4809  0b06 ae0000        	ldw	x,#L37
4810  0b09 cd0000        	call	_assert_failed
4812  0b0c 5b04          	addw	sp,#4
4813  0b0e               L4511:
4814                     ; 1087     TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
4814                     ; 1088                              (uint8_t)TIM1_ForcedAction);
4816  0b0e c65258        	ld	a,21080
4817  0b11 a48f          	and	a,#143
4818  0b13 1a01          	or	a,(OFST+1,sp)
4819  0b15 c75258        	ld	21080,a
4820                     ; 1089 }
4823  0b18 84            	pop	a
4824  0b19 81            	ret	
4861                     ; 1100 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4861                     ; 1101 {
4862                     	switch	.text
4863  0b1a               _TIM1_ForcedOC2Config:
4865  0b1a 88            	push	a
4866       00000000      OFST:	set	0
4869                     ; 1103     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4871  0b1b a150          	cp	a,#80
4872  0b1d 2712          	jreq	L6611
4873  0b1f a140          	cp	a,#64
4874  0b21 270e          	jreq	L6611
4875  0b23 ae044f        	ldw	x,#1103
4876  0b26 89            	pushw	x
4877  0b27 5f            	clrw	x
4878  0b28 89            	pushw	x
4879  0b29 ae0000        	ldw	x,#L37
4880  0b2c cd0000        	call	_assert_failed
4882  0b2f 5b04          	addw	sp,#4
4883  0b31               L6611:
4884                     ; 1106     TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
4884                     ; 1107                               | (uint8_t)TIM1_ForcedAction);
4886  0b31 c65259        	ld	a,21081
4887  0b34 a48f          	and	a,#143
4888  0b36 1a01          	or	a,(OFST+1,sp)
4889  0b38 c75259        	ld	21081,a
4890                     ; 1108 }
4893  0b3b 84            	pop	a
4894  0b3c 81            	ret	
4931                     ; 1120 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4931                     ; 1121 {
4932                     	switch	.text
4933  0b3d               _TIM1_ForcedOC3Config:
4935  0b3d 88            	push	a
4936       00000000      OFST:	set	0
4939                     ; 1123     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4941  0b3e a150          	cp	a,#80
4942  0b40 2712          	jreq	L0021
4943  0b42 a140          	cp	a,#64
4944  0b44 270e          	jreq	L0021
4945  0b46 ae0463        	ldw	x,#1123
4946  0b49 89            	pushw	x
4947  0b4a 5f            	clrw	x
4948  0b4b 89            	pushw	x
4949  0b4c ae0000        	ldw	x,#L37
4950  0b4f cd0000        	call	_assert_failed
4952  0b52 5b04          	addw	sp,#4
4953  0b54               L0021:
4954                     ; 1126     TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
4954                     ; 1127                               | (uint8_t)TIM1_ForcedAction);
4956  0b54 c6525a        	ld	a,21082
4957  0b57 a48f          	and	a,#143
4958  0b59 1a01          	or	a,(OFST+1,sp)
4959  0b5b c7525a        	ld	21082,a
4960                     ; 1128 }
4963  0b5e 84            	pop	a
4964  0b5f 81            	ret	
5001                     ; 1140 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5001                     ; 1141 {
5002                     	switch	.text
5003  0b60               _TIM1_ForcedOC4Config:
5005  0b60 88            	push	a
5006       00000000      OFST:	set	0
5009                     ; 1143     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5011  0b61 a150          	cp	a,#80
5012  0b63 2712          	jreq	L2121
5013  0b65 a140          	cp	a,#64
5014  0b67 270e          	jreq	L2121
5015  0b69 ae0477        	ldw	x,#1143
5016  0b6c 89            	pushw	x
5017  0b6d 5f            	clrw	x
5018  0b6e 89            	pushw	x
5019  0b6f ae0000        	ldw	x,#L37
5020  0b72 cd0000        	call	_assert_failed
5022  0b75 5b04          	addw	sp,#4
5023  0b77               L2121:
5024                     ; 1146     TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5024                     ; 1147                               | (uint8_t)TIM1_ForcedAction);
5026  0b77 c6525b        	ld	a,21083
5027  0b7a a48f          	and	a,#143
5028  0b7c 1a01          	or	a,(OFST+1,sp)
5029  0b7e c7525b        	ld	21083,a
5030                     ; 1148 }
5033  0b81 84            	pop	a
5034  0b82 81            	ret	
5071                     ; 1157 void TIM1_ARRPreloadConfig(FunctionalState NewState)
5071                     ; 1158 {
5072                     	switch	.text
5073  0b83               _TIM1_ARRPreloadConfig:
5075  0b83 88            	push	a
5076       00000000      OFST:	set	0
5079                     ; 1160     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5081  0b84 4d            	tnz	a
5082  0b85 2711          	jreq	L4221
5083  0b87 4a            	dec	a
5084  0b88 270e          	jreq	L4221
5085  0b8a ae0488        	ldw	x,#1160
5086  0b8d 89            	pushw	x
5087  0b8e 5f            	clrw	x
5088  0b8f 89            	pushw	x
5089  0b90 ae0000        	ldw	x,#L37
5090  0b93 cd0000        	call	_assert_failed
5092  0b96 5b04          	addw	sp,#4
5093  0b98               L4221:
5094                     ; 1163     if (NewState != DISABLE)
5096  0b98 7b01          	ld	a,(OFST+1,sp)
5097  0b9a 2706          	jreq	L5102
5098                     ; 1165         TIM1->CR1 |= TIM1_CR1_ARPE;
5100  0b9c 721e5250      	bset	21072,#7
5102  0ba0 2004          	jra	L7102
5103  0ba2               L5102:
5104                     ; 1169         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
5106  0ba2 721f5250      	bres	21072,#7
5107  0ba6               L7102:
5108                     ; 1171 }
5111  0ba6 84            	pop	a
5112  0ba7 81            	ret	
5148                     ; 1180 void TIM1_SelectCOM(FunctionalState NewState)
5148                     ; 1181 {
5149                     	switch	.text
5150  0ba8               _TIM1_SelectCOM:
5152  0ba8 88            	push	a
5153       00000000      OFST:	set	0
5156                     ; 1183     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5158  0ba9 4d            	tnz	a
5159  0baa 2711          	jreq	L6321
5160  0bac 4a            	dec	a
5161  0bad 270e          	jreq	L6321
5162  0baf ae049f        	ldw	x,#1183
5163  0bb2 89            	pushw	x
5164  0bb3 5f            	clrw	x
5165  0bb4 89            	pushw	x
5166  0bb5 ae0000        	ldw	x,#L37
5167  0bb8 cd0000        	call	_assert_failed
5169  0bbb 5b04          	addw	sp,#4
5170  0bbd               L6321:
5171                     ; 1186     if (NewState != DISABLE)
5173  0bbd 7b01          	ld	a,(OFST+1,sp)
5174  0bbf 2706          	jreq	L7302
5175                     ; 1188         TIM1->CR2 |= TIM1_CR2_COMS;
5177  0bc1 72145251      	bset	21073,#2
5179  0bc5 2004          	jra	L1402
5180  0bc7               L7302:
5181                     ; 1192         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
5183  0bc7 72155251      	bres	21073,#2
5184  0bcb               L1402:
5185                     ; 1194 }
5188  0bcb 84            	pop	a
5189  0bcc 81            	ret	
5226                     ; 1202 void TIM1_CCPreloadControl(FunctionalState NewState)
5226                     ; 1203 {
5227                     	switch	.text
5228  0bcd               _TIM1_CCPreloadControl:
5230  0bcd 88            	push	a
5231       00000000      OFST:	set	0
5234                     ; 1205     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5236  0bce 4d            	tnz	a
5237  0bcf 2711          	jreq	L0521
5238  0bd1 4a            	dec	a
5239  0bd2 270e          	jreq	L0521
5240  0bd4 ae04b5        	ldw	x,#1205
5241  0bd7 89            	pushw	x
5242  0bd8 5f            	clrw	x
5243  0bd9 89            	pushw	x
5244  0bda ae0000        	ldw	x,#L37
5245  0bdd cd0000        	call	_assert_failed
5247  0be0 5b04          	addw	sp,#4
5248  0be2               L0521:
5249                     ; 1208     if (NewState != DISABLE)
5251  0be2 7b01          	ld	a,(OFST+1,sp)
5252  0be4 2706          	jreq	L1602
5253                     ; 1210         TIM1->CR2 |= TIM1_CR2_CCPC;
5255  0be6 72105251      	bset	21073,#0
5257  0bea 2004          	jra	L3602
5258  0bec               L1602:
5259                     ; 1214         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5261  0bec 72115251      	bres	21073,#0
5262  0bf0               L3602:
5263                     ; 1216 }
5266  0bf0 84            	pop	a
5267  0bf1 81            	ret	
5304                     ; 1225 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5304                     ; 1226 {
5305                     	switch	.text
5306  0bf2               _TIM1_OC1PreloadConfig:
5308  0bf2 88            	push	a
5309       00000000      OFST:	set	0
5312                     ; 1228     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5314  0bf3 4d            	tnz	a
5315  0bf4 2711          	jreq	L2621
5316  0bf6 4a            	dec	a
5317  0bf7 270e          	jreq	L2621
5318  0bf9 ae04cc        	ldw	x,#1228
5319  0bfc 89            	pushw	x
5320  0bfd 5f            	clrw	x
5321  0bfe 89            	pushw	x
5322  0bff ae0000        	ldw	x,#L37
5323  0c02 cd0000        	call	_assert_failed
5325  0c05 5b04          	addw	sp,#4
5326  0c07               L2621:
5327                     ; 1231     if (NewState != DISABLE)
5329  0c07 7b01          	ld	a,(OFST+1,sp)
5330  0c09 2706          	jreq	L3012
5331                     ; 1233         TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5333  0c0b 72165258      	bset	21080,#3
5335  0c0f 2004          	jra	L5012
5336  0c11               L3012:
5337                     ; 1237         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5339  0c11 72175258      	bres	21080,#3
5340  0c15               L5012:
5341                     ; 1239 }
5344  0c15 84            	pop	a
5345  0c16 81            	ret	
5382                     ; 1248 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5382                     ; 1249 {
5383                     	switch	.text
5384  0c17               _TIM1_OC2PreloadConfig:
5386  0c17 88            	push	a
5387       00000000      OFST:	set	0
5390                     ; 1251     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5392  0c18 4d            	tnz	a
5393  0c19 2711          	jreq	L4721
5394  0c1b 4a            	dec	a
5395  0c1c 270e          	jreq	L4721
5396  0c1e ae04e3        	ldw	x,#1251
5397  0c21 89            	pushw	x
5398  0c22 5f            	clrw	x
5399  0c23 89            	pushw	x
5400  0c24 ae0000        	ldw	x,#L37
5401  0c27 cd0000        	call	_assert_failed
5403  0c2a 5b04          	addw	sp,#4
5404  0c2c               L4721:
5405                     ; 1254     if (NewState != DISABLE)
5407  0c2c 7b01          	ld	a,(OFST+1,sp)
5408  0c2e 2706          	jreq	L5212
5409                     ; 1256         TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5411  0c30 72165259      	bset	21081,#3
5413  0c34 2004          	jra	L7212
5414  0c36               L5212:
5415                     ; 1260         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5417  0c36 72175259      	bres	21081,#3
5418  0c3a               L7212:
5419                     ; 1262 }
5422  0c3a 84            	pop	a
5423  0c3b 81            	ret	
5460                     ; 1271 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5460                     ; 1272 {
5461                     	switch	.text
5462  0c3c               _TIM1_OC3PreloadConfig:
5464  0c3c 88            	push	a
5465       00000000      OFST:	set	0
5468                     ; 1274     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5470  0c3d 4d            	tnz	a
5471  0c3e 2711          	jreq	L6031
5472  0c40 4a            	dec	a
5473  0c41 270e          	jreq	L6031
5474  0c43 ae04fa        	ldw	x,#1274
5475  0c46 89            	pushw	x
5476  0c47 5f            	clrw	x
5477  0c48 89            	pushw	x
5478  0c49 ae0000        	ldw	x,#L37
5479  0c4c cd0000        	call	_assert_failed
5481  0c4f 5b04          	addw	sp,#4
5482  0c51               L6031:
5483                     ; 1277     if (NewState != DISABLE)
5485  0c51 7b01          	ld	a,(OFST+1,sp)
5486  0c53 2706          	jreq	L7412
5487                     ; 1279         TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5489  0c55 7216525a      	bset	21082,#3
5491  0c59 2004          	jra	L1512
5492  0c5b               L7412:
5493                     ; 1283         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5495  0c5b 7217525a      	bres	21082,#3
5496  0c5f               L1512:
5497                     ; 1285 }
5500  0c5f 84            	pop	a
5501  0c60 81            	ret	
5538                     ; 1295 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5538                     ; 1296 {
5539                     	switch	.text
5540  0c61               _TIM1_OC4PreloadConfig:
5542  0c61 88            	push	a
5543       00000000      OFST:	set	0
5546                     ; 1298     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5548  0c62 4d            	tnz	a
5549  0c63 2711          	jreq	L0231
5550  0c65 4a            	dec	a
5551  0c66 270e          	jreq	L0231
5552  0c68 ae0512        	ldw	x,#1298
5553  0c6b 89            	pushw	x
5554  0c6c 5f            	clrw	x
5555  0c6d 89            	pushw	x
5556  0c6e ae0000        	ldw	x,#L37
5557  0c71 cd0000        	call	_assert_failed
5559  0c74 5b04          	addw	sp,#4
5560  0c76               L0231:
5561                     ; 1301     if (NewState != DISABLE)
5563  0c76 7b01          	ld	a,(OFST+1,sp)
5564  0c78 2706          	jreq	L1712
5565                     ; 1303         TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5567  0c7a 7216525b      	bset	21083,#3
5569  0c7e 2004          	jra	L3712
5570  0c80               L1712:
5571                     ; 1307         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5573  0c80 7217525b      	bres	21083,#3
5574  0c84               L3712:
5575                     ; 1309 }
5578  0c84 84            	pop	a
5579  0c85 81            	ret	
5615                     ; 1317 void TIM1_OC1FastConfig(FunctionalState NewState)
5615                     ; 1318 {
5616                     	switch	.text
5617  0c86               _TIM1_OC1FastConfig:
5619  0c86 88            	push	a
5620       00000000      OFST:	set	0
5623                     ; 1320     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5625  0c87 4d            	tnz	a
5626  0c88 2711          	jreq	L2331
5627  0c8a 4a            	dec	a
5628  0c8b 270e          	jreq	L2331
5629  0c8d ae0528        	ldw	x,#1320
5630  0c90 89            	pushw	x
5631  0c91 5f            	clrw	x
5632  0c92 89            	pushw	x
5633  0c93 ae0000        	ldw	x,#L37
5634  0c96 cd0000        	call	_assert_failed
5636  0c99 5b04          	addw	sp,#4
5637  0c9b               L2331:
5638                     ; 1323     if (NewState != DISABLE)
5640  0c9b 7b01          	ld	a,(OFST+1,sp)
5641  0c9d 2706          	jreq	L3122
5642                     ; 1325         TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5644  0c9f 72145258      	bset	21080,#2
5646  0ca3 2004          	jra	L5122
5647  0ca5               L3122:
5648                     ; 1329         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5650  0ca5 72155258      	bres	21080,#2
5651  0ca9               L5122:
5652                     ; 1331 }
5655  0ca9 84            	pop	a
5656  0caa 81            	ret	
5692                     ; 1341 void TIM1_OC2FastConfig(FunctionalState NewState)
5692                     ; 1342 {
5693                     	switch	.text
5694  0cab               _TIM1_OC2FastConfig:
5696  0cab 88            	push	a
5697       00000000      OFST:	set	0
5700                     ; 1344     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5702  0cac 4d            	tnz	a
5703  0cad 2711          	jreq	L4431
5704  0caf 4a            	dec	a
5705  0cb0 270e          	jreq	L4431
5706  0cb2 ae0540        	ldw	x,#1344
5707  0cb5 89            	pushw	x
5708  0cb6 5f            	clrw	x
5709  0cb7 89            	pushw	x
5710  0cb8 ae0000        	ldw	x,#L37
5711  0cbb cd0000        	call	_assert_failed
5713  0cbe 5b04          	addw	sp,#4
5714  0cc0               L4431:
5715                     ; 1347     if (NewState != DISABLE)
5717  0cc0 7b01          	ld	a,(OFST+1,sp)
5718  0cc2 2706          	jreq	L5322
5719                     ; 1349         TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
5721  0cc4 72145259      	bset	21081,#2
5723  0cc8 2004          	jra	L7322
5724  0cca               L5322:
5725                     ; 1353         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5727  0cca 72155259      	bres	21081,#2
5728  0cce               L7322:
5729                     ; 1355 }
5732  0cce 84            	pop	a
5733  0ccf 81            	ret	
5769                     ; 1364 void TIM1_OC3FastConfig(FunctionalState NewState)
5769                     ; 1365 {
5770                     	switch	.text
5771  0cd0               _TIM1_OC3FastConfig:
5773  0cd0 88            	push	a
5774       00000000      OFST:	set	0
5777                     ; 1367     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5779  0cd1 4d            	tnz	a
5780  0cd2 2711          	jreq	L6531
5781  0cd4 4a            	dec	a
5782  0cd5 270e          	jreq	L6531
5783  0cd7 ae0557        	ldw	x,#1367
5784  0cda 89            	pushw	x
5785  0cdb 5f            	clrw	x
5786  0cdc 89            	pushw	x
5787  0cdd ae0000        	ldw	x,#L37
5788  0ce0 cd0000        	call	_assert_failed
5790  0ce3 5b04          	addw	sp,#4
5791  0ce5               L6531:
5792                     ; 1370     if (NewState != DISABLE)
5794  0ce5 7b01          	ld	a,(OFST+1,sp)
5795  0ce7 2706          	jreq	L7522
5796                     ; 1372         TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
5798  0ce9 7214525a      	bset	21082,#2
5800  0ced 2004          	jra	L1622
5801  0cef               L7522:
5802                     ; 1376         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5804  0cef 7215525a      	bres	21082,#2
5805  0cf3               L1622:
5806                     ; 1378 }
5809  0cf3 84            	pop	a
5810  0cf4 81            	ret	
5846                     ; 1387 void TIM1_OC4FastConfig(FunctionalState NewState)
5846                     ; 1388 {
5847                     	switch	.text
5848  0cf5               _TIM1_OC4FastConfig:
5850  0cf5 88            	push	a
5851       00000000      OFST:	set	0
5854                     ; 1390     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5856  0cf6 4d            	tnz	a
5857  0cf7 2711          	jreq	L0731
5858  0cf9 4a            	dec	a
5859  0cfa 270e          	jreq	L0731
5860  0cfc ae056e        	ldw	x,#1390
5861  0cff 89            	pushw	x
5862  0d00 5f            	clrw	x
5863  0d01 89            	pushw	x
5864  0d02 ae0000        	ldw	x,#L37
5865  0d05 cd0000        	call	_assert_failed
5867  0d08 5b04          	addw	sp,#4
5868  0d0a               L0731:
5869                     ; 1393     if (NewState != DISABLE)
5871  0d0a 7b01          	ld	a,(OFST+1,sp)
5872  0d0c 2706          	jreq	L1032
5873                     ; 1395         TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
5875  0d0e 7214525b      	bset	21083,#2
5877  0d12 2004          	jra	L3032
5878  0d14               L1032:
5879                     ; 1399         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5881  0d14 7215525b      	bres	21083,#2
5882  0d18               L3032:
5883                     ; 1401 }
5886  0d18 84            	pop	a
5887  0d19 81            	ret	
5993                     ; 1418 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
5993                     ; 1419 {
5994                     	switch	.text
5995  0d1a               _TIM1_GenerateEvent:
5997  0d1a 88            	push	a
5998       00000000      OFST:	set	0
6001                     ; 1421     assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
6003  0d1b 4d            	tnz	a
6004  0d1c 260e          	jrne	L0041
6005  0d1e ae058d        	ldw	x,#1421
6006  0d21 89            	pushw	x
6007  0d22 5f            	clrw	x
6008  0d23 89            	pushw	x
6009  0d24 ae0000        	ldw	x,#L37
6010  0d27 cd0000        	call	_assert_failed
6012  0d2a 5b04          	addw	sp,#4
6013  0d2c               L0041:
6014                     ; 1424     TIM1->EGR = (uint8_t)TIM1_EventSource;
6016  0d2c 7b01          	ld	a,(OFST+1,sp)
6017  0d2e c75257        	ld	21079,a
6018                     ; 1425 }
6021  0d31 84            	pop	a
6022  0d32 81            	ret	
6059                     ; 1436 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6059                     ; 1437 {
6060                     	switch	.text
6061  0d33               _TIM1_OC1PolarityConfig:
6063  0d33 88            	push	a
6064       00000000      OFST:	set	0
6067                     ; 1439     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6069  0d34 4d            	tnz	a
6070  0d35 2712          	jreq	L2141
6071  0d37 a122          	cp	a,#34
6072  0d39 270e          	jreq	L2141
6073  0d3b ae059f        	ldw	x,#1439
6074  0d3e 89            	pushw	x
6075  0d3f 5f            	clrw	x
6076  0d40 89            	pushw	x
6077  0d41 ae0000        	ldw	x,#L37
6078  0d44 cd0000        	call	_assert_failed
6080  0d47 5b04          	addw	sp,#4
6081  0d49               L2141:
6082                     ; 1442     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6084  0d49 7b01          	ld	a,(OFST+1,sp)
6085  0d4b 2706          	jreq	L5632
6086                     ; 1444         TIM1->CCER1 |= TIM1_CCER1_CC1P;
6088  0d4d 7212525c      	bset	21084,#1
6090  0d51 2004          	jra	L7632
6091  0d53               L5632:
6092                     ; 1448         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
6094  0d53 7213525c      	bres	21084,#1
6095  0d57               L7632:
6096                     ; 1450 }
6099  0d57 84            	pop	a
6100  0d58 81            	ret	
6137                     ; 1461 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6137                     ; 1462 {
6138                     	switch	.text
6139  0d59               _TIM1_OC1NPolarityConfig:
6141  0d59 88            	push	a
6142       00000000      OFST:	set	0
6145                     ; 1464     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6147  0d5a 4d            	tnz	a
6148  0d5b 2712          	jreq	L4241
6149  0d5d a188          	cp	a,#136
6150  0d5f 270e          	jreq	L4241
6151  0d61 ae05b8        	ldw	x,#1464
6152  0d64 89            	pushw	x
6153  0d65 5f            	clrw	x
6154  0d66 89            	pushw	x
6155  0d67 ae0000        	ldw	x,#L37
6156  0d6a cd0000        	call	_assert_failed
6158  0d6d 5b04          	addw	sp,#4
6159  0d6f               L4241:
6160                     ; 1467     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6162  0d6f 7b01          	ld	a,(OFST+1,sp)
6163  0d71 2706          	jreq	L7042
6164                     ; 1469         TIM1->CCER1 |= TIM1_CCER1_CC1NP;
6166  0d73 7216525c      	bset	21084,#3
6168  0d77 2004          	jra	L1142
6169  0d79               L7042:
6170                     ; 1473         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
6172  0d79 7217525c      	bres	21084,#3
6173  0d7d               L1142:
6174                     ; 1475 }
6177  0d7d 84            	pop	a
6178  0d7e 81            	ret	
6215                     ; 1486 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6215                     ; 1487 {
6216                     	switch	.text
6217  0d7f               _TIM1_OC2PolarityConfig:
6219  0d7f 88            	push	a
6220       00000000      OFST:	set	0
6223                     ; 1489     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6225  0d80 4d            	tnz	a
6226  0d81 2712          	jreq	L6341
6227  0d83 a122          	cp	a,#34
6228  0d85 270e          	jreq	L6341
6229  0d87 ae05d1        	ldw	x,#1489
6230  0d8a 89            	pushw	x
6231  0d8b 5f            	clrw	x
6232  0d8c 89            	pushw	x
6233  0d8d ae0000        	ldw	x,#L37
6234  0d90 cd0000        	call	_assert_failed
6236  0d93 5b04          	addw	sp,#4
6237  0d95               L6341:
6238                     ; 1492     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6240  0d95 7b01          	ld	a,(OFST+1,sp)
6241  0d97 2706          	jreq	L1342
6242                     ; 1494         TIM1->CCER1 |= TIM1_CCER1_CC2P;
6244  0d99 721a525c      	bset	21084,#5
6246  0d9d 2004          	jra	L3342
6247  0d9f               L1342:
6248                     ; 1498         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6250  0d9f 721b525c      	bres	21084,#5
6251  0da3               L3342:
6252                     ; 1500 }
6255  0da3 84            	pop	a
6256  0da4 81            	ret	
6293                     ; 1510 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6293                     ; 1511 {
6294                     	switch	.text
6295  0da5               _TIM1_OC2NPolarityConfig:
6297  0da5 88            	push	a
6298       00000000      OFST:	set	0
6301                     ; 1513     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6303  0da6 4d            	tnz	a
6304  0da7 2712          	jreq	L0541
6305  0da9 a188          	cp	a,#136
6306  0dab 270e          	jreq	L0541
6307  0dad ae05e9        	ldw	x,#1513
6308  0db0 89            	pushw	x
6309  0db1 5f            	clrw	x
6310  0db2 89            	pushw	x
6311  0db3 ae0000        	ldw	x,#L37
6312  0db6 cd0000        	call	_assert_failed
6314  0db9 5b04          	addw	sp,#4
6315  0dbb               L0541:
6316                     ; 1516     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6318  0dbb 7b01          	ld	a,(OFST+1,sp)
6319  0dbd 2706          	jreq	L3542
6320                     ; 1518         TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6322  0dbf 721e525c      	bset	21084,#7
6324  0dc3 2004          	jra	L5542
6325  0dc5               L3542:
6326                     ; 1522         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6328  0dc5 721f525c      	bres	21084,#7
6329  0dc9               L5542:
6330                     ; 1524 }
6333  0dc9 84            	pop	a
6334  0dca 81            	ret	
6371                     ; 1535 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6371                     ; 1536 {
6372                     	switch	.text
6373  0dcb               _TIM1_OC3PolarityConfig:
6375  0dcb 88            	push	a
6376       00000000      OFST:	set	0
6379                     ; 1538     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6381  0dcc 4d            	tnz	a
6382  0dcd 2712          	jreq	L2641
6383  0dcf a122          	cp	a,#34
6384  0dd1 270e          	jreq	L2641
6385  0dd3 ae0602        	ldw	x,#1538
6386  0dd6 89            	pushw	x
6387  0dd7 5f            	clrw	x
6388  0dd8 89            	pushw	x
6389  0dd9 ae0000        	ldw	x,#L37
6390  0ddc cd0000        	call	_assert_failed
6392  0ddf 5b04          	addw	sp,#4
6393  0de1               L2641:
6394                     ; 1541     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6396  0de1 7b01          	ld	a,(OFST+1,sp)
6397  0de3 2706          	jreq	L5742
6398                     ; 1543         TIM1->CCER2 |= TIM1_CCER2_CC3P;
6400  0de5 7212525d      	bset	21085,#1
6402  0de9 2004          	jra	L7742
6403  0deb               L5742:
6404                     ; 1547         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6406  0deb 7213525d      	bres	21085,#1
6407  0def               L7742:
6408                     ; 1549 }
6411  0def 84            	pop	a
6412  0df0 81            	ret	
6449                     ; 1560 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6449                     ; 1561 {
6450                     	switch	.text
6451  0df1               _TIM1_OC3NPolarityConfig:
6453  0df1 88            	push	a
6454       00000000      OFST:	set	0
6457                     ; 1563     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6459  0df2 4d            	tnz	a
6460  0df3 2712          	jreq	L4741
6461  0df5 a188          	cp	a,#136
6462  0df7 270e          	jreq	L4741
6463  0df9 ae061b        	ldw	x,#1563
6464  0dfc 89            	pushw	x
6465  0dfd 5f            	clrw	x
6466  0dfe 89            	pushw	x
6467  0dff ae0000        	ldw	x,#L37
6468  0e02 cd0000        	call	_assert_failed
6470  0e05 5b04          	addw	sp,#4
6471  0e07               L4741:
6472                     ; 1566     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6474  0e07 7b01          	ld	a,(OFST+1,sp)
6475  0e09 2706          	jreq	L7152
6476                     ; 1568         TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6478  0e0b 7216525d      	bset	21085,#3
6480  0e0f 2004          	jra	L1252
6481  0e11               L7152:
6482                     ; 1572         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6484  0e11 7217525d      	bres	21085,#3
6485  0e15               L1252:
6486                     ; 1574 }
6489  0e15 84            	pop	a
6490  0e16 81            	ret	
6527                     ; 1584 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6527                     ; 1585 {
6528                     	switch	.text
6529  0e17               _TIM1_OC4PolarityConfig:
6531  0e17 88            	push	a
6532       00000000      OFST:	set	0
6535                     ; 1587     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6537  0e18 4d            	tnz	a
6538  0e19 2712          	jreq	L6051
6539  0e1b a122          	cp	a,#34
6540  0e1d 270e          	jreq	L6051
6541  0e1f ae0633        	ldw	x,#1587
6542  0e22 89            	pushw	x
6543  0e23 5f            	clrw	x
6544  0e24 89            	pushw	x
6545  0e25 ae0000        	ldw	x,#L37
6546  0e28 cd0000        	call	_assert_failed
6548  0e2b 5b04          	addw	sp,#4
6549  0e2d               L6051:
6550                     ; 1590     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6552  0e2d 7b01          	ld	a,(OFST+1,sp)
6553  0e2f 2706          	jreq	L1452
6554                     ; 1592         TIM1->CCER2 |= TIM1_CCER2_CC4P;
6556  0e31 721a525d      	bset	21085,#5
6558  0e35 2004          	jra	L3452
6559  0e37               L1452:
6560                     ; 1596         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6562  0e37 721b525d      	bres	21085,#5
6563  0e3b               L3452:
6564                     ; 1598 }
6567  0e3b 84            	pop	a
6568  0e3c 81            	ret	
6614                     ; 1613 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6614                     ; 1614 {
6615                     	switch	.text
6616  0e3d               _TIM1_CCxCmd:
6618  0e3d 89            	pushw	x
6619       00000000      OFST:	set	0
6622                     ; 1616     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6624  0e3e 9e            	ld	a,xh
6625  0e3f 4d            	tnz	a
6626  0e40 271c          	jreq	L0251
6627  0e42 9e            	ld	a,xh
6628  0e43 4a            	dec	a
6629  0e44 2718          	jreq	L0251
6630  0e46 9e            	ld	a,xh
6631  0e47 a102          	cp	a,#2
6632  0e49 2713          	jreq	L0251
6633  0e4b 9e            	ld	a,xh
6634  0e4c a103          	cp	a,#3
6635  0e4e 270e          	jreq	L0251
6636  0e50 ae0650        	ldw	x,#1616
6637  0e53 89            	pushw	x
6638  0e54 5f            	clrw	x
6639  0e55 89            	pushw	x
6640  0e56 ae0000        	ldw	x,#L37
6641  0e59 cd0000        	call	_assert_failed
6643  0e5c 5b04          	addw	sp,#4
6644  0e5e               L0251:
6645                     ; 1617     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6647  0e5e 7b02          	ld	a,(OFST+2,sp)
6648  0e60 2711          	jreq	L0351
6649  0e62 4a            	dec	a
6650  0e63 270e          	jreq	L0351
6651  0e65 ae0651        	ldw	x,#1617
6652  0e68 89            	pushw	x
6653  0e69 5f            	clrw	x
6654  0e6a 89            	pushw	x
6655  0e6b ae0000        	ldw	x,#L37
6656  0e6e cd0000        	call	_assert_failed
6658  0e71 5b04          	addw	sp,#4
6659  0e73               L0351:
6660                     ; 1619     if (TIM1_Channel == TIM1_CHANNEL_1)
6662  0e73 7b01          	ld	a,(OFST+1,sp)
6663  0e75 2610          	jrne	L7652
6664                     ; 1622         if (NewState != DISABLE)
6666  0e77 7b02          	ld	a,(OFST+2,sp)
6667  0e79 2706          	jreq	L1752
6668                     ; 1624             TIM1->CCER1 |= TIM1_CCER1_CC1E;
6670  0e7b 7210525c      	bset	21084,#0
6672  0e7f 203c          	jra	L5752
6673  0e81               L1752:
6674                     ; 1628             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6676  0e81 7211525c      	bres	21084,#0
6677  0e85 2036          	jra	L5752
6678  0e87               L7652:
6679                     ; 1632     else if (TIM1_Channel == TIM1_CHANNEL_2)
6681  0e87 a101          	cp	a,#1
6682  0e89 2610          	jrne	L7752
6683                     ; 1635         if (NewState != DISABLE)
6685  0e8b 7b02          	ld	a,(OFST+2,sp)
6686  0e8d 2706          	jreq	L1062
6687                     ; 1637             TIM1->CCER1 |= TIM1_CCER1_CC2E;
6689  0e8f 7218525c      	bset	21084,#4
6691  0e93 2028          	jra	L5752
6692  0e95               L1062:
6693                     ; 1641             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6695  0e95 7219525c      	bres	21084,#4
6696  0e99 2022          	jra	L5752
6697  0e9b               L7752:
6698                     ; 1644     else if (TIM1_Channel == TIM1_CHANNEL_3)
6700  0e9b a102          	cp	a,#2
6701  0e9d 2610          	jrne	L7062
6702                     ; 1647         if (NewState != DISABLE)
6704  0e9f 7b02          	ld	a,(OFST+2,sp)
6705  0ea1 2706          	jreq	L1162
6706                     ; 1649             TIM1->CCER2 |= TIM1_CCER2_CC3E;
6708  0ea3 7210525d      	bset	21085,#0
6710  0ea7 2014          	jra	L5752
6711  0ea9               L1162:
6712                     ; 1653             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6714  0ea9 7211525d      	bres	21085,#0
6715  0ead 200e          	jra	L5752
6716  0eaf               L7062:
6717                     ; 1659         if (NewState != DISABLE)
6719  0eaf 7b02          	ld	a,(OFST+2,sp)
6720  0eb1 2706          	jreq	L7162
6721                     ; 1661             TIM1->CCER2 |= TIM1_CCER2_CC4E;
6723  0eb3 7218525d      	bset	21085,#4
6725  0eb7 2004          	jra	L5752
6726  0eb9               L7162:
6727                     ; 1665             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6729  0eb9 7219525d      	bres	21085,#4
6730  0ebd               L5752:
6731                     ; 1668 }
6734  0ebd 85            	popw	x
6735  0ebe 81            	ret	
6781                     ; 1681 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6781                     ; 1682 {
6782                     	switch	.text
6783  0ebf               _TIM1_CCxNCmd:
6785  0ebf 89            	pushw	x
6786       00000000      OFST:	set	0
6789                     ; 1684     assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
6791  0ec0 9e            	ld	a,xh
6792  0ec1 4d            	tnz	a
6793  0ec2 2717          	jreq	L2451
6794  0ec4 9e            	ld	a,xh
6795  0ec5 4a            	dec	a
6796  0ec6 2713          	jreq	L2451
6797  0ec8 9e            	ld	a,xh
6798  0ec9 a102          	cp	a,#2
6799  0ecb 270e          	jreq	L2451
6800  0ecd ae0694        	ldw	x,#1684
6801  0ed0 89            	pushw	x
6802  0ed1 5f            	clrw	x
6803  0ed2 89            	pushw	x
6804  0ed3 ae0000        	ldw	x,#L37
6805  0ed6 cd0000        	call	_assert_failed
6807  0ed9 5b04          	addw	sp,#4
6808  0edb               L2451:
6809                     ; 1685     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6811  0edb 7b02          	ld	a,(OFST+2,sp)
6812  0edd 2711          	jreq	L2551
6813  0edf 4a            	dec	a
6814  0ee0 270e          	jreq	L2551
6815  0ee2 ae0695        	ldw	x,#1685
6816  0ee5 89            	pushw	x
6817  0ee6 5f            	clrw	x
6818  0ee7 89            	pushw	x
6819  0ee8 ae0000        	ldw	x,#L37
6820  0eeb cd0000        	call	_assert_failed
6822  0eee 5b04          	addw	sp,#4
6823  0ef0               L2551:
6824                     ; 1687     if (TIM1_Channel == TIM1_CHANNEL_1)
6826  0ef0 7b01          	ld	a,(OFST+1,sp)
6827  0ef2 2610          	jrne	L5462
6828                     ; 1690         if (NewState != DISABLE)
6830  0ef4 7b02          	ld	a,(OFST+2,sp)
6831  0ef6 2706          	jreq	L7462
6832                     ; 1692             TIM1->CCER1 |= TIM1_CCER1_CC1NE;
6834  0ef8 7214525c      	bset	21084,#2
6836  0efc 2027          	jra	L3562
6837  0efe               L7462:
6838                     ; 1696             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
6840  0efe 7215525c      	bres	21084,#2
6841  0f02 2021          	jra	L3562
6842  0f04               L5462:
6843                     ; 1699     else if (TIM1_Channel == TIM1_CHANNEL_2)
6845  0f04 4a            	dec	a
6846  0f05 2610          	jrne	L5562
6847                     ; 1702         if (NewState != DISABLE)
6849  0f07 7b02          	ld	a,(OFST+2,sp)
6850  0f09 2706          	jreq	L7562
6851                     ; 1704             TIM1->CCER1 |= TIM1_CCER1_CC2NE;
6853  0f0b 721c525c      	bset	21084,#6
6855  0f0f 2014          	jra	L3562
6856  0f11               L7562:
6857                     ; 1708             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
6859  0f11 721d525c      	bres	21084,#6
6860  0f15 200e          	jra	L3562
6861  0f17               L5562:
6862                     ; 1714         if (NewState != DISABLE)
6864  0f17 7b02          	ld	a,(OFST+2,sp)
6865  0f19 2706          	jreq	L5662
6866                     ; 1716             TIM1->CCER2 |= TIM1_CCER2_CC3NE;
6868  0f1b 7214525d      	bset	21085,#2
6870  0f1f 2004          	jra	L3562
6871  0f21               L5662:
6872                     ; 1720             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
6874  0f21 7215525d      	bres	21085,#2
6875  0f25               L3562:
6876                     ; 1723 }
6879  0f25 85            	popw	x
6880  0f26 81            	ret	
6926                     ; 1747 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
6926                     ; 1748 {
6927                     	switch	.text
6928  0f27               _TIM1_SelectOCxM:
6930  0f27 89            	pushw	x
6931       00000000      OFST:	set	0
6934                     ; 1750     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6936  0f28 9e            	ld	a,xh
6937  0f29 4d            	tnz	a
6938  0f2a 271c          	jreq	L4651
6939  0f2c 9e            	ld	a,xh
6940  0f2d 4a            	dec	a
6941  0f2e 2718          	jreq	L4651
6942  0f30 9e            	ld	a,xh
6943  0f31 a102          	cp	a,#2
6944  0f33 2713          	jreq	L4651
6945  0f35 9e            	ld	a,xh
6946  0f36 a103          	cp	a,#3
6947  0f38 270e          	jreq	L4651
6948  0f3a ae06d6        	ldw	x,#1750
6949  0f3d 89            	pushw	x
6950  0f3e 5f            	clrw	x
6951  0f3f 89            	pushw	x
6952  0f40 ae0000        	ldw	x,#L37
6953  0f43 cd0000        	call	_assert_failed
6955  0f46 5b04          	addw	sp,#4
6956  0f48               L4651:
6957                     ; 1751     assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
6959  0f48 7b02          	ld	a,(OFST+2,sp)
6960  0f4a 272a          	jreq	L4751
6961  0f4c a110          	cp	a,#16
6962  0f4e 2726          	jreq	L4751
6963  0f50 a120          	cp	a,#32
6964  0f52 2722          	jreq	L4751
6965  0f54 a130          	cp	a,#48
6966  0f56 271e          	jreq	L4751
6967  0f58 a160          	cp	a,#96
6968  0f5a 271a          	jreq	L4751
6969  0f5c a170          	cp	a,#112
6970  0f5e 2716          	jreq	L4751
6971  0f60 a150          	cp	a,#80
6972  0f62 2712          	jreq	L4751
6973  0f64 a140          	cp	a,#64
6974  0f66 270e          	jreq	L4751
6975  0f68 ae06d7        	ldw	x,#1751
6976  0f6b 89            	pushw	x
6977  0f6c 5f            	clrw	x
6978  0f6d 89            	pushw	x
6979  0f6e ae0000        	ldw	x,#L37
6980  0f71 cd0000        	call	_assert_failed
6982  0f74 5b04          	addw	sp,#4
6983  0f76               L4751:
6984                     ; 1753     if (TIM1_Channel == TIM1_CHANNEL_1)
6986  0f76 7b01          	ld	a,(OFST+1,sp)
6987  0f78 2610          	jrne	L3172
6988                     ; 1756         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6990  0f7a 7211525c      	bres	21084,#0
6991                     ; 1759         TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
6991                     ; 1760                                 | (uint8_t)TIM1_OCMode);
6993  0f7e c65258        	ld	a,21080
6994  0f81 a48f          	and	a,#143
6995  0f83 1a02          	or	a,(OFST+2,sp)
6996  0f85 c75258        	ld	21080,a
6998  0f88 2036          	jra	L5172
6999  0f8a               L3172:
7000                     ; 1762     else if (TIM1_Channel == TIM1_CHANNEL_2)
7002  0f8a a101          	cp	a,#1
7003  0f8c 2610          	jrne	L7172
7004                     ; 1765         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7006  0f8e 7219525c      	bres	21084,#4
7007                     ; 1768         TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
7007                     ; 1769                                 | (uint8_t)TIM1_OCMode);
7009  0f92 c65259        	ld	a,21081
7010  0f95 a48f          	and	a,#143
7011  0f97 1a02          	or	a,(OFST+2,sp)
7012  0f99 c75259        	ld	21081,a
7014  0f9c 2022          	jra	L5172
7015  0f9e               L7172:
7016                     ; 1771     else if (TIM1_Channel == TIM1_CHANNEL_3)
7018  0f9e a102          	cp	a,#2
7019  0fa0 2610          	jrne	L3272
7020                     ; 1774         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7022  0fa2 7211525d      	bres	21085,#0
7023                     ; 1777         TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
7023                     ; 1778                                 | (uint8_t)TIM1_OCMode);
7025  0fa6 c6525a        	ld	a,21082
7026  0fa9 a48f          	and	a,#143
7027  0fab 1a02          	or	a,(OFST+2,sp)
7028  0fad c7525a        	ld	21082,a
7030  0fb0 200e          	jra	L5172
7031  0fb2               L3272:
7032                     ; 1783         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7034  0fb2 7219525d      	bres	21085,#4
7035                     ; 1786         TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
7035                     ; 1787                                 | (uint8_t)TIM1_OCMode);
7037  0fb6 c6525b        	ld	a,21083
7038  0fb9 a48f          	and	a,#143
7039  0fbb 1a02          	or	a,(OFST+2,sp)
7040  0fbd c7525b        	ld	21083,a
7041  0fc0               L5172:
7042                     ; 1789 }
7045  0fc0 85            	popw	x
7046  0fc1 81            	ret	
7078                     ; 1798 void TIM1_SetCounter(uint16_t Counter)
7078                     ; 1799 {
7079                     	switch	.text
7080  0fc2               _TIM1_SetCounter:
7084                     ; 1801     TIM1->CNTRH = (uint8_t)(Counter >> 8);
7086  0fc2 9e            	ld	a,xh
7087  0fc3 c7525e        	ld	21086,a
7088                     ; 1802     TIM1->CNTRL = (uint8_t)(Counter);
7090  0fc6 9f            	ld	a,xl
7091  0fc7 c7525f        	ld	21087,a
7092                     ; 1804 }
7095  0fca 81            	ret	
7127                     ; 1813 void TIM1_SetAutoreload(uint16_t Autoreload)
7127                     ; 1814 {
7128                     	switch	.text
7129  0fcb               _TIM1_SetAutoreload:
7133                     ; 1817     TIM1->ARRH = (uint8_t)(Autoreload >> 8);
7135  0fcb 9e            	ld	a,xh
7136  0fcc c75262        	ld	21090,a
7137                     ; 1818     TIM1->ARRL = (uint8_t)(Autoreload);
7139  0fcf 9f            	ld	a,xl
7140  0fd0 c75263        	ld	21091,a
7141                     ; 1820 }
7144  0fd3 81            	ret	
7176                     ; 1829 void TIM1_SetCompare1(uint16_t Compare1)
7176                     ; 1830 {
7177                     	switch	.text
7178  0fd4               _TIM1_SetCompare1:
7182                     ; 1832     TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
7184  0fd4 9e            	ld	a,xh
7185  0fd5 c75265        	ld	21093,a
7186                     ; 1833     TIM1->CCR1L = (uint8_t)(Compare1);
7188  0fd8 9f            	ld	a,xl
7189  0fd9 c75266        	ld	21094,a
7190                     ; 1835 }
7193  0fdc 81            	ret	
7225                     ; 1844 void TIM1_SetCompare2(uint16_t Compare2)
7225                     ; 1845 {
7226                     	switch	.text
7227  0fdd               _TIM1_SetCompare2:
7231                     ; 1847     TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7233  0fdd 9e            	ld	a,xh
7234  0fde c75267        	ld	21095,a
7235                     ; 1848     TIM1->CCR2L = (uint8_t)(Compare2);
7237  0fe1 9f            	ld	a,xl
7238  0fe2 c75268        	ld	21096,a
7239                     ; 1850 }
7242  0fe5 81            	ret	
7274                     ; 1859 void TIM1_SetCompare3(uint16_t Compare3)
7274                     ; 1860 {
7275                     	switch	.text
7276  0fe6               _TIM1_SetCompare3:
7280                     ; 1862     TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7282  0fe6 9e            	ld	a,xh
7283  0fe7 c75269        	ld	21097,a
7284                     ; 1863     TIM1->CCR3L = (uint8_t)(Compare3);
7286  0fea 9f            	ld	a,xl
7287  0feb c7526a        	ld	21098,a
7288                     ; 1865 }
7291  0fee 81            	ret	
7323                     ; 1874 void TIM1_SetCompare4(uint16_t Compare4)
7323                     ; 1875 {
7324                     	switch	.text
7325  0fef               _TIM1_SetCompare4:
7329                     ; 1877     TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7331  0fef 9e            	ld	a,xh
7332  0ff0 c7526b        	ld	21099,a
7333                     ; 1878     TIM1->CCR4L = (uint8_t)(Compare4);
7335  0ff3 9f            	ld	a,xl
7336  0ff4 c7526c        	ld	21100,a
7337                     ; 1879 }
7340  0ff7 81            	ret	
7377                     ; 1892 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7377                     ; 1893 {
7378                     	switch	.text
7379  0ff8               _TIM1_SetIC1Prescaler:
7381  0ff8 88            	push	a
7382       00000000      OFST:	set	0
7385                     ; 1895     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7387  0ff9 4d            	tnz	a
7388  0ffa 271a          	jreq	L2261
7389  0ffc a104          	cp	a,#4
7390  0ffe 2716          	jreq	L2261
7391  1000 a108          	cp	a,#8
7392  1002 2712          	jreq	L2261
7393  1004 a10c          	cp	a,#12
7394  1006 270e          	jreq	L2261
7395  1008 ae0767        	ldw	x,#1895
7396  100b 89            	pushw	x
7397  100c 5f            	clrw	x
7398  100d 89            	pushw	x
7399  100e ae0000        	ldw	x,#L37
7400  1011 cd0000        	call	_assert_failed
7402  1014 5b04          	addw	sp,#4
7403  1016               L2261:
7404                     ; 1898     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7404                     ; 1899                             | (uint8_t)TIM1_IC1Prescaler);
7406  1016 c65258        	ld	a,21080
7407  1019 a4f3          	and	a,#243
7408  101b 1a01          	or	a,(OFST+1,sp)
7409  101d c75258        	ld	21080,a
7410                     ; 1901 }
7413  1020 84            	pop	a
7414  1021 81            	ret	
7451                     ; 1913 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7451                     ; 1914 {
7452                     	switch	.text
7453  1022               _TIM1_SetIC2Prescaler:
7455  1022 88            	push	a
7456       00000000      OFST:	set	0
7459                     ; 1917     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7461  1023 4d            	tnz	a
7462  1024 271a          	jreq	L4361
7463  1026 a104          	cp	a,#4
7464  1028 2716          	jreq	L4361
7465  102a a108          	cp	a,#8
7466  102c 2712          	jreq	L4361
7467  102e a10c          	cp	a,#12
7468  1030 270e          	jreq	L4361
7469  1032 ae077d        	ldw	x,#1917
7470  1035 89            	pushw	x
7471  1036 5f            	clrw	x
7472  1037 89            	pushw	x
7473  1038 ae0000        	ldw	x,#L37
7474  103b cd0000        	call	_assert_failed
7476  103e 5b04          	addw	sp,#4
7477  1040               L4361:
7478                     ; 1920     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7478                     ; 1921                             | (uint8_t)TIM1_IC2Prescaler);
7480  1040 c65259        	ld	a,21081
7481  1043 a4f3          	and	a,#243
7482  1045 1a01          	or	a,(OFST+1,sp)
7483  1047 c75259        	ld	21081,a
7484                     ; 1922 }
7487  104a 84            	pop	a
7488  104b 81            	ret	
7525                     ; 1935 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7525                     ; 1936 {
7526                     	switch	.text
7527  104c               _TIM1_SetIC3Prescaler:
7529  104c 88            	push	a
7530       00000000      OFST:	set	0
7533                     ; 1939     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7535  104d 4d            	tnz	a
7536  104e 271a          	jreq	L6461
7537  1050 a104          	cp	a,#4
7538  1052 2716          	jreq	L6461
7539  1054 a108          	cp	a,#8
7540  1056 2712          	jreq	L6461
7541  1058 a10c          	cp	a,#12
7542  105a 270e          	jreq	L6461
7543  105c ae0793        	ldw	x,#1939
7544  105f 89            	pushw	x
7545  1060 5f            	clrw	x
7546  1061 89            	pushw	x
7547  1062 ae0000        	ldw	x,#L37
7548  1065 cd0000        	call	_assert_failed
7550  1068 5b04          	addw	sp,#4
7551  106a               L6461:
7552                     ; 1942     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7552                     ; 1943                             (uint8_t)TIM1_IC3Prescaler);
7554  106a c6525a        	ld	a,21082
7555  106d a4f3          	and	a,#243
7556  106f 1a01          	or	a,(OFST+1,sp)
7557  1071 c7525a        	ld	21082,a
7558                     ; 1944 }
7561  1074 84            	pop	a
7562  1075 81            	ret	
7599                     ; 1956 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
7599                     ; 1957 {
7600                     	switch	.text
7601  1076               _TIM1_SetIC4Prescaler:
7603  1076 88            	push	a
7604       00000000      OFST:	set	0
7607                     ; 1960     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
7609  1077 4d            	tnz	a
7610  1078 271a          	jreq	L0661
7611  107a a104          	cp	a,#4
7612  107c 2716          	jreq	L0661
7613  107e a108          	cp	a,#8
7614  1080 2712          	jreq	L0661
7615  1082 a10c          	cp	a,#12
7616  1084 270e          	jreq	L0661
7617  1086 ae07a8        	ldw	x,#1960
7618  1089 89            	pushw	x
7619  108a 5f            	clrw	x
7620  108b 89            	pushw	x
7621  108c ae0000        	ldw	x,#L37
7622  108f cd0000        	call	_assert_failed
7624  1092 5b04          	addw	sp,#4
7625  1094               L0661:
7626                     ; 1963     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
7626                     ; 1964                             (uint8_t)TIM1_IC4Prescaler);
7628  1094 c6525b        	ld	a,21083
7629  1097 a4f3          	and	a,#243
7630  1099 1a01          	or	a,(OFST+1,sp)
7631  109b c7525b        	ld	21083,a
7632                     ; 1965 }
7635  109e 84            	pop	a
7636  109f 81            	ret	
7682                     ; 1972 uint16_t TIM1_GetCapture1(void)
7682                     ; 1973 {
7683                     	switch	.text
7684  10a0               _TIM1_GetCapture1:
7686  10a0 5204          	subw	sp,#4
7687       00000004      OFST:	set	4
7690                     ; 1976     uint16_t tmpccr1 = 0;
7692                     ; 1977     uint8_t tmpccr1l=0, tmpccr1h=0;
7696                     ; 1979     tmpccr1h = TIM1->CCR1H;
7698  10a2 c65265        	ld	a,21093
7699  10a5 6b02          	ld	(OFST-2,sp),a
7701                     ; 1980     tmpccr1l = TIM1->CCR1L;
7703  10a7 c65266        	ld	a,21094
7704  10aa 6b01          	ld	(OFST-3,sp),a
7706                     ; 1982     tmpccr1 = (uint16_t)(tmpccr1l);
7708  10ac 5f            	clrw	x
7709  10ad 97            	ld	xl,a
7710  10ae 1f03          	ldw	(OFST-1,sp),x
7712                     ; 1983     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
7714  10b0 5f            	clrw	x
7715  10b1 7b02          	ld	a,(OFST-2,sp)
7716  10b3 97            	ld	xl,a
7717  10b4 7b04          	ld	a,(OFST+0,sp)
7718  10b6 01            	rrwa	x,a
7719  10b7 1a03          	or	a,(OFST-1,sp)
7720  10b9 01            	rrwa	x,a
7722                     ; 1985     return (uint16_t)tmpccr1;
7726  10ba 5b04          	addw	sp,#4
7727  10bc 81            	ret	
7773                     ; 1993 uint16_t TIM1_GetCapture2(void)
7773                     ; 1994 {
7774                     	switch	.text
7775  10bd               _TIM1_GetCapture2:
7777  10bd 5204          	subw	sp,#4
7778       00000004      OFST:	set	4
7781                     ; 1997     uint16_t tmpccr2 = 0;
7783                     ; 1998     uint8_t tmpccr2l=0, tmpccr2h=0;
7787                     ; 2000     tmpccr2h = TIM1->CCR2H;
7789  10bf c65267        	ld	a,21095
7790  10c2 6b02          	ld	(OFST-2,sp),a
7792                     ; 2001     tmpccr2l = TIM1->CCR2L;
7794  10c4 c65268        	ld	a,21096
7795  10c7 6b01          	ld	(OFST-3,sp),a
7797                     ; 2003     tmpccr2 = (uint16_t)(tmpccr2l);
7799  10c9 5f            	clrw	x
7800  10ca 97            	ld	xl,a
7801  10cb 1f03          	ldw	(OFST-1,sp),x
7803                     ; 2004     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
7805  10cd 5f            	clrw	x
7806  10ce 7b02          	ld	a,(OFST-2,sp)
7807  10d0 97            	ld	xl,a
7808  10d1 7b04          	ld	a,(OFST+0,sp)
7809  10d3 01            	rrwa	x,a
7810  10d4 1a03          	or	a,(OFST-1,sp)
7811  10d6 01            	rrwa	x,a
7813                     ; 2006     return (uint16_t)tmpccr2;
7817  10d7 5b04          	addw	sp,#4
7818  10d9 81            	ret	
7864                     ; 2014 uint16_t TIM1_GetCapture3(void)
7864                     ; 2015 {
7865                     	switch	.text
7866  10da               _TIM1_GetCapture3:
7868  10da 5204          	subw	sp,#4
7869       00000004      OFST:	set	4
7872                     ; 2017     uint16_t tmpccr3 = 0;
7874                     ; 2018     uint8_t tmpccr3l=0, tmpccr3h=0;
7878                     ; 2020     tmpccr3h = TIM1->CCR3H;
7880  10dc c65269        	ld	a,21097
7881  10df 6b02          	ld	(OFST-2,sp),a
7883                     ; 2021     tmpccr3l = TIM1->CCR3L;
7885  10e1 c6526a        	ld	a,21098
7886  10e4 6b01          	ld	(OFST-3,sp),a
7888                     ; 2023     tmpccr3 = (uint16_t)(tmpccr3l);
7890  10e6 5f            	clrw	x
7891  10e7 97            	ld	xl,a
7892  10e8 1f03          	ldw	(OFST-1,sp),x
7894                     ; 2024     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
7896  10ea 5f            	clrw	x
7897  10eb 7b02          	ld	a,(OFST-2,sp)
7898  10ed 97            	ld	xl,a
7899  10ee 7b04          	ld	a,(OFST+0,sp)
7900  10f0 01            	rrwa	x,a
7901  10f1 1a03          	or	a,(OFST-1,sp)
7902  10f3 01            	rrwa	x,a
7904                     ; 2026     return (uint16_t)tmpccr3;
7908  10f4 5b04          	addw	sp,#4
7909  10f6 81            	ret	
7955                     ; 2034 uint16_t TIM1_GetCapture4(void)
7955                     ; 2035 {
7956                     	switch	.text
7957  10f7               _TIM1_GetCapture4:
7959  10f7 5204          	subw	sp,#4
7960       00000004      OFST:	set	4
7963                     ; 2037     uint16_t tmpccr4 = 0;
7965                     ; 2038     uint8_t tmpccr4l=0, tmpccr4h=0;
7969                     ; 2040     tmpccr4h = TIM1->CCR4H;
7971  10f9 c6526b        	ld	a,21099
7972  10fc 6b02          	ld	(OFST-2,sp),a
7974                     ; 2041     tmpccr4l = TIM1->CCR4L;
7976  10fe c6526c        	ld	a,21100
7977  1101 6b01          	ld	(OFST-3,sp),a
7979                     ; 2043     tmpccr4 = (uint16_t)(tmpccr4l);
7981  1103 5f            	clrw	x
7982  1104 97            	ld	xl,a
7983  1105 1f03          	ldw	(OFST-1,sp),x
7985                     ; 2044     tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
7987  1107 5f            	clrw	x
7988  1108 7b02          	ld	a,(OFST-2,sp)
7989  110a 97            	ld	xl,a
7990  110b 7b04          	ld	a,(OFST+0,sp)
7991  110d 01            	rrwa	x,a
7992  110e 1a03          	or	a,(OFST-1,sp)
7993  1110 01            	rrwa	x,a
7995                     ; 2046     return (uint16_t)tmpccr4;
7999  1111 5b04          	addw	sp,#4
8000  1113 81            	ret	
8032                     ; 2054 uint16_t TIM1_GetCounter(void)
8032                     ; 2055 {
8033                     	switch	.text
8034  1114               _TIM1_GetCounter:
8036  1114 89            	pushw	x
8037       00000002      OFST:	set	2
8040                     ; 2056   uint16_t tmpcntr = 0;
8042                     ; 2058   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
8044  1115 c6525e        	ld	a,21086
8045  1118 97            	ld	xl,a
8046  1119 4f            	clr	a
8047  111a 02            	rlwa	x,a
8048  111b 1f01          	ldw	(OFST-1,sp),x
8050                     ; 2061     return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
8052  111d c6525f        	ld	a,21087
8053  1120 5f            	clrw	x
8054  1121 97            	ld	xl,a
8055  1122 01            	rrwa	x,a
8056  1123 1a02          	or	a,(OFST+0,sp)
8057  1125 01            	rrwa	x,a
8058  1126 1a01          	or	a,(OFST-1,sp)
8059  1128 01            	rrwa	x,a
8062  1129 5b02          	addw	sp,#2
8063  112b 81            	ret	
8095                     ; 2069 uint16_t TIM1_GetPrescaler(void)
8095                     ; 2070 {
8096                     	switch	.text
8097  112c               _TIM1_GetPrescaler:
8099  112c 89            	pushw	x
8100       00000002      OFST:	set	2
8103                     ; 2071    uint16_t temp = 0;
8105                     ; 2073    temp = ((uint16_t)TIM1->PSCRH << 8);
8107  112d c65260        	ld	a,21088
8108  1130 97            	ld	xl,a
8109  1131 4f            	clr	a
8110  1132 02            	rlwa	x,a
8111  1133 1f01          	ldw	(OFST-1,sp),x
8113                     ; 2076     return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
8115  1135 c65261        	ld	a,21089
8116  1138 5f            	clrw	x
8117  1139 97            	ld	xl,a
8118  113a 01            	rrwa	x,a
8119  113b 1a02          	or	a,(OFST+0,sp)
8120  113d 01            	rrwa	x,a
8121  113e 1a01          	or	a,(OFST-1,sp)
8122  1140 01            	rrwa	x,a
8125  1141 5b02          	addw	sp,#2
8126  1143 81            	ret	
8297                     ; 2097 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8297                     ; 2098 {
8298                     	switch	.text
8299  1144               _TIM1_GetFlagStatus:
8301  1144 89            	pushw	x
8302  1145 89            	pushw	x
8303       00000002      OFST:	set	2
8306                     ; 2099     FlagStatus bitstatus = RESET;
8308                     ; 2100     uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8312                     ; 2103     assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8314  1146 a30001        	cpw	x,#1
8315  1149 2745          	jreq	L6071
8316  114b a30002        	cpw	x,#2
8317  114e 2740          	jreq	L6071
8318  1150 a30004        	cpw	x,#4
8319  1153 273b          	jreq	L6071
8320  1155 a30008        	cpw	x,#8
8321  1158 2736          	jreq	L6071
8322  115a a30010        	cpw	x,#16
8323  115d 2731          	jreq	L6071
8324  115f a30020        	cpw	x,#32
8325  1162 272c          	jreq	L6071
8326  1164 a30040        	cpw	x,#64
8327  1167 2727          	jreq	L6071
8328  1169 a30080        	cpw	x,#128
8329  116c 2722          	jreq	L6071
8330  116e a30200        	cpw	x,#512
8331  1171 271d          	jreq	L6071
8332  1173 a30400        	cpw	x,#1024
8333  1176 2718          	jreq	L6071
8334  1178 a30800        	cpw	x,#2048
8335  117b 2713          	jreq	L6071
8336  117d a31000        	cpw	x,#4096
8337  1180 270e          	jreq	L6071
8338  1182 ae0837        	ldw	x,#2103
8339  1185 89            	pushw	x
8340  1186 5f            	clrw	x
8341  1187 89            	pushw	x
8342  1188 ae0000        	ldw	x,#L37
8343  118b cd0000        	call	_assert_failed
8345  118e 5b04          	addw	sp,#4
8346  1190               L6071:
8347                     ; 2105     tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8349  1190 c65255        	ld	a,21077
8350  1193 1404          	and	a,(OFST+2,sp)
8351  1195 6b01          	ld	(OFST-1,sp),a
8353                     ; 2106     tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8355  1197 7b03          	ld	a,(OFST+1,sp)
8356  1199 6b02          	ld	(OFST+0,sp),a
8358                     ; 2108     if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8360  119b c45256        	and	a,21078
8361  119e 1a01          	or	a,(OFST-1,sp)
8362  11a0 2702          	jreq	L1533
8363                     ; 2110         bitstatus = SET;
8365  11a2 a601          	ld	a,#1
8368  11a4               L1533:
8369                     ; 2114         bitstatus = RESET;
8372                     ; 2116     return (FlagStatus)(bitstatus);
8376  11a4 5b04          	addw	sp,#4
8377  11a6 81            	ret	
8413                     ; 2137 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8413                     ; 2138 {
8414                     	switch	.text
8415  11a7               _TIM1_ClearFlag:
8417  11a7 89            	pushw	x
8418       00000000      OFST:	set	0
8421                     ; 2140     assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8423  11a8 01            	rrwa	x,a
8424  11a9 9f            	ld	a,xl
8425  11aa a4e1          	and	a,#225
8426  11ac 97            	ld	xl,a
8427  11ad 4f            	clr	a
8428  11ae 02            	rlwa	x,a
8429  11af 5d            	tnzw	x
8430  11b0 2604          	jrne	L4171
8431  11b2 1e01          	ldw	x,(OFST+1,sp)
8432  11b4 260e          	jrne	L6171
8433  11b6               L4171:
8434  11b6 ae085c        	ldw	x,#2140
8435  11b9 89            	pushw	x
8436  11ba 5f            	clrw	x
8437  11bb 89            	pushw	x
8438  11bc ae0000        	ldw	x,#L37
8439  11bf cd0000        	call	_assert_failed
8441  11c2 5b04          	addw	sp,#4
8442  11c4               L6171:
8443                     ; 2143     TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8445  11c4 7b02          	ld	a,(OFST+2,sp)
8446  11c6 43            	cpl	a
8447  11c7 c75255        	ld	21077,a
8448                     ; 2144     TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8448                     ; 2145                           (uint8_t)0x1E);
8450  11ca 7b01          	ld	a,(OFST+1,sp)
8451  11cc 43            	cpl	a
8452  11cd a41e          	and	a,#30
8453  11cf c75256        	ld	21078,a
8454                     ; 2146 }
8457  11d2 85            	popw	x
8458  11d3 81            	ret	
8519                     ; 2162 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
8519                     ; 2163 {
8520                     	switch	.text
8521  11d4               _TIM1_GetITStatus:
8523  11d4 88            	push	a
8524  11d5 89            	pushw	x
8525       00000002      OFST:	set	2
8528                     ; 2164     ITStatus bitstatus = RESET;
8530                     ; 2165     uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
8534                     ; 2168     assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
8536  11d6 a101          	cp	a,#1
8537  11d8 272a          	jreq	L0371
8538  11da a102          	cp	a,#2
8539  11dc 2726          	jreq	L0371
8540  11de a104          	cp	a,#4
8541  11e0 2722          	jreq	L0371
8542  11e2 a108          	cp	a,#8
8543  11e4 271e          	jreq	L0371
8544  11e6 a110          	cp	a,#16
8545  11e8 271a          	jreq	L0371
8546  11ea a120          	cp	a,#32
8547  11ec 2716          	jreq	L0371
8548  11ee a140          	cp	a,#64
8549  11f0 2712          	jreq	L0371
8550  11f2 a180          	cp	a,#128
8551  11f4 270e          	jreq	L0371
8552  11f6 ae0878        	ldw	x,#2168
8553  11f9 89            	pushw	x
8554  11fa 5f            	clrw	x
8555  11fb 89            	pushw	x
8556  11fc ae0000        	ldw	x,#L37
8557  11ff cd0000        	call	_assert_failed
8559  1202 5b04          	addw	sp,#4
8560  1204               L0371:
8561                     ; 2170     TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
8563  1204 c65255        	ld	a,21077
8564  1207 1403          	and	a,(OFST+1,sp)
8565  1209 6b01          	ld	(OFST-1,sp),a
8567                     ; 2172     TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
8569  120b c65254        	ld	a,21076
8570  120e 1403          	and	a,(OFST+1,sp)
8571  1210 6b02          	ld	(OFST+0,sp),a
8573                     ; 2174     if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
8575  1212 7b01          	ld	a,(OFST-1,sp)
8576  1214 2708          	jreq	L1243
8578  1216 7b02          	ld	a,(OFST+0,sp)
8579  1218 2704          	jreq	L1243
8580                     ; 2176         bitstatus = SET;
8582  121a a601          	ld	a,#1
8585  121c 2001          	jra	L3243
8586  121e               L1243:
8587                     ; 2180         bitstatus = RESET;
8589  121e 4f            	clr	a
8591  121f               L3243:
8592                     ; 2182     return (ITStatus)(bitstatus);
8596  121f 5b03          	addw	sp,#3
8597  1221 81            	ret	
8634                     ; 2199 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
8634                     ; 2200 {
8635                     	switch	.text
8636  1222               _TIM1_ClearITPendingBit:
8638  1222 88            	push	a
8639       00000000      OFST:	set	0
8642                     ; 2202     assert_param(IS_TIM1_IT_OK(TIM1_IT));
8644  1223 4d            	tnz	a
8645  1224 260e          	jrne	L0471
8646  1226 ae089a        	ldw	x,#2202
8647  1229 89            	pushw	x
8648  122a 5f            	clrw	x
8649  122b 89            	pushw	x
8650  122c ae0000        	ldw	x,#L37
8651  122f cd0000        	call	_assert_failed
8653  1232 5b04          	addw	sp,#4
8654  1234               L0471:
8655                     ; 2205     TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
8657  1234 7b01          	ld	a,(OFST+1,sp)
8658  1236 43            	cpl	a
8659  1237 c75255        	ld	21077,a
8660                     ; 2206 }
8663  123a 84            	pop	a
8664  123b 81            	ret	
8710                     ; 2224 static void TI1_Config(uint8_t TIM1_ICPolarity,
8710                     ; 2225                        uint8_t TIM1_ICSelection,
8710                     ; 2226                        uint8_t TIM1_ICFilter)
8710                     ; 2227 {
8711                     	switch	.text
8712  123c               L3_TI1_Config:
8714  123c 89            	pushw	x
8715  123d 88            	push	a
8716       00000001      OFST:	set	1
8719                     ; 2230     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
8721  123e 7211525c      	bres	21084,#0
8722                     ; 2233     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
8722                     ; 2234                             (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8724  1242 7b06          	ld	a,(OFST+5,sp)
8725  1244 97            	ld	xl,a
8726  1245 a610          	ld	a,#16
8727  1247 42            	mul	x,a
8728  1248 9f            	ld	a,xl
8729  1249 1a03          	or	a,(OFST+2,sp)
8730  124b 6b01          	ld	(OFST+0,sp),a
8732  124d c65258        	ld	a,21080
8733  1250 a40c          	and	a,#12
8734  1252 1a01          	or	a,(OFST+0,sp)
8735  1254 c75258        	ld	21080,a
8736                     ; 2237     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8738  1257 7b02          	ld	a,(OFST+1,sp)
8739  1259 2706          	jreq	L3643
8740                     ; 2239         TIM1->CCER1 |= TIM1_CCER1_CC1P;
8742  125b 7212525c      	bset	21084,#1
8744  125f 2004          	jra	L5643
8745  1261               L3643:
8746                     ; 2243         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
8748  1261 7213525c      	bres	21084,#1
8749  1265               L5643:
8750                     ; 2247     TIM1->CCER1 |=  TIM1_CCER1_CC1E;
8752  1265 7210525c      	bset	21084,#0
8753                     ; 2248 }
8756  1269 5b03          	addw	sp,#3
8757  126b 81            	ret	
8803                     ; 2266 static void TI2_Config(uint8_t TIM1_ICPolarity,
8803                     ; 2267                        uint8_t TIM1_ICSelection,
8803                     ; 2268                        uint8_t TIM1_ICFilter)
8803                     ; 2269 {
8804                     	switch	.text
8805  126c               L5_TI2_Config:
8807  126c 89            	pushw	x
8808  126d 88            	push	a
8809       00000001      OFST:	set	1
8812                     ; 2271     TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
8814  126e 7219525c      	bres	21084,#4
8815                     ; 2274     TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
8815                     ; 2275                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8817  1272 7b06          	ld	a,(OFST+5,sp)
8818  1274 97            	ld	xl,a
8819  1275 a610          	ld	a,#16
8820  1277 42            	mul	x,a
8821  1278 9f            	ld	a,xl
8822  1279 1a03          	or	a,(OFST+2,sp)
8823  127b 6b01          	ld	(OFST+0,sp),a
8825  127d c65259        	ld	a,21081
8826  1280 a40c          	and	a,#12
8827  1282 1a01          	or	a,(OFST+0,sp)
8828  1284 c75259        	ld	21081,a
8829                     ; 2277     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8831  1287 7b02          	ld	a,(OFST+1,sp)
8832  1289 2706          	jreq	L7053
8833                     ; 2279         TIM1->CCER1 |= TIM1_CCER1_CC2P;
8835  128b 721a525c      	bset	21084,#5
8837  128f 2004          	jra	L1153
8838  1291               L7053:
8839                     ; 2283         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
8841  1291 721b525c      	bres	21084,#5
8842  1295               L1153:
8843                     ; 2286     TIM1->CCER1 |=  TIM1_CCER1_CC2E;
8845  1295 7218525c      	bset	21084,#4
8846                     ; 2287 }
8849  1299 5b03          	addw	sp,#3
8850  129b 81            	ret	
8896                     ; 2305 static void TI3_Config(uint8_t TIM1_ICPolarity,
8896                     ; 2306                        uint8_t TIM1_ICSelection,
8896                     ; 2307                        uint8_t TIM1_ICFilter)
8896                     ; 2308 {
8897                     	switch	.text
8898  129c               L7_TI3_Config:
8900  129c 89            	pushw	x
8901  129d 88            	push	a
8902       00000001      OFST:	set	1
8905                     ; 2310     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
8907  129e 7211525d      	bres	21085,#0
8908                     ; 2313     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
8908                     ; 2314                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8910  12a2 7b06          	ld	a,(OFST+5,sp)
8911  12a4 97            	ld	xl,a
8912  12a5 a610          	ld	a,#16
8913  12a7 42            	mul	x,a
8914  12a8 9f            	ld	a,xl
8915  12a9 1a03          	or	a,(OFST+2,sp)
8916  12ab 6b01          	ld	(OFST+0,sp),a
8918  12ad c6525a        	ld	a,21082
8919  12b0 a40c          	and	a,#12
8920  12b2 1a01          	or	a,(OFST+0,sp)
8921  12b4 c7525a        	ld	21082,a
8922                     ; 2317     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8924  12b7 7b02          	ld	a,(OFST+1,sp)
8925  12b9 2706          	jreq	L3353
8926                     ; 2319         TIM1->CCER2 |= TIM1_CCER2_CC3P;
8928  12bb 7212525d      	bset	21085,#1
8930  12bf 2004          	jra	L5353
8931  12c1               L3353:
8932                     ; 2323         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
8934  12c1 7213525d      	bres	21085,#1
8935  12c5               L5353:
8936                     ; 2326     TIM1->CCER2 |=  TIM1_CCER2_CC3E;
8938  12c5 7210525d      	bset	21085,#0
8939                     ; 2327 }
8942  12c9 5b03          	addw	sp,#3
8943  12cb 81            	ret	
8989                     ; 2346 static void TI4_Config(uint8_t TIM1_ICPolarity,
8989                     ; 2347                        uint8_t TIM1_ICSelection,
8989                     ; 2348                        uint8_t TIM1_ICFilter)
8989                     ; 2349 {
8990                     	switch	.text
8991  12cc               L11_TI4_Config:
8993  12cc 89            	pushw	x
8994  12cd 88            	push	a
8995       00000001      OFST:	set	1
8998                     ; 2352     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
9000  12ce 7219525d      	bres	21085,#4
9001                     ; 2355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
9001                     ; 2356                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9003  12d2 7b06          	ld	a,(OFST+5,sp)
9004  12d4 97            	ld	xl,a
9005  12d5 a610          	ld	a,#16
9006  12d7 42            	mul	x,a
9007  12d8 9f            	ld	a,xl
9008  12d9 1a03          	or	a,(OFST+2,sp)
9009  12db 6b01          	ld	(OFST+0,sp),a
9011  12dd c6525b        	ld	a,21083
9012  12e0 a40c          	and	a,#12
9013  12e2 1a01          	or	a,(OFST+0,sp)
9014  12e4 c7525b        	ld	21083,a
9015                     ; 2359     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9017  12e7 7b02          	ld	a,(OFST+1,sp)
9018  12e9 2706          	jreq	L7553
9019                     ; 2361         TIM1->CCER2 |= TIM1_CCER2_CC4P;
9021  12eb 721a525d      	bset	21085,#5
9023  12ef 2004          	jra	L1653
9024  12f1               L7553:
9025                     ; 2365         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
9027  12f1 721b525d      	bres	21085,#5
9028  12f5               L1653:
9029                     ; 2369     TIM1->CCER2 |=  TIM1_CCER2_CC4E;
9031  12f5 7218525d      	bset	21085,#4
9032                     ; 2370 }
9035  12f9 5b03          	addw	sp,#3
9036  12fb 81            	ret	
9049                     	xdef	_TIM1_ClearITPendingBit
9050                     	xdef	_TIM1_GetITStatus
9051                     	xdef	_TIM1_ClearFlag
9052                     	xdef	_TIM1_GetFlagStatus
9053                     	xdef	_TIM1_GetPrescaler
9054                     	xdef	_TIM1_GetCounter
9055                     	xdef	_TIM1_GetCapture4
9056                     	xdef	_TIM1_GetCapture3
9057                     	xdef	_TIM1_GetCapture2
9058                     	xdef	_TIM1_GetCapture1
9059                     	xdef	_TIM1_SetIC4Prescaler
9060                     	xdef	_TIM1_SetIC3Prescaler
9061                     	xdef	_TIM1_SetIC2Prescaler
9062                     	xdef	_TIM1_SetIC1Prescaler
9063                     	xdef	_TIM1_SetCompare4
9064                     	xdef	_TIM1_SetCompare3
9065                     	xdef	_TIM1_SetCompare2
9066                     	xdef	_TIM1_SetCompare1
9067                     	xdef	_TIM1_SetAutoreload
9068                     	xdef	_TIM1_SetCounter
9069                     	xdef	_TIM1_SelectOCxM
9070                     	xdef	_TIM1_CCxNCmd
9071                     	xdef	_TIM1_CCxCmd
9072                     	xdef	_TIM1_OC4PolarityConfig
9073                     	xdef	_TIM1_OC3NPolarityConfig
9074                     	xdef	_TIM1_OC3PolarityConfig
9075                     	xdef	_TIM1_OC2NPolarityConfig
9076                     	xdef	_TIM1_OC2PolarityConfig
9077                     	xdef	_TIM1_OC1NPolarityConfig
9078                     	xdef	_TIM1_OC1PolarityConfig
9079                     	xdef	_TIM1_GenerateEvent
9080                     	xdef	_TIM1_OC4FastConfig
9081                     	xdef	_TIM1_OC3FastConfig
9082                     	xdef	_TIM1_OC2FastConfig
9083                     	xdef	_TIM1_OC1FastConfig
9084                     	xdef	_TIM1_OC4PreloadConfig
9085                     	xdef	_TIM1_OC3PreloadConfig
9086                     	xdef	_TIM1_OC2PreloadConfig
9087                     	xdef	_TIM1_OC1PreloadConfig
9088                     	xdef	_TIM1_CCPreloadControl
9089                     	xdef	_TIM1_SelectCOM
9090                     	xdef	_TIM1_ARRPreloadConfig
9091                     	xdef	_TIM1_ForcedOC4Config
9092                     	xdef	_TIM1_ForcedOC3Config
9093                     	xdef	_TIM1_ForcedOC2Config
9094                     	xdef	_TIM1_ForcedOC1Config
9095                     	xdef	_TIM1_CounterModeConfig
9096                     	xdef	_TIM1_PrescalerConfig
9097                     	xdef	_TIM1_EncoderInterfaceConfig
9098                     	xdef	_TIM1_SelectMasterSlaveMode
9099                     	xdef	_TIM1_SelectSlaveMode
9100                     	xdef	_TIM1_SelectOutputTrigger
9101                     	xdef	_TIM1_SelectOnePulseMode
9102                     	xdef	_TIM1_SelectHallSensor
9103                     	xdef	_TIM1_UpdateRequestConfig
9104                     	xdef	_TIM1_UpdateDisableConfig
9105                     	xdef	_TIM1_SelectInputTrigger
9106                     	xdef	_TIM1_TIxExternalClockConfig
9107                     	xdef	_TIM1_ETRConfig
9108                     	xdef	_TIM1_ETRClockMode2Config
9109                     	xdef	_TIM1_ETRClockMode1Config
9110                     	xdef	_TIM1_InternalClockConfig
9111                     	xdef	_TIM1_ITConfig
9112                     	xdef	_TIM1_CtrlPWMOutputs
9113                     	xdef	_TIM1_Cmd
9114                     	xdef	_TIM1_PWMIConfig
9115                     	xdef	_TIM1_ICInit
9116                     	xdef	_TIM1_BDTRConfig
9117                     	xdef	_TIM1_OC4Init
9118                     	xdef	_TIM1_OC3Init
9119                     	xdef	_TIM1_OC2Init
9120                     	xdef	_TIM1_OC1Init
9121                     	xdef	_TIM1_TimeBaseInit
9122                     	xdef	_TIM1_DeInit
9123                     	xref	_assert_failed
9124                     .const:	section	.text
9125  0000               L37:
9126  0000 6c6962726172  	dc.b	"libraries\src\stm8"
9127  0012 735f74696d31  	dc.b	"s_tim1.c",0
9147                     	end
