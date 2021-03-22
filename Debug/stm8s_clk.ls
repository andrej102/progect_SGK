   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.21 - 04 Feb 2014
   3                     ; Generator (Limited) V4.3.12 - 11 Feb 2014
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
  18                     .const:	section	.text
  19  0000               _HSIDivFactor:
  20  0000 01            	dc.b	1
  21  0001 02            	dc.b	2
  22  0002 04            	dc.b	4
  23  0003 08            	dc.b	8
  24  0004               _CLKPrescTable:
  25  0004 01            	dc.b	1
  26  0005 02            	dc.b	2
  27  0006 04            	dc.b	4
  28  0007 08            	dc.b	8
  29  0008 0a            	dc.b	10
  30  0009 10            	dc.b	16
  31  000a 14            	dc.b	20
  32  000b 28            	dc.b	40
  61                     ; 66 void CLK_DeInit(void)
  61                     ; 67 {
  63                     	switch	.text
  64  0000               _CLK_DeInit:
  68                     ; 69     CLK->ICKR = CLK_ICKR_RESET_VALUE;
  70  0000 350150c0      	mov	20672,#1
  71                     ; 70     CLK->ECKR = CLK_ECKR_RESET_VALUE;
  73  0004 725f50c1      	clr	20673
  74                     ; 71     CLK->SWR  = CLK_SWR_RESET_VALUE;
  76  0008 35e150c4      	mov	20676,#225
  77                     ; 72     CLK->SWCR = CLK_SWCR_RESET_VALUE;
  79  000c 725f50c5      	clr	20677
  80                     ; 73     CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  82  0010 351850c6      	mov	20678,#24
  83                     ; 74     CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  85  0014 35ff50c7      	mov	20679,#255
  86                     ; 75     CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  88  0018 35ff50ca      	mov	20682,#255
  89                     ; 76     CLK->CSSR = CLK_CSSR_RESET_VALUE;
  91  001c 725f50c8      	clr	20680
  92                     ; 77     CLK->CCOR = CLK_CCOR_RESET_VALUE;
  94  0020 725f50c9      	clr	20681
  96  0024               L52:
  97                     ; 78     while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  99  0024 720050c9fb    	btjt	20681,#0,L52
 100                     ; 80     CLK->CCOR = CLK_CCOR_RESET_VALUE;
 102  0029 725f50c9      	clr	20681
 103                     ; 81     CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 105  002d 725f50cc      	clr	20684
 106                     ; 82     CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 108  0031 725f50cd      	clr	20685
 109                     ; 84 }
 112  0035 81            	ret	
 169                     ; 95 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 169                     ; 96 {
 170                     	switch	.text
 171  0036               _CLK_FastHaltWakeUpCmd:
 173  0036 88            	push	a
 174       00000000      OFST:	set	0
 177                     ; 99     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 179  0037 4d            	tnz	a
 180  0038 2711          	jreq	L41
 181  003a 4a            	dec	a
 182  003b 270e          	jreq	L41
 183  003d ae0063        	ldw	x,#99
 184  0040 89            	pushw	x
 185  0041 5f            	clrw	x
 186  0042 89            	pushw	x
 187  0043 ae000c        	ldw	x,#L75
 188  0046 cd0000        	call	_assert_failed
 190  0049 5b04          	addw	sp,#4
 191  004b               L41:
 192                     ; 101     if (NewState != DISABLE)
 194  004b 7b01          	ld	a,(OFST+1,sp)
 195  004d 2706          	jreq	L16
 196                     ; 104         CLK->ICKR |= CLK_ICKR_FHWU;
 198  004f 721450c0      	bset	20672,#2
 200  0053 2004          	jra	L36
 201  0055               L16:
 202                     ; 109         CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 204  0055 721550c0      	bres	20672,#2
 205  0059               L36:
 206                     ; 112 }
 209  0059 84            	pop	a
 210  005a 81            	ret	
 246                     ; 119 void CLK_HSECmd(FunctionalState NewState)
 246                     ; 120 {
 247                     	switch	.text
 248  005b               _CLK_HSECmd:
 250  005b 88            	push	a
 251       00000000      OFST:	set	0
 254                     ; 123     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 256  005c 4d            	tnz	a
 257  005d 2711          	jreq	L62
 258  005f 4a            	dec	a
 259  0060 270e          	jreq	L62
 260  0062 ae007b        	ldw	x,#123
 261  0065 89            	pushw	x
 262  0066 5f            	clrw	x
 263  0067 89            	pushw	x
 264  0068 ae000c        	ldw	x,#L75
 265  006b cd0000        	call	_assert_failed
 267  006e 5b04          	addw	sp,#4
 268  0070               L62:
 269                     ; 125     if (NewState != DISABLE)
 271  0070 7b01          	ld	a,(OFST+1,sp)
 272  0072 2706          	jreq	L301
 273                     ; 128         CLK->ECKR |= CLK_ECKR_HSEEN;
 275  0074 721050c1      	bset	20673,#0
 277  0078 2004          	jra	L501
 278  007a               L301:
 279                     ; 133         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 281  007a 721150c1      	bres	20673,#0
 282  007e               L501:
 283                     ; 136 }
 286  007e 84            	pop	a
 287  007f 81            	ret	
 323                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 323                     ; 144 {
 324                     	switch	.text
 325  0080               _CLK_HSICmd:
 327  0080 88            	push	a
 328       00000000      OFST:	set	0
 331                     ; 147     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 333  0081 4d            	tnz	a
 334  0082 2711          	jreq	L04
 335  0084 4a            	dec	a
 336  0085 270e          	jreq	L04
 337  0087 ae0093        	ldw	x,#147
 338  008a 89            	pushw	x
 339  008b 5f            	clrw	x
 340  008c 89            	pushw	x
 341  008d ae000c        	ldw	x,#L75
 342  0090 cd0000        	call	_assert_failed
 344  0093 5b04          	addw	sp,#4
 345  0095               L04:
 346                     ; 149     if (NewState != DISABLE)
 348  0095 7b01          	ld	a,(OFST+1,sp)
 349  0097 2706          	jreq	L521
 350                     ; 152         CLK->ICKR |= CLK_ICKR_HSIEN;
 352  0099 721050c0      	bset	20672,#0
 354  009d 2004          	jra	L721
 355  009f               L521:
 356                     ; 157         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 358  009f 721150c0      	bres	20672,#0
 359  00a3               L721:
 360                     ; 160 }
 363  00a3 84            	pop	a
 364  00a4 81            	ret	
 400                     ; 167 void CLK_LSICmd(FunctionalState NewState)
 400                     ; 168 {
 401                     	switch	.text
 402  00a5               _CLK_LSICmd:
 404  00a5 88            	push	a
 405       00000000      OFST:	set	0
 408                     ; 171     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 410  00a6 4d            	tnz	a
 411  00a7 2711          	jreq	L25
 412  00a9 4a            	dec	a
 413  00aa 270e          	jreq	L25
 414  00ac ae00ab        	ldw	x,#171
 415  00af 89            	pushw	x
 416  00b0 5f            	clrw	x
 417  00b1 89            	pushw	x
 418  00b2 ae000c        	ldw	x,#L75
 419  00b5 cd0000        	call	_assert_failed
 421  00b8 5b04          	addw	sp,#4
 422  00ba               L25:
 423                     ; 173     if (NewState != DISABLE)
 425  00ba 7b01          	ld	a,(OFST+1,sp)
 426  00bc 2706          	jreq	L741
 427                     ; 176         CLK->ICKR |= CLK_ICKR_LSIEN;
 429  00be 721650c0      	bset	20672,#3
 431  00c2 2004          	jra	L151
 432  00c4               L741:
 433                     ; 181         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 435  00c4 721750c0      	bres	20672,#3
 436  00c8               L151:
 437                     ; 184 }
 440  00c8 84            	pop	a
 441  00c9 81            	ret	
 477                     ; 192 void CLK_CCOCmd(FunctionalState NewState)
 477                     ; 193 {
 478                     	switch	.text
 479  00ca               _CLK_CCOCmd:
 481  00ca 88            	push	a
 482       00000000      OFST:	set	0
 485                     ; 196     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 487  00cb 4d            	tnz	a
 488  00cc 2711          	jreq	L46
 489  00ce 4a            	dec	a
 490  00cf 270e          	jreq	L46
 491  00d1 ae00c4        	ldw	x,#196
 492  00d4 89            	pushw	x
 493  00d5 5f            	clrw	x
 494  00d6 89            	pushw	x
 495  00d7 ae000c        	ldw	x,#L75
 496  00da cd0000        	call	_assert_failed
 498  00dd 5b04          	addw	sp,#4
 499  00df               L46:
 500                     ; 198     if (NewState != DISABLE)
 502  00df 7b01          	ld	a,(OFST+1,sp)
 503  00e1 2706          	jreq	L171
 504                     ; 201         CLK->CCOR |= CLK_CCOR_CCOEN;
 506  00e3 721050c9      	bset	20681,#0
 508  00e7 2004          	jra	L371
 509  00e9               L171:
 510                     ; 206         CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 512  00e9 721150c9      	bres	20681,#0
 513  00ed               L371:
 514                     ; 209 }
 517  00ed 84            	pop	a
 518  00ee 81            	ret	
 554                     ; 218 void CLK_ClockSwitchCmd(FunctionalState NewState)
 554                     ; 219 {
 555                     	switch	.text
 556  00ef               _CLK_ClockSwitchCmd:
 558  00ef 88            	push	a
 559       00000000      OFST:	set	0
 562                     ; 222     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 564  00f0 4d            	tnz	a
 565  00f1 2711          	jreq	L67
 566  00f3 4a            	dec	a
 567  00f4 270e          	jreq	L67
 568  00f6 ae00de        	ldw	x,#222
 569  00f9 89            	pushw	x
 570  00fa 5f            	clrw	x
 571  00fb 89            	pushw	x
 572  00fc ae000c        	ldw	x,#L75
 573  00ff cd0000        	call	_assert_failed
 575  0102 5b04          	addw	sp,#4
 576  0104               L67:
 577                     ; 224     if (NewState != DISABLE )
 579  0104 7b01          	ld	a,(OFST+1,sp)
 580  0106 2706          	jreq	L312
 581                     ; 227         CLK->SWCR |= CLK_SWCR_SWEN;
 583  0108 721250c5      	bset	20677,#1
 585  010c 2004          	jra	L512
 586  010e               L312:
 587                     ; 232         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 589  010e 721350c5      	bres	20677,#1
 590  0112               L512:
 591                     ; 235 }
 594  0112 84            	pop	a
 595  0113 81            	ret	
 632                     ; 245 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 632                     ; 246 {
 633                     	switch	.text
 634  0114               _CLK_SlowActiveHaltWakeUpCmd:
 636  0114 88            	push	a
 637       00000000      OFST:	set	0
 640                     ; 249     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 642  0115 4d            	tnz	a
 643  0116 2711          	jreq	L011
 644  0118 4a            	dec	a
 645  0119 270e          	jreq	L011
 646  011b ae00f9        	ldw	x,#249
 647  011e 89            	pushw	x
 648  011f 5f            	clrw	x
 649  0120 89            	pushw	x
 650  0121 ae000c        	ldw	x,#L75
 651  0124 cd0000        	call	_assert_failed
 653  0127 5b04          	addw	sp,#4
 654  0129               L011:
 655                     ; 251     if (NewState != DISABLE)
 657  0129 7b01          	ld	a,(OFST+1,sp)
 658  012b 2706          	jreq	L532
 659                     ; 254         CLK->ICKR |= CLK_ICKR_SWUAH;
 661  012d 721a50c0      	bset	20672,#5
 663  0131 2004          	jra	L732
 664  0133               L532:
 665                     ; 259         CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 667  0133 721b50c0      	bres	20672,#5
 668  0137               L732:
 669                     ; 262 }
 672  0137 84            	pop	a
 673  0138 81            	ret	
 833                     ; 272 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 833                     ; 273 {
 834                     	switch	.text
 835  0139               _CLK_PeripheralClockConfig:
 837  0139 89            	pushw	x
 838       00000000      OFST:	set	0
 841                     ; 276     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 843  013a 9f            	ld	a,xl
 844  013b 4d            	tnz	a
 845  013c 2712          	jreq	L221
 846  013e 9f            	ld	a,xl
 847  013f 4a            	dec	a
 848  0140 270e          	jreq	L221
 849  0142 ae0114        	ldw	x,#276
 850  0145 89            	pushw	x
 851  0146 5f            	clrw	x
 852  0147 89            	pushw	x
 853  0148 ae000c        	ldw	x,#L75
 854  014b cd0000        	call	_assert_failed
 856  014e 5b04          	addw	sp,#4
 857  0150               L221:
 858                     ; 277     assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 860  0150 7b01          	ld	a,(OFST+1,sp)
 861  0152 2738          	jreq	L231
 862  0154 a101          	cp	a,#1
 863  0156 2734          	jreq	L231
 864  0158 a103          	cp	a,#3
 865  015a 2730          	jreq	L231
 866  015c a104          	cp	a,#4
 867  015e 272c          	jreq	L231
 868  0160 a105          	cp	a,#5
 869  0162 2728          	jreq	L231
 870  0164 a104          	cp	a,#4
 871  0166 2724          	jreq	L231
 872  0168 a106          	cp	a,#6
 873  016a 2720          	jreq	L231
 874  016c a107          	cp	a,#7
 875  016e 271c          	jreq	L231
 876  0170 a117          	cp	a,#23
 877  0172 2718          	jreq	L231
 878  0174 a113          	cp	a,#19
 879  0176 2714          	jreq	L231
 880  0178 a112          	cp	a,#18
 881  017a 2710          	jreq	L231
 882  017c ae0115        	ldw	x,#277
 883  017f 89            	pushw	x
 884  0180 5f            	clrw	x
 885  0181 89            	pushw	x
 886  0182 ae000c        	ldw	x,#L75
 887  0185 cd0000        	call	_assert_failed
 889  0188 5b04          	addw	sp,#4
 890  018a 7b01          	ld	a,(OFST+1,sp)
 891  018c               L231:
 892                     ; 279     if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 894  018c a510          	bcp	a,#16
 895  018e 262c          	jrne	L323
 896                     ; 281         if (NewState != DISABLE)
 898  0190 0d02          	tnz	(OFST+2,sp)
 899  0192 2712          	jreq	L523
 900                     ; 284             CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 902  0194 a40f          	and	a,#15
 903  0196 5f            	clrw	x
 904  0197 97            	ld	xl,a
 905  0198 a601          	ld	a,#1
 906  019a 5d            	tnzw	x
 907  019b 2704          	jreq	L631
 908  019d               L041:
 909  019d 48            	sll	a
 910  019e 5a            	decw	x
 911  019f 26fc          	jrne	L041
 912  01a1               L631:
 913  01a1 ca50c7        	or	a,20679
 915  01a4 2011          	jp	LC002
 916  01a6               L523:
 917                     ; 289             CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 919  01a6 a40f          	and	a,#15
 920  01a8 5f            	clrw	x
 921  01a9 97            	ld	xl,a
 922  01aa a601          	ld	a,#1
 923  01ac 5d            	tnzw	x
 924  01ad 2704          	jreq	L241
 925  01af               L441:
 926  01af 48            	sll	a
 927  01b0 5a            	decw	x
 928  01b1 26fc          	jrne	L441
 929  01b3               L241:
 930  01b3 43            	cpl	a
 931  01b4 c450c7        	and	a,20679
 932  01b7               LC002:
 933  01b7 c750c7        	ld	20679,a
 934  01ba 202a          	jra	L133
 935  01bc               L323:
 936                     ; 294         if (NewState != DISABLE)
 938  01bc 0d02          	tnz	(OFST+2,sp)
 939  01be 2712          	jreq	L333
 940                     ; 297             CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 942  01c0 a40f          	and	a,#15
 943  01c2 5f            	clrw	x
 944  01c3 97            	ld	xl,a
 945  01c4 a601          	ld	a,#1
 946  01c6 5d            	tnzw	x
 947  01c7 2704          	jreq	L641
 948  01c9               L051:
 949  01c9 48            	sll	a
 950  01ca 5a            	decw	x
 951  01cb 26fc          	jrne	L051
 952  01cd               L641:
 953  01cd ca50ca        	or	a,20682
 955  01d0 2011          	jp	LC001
 956  01d2               L333:
 957                     ; 302             CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 959  01d2 a40f          	and	a,#15
 960  01d4 5f            	clrw	x
 961  01d5 97            	ld	xl,a
 962  01d6 a601          	ld	a,#1
 963  01d8 5d            	tnzw	x
 964  01d9 2704          	jreq	L251
 965  01db               L451:
 966  01db 48            	sll	a
 967  01dc 5a            	decw	x
 968  01dd 26fc          	jrne	L451
 969  01df               L251:
 970  01df 43            	cpl	a
 971  01e0 c450ca        	and	a,20682
 972  01e3               LC001:
 973  01e3 c750ca        	ld	20682,a
 974  01e6               L133:
 975                     ; 306 }
 978  01e6 85            	popw	x
 979  01e7 81            	ret	
1166                     ; 319 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1166                     ; 320 {
1167                     	switch	.text
1168  01e8               _CLK_ClockSwitchConfig:
1170  01e8 89            	pushw	x
1171  01e9 5204          	subw	sp,#4
1172       00000004      OFST:	set	4
1175                     ; 323     uint16_t DownCounter = CLK_TIMEOUT;
1177  01eb ae0491        	ldw	x,#1169
1178  01ee 1f03          	ldw	(OFST-1,sp),x
1179                     ; 324     ErrorStatus Swif = ERROR;
1181                     ; 327     assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1183  01f0 7b06          	ld	a,(OFST+2,sp)
1184  01f2 a1e1          	cp	a,#225
1185  01f4 2716          	jreq	L461
1186  01f6 a1d2          	cp	a,#210
1187  01f8 2712          	jreq	L461
1188  01fa a1b4          	cp	a,#180
1189  01fc 270e          	jreq	L461
1190  01fe ae0147        	ldw	x,#327
1191  0201 89            	pushw	x
1192  0202 5f            	clrw	x
1193  0203 89            	pushw	x
1194  0204 ae000c        	ldw	x,#L75
1195  0207 cd0000        	call	_assert_failed
1197  020a 5b04          	addw	sp,#4
1198  020c               L461:
1199                     ; 328     assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1201  020c 7b05          	ld	a,(OFST+1,sp)
1202  020e 2711          	jreq	L471
1203  0210 4a            	dec	a
1204  0211 270e          	jreq	L471
1205  0213 ae0148        	ldw	x,#328
1206  0216 89            	pushw	x
1207  0217 5f            	clrw	x
1208  0218 89            	pushw	x
1209  0219 ae000c        	ldw	x,#L75
1210  021c cd0000        	call	_assert_failed
1212  021f 5b04          	addw	sp,#4
1213  0221               L471:
1214                     ; 329     assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1216  0221 7b09          	ld	a,(OFST+5,sp)
1217  0223 2711          	jreq	L402
1218  0225 4a            	dec	a
1219  0226 270e          	jreq	L402
1220  0228 ae0149        	ldw	x,#329
1221  022b 89            	pushw	x
1222  022c 5f            	clrw	x
1223  022d 89            	pushw	x
1224  022e ae000c        	ldw	x,#L75
1225  0231 cd0000        	call	_assert_failed
1227  0234 5b04          	addw	sp,#4
1228  0236               L402:
1229                     ; 330     assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1231  0236 7b0a          	ld	a,(OFST+6,sp)
1232  0238 2711          	jreq	L412
1233  023a 4a            	dec	a
1234  023b 270e          	jreq	L412
1235  023d ae014a        	ldw	x,#330
1236  0240 89            	pushw	x
1237  0241 5f            	clrw	x
1238  0242 89            	pushw	x
1239  0243 ae000c        	ldw	x,#L75
1240  0246 cd0000        	call	_assert_failed
1242  0249 5b04          	addw	sp,#4
1243  024b               L412:
1244                     ; 333     clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1246  024b c650c3        	ld	a,20675
1247  024e 6b01          	ld	(OFST-3,sp),a
1248                     ; 336     if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1250  0250 7b05          	ld	a,(OFST+1,sp)
1251  0252 4a            	dec	a
1252  0253 262d          	jrne	L544
1253                     ; 340         CLK->SWCR |= CLK_SWCR_SWEN;
1255  0255 721250c5      	bset	20677,#1
1256                     ; 343         if (ITState != DISABLE)
1258  0259 7b09          	ld	a,(OFST+5,sp)
1259  025b 2706          	jreq	L744
1260                     ; 345             CLK->SWCR |= CLK_SWCR_SWIEN;
1262  025d 721450c5      	bset	20677,#2
1264  0261 2004          	jra	L154
1265  0263               L744:
1266                     ; 349             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1268  0263 721550c5      	bres	20677,#2
1269  0267               L154:
1270                     ; 353         CLK->SWR = (uint8_t)CLK_NewClock;
1272  0267 7b06          	ld	a,(OFST+2,sp)
1273  0269 c750c4        	ld	20676,a
1275  026c 2003          	jra	L754
1276  026e               L354:
1277                     ; 357             DownCounter--;
1279  026e 5a            	decw	x
1280  026f 1f03          	ldw	(OFST-1,sp),x
1281  0271               L754:
1282                     ; 355         while ((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1284  0271 720150c504    	btjf	20677,#0,L364
1286  0276 1e03          	ldw	x,(OFST-1,sp)
1287  0278 26f4          	jrne	L354
1288  027a               L364:
1289                     ; 360         if (DownCounter != 0)
1291  027a 1e03          	ldw	x,(OFST-1,sp)
1292                     ; 362             Swif = SUCCESS;
1294  027c 2617          	jrne	LC003
1295                     ; 366             Swif = ERROR;
1297  027e 0f02          	clr	(OFST-2,sp)
1298  0280 2017          	jra	L174
1299  0282               L544:
1300                     ; 374         if (ITState != DISABLE)
1302  0282 7b09          	ld	a,(OFST+5,sp)
1303  0284 2706          	jreq	L374
1304                     ; 376             CLK->SWCR |= CLK_SWCR_SWIEN;
1306  0286 721450c5      	bset	20677,#2
1308  028a 2004          	jra	L574
1309  028c               L374:
1310                     ; 380             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1312  028c 721550c5      	bres	20677,#2
1313  0290               L574:
1314                     ; 384         CLK->SWR = (uint8_t)CLK_NewClock;
1316  0290 7b06          	ld	a,(OFST+2,sp)
1317  0292 c750c4        	ld	20676,a
1318                     ; 388         Swif = SUCCESS;
1320  0295               LC003:
1322  0295 a601          	ld	a,#1
1323  0297 6b02          	ld	(OFST-2,sp),a
1324  0299               L174:
1325                     ; 393     if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1327  0299 7b0a          	ld	a,(OFST+6,sp)
1328  029b 260c          	jrne	L774
1330  029d 7b01          	ld	a,(OFST-3,sp)
1331  029f a1e1          	cp	a,#225
1332  02a1 2606          	jrne	L774
1333                     ; 395         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1335  02a3 721150c0      	bres	20672,#0
1337  02a7 201e          	jra	L105
1338  02a9               L774:
1339                     ; 397     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1341  02a9 7b0a          	ld	a,(OFST+6,sp)
1342  02ab 260c          	jrne	L305
1344  02ad 7b01          	ld	a,(OFST-3,sp)
1345  02af a1d2          	cp	a,#210
1346  02b1 2606          	jrne	L305
1347                     ; 399         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1349  02b3 721750c0      	bres	20672,#3
1351  02b7 200e          	jra	L105
1352  02b9               L305:
1353                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1355  02b9 7b0a          	ld	a,(OFST+6,sp)
1356  02bb 260a          	jrne	L105
1358  02bd 7b01          	ld	a,(OFST-3,sp)
1359  02bf a1b4          	cp	a,#180
1360  02c1 2604          	jrne	L105
1361                     ; 403         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1363  02c3 721150c1      	bres	20673,#0
1364  02c7               L105:
1365                     ; 406     return(Swif);
1367  02c7 7b02          	ld	a,(OFST-2,sp)
1370  02c9 5b06          	addw	sp,#6
1371  02cb 81            	ret	
1510                     ; 416 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1510                     ; 417 {
1511                     	switch	.text
1512  02cc               _CLK_HSIPrescalerConfig:
1514  02cc 88            	push	a
1515       00000000      OFST:	set	0
1518                     ; 420     assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1520  02cd 4d            	tnz	a
1521  02ce 271a          	jreq	L622
1522  02d0 a108          	cp	a,#8
1523  02d2 2716          	jreq	L622
1524  02d4 a110          	cp	a,#16
1525  02d6 2712          	jreq	L622
1526  02d8 a118          	cp	a,#24
1527  02da 270e          	jreq	L622
1528  02dc ae01a4        	ldw	x,#420
1529  02df 89            	pushw	x
1530  02e0 5f            	clrw	x
1531  02e1 89            	pushw	x
1532  02e2 ae000c        	ldw	x,#L75
1533  02e5 cd0000        	call	_assert_failed
1535  02e8 5b04          	addw	sp,#4
1536  02ea               L622:
1537                     ; 423     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1539  02ea c650c6        	ld	a,20678
1540  02ed a4e7          	and	a,#231
1541  02ef c750c6        	ld	20678,a
1542                     ; 426     CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1544  02f2 c650c6        	ld	a,20678
1545  02f5 1a01          	or	a,(OFST+1,sp)
1546  02f7 c750c6        	ld	20678,a
1547                     ; 428 }
1550  02fa 84            	pop	a
1551  02fb 81            	ret	
1687                     ; 439 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1687                     ; 440 {
1688                     	switch	.text
1689  02fc               _CLK_CCOConfig:
1691  02fc 88            	push	a
1692       00000000      OFST:	set	0
1695                     ; 443     assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1697  02fd 4d            	tnz	a
1698  02fe 273e          	jreq	L042
1699  0300 a104          	cp	a,#4
1700  0302 273a          	jreq	L042
1701  0304 a102          	cp	a,#2
1702  0306 2736          	jreq	L042
1703  0308 a108          	cp	a,#8
1704  030a 2732          	jreq	L042
1705  030c a10a          	cp	a,#10
1706  030e 272e          	jreq	L042
1707  0310 a10c          	cp	a,#12
1708  0312 272a          	jreq	L042
1709  0314 a10e          	cp	a,#14
1710  0316 2726          	jreq	L042
1711  0318 a110          	cp	a,#16
1712  031a 2722          	jreq	L042
1713  031c a112          	cp	a,#18
1714  031e 271e          	jreq	L042
1715  0320 a114          	cp	a,#20
1716  0322 271a          	jreq	L042
1717  0324 a116          	cp	a,#22
1718  0326 2716          	jreq	L042
1719  0328 a118          	cp	a,#24
1720  032a 2712          	jreq	L042
1721  032c a11a          	cp	a,#26
1722  032e 270e          	jreq	L042
1723  0330 ae01bb        	ldw	x,#443
1724  0333 89            	pushw	x
1725  0334 5f            	clrw	x
1726  0335 89            	pushw	x
1727  0336 ae000c        	ldw	x,#L75
1728  0339 cd0000        	call	_assert_failed
1730  033c 5b04          	addw	sp,#4
1731  033e               L042:
1732                     ; 446     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1734  033e c650c9        	ld	a,20681
1735  0341 a4e1          	and	a,#225
1736  0343 c750c9        	ld	20681,a
1737                     ; 449     CLK->CCOR |= (uint8_t)CLK_CCO;
1739  0346 c650c9        	ld	a,20681
1740  0349 1a01          	or	a,(OFST+1,sp)
1741  034b c750c9        	ld	20681,a
1742                     ; 452     CLK->CCOR |= CLK_CCOR_CCOEN;
1744  034e 721050c9      	bset	20681,#0
1745                     ; 454 }
1748  0352 84            	pop	a
1749  0353 81            	ret	
1815                     ; 464 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1815                     ; 465 {
1816                     	switch	.text
1817  0354               _CLK_ITConfig:
1819  0354 89            	pushw	x
1820       00000000      OFST:	set	0
1823                     ; 468     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1825  0355 9f            	ld	a,xl
1826  0356 4d            	tnz	a
1827  0357 2712          	jreq	L252
1828  0359 9f            	ld	a,xl
1829  035a 4a            	dec	a
1830  035b 270e          	jreq	L252
1831  035d ae01d4        	ldw	x,#468
1832  0360 89            	pushw	x
1833  0361 5f            	clrw	x
1834  0362 89            	pushw	x
1835  0363 ae000c        	ldw	x,#L75
1836  0366 cd0000        	call	_assert_failed
1838  0369 5b04          	addw	sp,#4
1839  036b               L252:
1840                     ; 469     assert_param(IS_CLK_IT_OK(CLK_IT));
1842  036b 7b01          	ld	a,(OFST+1,sp)
1843  036d a10c          	cp	a,#12
1844  036f 2712          	jreq	L262
1845  0371 a11c          	cp	a,#28
1846  0373 270e          	jreq	L262
1847  0375 ae01d5        	ldw	x,#469
1848  0378 89            	pushw	x
1849  0379 5f            	clrw	x
1850  037a 89            	pushw	x
1851  037b ae000c        	ldw	x,#L75
1852  037e cd0000        	call	_assert_failed
1854  0381 5b04          	addw	sp,#4
1855  0383               L262:
1856                     ; 471     if (NewState != DISABLE)
1858  0383 7b02          	ld	a,(OFST+2,sp)
1859  0385 2716          	jreq	L507
1860                     ; 473         switch (CLK_IT)
1862  0387 7b01          	ld	a,(OFST+1,sp)
1864                     ; 481         default:
1864                     ; 482             break;
1865  0389 a00c          	sub	a,#12
1866  038b 270a          	jreq	L146
1867  038d a010          	sub	a,#16
1868  038f 2620          	jrne	L317
1869                     ; 475         case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1869                     ; 476             CLK->SWCR |= CLK_SWCR_SWIEN;
1871  0391 721450c5      	bset	20677,#2
1872                     ; 477             break;
1874  0395 201a          	jra	L317
1875  0397               L146:
1876                     ; 478         case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1876                     ; 479             CLK->CSSR |= CLK_CSSR_CSSDIE;
1878  0397 721450c8      	bset	20680,#2
1879                     ; 480             break;
1881  039b 2014          	jra	L317
1882                     ; 481         default:
1882                     ; 482             break;
1885  039d               L507:
1886                     ; 487         switch (CLK_IT)
1888  039d 7b01          	ld	a,(OFST+1,sp)
1890                     ; 495         default:
1890                     ; 496             break;
1891  039f a00c          	sub	a,#12
1892  03a1 270a          	jreq	L746
1893  03a3 a010          	sub	a,#16
1894  03a5 260a          	jrne	L317
1895                     ; 489         case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1895                     ; 490             CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1897  03a7 721550c5      	bres	20677,#2
1898                     ; 491             break;
1900  03ab 2004          	jra	L317
1901  03ad               L746:
1902                     ; 492         case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1902                     ; 493             CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1904  03ad 721550c8      	bres	20680,#2
1905                     ; 494             break;
1906  03b1               L317:
1907                     ; 500 }
1910  03b1 85            	popw	x
1911  03b2 81            	ret	
1912                     ; 495         default:
1912                     ; 496             break;
1949                     ; 507 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1949                     ; 508 {
1950                     	switch	.text
1951  03b3               _CLK_SYSCLKConfig:
1953  03b3 88            	push	a
1954       00000000      OFST:	set	0
1957                     ; 511     assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1959  03b4 4d            	tnz	a
1960  03b5 273a          	jreq	L472
1961  03b7 a108          	cp	a,#8
1962  03b9 2736          	jreq	L472
1963  03bb a110          	cp	a,#16
1964  03bd 2732          	jreq	L472
1965  03bf a118          	cp	a,#24
1966  03c1 272e          	jreq	L472
1967  03c3 a180          	cp	a,#128
1968  03c5 272a          	jreq	L472
1969  03c7 a181          	cp	a,#129
1970  03c9 2726          	jreq	L472
1971  03cb a182          	cp	a,#130
1972  03cd 2722          	jreq	L472
1973  03cf a183          	cp	a,#131
1974  03d1 271e          	jreq	L472
1975  03d3 a184          	cp	a,#132
1976  03d5 271a          	jreq	L472
1977  03d7 a185          	cp	a,#133
1978  03d9 2716          	jreq	L472
1979  03db a186          	cp	a,#134
1980  03dd 2712          	jreq	L472
1981  03df a187          	cp	a,#135
1982  03e1 270e          	jreq	L472
1983  03e3 ae01ff        	ldw	x,#511
1984  03e6 89            	pushw	x
1985  03e7 5f            	clrw	x
1986  03e8 89            	pushw	x
1987  03e9 ae000c        	ldw	x,#L75
1988  03ec cd0000        	call	_assert_failed
1990  03ef 5b04          	addw	sp,#4
1991  03f1               L472:
1992                     ; 513     if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1994  03f1 7b01          	ld	a,(OFST+1,sp)
1995  03f3 2b0e          	jrmi	L737
1996                     ; 515         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1998  03f5 c650c6        	ld	a,20678
1999  03f8 a4e7          	and	a,#231
2000  03fa c750c6        	ld	20678,a
2001                     ; 516         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2003  03fd 7b01          	ld	a,(OFST+1,sp)
2004  03ff a418          	and	a,#24
2006  0401 200c          	jra	L147
2007  0403               L737:
2008                     ; 520         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2010  0403 c650c6        	ld	a,20678
2011  0406 a4f8          	and	a,#248
2012  0408 c750c6        	ld	20678,a
2013                     ; 521         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2015  040b 7b01          	ld	a,(OFST+1,sp)
2016  040d a407          	and	a,#7
2017  040f               L147:
2018  040f ca50c6        	or	a,20678
2019  0412 c750c6        	ld	20678,a
2020                     ; 524 }
2023  0415 84            	pop	a
2024  0416 81            	ret	
2081                     ; 531 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2081                     ; 532 {
2082                     	switch	.text
2083  0417               _CLK_SWIMConfig:
2085  0417 88            	push	a
2086       00000000      OFST:	set	0
2089                     ; 535     assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2091  0418 4d            	tnz	a
2092  0419 2711          	jreq	L603
2093  041b 4a            	dec	a
2094  041c 270e          	jreq	L603
2095  041e ae0217        	ldw	x,#535
2096  0421 89            	pushw	x
2097  0422 5f            	clrw	x
2098  0423 89            	pushw	x
2099  0424 ae000c        	ldw	x,#L75
2100  0427 cd0000        	call	_assert_failed
2102  042a 5b04          	addw	sp,#4
2103  042c               L603:
2104                     ; 537     if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2106  042c 7b01          	ld	a,(OFST+1,sp)
2107  042e 2706          	jreq	L177
2108                     ; 540         CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2110  0430 721050cd      	bset	20685,#0
2112  0434 2004          	jra	L377
2113  0436               L177:
2114                     ; 545         CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2116  0436 721150cd      	bres	20685,#0
2117  043a               L377:
2118                     ; 548 }
2121  043a 84            	pop	a
2122  043b 81            	ret	
2146                     ; 557 void CLK_ClockSecuritySystemEnable(void)
2146                     ; 558 {
2147                     	switch	.text
2148  043c               _CLK_ClockSecuritySystemEnable:
2152                     ; 560     CLK->CSSR |= CLK_CSSR_CSSEN;
2154  043c 721050c8      	bset	20680,#0
2155                     ; 561 }
2158  0440 81            	ret	
2183                     ; 569 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2183                     ; 570 {
2184                     	switch	.text
2185  0441               _CLK_GetSYSCLKSource:
2189                     ; 571     return((CLK_Source_TypeDef)CLK->CMSR);
2191  0441 c650c3        	ld	a,20675
2194  0444 81            	ret	
2251                     ; 579 uint32_t CLK_GetClockFreq(void)
2251                     ; 580 {
2252                     	switch	.text
2253  0445               _CLK_GetClockFreq:
2255  0445 5209          	subw	sp,#9
2256       00000009      OFST:	set	9
2259                     ; 582     uint32_t clockfrequency = 0;
2261                     ; 583     CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2263                     ; 584     uint8_t tmp = 0, presc = 0;
2267                     ; 587     clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2269  0447 c650c3        	ld	a,20675
2270  044a 6b09          	ld	(OFST+0,sp),a
2271                     ; 589     if (clocksource == CLK_SOURCE_HSI)
2273  044c a1e1          	cp	a,#225
2274  044e 2634          	jrne	L1401
2275                     ; 591         tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2277  0450 c650c6        	ld	a,20678
2278  0453 a418          	and	a,#24
2279  0455 44            	srl	a
2280  0456 44            	srl	a
2281  0457 44            	srl	a
2282                     ; 592         tmp = (uint8_t)(tmp >> 3);
2284                     ; 593         presc = HSIDivFactor[tmp];
2286  0458 5f            	clrw	x
2287  0459 97            	ld	xl,a
2288  045a d60000        	ld	a,(_HSIDivFactor,x)
2289  045d 6b09          	ld	(OFST+0,sp),a
2290                     ; 594         clockfrequency = HSI_VALUE / presc;
2292  045f b703          	ld	c_lreg+3,a
2293  0461 3f02          	clr	c_lreg+2
2294  0463 3f01          	clr	c_lreg+1
2295  0465 3f00          	clr	c_lreg
2296  0467 96            	ldw	x,sp
2297  0468 5c            	incw	x
2298  0469 cd0000        	call	c_rtol
2300  046c ae2400        	ldw	x,#9216
2301  046f bf02          	ldw	c_lreg+2,x
2302  0471 ae00f4        	ldw	x,#244
2303  0474 bf00          	ldw	c_lreg,x
2304  0476 96            	ldw	x,sp
2305  0477 5c            	incw	x
2306  0478 cd0000        	call	c_ludv
2308  047b 96            	ldw	x,sp
2309  047c 1c0005        	addw	x,#OFST-4
2310  047f cd0000        	call	c_rtol
2313  0482 2018          	jra	L3401
2314  0484               L1401:
2315                     ; 596     else if ( clocksource == CLK_SOURCE_LSI)
2317  0484 a1d2          	cp	a,#210
2318  0486 260a          	jrne	L5401
2319                     ; 598         clockfrequency = LSI_VALUE;
2321  0488 aef400        	ldw	x,#62464
2322  048b 1f07          	ldw	(OFST-2,sp),x
2323  048d ae0001        	ldw	x,#1
2325  0490 2008          	jp	LC004
2326  0492               L5401:
2327                     ; 602         clockfrequency = HSE_VALUE;
2329  0492 ae2400        	ldw	x,#9216
2330  0495 1f07          	ldw	(OFST-2,sp),x
2331  0497 ae00f4        	ldw	x,#244
2332  049a               LC004:
2333  049a 1f05          	ldw	(OFST-4,sp),x
2334  049c               L3401:
2335                     ; 605     return((uint32_t)clockfrequency);
2337  049c 96            	ldw	x,sp
2338  049d 1c0005        	addw	x,#OFST-4
2339  04a0 cd0000        	call	c_ltor
2343  04a3 5b09          	addw	sp,#9
2344  04a5 81            	ret	
2444                     ; 616 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2444                     ; 617 {
2445                     	switch	.text
2446  04a6               _CLK_AdjustHSICalibrationValue:
2448  04a6 88            	push	a
2449       00000000      OFST:	set	0
2452                     ; 620     assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2454  04a7 4d            	tnz	a
2455  04a8 272a          	jreq	L623
2456  04aa a101          	cp	a,#1
2457  04ac 2726          	jreq	L623
2458  04ae a102          	cp	a,#2
2459  04b0 2722          	jreq	L623
2460  04b2 a103          	cp	a,#3
2461  04b4 271e          	jreq	L623
2462  04b6 a104          	cp	a,#4
2463  04b8 271a          	jreq	L623
2464  04ba a105          	cp	a,#5
2465  04bc 2716          	jreq	L623
2466  04be a106          	cp	a,#6
2467  04c0 2712          	jreq	L623
2468  04c2 a107          	cp	a,#7
2469  04c4 270e          	jreq	L623
2470  04c6 ae026c        	ldw	x,#620
2471  04c9 89            	pushw	x
2472  04ca 5f            	clrw	x
2473  04cb 89            	pushw	x
2474  04cc ae000c        	ldw	x,#L75
2475  04cf cd0000        	call	_assert_failed
2477  04d2 5b04          	addw	sp,#4
2478  04d4               L623:
2479                     ; 623     CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2481  04d4 c650cc        	ld	a,20684
2482  04d7 a4f8          	and	a,#248
2483  04d9 1a01          	or	a,(OFST+1,sp)
2484  04db c750cc        	ld	20684,a
2485                     ; 625 }
2488  04de 84            	pop	a
2489  04df 81            	ret	
2513                     ; 636 void CLK_SYSCLKEmergencyClear(void)
2513                     ; 637 {
2514                     	switch	.text
2515  04e0               _CLK_SYSCLKEmergencyClear:
2519                     ; 638     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2521  04e0 721150c5      	bres	20677,#0
2522                     ; 639 }
2525  04e4 81            	ret	
2675                     ; 648 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2675                     ; 649 {
2676                     	switch	.text
2677  04e5               _CLK_GetFlagStatus:
2679  04e5 89            	pushw	x
2680  04e6 5203          	subw	sp,#3
2681       00000003      OFST:	set	3
2684                     ; 651     uint16_t statusreg = 0;
2686                     ; 652     uint8_t tmpreg = 0;
2688                     ; 653     FlagStatus bitstatus = RESET;
2690                     ; 656     assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2692  04e8 a30110        	cpw	x,#272
2693  04eb 2736          	jreq	L243
2694  04ed a30102        	cpw	x,#258
2695  04f0 2731          	jreq	L243
2696  04f2 a30202        	cpw	x,#514
2697  04f5 272c          	jreq	L243
2698  04f7 a30308        	cpw	x,#776
2699  04fa 2727          	jreq	L243
2700  04fc a30301        	cpw	x,#769
2701  04ff 2722          	jreq	L243
2702  0501 a30408        	cpw	x,#1032
2703  0504 271d          	jreq	L243
2704  0506 a30402        	cpw	x,#1026
2705  0509 2718          	jreq	L243
2706  050b a30504        	cpw	x,#1284
2707  050e 2713          	jreq	L243
2708  0510 a30502        	cpw	x,#1282
2709  0513 270e          	jreq	L243
2710  0515 ae0290        	ldw	x,#656
2711  0518 89            	pushw	x
2712  0519 5f            	clrw	x
2713  051a 89            	pushw	x
2714  051b ae000c        	ldw	x,#L75
2715  051e cd0000        	call	_assert_failed
2717  0521 5b04          	addw	sp,#4
2718  0523               L243:
2719                     ; 659     statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2721  0523 7b04          	ld	a,(OFST+1,sp)
2722  0525 97            	ld	xl,a
2723  0526 4f            	clr	a
2724  0527 02            	rlwa	x,a
2725  0528 1f01          	ldw	(OFST-2,sp),x
2726                     ; 662     if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2728  052a a30100        	cpw	x,#256
2729  052d 2605          	jrne	L7021
2730                     ; 664         tmpreg = CLK->ICKR;
2732  052f c650c0        	ld	a,20672
2734  0532 2021          	jra	L1121
2735  0534               L7021:
2736                     ; 666     else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2738  0534 a30200        	cpw	x,#512
2739  0537 2605          	jrne	L3121
2740                     ; 668         tmpreg = CLK->ECKR;
2742  0539 c650c1        	ld	a,20673
2744  053c 2017          	jra	L1121
2745  053e               L3121:
2746                     ; 670     else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2748  053e a30300        	cpw	x,#768
2749  0541 2605          	jrne	L7121
2750                     ; 672         tmpreg = CLK->SWCR;
2752  0543 c650c5        	ld	a,20677
2754  0546 200d          	jra	L1121
2755  0548               L7121:
2756                     ; 674     else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2758  0548 a30400        	cpw	x,#1024
2759  054b 2605          	jrne	L3221
2760                     ; 676         tmpreg = CLK->CSSR;
2762  054d c650c8        	ld	a,20680
2764  0550 2003          	jra	L1121
2765  0552               L3221:
2766                     ; 680         tmpreg = CLK->CCOR;
2768  0552 c650c9        	ld	a,20681
2769  0555               L1121:
2770  0555 6b03          	ld	(OFST+0,sp),a
2771                     ; 683     if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2773  0557 7b05          	ld	a,(OFST+2,sp)
2774  0559 1503          	bcp	a,(OFST+0,sp)
2775  055b 2704          	jreq	L7221
2776                     ; 685         bitstatus = SET;
2778  055d a601          	ld	a,#1
2780  055f 2001          	jra	L1321
2781  0561               L7221:
2782                     ; 689         bitstatus = RESET;
2784  0561 4f            	clr	a
2785  0562               L1321:
2786                     ; 693     return((FlagStatus)bitstatus);
2790  0562 5b05          	addw	sp,#5
2791  0564 81            	ret	
2838                     ; 703 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2838                     ; 704 {
2839                     	switch	.text
2840  0565               _CLK_GetITStatus:
2842  0565 88            	push	a
2843  0566 88            	push	a
2844       00000001      OFST:	set	1
2847                     ; 706     ITStatus bitstatus = RESET;
2849                     ; 709     assert_param(IS_CLK_IT_OK(CLK_IT));
2851  0567 a10c          	cp	a,#12
2852  0569 2712          	jreq	L453
2853  056b a11c          	cp	a,#28
2854  056d 270e          	jreq	L453
2855  056f ae02c5        	ldw	x,#709
2856  0572 89            	pushw	x
2857  0573 5f            	clrw	x
2858  0574 89            	pushw	x
2859  0575 ae000c        	ldw	x,#L75
2860  0578 cd0000        	call	_assert_failed
2862  057b 5b04          	addw	sp,#4
2863  057d               L453:
2864                     ; 711     if (CLK_IT == CLK_IT_SWIF)
2866  057d 7b02          	ld	a,(OFST+1,sp)
2867  057f a11c          	cp	a,#28
2868  0581 260b          	jrne	L5521
2869                     ; 714         if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2871  0583 c650c5        	ld	a,20677
2872  0586 1402          	and	a,(OFST+1,sp)
2873  0588 a10c          	cp	a,#12
2874  058a 260f          	jrne	L5621
2875                     ; 716             bitstatus = SET;
2877  058c 2009          	jp	LC006
2878                     ; 720             bitstatus = RESET;
2879  058e               L5521:
2880                     ; 726         if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2882  058e c650c8        	ld	a,20680
2883  0591 1402          	and	a,(OFST+1,sp)
2884  0593 a10c          	cp	a,#12
2885  0595 2604          	jrne	L5621
2886                     ; 728             bitstatus = SET;
2888  0597               LC006:
2890  0597 a601          	ld	a,#1
2892  0599 2001          	jra	L3621
2893  059b               L5621:
2894                     ; 732             bitstatus = RESET;
2897  059b 4f            	clr	a
2898  059c               L3621:
2899                     ; 737     return bitstatus;
2903  059c 85            	popw	x
2904  059d 81            	ret	
2941                     ; 747 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2941                     ; 748 {
2942                     	switch	.text
2943  059e               _CLK_ClearITPendingBit:
2945  059e 88            	push	a
2946       00000000      OFST:	set	0
2949                     ; 751     assert_param(IS_CLK_IT_OK(CLK_IT));
2951  059f a10c          	cp	a,#12
2952  05a1 2712          	jreq	L663
2953  05a3 a11c          	cp	a,#28
2954  05a5 270e          	jreq	L663
2955  05a7 ae02ef        	ldw	x,#751
2956  05aa 89            	pushw	x
2957  05ab 5f            	clrw	x
2958  05ac 89            	pushw	x
2959  05ad ae000c        	ldw	x,#L75
2960  05b0 cd0000        	call	_assert_failed
2962  05b3 5b04          	addw	sp,#4
2963  05b5               L663:
2964                     ; 753     if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2966  05b5 7b01          	ld	a,(OFST+1,sp)
2967  05b7 a10c          	cp	a,#12
2968  05b9 2606          	jrne	L7031
2969                     ; 756         CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2971  05bb 721750c8      	bres	20680,#3
2973  05bf 2004          	jra	L1131
2974  05c1               L7031:
2975                     ; 761         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2977  05c1 721750c5      	bres	20677,#3
2978  05c5               L1131:
2979                     ; 764 }
2982  05c5 84            	pop	a
2983  05c6 81            	ret	
3018                     	xdef	_CLKPrescTable
3019                     	xdef	_HSIDivFactor
3020                     	xdef	_CLK_ClearITPendingBit
3021                     	xdef	_CLK_GetITStatus
3022                     	xdef	_CLK_GetFlagStatus
3023                     	xdef	_CLK_GetSYSCLKSource
3024                     	xdef	_CLK_GetClockFreq
3025                     	xdef	_CLK_AdjustHSICalibrationValue
3026                     	xdef	_CLK_SYSCLKEmergencyClear
3027                     	xdef	_CLK_ClockSecuritySystemEnable
3028                     	xdef	_CLK_SWIMConfig
3029                     	xdef	_CLK_SYSCLKConfig
3030                     	xdef	_CLK_ITConfig
3031                     	xdef	_CLK_CCOConfig
3032                     	xdef	_CLK_HSIPrescalerConfig
3033                     	xdef	_CLK_ClockSwitchConfig
3034                     	xdef	_CLK_PeripheralClockConfig
3035                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3036                     	xdef	_CLK_FastHaltWakeUpCmd
3037                     	xdef	_CLK_ClockSwitchCmd
3038                     	xdef	_CLK_CCOCmd
3039                     	xdef	_CLK_LSICmd
3040                     	xdef	_CLK_HSICmd
3041                     	xdef	_CLK_HSECmd
3042                     	xdef	_CLK_DeInit
3043                     	xref	_assert_failed
3044                     	switch	.const
3045  000c               L75:
3046  000c 6c6962726172  	dc.b	"libraries\src\stm8"
3047  001e 735f636c6b2e  	dc.b	"s_clk.c",0
3048                     	xref.b	c_lreg
3049                     	xref.b	c_x
3069                     	xref	c_ltor
3070                     	xref	c_ludv
3071                     	xref	c_rtol
3072                     	end
