   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
   4                     ; Optimizer V4.4.7 - 05 Oct 2017
  46                     ; 44 void SPI_DeInit(void)
  46                     ; 45 {
  48                     	switch	.text
  49  0000               _SPI_DeInit:
  53                     ; 46     SPI->CR1    = SPI_CR1_RESET_VALUE;
  55  0000 725f5200      	clr	20992
  56                     ; 47     SPI->CR2    = SPI_CR2_RESET_VALUE;
  58  0004 725f5201      	clr	20993
  59                     ; 48     SPI->ICR    = SPI_ICR_RESET_VALUE;
  61  0008 725f5202      	clr	20994
  62                     ; 49     SPI->SR     = SPI_SR_RESET_VALUE;
  64  000c 35025203      	mov	20995,#2
  65                     ; 50     SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  67  0010 35075205      	mov	20997,#7
  68                     ; 51 }
  71  0014 81            	ret	
 386                     ; 72 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 386                     ; 73 {
 387                     	switch	.text
 388  0015               _SPI_Init:
 390  0015 89            	pushw	x
 391  0016 88            	push	a
 392       00000001      OFST:	set	1
 395                     ; 75     assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 397  0017 9e            	ld	a,xh
 398  0018 4d            	tnz	a
 399  0019 2713          	jreq	L41
 400  001b 9e            	ld	a,xh
 401  001c a180          	cp	a,#128
 402  001e 270e          	jreq	L41
 403  0020 ae004b        	ldw	x,#75
 404  0023 89            	pushw	x
 405  0024 5f            	clrw	x
 406  0025 89            	pushw	x
 407  0026 ae0000        	ldw	x,#L102
 408  0029 cd0000        	call	_assert_failed
 410  002c 5b04          	addw	sp,#4
 411  002e               L41:
 412                     ; 76     assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 414  002e 7b03          	ld	a,(OFST+2,sp)
 415  0030 272a          	jreq	L42
 416  0032 a108          	cp	a,#8
 417  0034 2726          	jreq	L42
 418  0036 a110          	cp	a,#16
 419  0038 2722          	jreq	L42
 420  003a a118          	cp	a,#24
 421  003c 271e          	jreq	L42
 422  003e a120          	cp	a,#32
 423  0040 271a          	jreq	L42
 424  0042 a128          	cp	a,#40
 425  0044 2716          	jreq	L42
 426  0046 a130          	cp	a,#48
 427  0048 2712          	jreq	L42
 428  004a a138          	cp	a,#56
 429  004c 270e          	jreq	L42
 430  004e ae004c        	ldw	x,#76
 431  0051 89            	pushw	x
 432  0052 5f            	clrw	x
 433  0053 89            	pushw	x
 434  0054 ae0000        	ldw	x,#L102
 435  0057 cd0000        	call	_assert_failed
 437  005a 5b04          	addw	sp,#4
 438  005c               L42:
 439                     ; 77     assert_param(IS_SPI_MODE_OK(Mode));
 441  005c 7b06          	ld	a,(OFST+5,sp)
 442  005e a104          	cp	a,#4
 443  0060 2712          	jreq	L43
 444  0062 7b06          	ld	a,(OFST+5,sp)
 445  0064 270e          	jreq	L43
 446  0066 ae004d        	ldw	x,#77
 447  0069 89            	pushw	x
 448  006a 5f            	clrw	x
 449  006b 89            	pushw	x
 450  006c ae0000        	ldw	x,#L102
 451  006f cd0000        	call	_assert_failed
 453  0072 5b04          	addw	sp,#4
 454  0074               L43:
 455                     ; 78     assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 457  0074 7b07          	ld	a,(OFST+6,sp)
 458  0076 2712          	jreq	L44
 459  0078 a102          	cp	a,#2
 460  007a 270e          	jreq	L44
 461  007c ae004e        	ldw	x,#78
 462  007f 89            	pushw	x
 463  0080 5f            	clrw	x
 464  0081 89            	pushw	x
 465  0082 ae0000        	ldw	x,#L102
 466  0085 cd0000        	call	_assert_failed
 468  0088 5b04          	addw	sp,#4
 469  008a               L44:
 470                     ; 79     assert_param(IS_SPI_PHASE_OK(ClockPhase));
 472  008a 7b08          	ld	a,(OFST+7,sp)
 473  008c 2711          	jreq	L45
 474  008e 4a            	dec	a
 475  008f 270e          	jreq	L45
 476  0091 ae004f        	ldw	x,#79
 477  0094 89            	pushw	x
 478  0095 5f            	clrw	x
 479  0096 89            	pushw	x
 480  0097 ae0000        	ldw	x,#L102
 481  009a cd0000        	call	_assert_failed
 483  009d 5b04          	addw	sp,#4
 484  009f               L45:
 485                     ; 80     assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 487  009f 7b09          	ld	a,(OFST+8,sp)
 488  00a1 271a          	jreq	L46
 489  00a3 a104          	cp	a,#4
 490  00a5 2716          	jreq	L46
 491  00a7 a180          	cp	a,#128
 492  00a9 2712          	jreq	L46
 493  00ab a1c0          	cp	a,#192
 494  00ad 270e          	jreq	L46
 495  00af ae0050        	ldw	x,#80
 496  00b2 89            	pushw	x
 497  00b3 5f            	clrw	x
 498  00b4 89            	pushw	x
 499  00b5 ae0000        	ldw	x,#L102
 500  00b8 cd0000        	call	_assert_failed
 502  00bb 5b04          	addw	sp,#4
 503  00bd               L46:
 504                     ; 81     assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 506  00bd 7b0a          	ld	a,(OFST+9,sp)
 507  00bf a102          	cp	a,#2
 508  00c1 2712          	jreq	L47
 509  00c3 7b0a          	ld	a,(OFST+9,sp)
 510  00c5 270e          	jreq	L47
 511  00c7 ae0051        	ldw	x,#81
 512  00ca 89            	pushw	x
 513  00cb 5f            	clrw	x
 514  00cc 89            	pushw	x
 515  00cd ae0000        	ldw	x,#L102
 516  00d0 cd0000        	call	_assert_failed
 518  00d3 5b04          	addw	sp,#4
 519  00d5               L47:
 520                     ; 82     assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 522  00d5 7b0b          	ld	a,(OFST+10,sp)
 523  00d7 260e          	jrne	L201
 524  00d9 ae0052        	ldw	x,#82
 525  00dc 89            	pushw	x
 526  00dd 5f            	clrw	x
 527  00de 89            	pushw	x
 528  00df ae0000        	ldw	x,#L102
 529  00e2 cd0000        	call	_assert_failed
 531  00e5 5b04          	addw	sp,#4
 532  00e7               L201:
 533                     ; 85     SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 533                     ; 86                     (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 535  00e7 7b07          	ld	a,(OFST+6,sp)
 536  00e9 1a08          	or	a,(OFST+7,sp)
 537  00eb 6b01          	ld	(OFST+0,sp),a
 539  00ed 7b02          	ld	a,(OFST+1,sp)
 540  00ef 1a03          	or	a,(OFST+2,sp)
 541  00f1 1a01          	or	a,(OFST+0,sp)
 542  00f3 c75200        	ld	20992,a
 543                     ; 89     SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 545  00f6 7b09          	ld	a,(OFST+8,sp)
 546  00f8 1a0a          	or	a,(OFST+9,sp)
 547  00fa c75201        	ld	20993,a
 548                     ; 91     if (Mode == SPI_MODE_MASTER)
 550  00fd 7b06          	ld	a,(OFST+5,sp)
 551  00ff a104          	cp	a,#4
 552  0101 2606          	jrne	L302
 553                     ; 93         SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 555  0103 72105201      	bset	20993,#0
 557  0107 2004          	jra	L502
 558  0109               L302:
 559                     ; 97         SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 561  0109 72115201      	bres	20993,#0
 562  010d               L502:
 563                     ; 101     SPI->CR1 |= (uint8_t)(Mode);
 565  010d c65200        	ld	a,20992
 566  0110 1a06          	or	a,(OFST+5,sp)
 567  0112 c75200        	ld	20992,a
 568                     ; 104     SPI->CRCPR = (uint8_t)CRCPolynomial;
 570  0115 7b0b          	ld	a,(OFST+10,sp)
 571  0117 c75205        	ld	20997,a
 572                     ; 105 }
 575  011a 5b03          	addw	sp,#3
 576  011c 81            	ret	
 632                     ; 113 void SPI_Cmd(FunctionalState NewState)
 632                     ; 114 {
 633                     	switch	.text
 634  011d               _SPI_Cmd:
 636  011d 88            	push	a
 637       00000000      OFST:	set	0
 640                     ; 116     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 642  011e 4d            	tnz	a
 643  011f 2711          	jreq	L411
 644  0121 4a            	dec	a
 645  0122 270e          	jreq	L411
 646  0124 ae0074        	ldw	x,#116
 647  0127 89            	pushw	x
 648  0128 5f            	clrw	x
 649  0129 89            	pushw	x
 650  012a ae0000        	ldw	x,#L102
 651  012d cd0000        	call	_assert_failed
 653  0130 5b04          	addw	sp,#4
 654  0132               L411:
 655                     ; 118     if (NewState != DISABLE)
 657  0132 7b01          	ld	a,(OFST+1,sp)
 658  0134 2706          	jreq	L532
 659                     ; 120         SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 661  0136 721c5200      	bset	20992,#6
 663  013a 2004          	jra	L732
 664  013c               L532:
 665                     ; 124         SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 667  013c 721d5200      	bres	20992,#6
 668  0140               L732:
 669                     ; 126 }
 672  0140 84            	pop	a
 673  0141 81            	ret	
 781                     ; 135 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 781                     ; 136 {
 782                     	switch	.text
 783  0142               _SPI_ITConfig:
 785  0142 89            	pushw	x
 786  0143 88            	push	a
 787       00000001      OFST:	set	1
 790                     ; 137     uint8_t itpos = 0;
 792                     ; 139     assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 794  0144 9e            	ld	a,xh
 795  0145 a117          	cp	a,#23
 796  0147 271d          	jreq	L621
 797  0149 9e            	ld	a,xh
 798  014a a106          	cp	a,#6
 799  014c 2718          	jreq	L621
 800  014e 9e            	ld	a,xh
 801  014f a105          	cp	a,#5
 802  0151 2713          	jreq	L621
 803  0153 9e            	ld	a,xh
 804  0154 a134          	cp	a,#52
 805  0156 270e          	jreq	L621
 806  0158 ae008b        	ldw	x,#139
 807  015b 89            	pushw	x
 808  015c 5f            	clrw	x
 809  015d 89            	pushw	x
 810  015e ae0000        	ldw	x,#L102
 811  0161 cd0000        	call	_assert_failed
 813  0164 5b04          	addw	sp,#4
 814  0166               L621:
 815                     ; 140     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 817  0166 7b03          	ld	a,(OFST+2,sp)
 818  0168 2711          	jreq	L631
 819  016a 4a            	dec	a
 820  016b 270e          	jreq	L631
 821  016d ae008c        	ldw	x,#140
 822  0170 89            	pushw	x
 823  0171 5f            	clrw	x
 824  0172 89            	pushw	x
 825  0173 ae0000        	ldw	x,#L102
 826  0176 cd0000        	call	_assert_failed
 828  0179 5b04          	addw	sp,#4
 829  017b               L631:
 830                     ; 143     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 832  017b 7b02          	ld	a,(OFST+1,sp)
 833  017d a40f          	and	a,#15
 834  017f 5f            	clrw	x
 835  0180 97            	ld	xl,a
 836  0181 a601          	ld	a,#1
 837  0183 5d            	tnzw	x
 838  0184 2704          	jreq	L241
 839  0186               L441:
 840  0186 48            	sll	a
 841  0187 5a            	decw	x
 842  0188 26fc          	jrne	L441
 843  018a               L241:
 844  018a 6b01          	ld	(OFST+0,sp),a
 846                     ; 145     if (NewState != DISABLE)
 848  018c 0d03          	tnz	(OFST+2,sp)
 849  018e 2707          	jreq	L703
 850                     ; 147         SPI->ICR |= itpos; /* Enable interrupt*/
 852  0190 c65202        	ld	a,20994
 853  0193 1a01          	or	a,(OFST+0,sp)
 855  0195 2004          	jra	L113
 856  0197               L703:
 857                     ; 151         SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 859  0197 43            	cpl	a
 860  0198 c45202        	and	a,20994
 861  019b               L113:
 862  019b c75202        	ld	20994,a
 863                     ; 153 }
 866  019e 5b03          	addw	sp,#3
 867  01a0 81            	ret	
 899                     ; 159 void SPI_SendData(uint8_t Data)
 899                     ; 160 {
 900                     	switch	.text
 901  01a1               _SPI_SendData:
 905                     ; 161     SPI->DR = Data; /* Write in the DR register the data to be sent*/
 907  01a1 c75204        	ld	20996,a
 908                     ; 162 }
 911  01a4 81            	ret	
 934                     ; 169 uint8_t SPI_ReceiveData(void)
 934                     ; 170 {
 935                     	switch	.text
 936  01a5               _SPI_ReceiveData:
 940                     ; 171     return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 942  01a5 c65204        	ld	a,20996
 945  01a8 81            	ret	
 982                     ; 180 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
 982                     ; 181 {
 983                     	switch	.text
 984  01a9               _SPI_NSSInternalSoftwareCmd:
 986  01a9 88            	push	a
 987       00000000      OFST:	set	0
 990                     ; 183     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 992  01aa 4d            	tnz	a
 993  01ab 2711          	jreq	L061
 994  01ad 4a            	dec	a
 995  01ae 270e          	jreq	L061
 996  01b0 ae00b7        	ldw	x,#183
 997  01b3 89            	pushw	x
 998  01b4 5f            	clrw	x
 999  01b5 89            	pushw	x
1000  01b6 ae0000        	ldw	x,#L102
1001  01b9 cd0000        	call	_assert_failed
1003  01bc 5b04          	addw	sp,#4
1004  01be               L061:
1005                     ; 185     if (NewState != DISABLE)
1007  01be 7b01          	ld	a,(OFST+1,sp)
1008  01c0 2706          	jreq	L553
1009                     ; 187         SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
1011  01c2 72105201      	bset	20993,#0
1013  01c6 2004          	jra	L753
1014  01c8               L553:
1015                     ; 191         SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
1017  01c8 72115201      	bres	20993,#0
1018  01cc               L753:
1019                     ; 193 }
1022  01cc 84            	pop	a
1023  01cd 81            	ret	
1046                     ; 200 void SPI_TransmitCRC(void)
1046                     ; 201 {
1047                     	switch	.text
1048  01ce               _SPI_TransmitCRC:
1052                     ; 202     SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1054  01ce 72185201      	bset	20993,#4
1055                     ; 203 }
1058  01d2 81            	ret	
1095                     ; 211 void SPI_CalculateCRCCmd(FunctionalState NewState)
1095                     ; 212 {
1096                     	switch	.text
1097  01d3               _SPI_CalculateCRCCmd:
1099  01d3 88            	push	a
1100       00000000      OFST:	set	0
1103                     ; 214     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1105  01d4 4d            	tnz	a
1106  01d5 2711          	jreq	L471
1107  01d7 4a            	dec	a
1108  01d8 270e          	jreq	L471
1109  01da ae00d6        	ldw	x,#214
1110  01dd 89            	pushw	x
1111  01de 5f            	clrw	x
1112  01df 89            	pushw	x
1113  01e0 ae0000        	ldw	x,#L102
1114  01e3 cd0000        	call	_assert_failed
1116  01e6 5b04          	addw	sp,#4
1117  01e8               L471:
1118                     ; 216     if (NewState != DISABLE)
1120  01e8 7b01          	ld	a,(OFST+1,sp)
1121  01ea 2706          	jreq	L704
1122                     ; 218         SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1124  01ec 721a5201      	bset	20993,#5
1126  01f0 2004          	jra	L114
1127  01f2               L704:
1128                     ; 222         SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1130  01f2 721b5201      	bres	20993,#5
1131  01f6               L114:
1132                     ; 224 }
1135  01f6 84            	pop	a
1136  01f7 81            	ret	
1199                     ; 231 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1199                     ; 232 {
1200                     	switch	.text
1201  01f8               _SPI_GetCRC:
1203  01f8 88            	push	a
1204  01f9 88            	push	a
1205       00000001      OFST:	set	1
1208                     ; 233     uint8_t crcreg = 0;
1210                     ; 236     assert_param(IS_SPI_CRC_OK(SPI_CRC));
1212  01fa a101          	cp	a,#1
1213  01fc 2711          	jreq	L602
1214  01fe 4d            	tnz	a
1215  01ff 270e          	jreq	L602
1216  0201 ae00ec        	ldw	x,#236
1217  0204 89            	pushw	x
1218  0205 5f            	clrw	x
1219  0206 89            	pushw	x
1220  0207 ae0000        	ldw	x,#L102
1221  020a cd0000        	call	_assert_failed
1223  020d 5b04          	addw	sp,#4
1224  020f               L602:
1225                     ; 238     if (SPI_CRC != SPI_CRC_RX)
1227  020f 7b02          	ld	a,(OFST+1,sp)
1228  0211 2705          	jreq	L344
1229                     ; 240         crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1231  0213 c65207        	ld	a,20999
1234  0216 2003          	jra	L544
1235  0218               L344:
1236                     ; 244         crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1238  0218 c65206        	ld	a,20998
1240  021b               L544:
1241                     ; 248     return crcreg;
1245  021b 85            	popw	x
1246  021c 81            	ret	
1271                     ; 256 void SPI_ResetCRC(void)
1271                     ; 257 {
1272                     	switch	.text
1273  021d               _SPI_ResetCRC:
1277                     ; 260     SPI_CalculateCRCCmd(ENABLE);
1279  021d a601          	ld	a,#1
1280  021f adb2          	call	_SPI_CalculateCRCCmd
1282                     ; 263     SPI_Cmd(ENABLE);
1284  0221 a601          	ld	a,#1
1286                     ; 264 }
1289  0223 cc011d        	jp	_SPI_Cmd
1313                     ; 271 uint8_t SPI_GetCRCPolynomial(void)
1313                     ; 272 {
1314                     	switch	.text
1315  0226               _SPI_GetCRCPolynomial:
1319                     ; 273     return SPI->CRCPR; /* Return the CRC polynomial register */
1321  0226 c65205        	ld	a,20997
1324  0229 81            	ret	
1381                     ; 281 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1381                     ; 282 {
1382                     	switch	.text
1383  022a               _SPI_BiDirectionalLineConfig:
1385  022a 88            	push	a
1386       00000000      OFST:	set	0
1389                     ; 284     assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1391  022b 4d            	tnz	a
1392  022c 2711          	jreq	L032
1393  022e 4a            	dec	a
1394  022f 270e          	jreq	L032
1395  0231 ae011c        	ldw	x,#284
1396  0234 89            	pushw	x
1397  0235 5f            	clrw	x
1398  0236 89            	pushw	x
1399  0237 ae0000        	ldw	x,#L102
1400  023a cd0000        	call	_assert_failed
1402  023d 5b04          	addw	sp,#4
1403  023f               L032:
1404                     ; 286     if (SPI_Direction != SPI_DIRECTION_RX)
1406  023f 7b01          	ld	a,(OFST+1,sp)
1407  0241 2706          	jreq	L515
1408                     ; 288         SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1410  0243 721c5201      	bset	20993,#6
1412  0247 2004          	jra	L715
1413  0249               L515:
1414                     ; 292         SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1416  0249 721d5201      	bres	20993,#6
1417  024d               L715:
1418                     ; 294 }
1421  024d 84            	pop	a
1422  024e 81            	ret	
1544                     ; 304 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1544                     ; 305 {
1545                     	switch	.text
1546  024f               _SPI_GetFlagStatus:
1548  024f 88            	push	a
1549  0250 88            	push	a
1550       00000001      OFST:	set	1
1553                     ; 306     FlagStatus status = RESET;
1555                     ; 308     assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1557  0251 a140          	cp	a,#64
1558  0253 2726          	jreq	L242
1559  0255 a120          	cp	a,#32
1560  0257 2722          	jreq	L242
1561  0259 a110          	cp	a,#16
1562  025b 271e          	jreq	L242
1563  025d a108          	cp	a,#8
1564  025f 271a          	jreq	L242
1565  0261 a102          	cp	a,#2
1566  0263 2716          	jreq	L242
1567  0265 a101          	cp	a,#1
1568  0267 2712          	jreq	L242
1569  0269 a180          	cp	a,#128
1570  026b 270e          	jreq	L242
1571  026d ae0134        	ldw	x,#308
1572  0270 89            	pushw	x
1573  0271 5f            	clrw	x
1574  0272 89            	pushw	x
1575  0273 ae0000        	ldw	x,#L102
1576  0276 cd0000        	call	_assert_failed
1578  0279 5b04          	addw	sp,#4
1579  027b               L242:
1580                     ; 311     if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1582  027b c65203        	ld	a,20995
1583  027e 1502          	bcp	a,(OFST+1,sp)
1584  0280 2704          	jreq	L575
1585                     ; 313         status = SET; /* SPI_FLAG is set */
1587  0282 a601          	ld	a,#1
1590  0284 2001          	jra	L775
1591  0286               L575:
1592                     ; 317         status = RESET; /* SPI_FLAG is reset*/
1594  0286 4f            	clr	a
1596  0287               L775:
1597                     ; 321     return status;
1601  0287 85            	popw	x
1602  0288 81            	ret	
1638                     ; 339 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1638                     ; 340 {
1639                     	switch	.text
1640  0289               _SPI_ClearFlag:
1642  0289 88            	push	a
1643       00000000      OFST:	set	0
1646                     ; 341     assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1648  028a a110          	cp	a,#16
1649  028c 2712          	jreq	L452
1650  028e a108          	cp	a,#8
1651  0290 270e          	jreq	L452
1652  0292 ae0155        	ldw	x,#341
1653  0295 89            	pushw	x
1654  0296 5f            	clrw	x
1655  0297 89            	pushw	x
1656  0298 ae0000        	ldw	x,#L102
1657  029b cd0000        	call	_assert_failed
1659  029e 5b04          	addw	sp,#4
1660  02a0               L452:
1661                     ; 343     SPI->SR = (uint8_t)(~SPI_FLAG);
1663  02a0 7b01          	ld	a,(OFST+1,sp)
1664  02a2 43            	cpl	a
1665  02a3 c75203        	ld	20995,a
1666                     ; 344 }
1669  02a6 84            	pop	a
1670  02a7 81            	ret	
1745                     ; 359 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1745                     ; 360 {
1746                     	switch	.text
1747  02a8               _SPI_GetITStatus:
1749  02a8 88            	push	a
1750  02a9 89            	pushw	x
1751       00000002      OFST:	set	2
1754                     ; 361     ITStatus pendingbitstatus = RESET;
1756                     ; 362     uint8_t itpos = 0;
1758                     ; 363     uint8_t itmask1 = 0;
1760                     ; 364     uint8_t itmask2 = 0;
1762                     ; 365     uint8_t enablestatus = 0;
1764                     ; 366     assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1766  02aa a165          	cp	a,#101
1767  02ac 2722          	jreq	L662
1768  02ae a155          	cp	a,#85
1769  02b0 271e          	jreq	L662
1770  02b2 a145          	cp	a,#69
1771  02b4 271a          	jreq	L662
1772  02b6 a134          	cp	a,#52
1773  02b8 2716          	jreq	L662
1774  02ba a117          	cp	a,#23
1775  02bc 2712          	jreq	L662
1776  02be a106          	cp	a,#6
1777  02c0 270e          	jreq	L662
1778  02c2 ae016e        	ldw	x,#366
1779  02c5 89            	pushw	x
1780  02c6 5f            	clrw	x
1781  02c7 89            	pushw	x
1782  02c8 ae0000        	ldw	x,#L102
1783  02cb cd0000        	call	_assert_failed
1785  02ce 5b04          	addw	sp,#4
1786  02d0               L662:
1787                     ; 368     itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1789  02d0 7b03          	ld	a,(OFST+1,sp)
1790  02d2 a40f          	and	a,#15
1791  02d4 5f            	clrw	x
1792  02d5 97            	ld	xl,a
1793  02d6 a601          	ld	a,#1
1794  02d8 5d            	tnzw	x
1795  02d9 2704          	jreq	L272
1796  02db               L472:
1797  02db 48            	sll	a
1798  02dc 5a            	decw	x
1799  02dd 26fc          	jrne	L472
1800  02df               L272:
1801  02df 6b01          	ld	(OFST-1,sp),a
1803                     ; 371     itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1805  02e1 7b03          	ld	a,(OFST+1,sp)
1806  02e3 4e            	swap	a
1807  02e4 a40f          	and	a,#15
1808  02e6 6b02          	ld	(OFST+0,sp),a
1810                     ; 373     itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1812  02e8 5f            	clrw	x
1813  02e9 97            	ld	xl,a
1814  02ea a601          	ld	a,#1
1815  02ec 5d            	tnzw	x
1816  02ed 2704          	jreq	L672
1817  02ef               L003:
1818  02ef 48            	sll	a
1819  02f0 5a            	decw	x
1820  02f1 26fc          	jrne	L003
1821  02f3               L672:
1823                     ; 375     enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1825  02f3 c45203        	and	a,20995
1826  02f6 6b02          	ld	(OFST+0,sp),a
1828                     ; 377     if (((SPI->ICR & itpos) != RESET) && enablestatus)
1830  02f8 c65202        	ld	a,20994
1831  02fb 1501          	bcp	a,(OFST-1,sp)
1832  02fd 2708          	jreq	L156
1834  02ff 7b02          	ld	a,(OFST+0,sp)
1835  0301 2704          	jreq	L156
1836                     ; 380         pendingbitstatus = SET;
1838  0303 a601          	ld	a,#1
1841  0305 2001          	jra	L356
1842  0307               L156:
1843                     ; 385         pendingbitstatus = RESET;
1845  0307 4f            	clr	a
1847  0308               L356:
1848                     ; 388     return  pendingbitstatus;
1852  0308 5b03          	addw	sp,#3
1853  030a 81            	ret	
1897                     ; 404 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1897                     ; 405 {
1898                     	switch	.text
1899  030b               _SPI_ClearITPendingBit:
1901  030b 88            	push	a
1902  030c 88            	push	a
1903       00000001      OFST:	set	1
1906                     ; 406     uint8_t itpos = 0;
1908                     ; 407     assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1910  030d a145          	cp	a,#69
1911  030f 2712          	jreq	L013
1912  0311 a134          	cp	a,#52
1913  0313 270e          	jreq	L013
1914  0315 ae0197        	ldw	x,#407
1915  0318 89            	pushw	x
1916  0319 5f            	clrw	x
1917  031a 89            	pushw	x
1918  031b ae0000        	ldw	x,#L102
1919  031e cd0000        	call	_assert_failed
1921  0321 5b04          	addw	sp,#4
1922  0323               L013:
1923                     ; 412     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
1925  0323 7b02          	ld	a,(OFST+1,sp)
1926  0325 4e            	swap	a
1927  0326 a40f          	and	a,#15
1928  0328 5f            	clrw	x
1929  0329 97            	ld	xl,a
1930  032a a601          	ld	a,#1
1931  032c 5d            	tnzw	x
1932  032d 2704          	jreq	L413
1933  032f               L613:
1934  032f 48            	sll	a
1935  0330 5a            	decw	x
1936  0331 26fc          	jrne	L613
1937  0333               L413:
1939                     ; 414     SPI->SR = (uint8_t)(~itpos);
1941  0333 43            	cpl	a
1942  0334 c75203        	ld	20995,a
1943                     ; 416 }
1946  0337 85            	popw	x
1947  0338 81            	ret	
1960                     	xdef	_SPI_ClearITPendingBit
1961                     	xdef	_SPI_GetITStatus
1962                     	xdef	_SPI_ClearFlag
1963                     	xdef	_SPI_GetFlagStatus
1964                     	xdef	_SPI_BiDirectionalLineConfig
1965                     	xdef	_SPI_GetCRCPolynomial
1966                     	xdef	_SPI_ResetCRC
1967                     	xdef	_SPI_GetCRC
1968                     	xdef	_SPI_CalculateCRCCmd
1969                     	xdef	_SPI_TransmitCRC
1970                     	xdef	_SPI_NSSInternalSoftwareCmd
1971                     	xdef	_SPI_ReceiveData
1972                     	xdef	_SPI_SendData
1973                     	xdef	_SPI_ITConfig
1974                     	xdef	_SPI_Cmd
1975                     	xdef	_SPI_Init
1976                     	xdef	_SPI_DeInit
1977                     	xref	_assert_failed
1978                     .const:	section	.text
1979  0000               L102:
1980  0000 6c6962726172  	dc.b	"libraries\src\stm8"
1981  0012 735f7370692e  	dc.b	"s_spi.c",0
2001                     	end
