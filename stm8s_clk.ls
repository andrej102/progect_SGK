   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
   4                     ; Optimizer V4.4.7 - 05 Oct 2017
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
1180                     ; 324     ErrorStatus Swif = ERROR;
1182                     ; 327     assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1184  01f0 7b06          	ld	a,(OFST+2,sp)
1185  01f2 a1e1          	cp	a,#225
1186  01f4 2716          	jreq	L461
1187  01f6 a1d2          	cp	a,#210
1188  01f8 2712          	jreq	L461
1189  01fa a1b4          	cp	a,#180
1190  01fc 270e          	jreq	L461
1191  01fe ae0147        	ldw	x,#327
1192  0201 89            	pushw	x
1193  0202 5f            	clrw	x
1194  0203 89            	pushw	x
1195  0204 ae000c        	ldw	x,#L75
1196  0207 cd0000        	call	_assert_failed
1198  020a 5b04          	addw	sp,#4
1199  020c               L461:
1200                     ; 328     assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1202  020c 7b05          	ld	a,(OFST+1,sp)
1203  020e 2711          	jreq	L471
1204  0210 4a            	dec	a
1205  0211 270e          	jreq	L471
1206  0213 ae0148        	ldw	x,#328
1207  0216 89            	pushw	x
1208  0217 5f            	clrw	x
1209  0218 89            	pushw	x
1210  0219 ae000c        	ldw	x,#L75
1211  021c cd0000        	call	_assert_failed
1213  021f 5b04          	addw	sp,#4
1214  0221               L471:
1215                     ; 329     assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1217  0221 7b09          	ld	a,(OFST+5,sp)
1218  0223 2711          	jreq	L402
1219  0225 4a            	dec	a
1220  0226 270e          	jreq	L402
1221  0228 ae0149        	ldw	x,#329
1222  022b 89            	pushw	x
1223  022c 5f            	clrw	x
1224  022d 89            	pushw	x
1225  022e ae000c        	ldw	x,#L75
1226  0231 cd0000        	call	_assert_failed
1228  0234 5b04          	addw	sp,#4
1229  0236               L402:
1230                     ; 330     assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1232  0236 7b0a          	ld	a,(OFST+6,sp)
1233  0238 2711          	jreq	L412
1234  023a 4a            	dec	a
1235  023b 270e          	jreq	L412
1236  023d ae014a        	ldw	x,#330
1237  0240 89            	pushw	x
1238  0241 5f            	clrw	x
1239  0242 89            	pushw	x
1240  0243 ae000c        	ldw	x,#L75
1241  0246 cd0000        	call	_assert_failed
1243  0249 5b04          	addw	sp,#4
1244  024b               L412:
1245                     ; 333     clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1247  024b c650c3        	ld	a,20675
1248  024e 6b01          	ld	(OFST-3,sp),a
1250                     ; 336     if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1252  0250 7b05          	ld	a,(OFST+1,sp)
1253  0252 4a            	dec	a
1254  0253 262d          	jrne	L544
1255                     ; 340         CLK->SWCR |= CLK_SWCR_SWEN;
1257  0255 721250c5      	bset	20677,#1
1258                     ; 343         if (ITState != DISABLE)
1260  0259 7b09          	ld	a,(OFST+5,sp)
1261  025b 2706          	jreq	L744
1262                     ; 345             CLK->SWCR |= CLK_SWCR_SWIEN;
1264  025d 721450c5      	bset	20677,#2
1266  0261 2004          	jra	L154
1267  0263               L744:
1268                     ; 349             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1270  0263 721550c5      	bres	20677,#2
1271  0267               L154:
1272                     ; 353         CLK->SWR = (uint8_t)CLK_NewClock;
1274  0267 7b06          	ld	a,(OFST+2,sp)
1275  0269 c750c4        	ld	20676,a
1277  026c 2003          	jra	L754
1278  026e               L354:
1279                     ; 357             DownCounter--;
1281  026e 5a            	decw	x
1282  026f 1f03          	ldw	(OFST-1,sp),x
1284  0271               L754:
1285                     ; 355         while ((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1287  0271 720150c504    	btjf	20677,#0,L364
1289  0276 1e03          	ldw	x,(OFST-1,sp)
1290  0278 26f4          	jrne	L354
1291  027a               L364:
1292                     ; 360         if (DownCounter != 0)
1294  027a 1e03          	ldw	x,(OFST-1,sp)
1295                     ; 362             Swif = SUCCESS;
1297  027c 2617          	jrne	LC003
1298                     ; 366             Swif = ERROR;
1300  027e 0f02          	clr	(OFST-2,sp)
1302  0280 2017          	jra	L174
1303  0282               L544:
1304                     ; 374         if (ITState != DISABLE)
1306  0282 7b09          	ld	a,(OFST+5,sp)
1307  0284 2706          	jreq	L374
1308                     ; 376             CLK->SWCR |= CLK_SWCR_SWIEN;
1310  0286 721450c5      	bset	20677,#2
1312  028a 2004          	jra	L574
1313  028c               L374:
1314                     ; 380             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1316  028c 721550c5      	bres	20677,#2
1317  0290               L574:
1318                     ; 384         CLK->SWR = (uint8_t)CLK_NewClock;
1320  0290 7b06          	ld	a,(OFST+2,sp)
1321  0292 c750c4        	ld	20676,a
1322                     ; 388         Swif = SUCCESS;
1324  0295               LC003:
1326  0295 a601          	ld	a,#1
1327  0297 6b02          	ld	(OFST-2,sp),a
1329  0299               L174:
1330                     ; 393     if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1332  0299 7b0a          	ld	a,(OFST+6,sp)
1333  029b 260c          	jrne	L774
1335  029d 7b01          	ld	a,(OFST-3,sp)
1336  029f a1e1          	cp	a,#225
1337  02a1 2606          	jrne	L774
1338                     ; 395         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1340  02a3 721150c0      	bres	20672,#0
1342  02a7 201e          	jra	L105
1343  02a9               L774:
1344                     ; 397     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1346  02a9 7b0a          	ld	a,(OFST+6,sp)
1347  02ab 260c          	jrne	L305
1349  02ad 7b01          	ld	a,(OFST-3,sp)
1350  02af a1d2          	cp	a,#210
1351  02b1 2606          	jrne	L305
1352                     ; 399         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1354  02b3 721750c0      	bres	20672,#3
1356  02b7 200e          	jra	L105
1357  02b9               L305:
1358                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1360  02b9 7b0a          	ld	a,(OFST+6,sp)
1361  02bb 260a          	jrne	L105
1363  02bd 7b01          	ld	a,(OFST-3,sp)
1364  02bf a1b4          	cp	a,#180
1365  02c1 2604          	jrne	L105
1366                     ; 403         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1368  02c3 721150c1      	bres	20673,#0
1369  02c7               L105:
1370                     ; 406     return(Swif);
1372  02c7 7b02          	ld	a,(OFST-2,sp)
1375  02c9 5b06          	addw	sp,#6
1376  02cb 81            	ret	
1515                     ; 416 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1515                     ; 417 {
1516                     	switch	.text
1517  02cc               _CLK_HSIPrescalerConfig:
1519  02cc 88            	push	a
1520       00000000      OFST:	set	0
1523                     ; 420     assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1525  02cd 4d            	tnz	a
1526  02ce 271a          	jreq	L622
1527  02d0 a108          	cp	a,#8
1528  02d2 2716          	jreq	L622
1529  02d4 a110          	cp	a,#16
1530  02d6 2712          	jreq	L622
1531  02d8 a118          	cp	a,#24
1532  02da 270e          	jreq	L622
1533  02dc ae01a4        	ldw	x,#420
1534  02df 89            	pushw	x
1535  02e0 5f            	clrw	x
1536  02e1 89            	pushw	x
1537  02e2 ae000c        	ldw	x,#L75
1538  02e5 cd0000        	call	_assert_failed
1540  02e8 5b04          	addw	sp,#4
1541  02ea               L622:
1542                     ; 423     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1544  02ea c650c6        	ld	a,20678
1545  02ed a4e7          	and	a,#231
1546  02ef c750c6        	ld	20678,a
1547                     ; 426     CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1549  02f2 c650c6        	ld	a,20678
1550  02f5 1a01          	or	a,(OFST+1,sp)
1551  02f7 c750c6        	ld	20678,a
1552                     ; 428 }
1555  02fa 84            	pop	a
1556  02fb 81            	ret	
1692                     ; 439 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1692                     ; 440 {
1693                     	switch	.text
1694  02fc               _CLK_CCOConfig:
1696  02fc 88            	push	a
1697       00000000      OFST:	set	0
1700                     ; 443     assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1702  02fd 4d            	tnz	a
1703  02fe 273e          	jreq	L042
1704  0300 a104          	cp	a,#4
1705  0302 273a          	jreq	L042
1706  0304 a102          	cp	a,#2
1707  0306 2736          	jreq	L042
1708  0308 a108          	cp	a,#8
1709  030a 2732          	jreq	L042
1710  030c a10a          	cp	a,#10
1711  030e 272e          	jreq	L042
1712  0310 a10c          	cp	a,#12
1713  0312 272a          	jreq	L042
1714  0314 a10e          	cp	a,#14
1715  0316 2726          	jreq	L042
1716  0318 a110          	cp	a,#16
1717  031a 2722          	jreq	L042
1718  031c a112          	cp	a,#18
1719  031e 271e          	jreq	L042
1720  0320 a114          	cp	a,#20
1721  0322 271a          	jreq	L042
1722  0324 a116          	cp	a,#22
1723  0326 2716          	jreq	L042
1724  0328 a118          	cp	a,#24
1725  032a 2712          	jreq	L042
1726  032c a11a          	cp	a,#26
1727  032e 270e          	jreq	L042
1728  0330 ae01bb        	ldw	x,#443
1729  0333 89            	pushw	x
1730  0334 5f            	clrw	x
1731  0335 89            	pushw	x
1732  0336 ae000c        	ldw	x,#L75
1733  0339 cd0000        	call	_assert_failed
1735  033c 5b04          	addw	sp,#4
1736  033e               L042:
1737                     ; 446     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1739  033e c650c9        	ld	a,20681
1740  0341 a4e1          	and	a,#225
1741  0343 c750c9        	ld	20681,a
1742                     ; 449     CLK->CCOR |= (uint8_t)CLK_CCO;
1744  0346 c650c9        	ld	a,20681
1745  0349 1a01          	or	a,(OFST+1,sp)
1746  034b c750c9        	ld	20681,a
1747                     ; 452     CLK->CCOR |= CLK_CCOR_CCOEN;
1749  034e 721050c9      	bset	20681,#0
1750                     ; 454 }
1753  0352 84            	pop	a
1754  0353 81            	ret	
1820                     ; 464 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1820                     ; 465 {
1821                     	switch	.text
1822  0354               _CLK_ITConfig:
1824  0354 89            	pushw	x
1825       00000000      OFST:	set	0
1828                     ; 468     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1830  0355 9f            	ld	a,xl
1831  0356 4d            	tnz	a
1832  0357 2712          	jreq	L252
1833  0359 9f            	ld	a,xl
1834  035a 4a            	dec	a
1835  035b 270e          	jreq	L252
1836  035d ae01d4        	ldw	x,#468
1837  0360 89            	pushw	x
1838  0361 5f            	clrw	x
1839  0362 89            	pushw	x
1840  0363 ae000c        	ldw	x,#L75
1841  0366 cd0000        	call	_assert_failed
1843  0369 5b04          	addw	sp,#4
1844  036b               L252:
1845                     ; 469     assert_param(IS_CLK_IT_OK(CLK_IT));
1847  036b 7b01          	ld	a,(OFST+1,sp)
1848  036d a10c          	cp	a,#12
1849  036f 2712          	jreq	L262
1850  0371 a11c          	cp	a,#28
1851  0373 270e          	jreq	L262
1852  0375 ae01d5        	ldw	x,#469
1853  0378 89            	pushw	x
1854  0379 5f            	clrw	x
1855  037a 89            	pushw	x
1856  037b ae000c        	ldw	x,#L75
1857  037e cd0000        	call	_assert_failed
1859  0381 5b04          	addw	sp,#4
1860  0383               L262:
1861                     ; 471     if (NewState != DISABLE)
1863  0383 7b02          	ld	a,(OFST+2,sp)
1864  0385 2716          	jreq	L507
1865                     ; 473         switch (CLK_IT)
1867  0387 7b01          	ld	a,(OFST+1,sp)
1869                     ; 481         default:
1869                     ; 482             break;
1870  0389 a00c          	sub	a,#12
1871  038b 270a          	jreq	L146
1872  038d a010          	sub	a,#16
1873  038f 2620          	jrne	L317
1874                     ; 475         case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1874                     ; 476             CLK->SWCR |= CLK_SWCR_SWIEN;
1876  0391 721450c5      	bset	20677,#2
1877                     ; 477             break;
1879  0395 201a          	jra	L317
1880  0397               L146:
1881                     ; 478         case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1881                     ; 479             CLK->CSSR |= CLK_CSSR_CSSDIE;
1883  0397 721450c8      	bset	20680,#2
1884                     ; 480             break;
1886  039b 2014          	jra	L317
1887                     ; 481         default:
1887                     ; 482             break;
1890  039d               L507:
1891                     ; 487         switch (CLK_IT)
1893  039d 7b01          	ld	a,(OFST+1,sp)
1895                     ; 495         default:
1895                     ; 496             break;
1896  039f a00c          	sub	a,#12
1897  03a1 270a          	jreq	L746
1898  03a3 a010          	sub	a,#16
1899  03a5 260a          	jrne	L317
1900                     ; 489         case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1900                     ; 490             CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1902  03a7 721550c5      	bres	20677,#2
1903                     ; 491             break;
1905  03ab 2004          	jra	L317
1906  03ad               L746:
1907                     ; 492         case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1907                     ; 493             CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1909  03ad 721550c8      	bres	20680,#2
1910                     ; 494             break;
1911  03b1               L317:
1912                     ; 500 }
1915  03b1 85            	popw	x
1916  03b2 81            	ret	
1917                     ; 495         default:
1917                     ; 496             break;
1954                     ; 507 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1954                     ; 508 {
1955                     	switch	.text
1956  03b3               _CLK_SYSCLKConfig:
1958  03b3 88            	push	a
1959       00000000      OFST:	set	0
1962                     ; 511     assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1964  03b4 4d            	tnz	a
1965  03b5 273a          	jreq	L472
1966  03b7 a108          	cp	a,#8
1967  03b9 2736          	jreq	L472
1968  03bb a110          	cp	a,#16
1969  03bd 2732          	jreq	L472
1970  03bf a118          	cp	a,#24
1971  03c1 272e          	jreq	L472
1972  03c3 a180          	cp	a,#128
1973  03c5 272a          	jreq	L472
1974  03c7 a181          	cp	a,#129
1975  03c9 2726          	jreq	L472
1976  03cb a182          	cp	a,#130
1977  03cd 2722          	jreq	L472
1978  03cf a183          	cp	a,#131
1979  03d1 271e          	jreq	L472
1980  03d3 a184          	cp	a,#132
1981  03d5 271a          	jreq	L472
1982  03d7 a185          	cp	a,#133
1983  03d9 2716          	jreq	L472
1984  03db a186          	cp	a,#134
1985  03dd 2712          	jreq	L472
1986  03df a187          	cp	a,#135
1987  03e1 270e          	jreq	L472
1988  03e3 ae01ff        	ldw	x,#511
1989  03e6 89            	pushw	x
1990  03e7 5f            	clrw	x
1991  03e8 89            	pushw	x
1992  03e9 ae000c        	ldw	x,#L75
1993  03ec cd0000        	call	_assert_failed
1995  03ef 5b04          	addw	sp,#4
1996  03f1               L472:
1997                     ; 513     if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1999  03f1 7b01          	ld	a,(OFST+1,sp)
2000  03f3 2b0e          	jrmi	L737
2001                     ; 515         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2003  03f5 c650c6        	ld	a,20678
2004  03f8 a4e7          	and	a,#231
2005  03fa c750c6        	ld	20678,a
2006                     ; 516         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2008  03fd 7b01          	ld	a,(OFST+1,sp)
2009  03ff a418          	and	a,#24
2011  0401 200c          	jra	L147
2012  0403               L737:
2013                     ; 520         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2015  0403 c650c6        	ld	a,20678
2016  0406 a4f8          	and	a,#248
2017  0408 c750c6        	ld	20678,a
2018                     ; 521         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2020  040b 7b01          	ld	a,(OFST+1,sp)
2021  040d a407          	and	a,#7
2022  040f               L147:
2023  040f ca50c6        	or	a,20678
2024  0412 c750c6        	ld	20678,a
2025                     ; 524 }
2028  0415 84            	pop	a
2029  0416 81            	ret	
2086                     ; 531 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2086                     ; 532 {
2087                     	switch	.text
2088  0417               _CLK_SWIMConfig:
2090  0417 88            	push	a
2091       00000000      OFST:	set	0
2094                     ; 535     assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2096  0418 4d            	tnz	a
2097  0419 2711          	jreq	L603
2098  041b 4a            	dec	a
2099  041c 270e          	jreq	L603
2100  041e ae0217        	ldw	x,#535
2101  0421 89            	pushw	x
2102  0422 5f            	clrw	x
2103  0423 89            	pushw	x
2104  0424 ae000c        	ldw	x,#L75
2105  0427 cd0000        	call	_assert_failed
2107  042a 5b04          	addw	sp,#4
2108  042c               L603:
2109                     ; 537     if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2111  042c 7b01          	ld	a,(OFST+1,sp)
2112  042e 2706          	jreq	L177
2113                     ; 540         CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2115  0430 721050cd      	bset	20685,#0
2117  0434 2004          	jra	L377
2118  0436               L177:
2119                     ; 545         CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2121  0436 721150cd      	bres	20685,#0
2122  043a               L377:
2123                     ; 548 }
2126  043a 84            	pop	a
2127  043b 81            	ret	
2151                     ; 557 void CLK_ClockSecuritySystemEnable(void)
2151                     ; 558 {
2152                     	switch	.text
2153  043c               _CLK_ClockSecuritySystemEnable:
2157                     ; 560     CLK->CSSR |= CLK_CSSR_CSSEN;
2159  043c 721050c8      	bset	20680,#0
2160                     ; 561 }
2163  0440 81            	ret	
2188                     ; 569 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2188                     ; 570 {
2189                     	switch	.text
2190  0441               _CLK_GetSYSCLKSource:
2194                     ; 571     return((CLK_Source_TypeDef)CLK->CMSR);
2196  0441 c650c3        	ld	a,20675
2199  0444 81            	ret	
2256                     ; 579 uint32_t CLK_GetClockFreq(void)
2256                     ; 580 {
2257                     	switch	.text
2258  0445               _CLK_GetClockFreq:
2260  0445 5209          	subw	sp,#9
2261       00000009      OFST:	set	9
2264                     ; 582     uint32_t clockfrequency = 0;
2266                     ; 583     CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2268                     ; 584     uint8_t tmp = 0, presc = 0;
2272                     ; 587     clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2274  0447 c650c3        	ld	a,20675
2275  044a 6b09          	ld	(OFST+0,sp),a
2277                     ; 589     if (clocksource == CLK_SOURCE_HSI)
2279  044c a1e1          	cp	a,#225
2280  044e 2634          	jrne	L1401
2281                     ; 591         tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2283  0450 c650c6        	ld	a,20678
2284  0453 a418          	and	a,#24
2285  0455 44            	srl	a
2286  0456 44            	srl	a
2287  0457 44            	srl	a
2289                     ; 592         tmp = (uint8_t)(tmp >> 3);
2292                     ; 593         presc = HSIDivFactor[tmp];
2294  0458 5f            	clrw	x
2295  0459 97            	ld	xl,a
2296  045a d60000        	ld	a,(_HSIDivFactor,x)
2297  045d 6b09          	ld	(OFST+0,sp),a
2299                     ; 594         clockfrequency = HSI_VALUE / presc;
2301  045f b703          	ld	c_lreg+3,a
2302  0461 3f02          	clr	c_lreg+2
2303  0463 3f01          	clr	c_lreg+1
2304  0465 3f00          	clr	c_lreg
2305  0467 96            	ldw	x,sp
2306  0468 5c            	incw	x
2307  0469 cd0000        	call	c_rtol
2310  046c ae2400        	ldw	x,#9216
2311  046f bf02          	ldw	c_lreg+2,x
2312  0471 ae00f4        	ldw	x,#244
2313  0474 bf00          	ldw	c_lreg,x
2314  0476 96            	ldw	x,sp
2315  0477 5c            	incw	x
2316  0478 cd0000        	call	c_ludv
2318  047b 96            	ldw	x,sp
2319  047c 1c0005        	addw	x,#OFST-4
2320  047f cd0000        	call	c_rtol
2324  0482 2018          	jra	L3401
2325  0484               L1401:
2326                     ; 596     else if ( clocksource == CLK_SOURCE_LSI)
2328  0484 a1d2          	cp	a,#210
2329  0486 260a          	jrne	L5401
2330                     ; 598         clockfrequency = LSI_VALUE;
2332  0488 aef400        	ldw	x,#62464
2333  048b 1f07          	ldw	(OFST-2,sp),x
2334  048d ae0001        	ldw	x,#1
2336  0490 2008          	jp	LC004
2337  0492               L5401:
2338                     ; 602         clockfrequency = HSE_VALUE;
2340  0492 ae2400        	ldw	x,#9216
2341  0495 1f07          	ldw	(OFST-2,sp),x
2342  0497 ae00f4        	ldw	x,#244
2343  049a               LC004:
2344  049a 1f05          	ldw	(OFST-4,sp),x
2346  049c               L3401:
2347                     ; 605     return((uint32_t)clockfrequency);
2349  049c 96            	ldw	x,sp
2350  049d 1c0005        	addw	x,#OFST-4
2351  04a0 cd0000        	call	c_ltor
2355  04a3 5b09          	addw	sp,#9
2356  04a5 81            	ret	
2456                     ; 616 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2456                     ; 617 {
2457                     	switch	.text
2458  04a6               _CLK_AdjustHSICalibrationValue:
2460  04a6 88            	push	a
2461       00000000      OFST:	set	0
2464                     ; 620     assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2466  04a7 4d            	tnz	a
2467  04a8 272a          	jreq	L623
2468  04aa a101          	cp	a,#1
2469  04ac 2726          	jreq	L623
2470  04ae a102          	cp	a,#2
2471  04b0 2722          	jreq	L623
2472  04b2 a103          	cp	a,#3
2473  04b4 271e          	jreq	L623
2474  04b6 a104          	cp	a,#4
2475  04b8 271a          	jreq	L623
2476  04ba a105          	cp	a,#5
2477  04bc 2716          	jreq	L623
2478  04be a106          	cp	a,#6
2479  04c0 2712          	jreq	L623
2480  04c2 a107          	cp	a,#7
2481  04c4 270e          	jreq	L623
2482  04c6 ae026c        	ldw	x,#620
2483  04c9 89            	pushw	x
2484  04ca 5f            	clrw	x
2485  04cb 89            	pushw	x
2486  04cc ae000c        	ldw	x,#L75
2487  04cf cd0000        	call	_assert_failed
2489  04d2 5b04          	addw	sp,#4
2490  04d4               L623:
2491                     ; 623     CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2493  04d4 c650cc        	ld	a,20684
2494  04d7 a4f8          	and	a,#248
2495  04d9 1a01          	or	a,(OFST+1,sp)
2496  04db c750cc        	ld	20684,a
2497                     ; 625 }
2500  04de 84            	pop	a
2501  04df 81            	ret	
2525                     ; 636 void CLK_SYSCLKEmergencyClear(void)
2525                     ; 637 {
2526                     	switch	.text
2527  04e0               _CLK_SYSCLKEmergencyClear:
2531                     ; 638     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2533  04e0 721150c5      	bres	20677,#0
2534                     ; 639 }
2537  04e4 81            	ret	
2687                     ; 648 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2687                     ; 649 {
2688                     	switch	.text
2689  04e5               _CLK_GetFlagStatus:
2691  04e5 89            	pushw	x
2692  04e6 5203          	subw	sp,#3
2693       00000003      OFST:	set	3
2696                     ; 651     uint16_t statusreg = 0;
2698                     ; 652     uint8_t tmpreg = 0;
2700                     ; 653     FlagStatus bitstatus = RESET;
2702                     ; 656     assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2704  04e8 a30110        	cpw	x,#272
2705  04eb 2736          	jreq	L243
2706  04ed a30102        	cpw	x,#258
2707  04f0 2731          	jreq	L243
2708  04f2 a30202        	cpw	x,#514
2709  04f5 272c          	jreq	L243
2710  04f7 a30308        	cpw	x,#776
2711  04fa 2727          	jreq	L243
2712  04fc a30301        	cpw	x,#769
2713  04ff 2722          	jreq	L243
2714  0501 a30408        	cpw	x,#1032
2715  0504 271d          	jreq	L243
2716  0506 a30402        	cpw	x,#1026
2717  0509 2718          	jreq	L243
2718  050b a30504        	cpw	x,#1284
2719  050e 2713          	jreq	L243
2720  0510 a30502        	cpw	x,#1282
2721  0513 270e          	jreq	L243
2722  0515 ae0290        	ldw	x,#656
2723  0518 89            	pushw	x
2724  0519 5f            	clrw	x
2725  051a 89            	pushw	x
2726  051b ae000c        	ldw	x,#L75
2727  051e cd0000        	call	_assert_failed
2729  0521 5b04          	addw	sp,#4
2730  0523               L243:
2731                     ; 659     statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2733  0523 7b04          	ld	a,(OFST+1,sp)
2734  0525 97            	ld	xl,a
2735  0526 4f            	clr	a
2736  0527 02            	rlwa	x,a
2737  0528 1f01          	ldw	(OFST-2,sp),x
2739                     ; 662     if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2741  052a a30100        	cpw	x,#256
2742  052d 2605          	jrne	L7021
2743                     ; 664         tmpreg = CLK->ICKR;
2745  052f c650c0        	ld	a,20672
2747  0532 2021          	jra	L1121
2748  0534               L7021:
2749                     ; 666     else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2751  0534 a30200        	cpw	x,#512
2752  0537 2605          	jrne	L3121
2753                     ; 668         tmpreg = CLK->ECKR;
2755  0539 c650c1        	ld	a,20673
2757  053c 2017          	jra	L1121
2758  053e               L3121:
2759                     ; 670     else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2761  053e a30300        	cpw	x,#768
2762  0541 2605          	jrne	L7121
2763                     ; 672         tmpreg = CLK->SWCR;
2765  0543 c650c5        	ld	a,20677
2767  0546 200d          	jra	L1121
2768  0548               L7121:
2769                     ; 674     else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2771  0548 a30400        	cpw	x,#1024
2772  054b 2605          	jrne	L3221
2773                     ; 676         tmpreg = CLK->CSSR;
2775  054d c650c8        	ld	a,20680
2777  0550 2003          	jra	L1121
2778  0552               L3221:
2779                     ; 680         tmpreg = CLK->CCOR;
2781  0552 c650c9        	ld	a,20681
2782  0555               L1121:
2783  0555 6b03          	ld	(OFST+0,sp),a
2785                     ; 683     if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2787  0557 7b05          	ld	a,(OFST+2,sp)
2788  0559 1503          	bcp	a,(OFST+0,sp)
2789  055b 2704          	jreq	L7221
2790                     ; 685         bitstatus = SET;
2792  055d a601          	ld	a,#1
2795  055f 2001          	jra	L1321
2796  0561               L7221:
2797                     ; 689         bitstatus = RESET;
2799  0561 4f            	clr	a
2801  0562               L1321:
2802                     ; 693     return((FlagStatus)bitstatus);
2806  0562 5b05          	addw	sp,#5
2807  0564 81            	ret	
2854                     ; 703 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2854                     ; 704 {
2855                     	switch	.text
2856  0565               _CLK_GetITStatus:
2858  0565 88            	push	a
2859  0566 88            	push	a
2860       00000001      OFST:	set	1
2863                     ; 706     ITStatus bitstatus = RESET;
2865                     ; 709     assert_param(IS_CLK_IT_OK(CLK_IT));
2867  0567 a10c          	cp	a,#12
2868  0569 2712          	jreq	L453
2869  056b a11c          	cp	a,#28
2870  056d 270e          	jreq	L453
2871  056f ae02c5        	ldw	x,#709
2872  0572 89            	pushw	x
2873  0573 5f            	clrw	x
2874  0574 89            	pushw	x
2875  0575 ae000c        	ldw	x,#L75
2876  0578 cd0000        	call	_assert_failed
2878  057b 5b04          	addw	sp,#4
2879  057d               L453:
2880                     ; 711     if (CLK_IT == CLK_IT_SWIF)
2882  057d 7b02          	ld	a,(OFST+1,sp)
2883  057f a11c          	cp	a,#28
2884  0581 260b          	jrne	L5521
2885                     ; 714         if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2887  0583 c650c5        	ld	a,20677
2888  0586 1402          	and	a,(OFST+1,sp)
2889  0588 a10c          	cp	a,#12
2890  058a 260f          	jrne	L5621
2891                     ; 716             bitstatus = SET;
2893  058c 2009          	jp	LC006
2894                     ; 720             bitstatus = RESET;
2895  058e               L5521:
2896                     ; 726         if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2898  058e c650c8        	ld	a,20680
2899  0591 1402          	and	a,(OFST+1,sp)
2900  0593 a10c          	cp	a,#12
2901  0595 2604          	jrne	L5621
2902                     ; 728             bitstatus = SET;
2904  0597               LC006:
2906  0597 a601          	ld	a,#1
2909  0599 2001          	jra	L3621
2910  059b               L5621:
2911                     ; 732             bitstatus = RESET;
2914  059b 4f            	clr	a
2916  059c               L3621:
2917                     ; 737     return bitstatus;
2921  059c 85            	popw	x
2922  059d 81            	ret	
2959                     ; 747 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2959                     ; 748 {
2960                     	switch	.text
2961  059e               _CLK_ClearITPendingBit:
2963  059e 88            	push	a
2964       00000000      OFST:	set	0
2967                     ; 751     assert_param(IS_CLK_IT_OK(CLK_IT));
2969  059f a10c          	cp	a,#12
2970  05a1 2712          	jreq	L663
2971  05a3 a11c          	cp	a,#28
2972  05a5 270e          	jreq	L663
2973  05a7 ae02ef        	ldw	x,#751
2974  05aa 89            	pushw	x
2975  05ab 5f            	clrw	x
2976  05ac 89            	pushw	x
2977  05ad ae000c        	ldw	x,#L75
2978  05b0 cd0000        	call	_assert_failed
2980  05b3 5b04          	addw	sp,#4
2981  05b5               L663:
2982                     ; 753     if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2984  05b5 7b01          	ld	a,(OFST+1,sp)
2985  05b7 a10c          	cp	a,#12
2986  05b9 2606          	jrne	L7031
2987                     ; 756         CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2989  05bb 721750c8      	bres	20680,#3
2991  05bf 2004          	jra	L1131
2992  05c1               L7031:
2993                     ; 761         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2995  05c1 721750c5      	bres	20677,#3
2996  05c5               L1131:
2997                     ; 764 }
3000  05c5 84            	pop	a
3001  05c6 81            	ret	
3036                     	xdef	_CLKPrescTable
3037                     	xdef	_HSIDivFactor
3038                     	xdef	_CLK_ClearITPendingBit
3039                     	xdef	_CLK_GetITStatus
3040                     	xdef	_CLK_GetFlagStatus
3041                     	xdef	_CLK_GetSYSCLKSource
3042                     	xdef	_CLK_GetClockFreq
3043                     	xdef	_CLK_AdjustHSICalibrationValue
3044                     	xdef	_CLK_SYSCLKEmergencyClear
3045                     	xdef	_CLK_ClockSecuritySystemEnable
3046                     	xdef	_CLK_SWIMConfig
3047                     	xdef	_CLK_SYSCLKConfig
3048                     	xdef	_CLK_ITConfig
3049                     	xdef	_CLK_CCOConfig
3050                     	xdef	_CLK_HSIPrescalerConfig
3051                     	xdef	_CLK_ClockSwitchConfig
3052                     	xdef	_CLK_PeripheralClockConfig
3053                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3054                     	xdef	_CLK_FastHaltWakeUpCmd
3055                     	xdef	_CLK_ClockSwitchCmd
3056                     	xdef	_CLK_CCOCmd
3057                     	xdef	_CLK_LSICmd
3058                     	xdef	_CLK_HSICmd
3059                     	xdef	_CLK_HSECmd
3060                     	xdef	_CLK_DeInit
3061                     	xref	_assert_failed
3062                     	switch	.const
3063  000c               L75:
3064  000c 6c6962726172  	dc.b	"libraries\src\stm8"
3065  001e 735f636c6b2e  	dc.b	"s_clk.c",0
3066                     	xref.b	c_lreg
3067                     	xref.b	c_x
3087                     	xref	c_ltor
3088                     	xref	c_ludv
3089                     	xref	c_rtol
3090                     	end
