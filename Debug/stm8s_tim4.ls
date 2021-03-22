   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.21 - 04 Feb 2014
   3                     ; Generator (Limited) V4.3.12 - 11 Feb 2014
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
  46                     ; 43 void TIM4_DeInit(void)
  46                     ; 44 {
  48                     	switch	.text
  49  0000               _TIM4_DeInit:
  53                     ; 45     TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  55  0000 725f5340      	clr	21312
  56                     ; 46     TIM4->IER = TIM4_IER_RESET_VALUE;
  58  0004 725f5341      	clr	21313
  59                     ; 47     TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  61  0008 725f5344      	clr	21316
  62                     ; 48     TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  64  000c 725f5345      	clr	21317
  65                     ; 49     TIM4->ARR = TIM4_ARR_RESET_VALUE;
  67  0010 35ff5346      	mov	21318,#255
  68                     ; 50     TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  70  0014 725f5342      	clr	21314
  71                     ; 51 }
  74  0018 81            	ret	
 179                     ; 59 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 179                     ; 60 {
 180                     	switch	.text
 181  0019               _TIM4_TimeBaseInit:
 183  0019 89            	pushw	x
 184       00000000      OFST:	set	0
 187                     ; 62     assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 189  001a 9e            	ld	a,xh
 190  001b 4d            	tnz	a
 191  001c 2730          	jreq	L41
 192  001e 9e            	ld	a,xh
 193  001f 4a            	dec	a
 194  0020 272c          	jreq	L41
 195  0022 9e            	ld	a,xh
 196  0023 a102          	cp	a,#2
 197  0025 2727          	jreq	L41
 198  0027 9e            	ld	a,xh
 199  0028 a103          	cp	a,#3
 200  002a 2722          	jreq	L41
 201  002c 9e            	ld	a,xh
 202  002d a104          	cp	a,#4
 203  002f 271d          	jreq	L41
 204  0031 9e            	ld	a,xh
 205  0032 a105          	cp	a,#5
 206  0034 2718          	jreq	L41
 207  0036 9e            	ld	a,xh
 208  0037 a106          	cp	a,#6
 209  0039 2713          	jreq	L41
 210  003b 9e            	ld	a,xh
 211  003c a107          	cp	a,#7
 212  003e 270e          	jreq	L41
 213  0040 ae003e        	ldw	x,#62
 214  0043 89            	pushw	x
 215  0044 5f            	clrw	x
 216  0045 89            	pushw	x
 217  0046 ae0000        	ldw	x,#L56
 218  0049 cd0000        	call	_assert_failed
 220  004c 5b04          	addw	sp,#4
 221  004e               L41:
 222                     ; 64     TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 224  004e 7b01          	ld	a,(OFST+1,sp)
 225  0050 c75345        	ld	21317,a
 226                     ; 66     TIM4->ARR = (uint8_t)(TIM4_Period);
 228  0053 7b02          	ld	a,(OFST+2,sp)
 229  0055 c75346        	ld	21318,a
 230                     ; 67 }
 233  0058 85            	popw	x
 234  0059 81            	ret	
 290                     ; 77 void TIM4_Cmd(FunctionalState NewState)
 290                     ; 78 {
 291                     	switch	.text
 292  005a               _TIM4_Cmd:
 294  005a 88            	push	a
 295       00000000      OFST:	set	0
 298                     ; 80     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 300  005b 4d            	tnz	a
 301  005c 2711          	jreq	L62
 302  005e 4a            	dec	a
 303  005f 270e          	jreq	L62
 304  0061 ae0050        	ldw	x,#80
 305  0064 89            	pushw	x
 306  0065 5f            	clrw	x
 307  0066 89            	pushw	x
 308  0067 ae0000        	ldw	x,#L56
 309  006a cd0000        	call	_assert_failed
 311  006d 5b04          	addw	sp,#4
 312  006f               L62:
 313                     ; 83     if (NewState != DISABLE)
 315  006f 7b01          	ld	a,(OFST+1,sp)
 316  0071 2706          	jreq	L511
 317                     ; 85         TIM4->CR1 |= TIM4_CR1_CEN;
 319  0073 72105340      	bset	21312,#0
 321  0077 2004          	jra	L711
 322  0079               L511:
 323                     ; 89         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 325  0079 72115340      	bres	21312,#0
 326  007d               L711:
 327                     ; 91 }
 330  007d 84            	pop	a
 331  007e 81            	ret	
 390                     ; 103 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 390                     ; 104 {
 391                     	switch	.text
 392  007f               _TIM4_ITConfig:
 394  007f 89            	pushw	x
 395       00000000      OFST:	set	0
 398                     ; 106     assert_param(IS_TIM4_IT_OK(TIM4_IT));
 400  0080 9e            	ld	a,xh
 401  0081 4a            	dec	a
 402  0082 270e          	jreq	L63
 403  0084 ae006a        	ldw	x,#106
 404  0087 89            	pushw	x
 405  0088 5f            	clrw	x
 406  0089 89            	pushw	x
 407  008a ae0000        	ldw	x,#L56
 408  008d cd0000        	call	_assert_failed
 410  0090 5b04          	addw	sp,#4
 411  0092               L63:
 412                     ; 107     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 414  0092 7b02          	ld	a,(OFST+2,sp)
 415  0094 2711          	jreq	L64
 416  0096 4a            	dec	a
 417  0097 270e          	jreq	L64
 418  0099 ae006b        	ldw	x,#107
 419  009c 89            	pushw	x
 420  009d 5f            	clrw	x
 421  009e 89            	pushw	x
 422  009f ae0000        	ldw	x,#L56
 423  00a2 cd0000        	call	_assert_failed
 425  00a5 5b04          	addw	sp,#4
 426  00a7               L64:
 427                     ; 109     if (NewState != DISABLE)
 429  00a7 7b02          	ld	a,(OFST+2,sp)
 430  00a9 2707          	jreq	L151
 431                     ; 112         TIM4->IER |= (uint8_t)TIM4_IT;
 433  00ab c65341        	ld	a,21313
 434  00ae 1a01          	or	a,(OFST+1,sp)
 436  00b0 2006          	jra	L351
 437  00b2               L151:
 438                     ; 117         TIM4->IER &= (uint8_t)(~TIM4_IT);
 440  00b2 7b01          	ld	a,(OFST+1,sp)
 441  00b4 43            	cpl	a
 442  00b5 c45341        	and	a,21313
 443  00b8               L351:
 444  00b8 c75341        	ld	21313,a
 445                     ; 119 }
 448  00bb 85            	popw	x
 449  00bc 81            	ret	
 486                     ; 127 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 486                     ; 128 {
 487                     	switch	.text
 488  00bd               _TIM4_UpdateDisableConfig:
 490  00bd 88            	push	a
 491       00000000      OFST:	set	0
 494                     ; 130     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 496  00be 4d            	tnz	a
 497  00bf 2711          	jreq	L06
 498  00c1 4a            	dec	a
 499  00c2 270e          	jreq	L06
 500  00c4 ae0082        	ldw	x,#130
 501  00c7 89            	pushw	x
 502  00c8 5f            	clrw	x
 503  00c9 89            	pushw	x
 504  00ca ae0000        	ldw	x,#L56
 505  00cd cd0000        	call	_assert_failed
 507  00d0 5b04          	addw	sp,#4
 508  00d2               L06:
 509                     ; 133     if (NewState != DISABLE)
 511  00d2 7b01          	ld	a,(OFST+1,sp)
 512  00d4 2706          	jreq	L371
 513                     ; 135         TIM4->CR1 |= TIM4_CR1_UDIS;
 515  00d6 72125340      	bset	21312,#1
 517  00da 2004          	jra	L571
 518  00dc               L371:
 519                     ; 139         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 521  00dc 72135340      	bres	21312,#1
 522  00e0               L571:
 523                     ; 141 }
 526  00e0 84            	pop	a
 527  00e1 81            	ret	
 586                     ; 151 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 586                     ; 152 {
 587                     	switch	.text
 588  00e2               _TIM4_UpdateRequestConfig:
 590  00e2 88            	push	a
 591       00000000      OFST:	set	0
 594                     ; 154     assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 596  00e3 4d            	tnz	a
 597  00e4 2711          	jreq	L27
 598  00e6 4a            	dec	a
 599  00e7 270e          	jreq	L27
 600  00e9 ae009a        	ldw	x,#154
 601  00ec 89            	pushw	x
 602  00ed 5f            	clrw	x
 603  00ee 89            	pushw	x
 604  00ef ae0000        	ldw	x,#L56
 605  00f2 cd0000        	call	_assert_failed
 607  00f5 5b04          	addw	sp,#4
 608  00f7               L27:
 609                     ; 157     if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 611  00f7 7b01          	ld	a,(OFST+1,sp)
 612  00f9 2706          	jreq	L522
 613                     ; 159         TIM4->CR1 |= TIM4_CR1_URS;
 615  00fb 72145340      	bset	21312,#2
 617  00ff 2004          	jra	L722
 618  0101               L522:
 619                     ; 163         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 621  0101 72155340      	bres	21312,#2
 622  0105               L722:
 623                     ; 165 }
 626  0105 84            	pop	a
 627  0106 81            	ret	
 685                     ; 175 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 685                     ; 176 {
 686                     	switch	.text
 687  0107               _TIM4_SelectOnePulseMode:
 689  0107 88            	push	a
 690       00000000      OFST:	set	0
 693                     ; 178     assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 695  0108 a101          	cp	a,#1
 696  010a 2711          	jreq	L401
 697  010c 4d            	tnz	a
 698  010d 270e          	jreq	L401
 699  010f ae00b2        	ldw	x,#178
 700  0112 89            	pushw	x
 701  0113 5f            	clrw	x
 702  0114 89            	pushw	x
 703  0115 ae0000        	ldw	x,#L56
 704  0118 cd0000        	call	_assert_failed
 706  011b 5b04          	addw	sp,#4
 707  011d               L401:
 708                     ; 181     if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 710  011d 7b01          	ld	a,(OFST+1,sp)
 711  011f 2706          	jreq	L752
 712                     ; 183         TIM4->CR1 |= TIM4_CR1_OPM;
 714  0121 72165340      	bset	21312,#3
 716  0125 2004          	jra	L162
 717  0127               L752:
 718                     ; 187         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 720  0127 72175340      	bres	21312,#3
 721  012b               L162:
 722                     ; 190 }
 725  012b 84            	pop	a
 726  012c 81            	ret	
 795                     ; 212 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 795                     ; 213 {
 796                     	switch	.text
 797  012d               _TIM4_PrescalerConfig:
 799  012d 89            	pushw	x
 800       00000000      OFST:	set	0
 803                     ; 215     assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 805  012e 9f            	ld	a,xl
 806  012f 4d            	tnz	a
 807  0130 2712          	jreq	L611
 808  0132 9f            	ld	a,xl
 809  0133 4a            	dec	a
 810  0134 270e          	jreq	L611
 811  0136 ae00d7        	ldw	x,#215
 812  0139 89            	pushw	x
 813  013a 5f            	clrw	x
 814  013b 89            	pushw	x
 815  013c ae0000        	ldw	x,#L56
 816  013f cd0000        	call	_assert_failed
 818  0142 5b04          	addw	sp,#4
 819  0144               L611:
 820                     ; 216     assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 822  0144 7b01          	ld	a,(OFST+1,sp)
 823  0146 272c          	jreq	L621
 824  0148 a101          	cp	a,#1
 825  014a 2728          	jreq	L621
 826  014c a102          	cp	a,#2
 827  014e 2724          	jreq	L621
 828  0150 a103          	cp	a,#3
 829  0152 2720          	jreq	L621
 830  0154 a104          	cp	a,#4
 831  0156 271c          	jreq	L621
 832  0158 a105          	cp	a,#5
 833  015a 2718          	jreq	L621
 834  015c a106          	cp	a,#6
 835  015e 2714          	jreq	L621
 836  0160 a107          	cp	a,#7
 837  0162 2710          	jreq	L621
 838  0164 ae00d8        	ldw	x,#216
 839  0167 89            	pushw	x
 840  0168 5f            	clrw	x
 841  0169 89            	pushw	x
 842  016a ae0000        	ldw	x,#L56
 843  016d cd0000        	call	_assert_failed
 845  0170 5b04          	addw	sp,#4
 846  0172 7b01          	ld	a,(OFST+1,sp)
 847  0174               L621:
 848                     ; 219     TIM4->PSCR = (uint8_t)Prescaler;
 850  0174 c75345        	ld	21317,a
 851                     ; 222     TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 853  0177 7b02          	ld	a,(OFST+2,sp)
 854  0179 c75343        	ld	21315,a
 855                     ; 223 }
 858  017c 85            	popw	x
 859  017d 81            	ret	
 896                     ; 231 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 896                     ; 232 {
 897                     	switch	.text
 898  017e               _TIM4_ARRPreloadConfig:
 900  017e 88            	push	a
 901       00000000      OFST:	set	0
 904                     ; 234     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 906  017f 4d            	tnz	a
 907  0180 2711          	jreq	L041
 908  0182 4a            	dec	a
 909  0183 270e          	jreq	L041
 910  0185 ae00ea        	ldw	x,#234
 911  0188 89            	pushw	x
 912  0189 5f            	clrw	x
 913  018a 89            	pushw	x
 914  018b ae0000        	ldw	x,#L56
 915  018e cd0000        	call	_assert_failed
 917  0191 5b04          	addw	sp,#4
 918  0193               L041:
 919                     ; 237     if (NewState != DISABLE)
 921  0193 7b01          	ld	a,(OFST+1,sp)
 922  0195 2706          	jreq	L333
 923                     ; 239         TIM4->CR1 |= TIM4_CR1_ARPE;
 925  0197 721e5340      	bset	21312,#7
 927  019b 2004          	jra	L533
 928  019d               L333:
 929                     ; 243         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 931  019d 721f5340      	bres	21312,#7
 932  01a1               L533:
 933                     ; 245 }
 936  01a1 84            	pop	a
 937  01a2 81            	ret	
 987                     ; 254 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
 987                     ; 255 {
 988                     	switch	.text
 989  01a3               _TIM4_GenerateEvent:
 991  01a3 88            	push	a
 992       00000000      OFST:	set	0
 995                     ; 257     assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
 997  01a4 4a            	dec	a
 998  01a5 270e          	jreq	L051
 999  01a7 ae0101        	ldw	x,#257
1000  01aa 89            	pushw	x
1001  01ab 5f            	clrw	x
1002  01ac 89            	pushw	x
1003  01ad ae0000        	ldw	x,#L56
1004  01b0 cd0000        	call	_assert_failed
1006  01b3 5b04          	addw	sp,#4
1007  01b5               L051:
1008                     ; 260     TIM4->EGR = (uint8_t)(TIM4_EventSource);
1010  01b5 7b01          	ld	a,(OFST+1,sp)
1011  01b7 c75343        	ld	21315,a
1012                     ; 261 }
1015  01ba 84            	pop	a
1016  01bb 81            	ret	
1048                     ; 270 void TIM4_SetCounter(uint8_t Counter)
1048                     ; 271 {
1049                     	switch	.text
1050  01bc               _TIM4_SetCounter:
1054                     ; 273     TIM4->CNTR = (uint8_t)(Counter);
1056  01bc c75344        	ld	21316,a
1057                     ; 274 }
1060  01bf 81            	ret	
1092                     ; 283 void TIM4_SetAutoreload(uint8_t Autoreload)
1092                     ; 284 {
1093                     	switch	.text
1094  01c0               _TIM4_SetAutoreload:
1098                     ; 286     TIM4->ARR = (uint8_t)(Autoreload);
1100  01c0 c75346        	ld	21318,a
1101                     ; 287 }
1104  01c3 81            	ret	
1127                     ; 294 uint8_t TIM4_GetCounter(void)
1127                     ; 295 {
1128                     	switch	.text
1129  01c4               _TIM4_GetCounter:
1133                     ; 297     return (uint8_t)(TIM4->CNTR);
1135  01c4 c65344        	ld	a,21316
1138  01c7 81            	ret	
1162                     ; 305 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
1162                     ; 306 {
1163                     	switch	.text
1164  01c8               _TIM4_GetPrescaler:
1168                     ; 308     return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
1170  01c8 c65345        	ld	a,21317
1173  01cb 81            	ret	
1253                     ; 318 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1253                     ; 319 {
1254                     	switch	.text
1255  01cc               _TIM4_GetFlagStatus:
1257  01cc 88            	push	a
1258  01cd 88            	push	a
1259       00000001      OFST:	set	1
1262                     ; 320     FlagStatus bitstatus = RESET;
1264                     ; 323     assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1266  01ce 4a            	dec	a
1267  01cf 270e          	jreq	L071
1268  01d1 ae0143        	ldw	x,#323
1269  01d4 89            	pushw	x
1270  01d5 5f            	clrw	x
1271  01d6 89            	pushw	x
1272  01d7 ae0000        	ldw	x,#L56
1273  01da cd0000        	call	_assert_failed
1275  01dd 5b04          	addw	sp,#4
1276  01df               L071:
1277                     ; 325   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1279  01df c65342        	ld	a,21314
1280  01e2 1502          	bcp	a,(OFST+1,sp)
1281  01e4 2704          	jreq	L374
1282                     ; 327     bitstatus = SET;
1284  01e6 a601          	ld	a,#1
1286  01e8 2001          	jra	L574
1287  01ea               L374:
1288                     ; 331     bitstatus = RESET;
1290  01ea 4f            	clr	a
1291  01eb               L574:
1292                     ; 333   return ((FlagStatus)bitstatus);
1296  01eb 85            	popw	x
1297  01ec 81            	ret	
1333                     ; 343 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1333                     ; 344 {
1334                     	switch	.text
1335  01ed               _TIM4_ClearFlag:
1337  01ed 88            	push	a
1338       00000000      OFST:	set	0
1341                     ; 346     assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1343  01ee 4a            	dec	a
1344  01ef 270e          	jreq	L002
1345  01f1 ae015a        	ldw	x,#346
1346  01f4 89            	pushw	x
1347  01f5 5f            	clrw	x
1348  01f6 89            	pushw	x
1349  01f7 ae0000        	ldw	x,#L56
1350  01fa cd0000        	call	_assert_failed
1352  01fd 5b04          	addw	sp,#4
1353  01ff               L002:
1354                     ; 349     TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1356  01ff 7b01          	ld	a,(OFST+1,sp)
1357  0201 43            	cpl	a
1358  0202 c75342        	ld	21314,a
1359                     ; 351 }
1362  0205 84            	pop	a
1363  0206 81            	ret	
1424                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1424                     ; 361 {
1425                     	switch	.text
1426  0207               _TIM4_GetITStatus:
1428  0207 88            	push	a
1429  0208 89            	pushw	x
1430       00000002      OFST:	set	2
1433                     ; 362     ITStatus bitstatus = RESET;
1435                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1439                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1441  0209 4a            	dec	a
1442  020a 270e          	jreq	L012
1443  020c ae016f        	ldw	x,#367
1444  020f 89            	pushw	x
1445  0210 5f            	clrw	x
1446  0211 89            	pushw	x
1447  0212 ae0000        	ldw	x,#L56
1448  0215 cd0000        	call	_assert_failed
1450  0218 5b04          	addw	sp,#4
1451  021a               L012:
1452                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1454  021a c65342        	ld	a,21314
1455  021d 1403          	and	a,(OFST+1,sp)
1456  021f 6b01          	ld	(OFST-1,sp),a
1457                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1459  0221 c65341        	ld	a,21313
1460  0224 1403          	and	a,(OFST+1,sp)
1461  0226 6b02          	ld	(OFST+0,sp),a
1462                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1464  0228 7b01          	ld	a,(OFST-1,sp)
1465  022a 2708          	jreq	L345
1467  022c 7b02          	ld	a,(OFST+0,sp)
1468  022e 2704          	jreq	L345
1469                     ; 375     bitstatus = (ITStatus)SET;
1471  0230 a601          	ld	a,#1
1473  0232 2001          	jra	L545
1474  0234               L345:
1475                     ; 379     bitstatus = (ITStatus)RESET;
1477  0234 4f            	clr	a
1478  0235               L545:
1479                     ; 381   return ((ITStatus)bitstatus);
1483  0235 5b03          	addw	sp,#3
1484  0237 81            	ret	
1521                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1521                     ; 392 {
1522                     	switch	.text
1523  0238               _TIM4_ClearITPendingBit:
1525  0238 88            	push	a
1526       00000000      OFST:	set	0
1529                     ; 394     assert_param(IS_TIM4_IT_OK(TIM4_IT));
1531  0239 4a            	dec	a
1532  023a 270e          	jreq	L022
1533  023c ae018a        	ldw	x,#394
1534  023f 89            	pushw	x
1535  0240 5f            	clrw	x
1536  0241 89            	pushw	x
1537  0242 ae0000        	ldw	x,#L56
1538  0245 cd0000        	call	_assert_failed
1540  0248 5b04          	addw	sp,#4
1541  024a               L022:
1542                     ; 397     TIM4->SR1 = (uint8_t)(~TIM4_IT);
1544  024a 7b01          	ld	a,(OFST+1,sp)
1545  024c 43            	cpl	a
1546  024d c75342        	ld	21314,a
1547                     ; 398 }
1550  0250 84            	pop	a
1551  0251 81            	ret	
1564                     	xdef	_TIM4_ClearITPendingBit
1565                     	xdef	_TIM4_GetITStatus
1566                     	xdef	_TIM4_ClearFlag
1567                     	xdef	_TIM4_GetFlagStatus
1568                     	xdef	_TIM4_GetPrescaler
1569                     	xdef	_TIM4_GetCounter
1570                     	xdef	_TIM4_SetAutoreload
1571                     	xdef	_TIM4_SetCounter
1572                     	xdef	_TIM4_GenerateEvent
1573                     	xdef	_TIM4_ARRPreloadConfig
1574                     	xdef	_TIM4_PrescalerConfig
1575                     	xdef	_TIM4_SelectOnePulseMode
1576                     	xdef	_TIM4_UpdateRequestConfig
1577                     	xdef	_TIM4_UpdateDisableConfig
1578                     	xdef	_TIM4_ITConfig
1579                     	xdef	_TIM4_Cmd
1580                     	xdef	_TIM4_TimeBaseInit
1581                     	xdef	_TIM4_DeInit
1582                     	xref	_assert_failed
1583                     .const:	section	.text
1584  0000               L56:
1585  0000 6c6962726172  	dc.b	"libraries\src\stm8"
1586  0012 735f74696d34  	dc.b	"s_tim4.c",0
1606                     	end
