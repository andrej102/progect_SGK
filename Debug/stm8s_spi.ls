   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.21 - 04 Feb 2014
   3                     ; Generator (Limited) V4.3.12 - 11 Feb 2014
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
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
 538  00ed 7b02          	ld	a,(OFST+1,sp)
 539  00ef 1a03          	or	a,(OFST+2,sp)
 540  00f1 1a01          	or	a,(OFST+0,sp)
 541  00f3 c75200        	ld	20992,a
 542                     ; 89     SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 544  00f6 7b09          	ld	a,(OFST+8,sp)
 545  00f8 1a0a          	or	a,(OFST+9,sp)
 546  00fa c75201        	ld	20993,a
 547                     ; 91     if (Mode == SPI_MODE_MASTER)
 549  00fd 7b06          	ld	a,(OFST+5,sp)
 550  00ff a104          	cp	a,#4
 551  0101 2606          	jrne	L302
 552                     ; 93         SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 554  0103 72105201      	bset	20993,#0
 556  0107 2004          	jra	L502
 557  0109               L302:
 558                     ; 97         SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 560  0109 72115201      	bres	20993,#0
 561  010d               L502:
 562                     ; 101     SPI->CR1 |= (uint8_t)(Mode);
 564  010d c65200        	ld	a,20992
 565  0110 1a06          	or	a,(OFST+5,sp)
 566  0112 c75200        	ld	20992,a
 567                     ; 104     SPI->CRCPR = (uint8_t)CRCPolynomial;
 569  0115 7b0b          	ld	a,(OFST+10,sp)
 570  0117 c75205        	ld	20997,a
 571                     ; 105 }
 574  011a 5b03          	addw	sp,#3
 575  011c 81            	ret	
 631                     ; 113 void SPI_Cmd(FunctionalState NewState)
 631                     ; 114 {
 632                     	switch	.text
 633  011d               _SPI_Cmd:
 635  011d 88            	push	a
 636       00000000      OFST:	set	0
 639                     ; 116     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 641  011e 4d            	tnz	a
 642  011f 2711          	jreq	L411
 643  0121 4a            	dec	a
 644  0122 270e          	jreq	L411
 645  0124 ae0074        	ldw	x,#116
 646  0127 89            	pushw	x
 647  0128 5f            	clrw	x
 648  0129 89            	pushw	x
 649  012a ae0000        	ldw	x,#L102
 650  012d cd0000        	call	_assert_failed
 652  0130 5b04          	addw	sp,#4
 653  0132               L411:
 654                     ; 118     if (NewState != DISABLE)
 656  0132 7b01          	ld	a,(OFST+1,sp)
 657  0134 2706          	jreq	L532
 658                     ; 120         SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 660  0136 721c5200      	bset	20992,#6
 662  013a 2004          	jra	L732
 663  013c               L532:
 664                     ; 124         SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 666  013c 721d5200      	bres	20992,#6
 667  0140               L732:
 668                     ; 126 }
 671  0140 84            	pop	a
 672  0141 81            	ret	
 780                     ; 135 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 780                     ; 136 {
 781                     	switch	.text
 782  0142               _SPI_ITConfig:
 784  0142 89            	pushw	x
 785  0143 88            	push	a
 786       00000001      OFST:	set	1
 789                     ; 137     uint8_t itpos = 0;
 791                     ; 139     assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 793  0144 9e            	ld	a,xh
 794  0145 a117          	cp	a,#23
 795  0147 271d          	jreq	L621
 796  0149 9e            	ld	a,xh
 797  014a a106          	cp	a,#6
 798  014c 2718          	jreq	L621
 799  014e 9e            	ld	a,xh
 800  014f a105          	cp	a,#5
 801  0151 2713          	jreq	L621
 802  0153 9e            	ld	a,xh
 803  0154 a134          	cp	a,#52
 804  0156 270e          	jreq	L621
 805  0158 ae008b        	ldw	x,#139
 806  015b 89            	pushw	x
 807  015c 5f            	clrw	x
 808  015d 89            	pushw	x
 809  015e ae0000        	ldw	x,#L102
 810  0161 cd0000        	call	_assert_failed
 812  0164 5b04          	addw	sp,#4
 813  0166               L621:
 814                     ; 140     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 816  0166 7b03          	ld	a,(OFST+2,sp)
 817  0168 2711          	jreq	L631
 818  016a 4a            	dec	a
 819  016b 270e          	jreq	L631
 820  016d ae008c        	ldw	x,#140
 821  0170 89            	pushw	x
 822  0171 5f            	clrw	x
 823  0172 89            	pushw	x
 824  0173 ae0000        	ldw	x,#L102
 825  0176 cd0000        	call	_assert_failed
 827  0179 5b04          	addw	sp,#4
 828  017b               L631:
 829                     ; 143     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 831  017b 7b02          	ld	a,(OFST+1,sp)
 832  017d a40f          	and	a,#15
 833  017f 5f            	clrw	x
 834  0180 97            	ld	xl,a
 835  0181 a601          	ld	a,#1
 836  0183 5d            	tnzw	x
 837  0184 2704          	jreq	L241
 838  0186               L441:
 839  0186 48            	sll	a
 840  0187 5a            	decw	x
 841  0188 26fc          	jrne	L441
 842  018a               L241:
 843  018a 6b01          	ld	(OFST+0,sp),a
 844                     ; 145     if (NewState != DISABLE)
 846  018c 0d03          	tnz	(OFST+2,sp)
 847  018e 2707          	jreq	L703
 848                     ; 147         SPI->ICR |= itpos; /* Enable interrupt*/
 850  0190 c65202        	ld	a,20994
 851  0193 1a01          	or	a,(OFST+0,sp)
 853  0195 2004          	jra	L113
 854  0197               L703:
 855                     ; 151         SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 857  0197 43            	cpl	a
 858  0198 c45202        	and	a,20994
 859  019b               L113:
 860  019b c75202        	ld	20994,a
 861                     ; 153 }
 864  019e 5b03          	addw	sp,#3
 865  01a0 81            	ret	
 897                     ; 159 void SPI_SendData(uint8_t Data)
 897                     ; 160 {
 898                     	switch	.text
 899  01a1               _SPI_SendData:
 903                     ; 161     SPI->DR = Data; /* Write in the DR register the data to be sent*/
 905  01a1 c75204        	ld	20996,a
 906                     ; 162 }
 909  01a4 81            	ret	
 932                     ; 169 uint8_t SPI_ReceiveData(void)
 932                     ; 170 {
 933                     	switch	.text
 934  01a5               _SPI_ReceiveData:
 938                     ; 171     return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 940  01a5 c65204        	ld	a,20996
 943  01a8 81            	ret	
 980                     ; 180 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
 980                     ; 181 {
 981                     	switch	.text
 982  01a9               _SPI_NSSInternalSoftwareCmd:
 984  01a9 88            	push	a
 985       00000000      OFST:	set	0
 988                     ; 183     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 990  01aa 4d            	tnz	a
 991  01ab 2711          	jreq	L061
 992  01ad 4a            	dec	a
 993  01ae 270e          	jreq	L061
 994  01b0 ae00b7        	ldw	x,#183
 995  01b3 89            	pushw	x
 996  01b4 5f            	clrw	x
 997  01b5 89            	pushw	x
 998  01b6 ae0000        	ldw	x,#L102
 999  01b9 cd0000        	call	_assert_failed
1001  01bc 5b04          	addw	sp,#4
1002  01be               L061:
1003                     ; 185     if (NewState != DISABLE)
1005  01be 7b01          	ld	a,(OFST+1,sp)
1006  01c0 2706          	jreq	L553
1007                     ; 187         SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
1009  01c2 72105201      	bset	20993,#0
1011  01c6 2004          	jra	L753
1012  01c8               L553:
1013                     ; 191         SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
1015  01c8 72115201      	bres	20993,#0
1016  01cc               L753:
1017                     ; 193 }
1020  01cc 84            	pop	a
1021  01cd 81            	ret	
1044                     ; 200 void SPI_TransmitCRC(void)
1044                     ; 201 {
1045                     	switch	.text
1046  01ce               _SPI_TransmitCRC:
1050                     ; 202     SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1052  01ce 72185201      	bset	20993,#4
1053                     ; 203 }
1056  01d2 81            	ret	
1093                     ; 211 void SPI_CalculateCRCCmd(FunctionalState NewState)
1093                     ; 212 {
1094                     	switch	.text
1095  01d3               _SPI_CalculateCRCCmd:
1097  01d3 88            	push	a
1098       00000000      OFST:	set	0
1101                     ; 214     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1103  01d4 4d            	tnz	a
1104  01d5 2711          	jreq	L471
1105  01d7 4a            	dec	a
1106  01d8 270e          	jreq	L471
1107  01da ae00d6        	ldw	x,#214
1108  01dd 89            	pushw	x
1109  01de 5f            	clrw	x
1110  01df 89            	pushw	x
1111  01e0 ae0000        	ldw	x,#L102
1112  01e3 cd0000        	call	_assert_failed
1114  01e6 5b04          	addw	sp,#4
1115  01e8               L471:
1116                     ; 216     if (NewState != DISABLE)
1118  01e8 7b01          	ld	a,(OFST+1,sp)
1119  01ea 2706          	jreq	L704
1120                     ; 218         SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1122  01ec 721a5201      	bset	20993,#5
1124  01f0 2004          	jra	L114
1125  01f2               L704:
1126                     ; 222         SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1128  01f2 721b5201      	bres	20993,#5
1129  01f6               L114:
1130                     ; 224 }
1133  01f6 84            	pop	a
1134  01f7 81            	ret	
1197                     ; 231 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1197                     ; 232 {
1198                     	switch	.text
1199  01f8               _SPI_GetCRC:
1201  01f8 88            	push	a
1202  01f9 88            	push	a
1203       00000001      OFST:	set	1
1206                     ; 233     uint8_t crcreg = 0;
1208                     ; 236     assert_param(IS_SPI_CRC_OK(SPI_CRC));
1210  01fa a101          	cp	a,#1
1211  01fc 2711          	jreq	L602
1212  01fe 4d            	tnz	a
1213  01ff 270e          	jreq	L602
1214  0201 ae00ec        	ldw	x,#236
1215  0204 89            	pushw	x
1216  0205 5f            	clrw	x
1217  0206 89            	pushw	x
1218  0207 ae0000        	ldw	x,#L102
1219  020a cd0000        	call	_assert_failed
1221  020d 5b04          	addw	sp,#4
1222  020f               L602:
1223                     ; 238     if (SPI_CRC != SPI_CRC_RX)
1225  020f 7b02          	ld	a,(OFST+1,sp)
1226  0211 2705          	jreq	L344
1227                     ; 240         crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1229  0213 c65207        	ld	a,20999
1231  0216 2003          	jra	L544
1232  0218               L344:
1233                     ; 244         crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1235  0218 c65206        	ld	a,20998
1236  021b               L544:
1237                     ; 248     return crcreg;
1241  021b 85            	popw	x
1242  021c 81            	ret	
1267                     ; 256 void SPI_ResetCRC(void)
1267                     ; 257 {
1268                     	switch	.text
1269  021d               _SPI_ResetCRC:
1273                     ; 260     SPI_CalculateCRCCmd(ENABLE);
1275  021d a601          	ld	a,#1
1276  021f adb2          	call	_SPI_CalculateCRCCmd
1278                     ; 263     SPI_Cmd(ENABLE);
1280  0221 a601          	ld	a,#1
1282                     ; 264 }
1285  0223 cc011d        	jp	_SPI_Cmd
1309                     ; 271 uint8_t SPI_GetCRCPolynomial(void)
1309                     ; 272 {
1310                     	switch	.text
1311  0226               _SPI_GetCRCPolynomial:
1315                     ; 273     return SPI->CRCPR; /* Return the CRC polynomial register */
1317  0226 c65205        	ld	a,20997
1320  0229 81            	ret	
1377                     ; 281 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1377                     ; 282 {
1378                     	switch	.text
1379  022a               _SPI_BiDirectionalLineConfig:
1381  022a 88            	push	a
1382       00000000      OFST:	set	0
1385                     ; 284     assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1387  022b 4d            	tnz	a
1388  022c 2711          	jreq	L032
1389  022e 4a            	dec	a
1390  022f 270e          	jreq	L032
1391  0231 ae011c        	ldw	x,#284
1392  0234 89            	pushw	x
1393  0235 5f            	clrw	x
1394  0236 89            	pushw	x
1395  0237 ae0000        	ldw	x,#L102
1396  023a cd0000        	call	_assert_failed
1398  023d 5b04          	addw	sp,#4
1399  023f               L032:
1400                     ; 286     if (SPI_Direction != SPI_DIRECTION_RX)
1402  023f 7b01          	ld	a,(OFST+1,sp)
1403  0241 2706          	jreq	L515
1404                     ; 288         SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1406  0243 721c5201      	bset	20993,#6
1408  0247 2004          	jra	L715
1409  0249               L515:
1410                     ; 292         SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1412  0249 721d5201      	bres	20993,#6
1413  024d               L715:
1414                     ; 294 }
1417  024d 84            	pop	a
1418  024e 81            	ret	
1540                     ; 304 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1540                     ; 305 {
1541                     	switch	.text
1542  024f               _SPI_GetFlagStatus:
1544  024f 88            	push	a
1545  0250 88            	push	a
1546       00000001      OFST:	set	1
1549                     ; 306     FlagStatus status = RESET;
1551                     ; 308     assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1553  0251 a140          	cp	a,#64
1554  0253 2726          	jreq	L242
1555  0255 a120          	cp	a,#32
1556  0257 2722          	jreq	L242
1557  0259 a110          	cp	a,#16
1558  025b 271e          	jreq	L242
1559  025d a108          	cp	a,#8
1560  025f 271a          	jreq	L242
1561  0261 a102          	cp	a,#2
1562  0263 2716          	jreq	L242
1563  0265 a101          	cp	a,#1
1564  0267 2712          	jreq	L242
1565  0269 a180          	cp	a,#128
1566  026b 270e          	jreq	L242
1567  026d ae0134        	ldw	x,#308
1568  0270 89            	pushw	x
1569  0271 5f            	clrw	x
1570  0272 89            	pushw	x
1571  0273 ae0000        	ldw	x,#L102
1572  0276 cd0000        	call	_assert_failed
1574  0279 5b04          	addw	sp,#4
1575  027b               L242:
1576                     ; 311     if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1578  027b c65203        	ld	a,20995
1579  027e 1502          	bcp	a,(OFST+1,sp)
1580  0280 2704          	jreq	L575
1581                     ; 313         status = SET; /* SPI_FLAG is set */
1583  0282 a601          	ld	a,#1
1585  0284 2001          	jra	L775
1586  0286               L575:
1587                     ; 317         status = RESET; /* SPI_FLAG is reset*/
1589  0286 4f            	clr	a
1590  0287               L775:
1591                     ; 321     return status;
1595  0287 85            	popw	x
1596  0288 81            	ret	
1632                     ; 339 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1632                     ; 340 {
1633                     	switch	.text
1634  0289               _SPI_ClearFlag:
1636  0289 88            	push	a
1637       00000000      OFST:	set	0
1640                     ; 341     assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1642  028a a110          	cp	a,#16
1643  028c 2712          	jreq	L452
1644  028e a108          	cp	a,#8
1645  0290 270e          	jreq	L452
1646  0292 ae0155        	ldw	x,#341
1647  0295 89            	pushw	x
1648  0296 5f            	clrw	x
1649  0297 89            	pushw	x
1650  0298 ae0000        	ldw	x,#L102
1651  029b cd0000        	call	_assert_failed
1653  029e 5b04          	addw	sp,#4
1654  02a0               L452:
1655                     ; 343     SPI->SR = (uint8_t)(~SPI_FLAG);
1657  02a0 7b01          	ld	a,(OFST+1,sp)
1658  02a2 43            	cpl	a
1659  02a3 c75203        	ld	20995,a
1660                     ; 344 }
1663  02a6 84            	pop	a
1664  02a7 81            	ret	
1739                     ; 359 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1739                     ; 360 {
1740                     	switch	.text
1741  02a8               _SPI_GetITStatus:
1743  02a8 88            	push	a
1744  02a9 89            	pushw	x
1745       00000002      OFST:	set	2
1748                     ; 361     ITStatus pendingbitstatus = RESET;
1750                     ; 362     uint8_t itpos = 0;
1752                     ; 363     uint8_t itmask1 = 0;
1754                     ; 364     uint8_t itmask2 = 0;
1756                     ; 365     uint8_t enablestatus = 0;
1758                     ; 366     assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1760  02aa a165          	cp	a,#101
1761  02ac 2722          	jreq	L662
1762  02ae a155          	cp	a,#85
1763  02b0 271e          	jreq	L662
1764  02b2 a145          	cp	a,#69
1765  02b4 271a          	jreq	L662
1766  02b6 a134          	cp	a,#52
1767  02b8 2716          	jreq	L662
1768  02ba a117          	cp	a,#23
1769  02bc 2712          	jreq	L662
1770  02be a106          	cp	a,#6
1771  02c0 270e          	jreq	L662
1772  02c2 ae016e        	ldw	x,#366
1773  02c5 89            	pushw	x
1774  02c6 5f            	clrw	x
1775  02c7 89            	pushw	x
1776  02c8 ae0000        	ldw	x,#L102
1777  02cb cd0000        	call	_assert_failed
1779  02ce 5b04          	addw	sp,#4
1780  02d0               L662:
1781                     ; 368     itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1783  02d0 7b03          	ld	a,(OFST+1,sp)
1784  02d2 a40f          	and	a,#15
1785  02d4 5f            	clrw	x
1786  02d5 97            	ld	xl,a
1787  02d6 a601          	ld	a,#1
1788  02d8 5d            	tnzw	x
1789  02d9 2704          	jreq	L272
1790  02db               L472:
1791  02db 48            	sll	a
1792  02dc 5a            	decw	x
1793  02dd 26fc          	jrne	L472
1794  02df               L272:
1795  02df 6b01          	ld	(OFST-1,sp),a
1796                     ; 371     itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1798  02e1 7b03          	ld	a,(OFST+1,sp)
1799  02e3 4e            	swap	a
1800  02e4 a40f          	and	a,#15
1801  02e6 6b02          	ld	(OFST+0,sp),a
1802                     ; 373     itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1804  02e8 5f            	clrw	x
1805  02e9 97            	ld	xl,a
1806  02ea a601          	ld	a,#1
1807  02ec 5d            	tnzw	x
1808  02ed 2704          	jreq	L672
1809  02ef               L003:
1810  02ef 48            	sll	a
1811  02f0 5a            	decw	x
1812  02f1 26fc          	jrne	L003
1813  02f3               L672:
1814                     ; 375     enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1816  02f3 c45203        	and	a,20995
1817  02f6 6b02          	ld	(OFST+0,sp),a
1818                     ; 377     if (((SPI->ICR & itpos) != RESET) && enablestatus)
1820  02f8 c65202        	ld	a,20994
1821  02fb 1501          	bcp	a,(OFST-1,sp)
1822  02fd 2708          	jreq	L156
1824  02ff 7b02          	ld	a,(OFST+0,sp)
1825  0301 2704          	jreq	L156
1826                     ; 380         pendingbitstatus = SET;
1828  0303 a601          	ld	a,#1
1830  0305 2001          	jra	L356
1831  0307               L156:
1832                     ; 385         pendingbitstatus = RESET;
1834  0307 4f            	clr	a
1835  0308               L356:
1836                     ; 388     return  pendingbitstatus;
1840  0308 5b03          	addw	sp,#3
1841  030a 81            	ret	
1885                     ; 404 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1885                     ; 405 {
1886                     	switch	.text
1887  030b               _SPI_ClearITPendingBit:
1889  030b 88            	push	a
1890  030c 88            	push	a
1891       00000001      OFST:	set	1
1894                     ; 406     uint8_t itpos = 0;
1896                     ; 407     assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1898  030d a145          	cp	a,#69
1899  030f 2712          	jreq	L013
1900  0311 a134          	cp	a,#52
1901  0313 270e          	jreq	L013
1902  0315 ae0197        	ldw	x,#407
1903  0318 89            	pushw	x
1904  0319 5f            	clrw	x
1905  031a 89            	pushw	x
1906  031b ae0000        	ldw	x,#L102
1907  031e cd0000        	call	_assert_failed
1909  0321 5b04          	addw	sp,#4
1910  0323               L013:
1911                     ; 412     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
1913  0323 7b02          	ld	a,(OFST+1,sp)
1914  0325 4e            	swap	a
1915  0326 a40f          	and	a,#15
1916  0328 5f            	clrw	x
1917  0329 97            	ld	xl,a
1918  032a a601          	ld	a,#1
1919  032c 5d            	tnzw	x
1920  032d 2704          	jreq	L413
1921  032f               L613:
1922  032f 48            	sll	a
1923  0330 5a            	decw	x
1924  0331 26fc          	jrne	L613
1925  0333               L413:
1926                     ; 414     SPI->SR = (uint8_t)(~itpos);
1928  0333 43            	cpl	a
1929  0334 c75203        	ld	20995,a
1930                     ; 416 }
1933  0337 85            	popw	x
1934  0338 81            	ret	
1947                     	xdef	_SPI_ClearITPendingBit
1948                     	xdef	_SPI_GetITStatus
1949                     	xdef	_SPI_ClearFlag
1950                     	xdef	_SPI_GetFlagStatus
1951                     	xdef	_SPI_BiDirectionalLineConfig
1952                     	xdef	_SPI_GetCRCPolynomial
1953                     	xdef	_SPI_ResetCRC
1954                     	xdef	_SPI_GetCRC
1955                     	xdef	_SPI_CalculateCRCCmd
1956                     	xdef	_SPI_TransmitCRC
1957                     	xdef	_SPI_NSSInternalSoftwareCmd
1958                     	xdef	_SPI_ReceiveData
1959                     	xdef	_SPI_SendData
1960                     	xdef	_SPI_ITConfig
1961                     	xdef	_SPI_Cmd
1962                     	xdef	_SPI_Init
1963                     	xdef	_SPI_DeInit
1964                     	xref	_assert_failed
1965                     .const:	section	.text
1966  0000               L102:
1967  0000 6c6962726172  	dc.b	"libraries\src\stm8"
1968  0012 735f7370692e  	dc.b	"s_spi.c",0
1988                     	end
