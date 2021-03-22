   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.21 - 04 Feb 2014
   3                     ; Generator (Limited) V4.3.12 - 11 Feb 2014
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
  48                     ; 8 void CLK_Config(void)
  48                     ; 9 {
  50                     	switch	.text
  51  0000               _CLK_Config:
  55                     ; 12     CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
  57  0000 4f            	clr	a
  58  0001 cd0000        	call	_CLK_HSIPrescalerConfig
  60                     ; 14 		CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, ENABLE);
  62  0004 ae0101        	ldw	x,#257
  63  0007 cd0000        	call	_CLK_PeripheralClockConfig
  65                     ; 15 		CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, ENABLE);
  67  000a ae0401        	ldw	x,#1025
  68  000d cd0000        	call	_CLK_PeripheralClockConfig
  70                     ; 16 		CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, ENABLE);
  72  0010 ae0501        	ldw	x,#1281
  73  0013 cd0000        	call	_CLK_PeripheralClockConfig
  75                     ; 17 		CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);
  77  0016 ae0701        	ldw	x,#1793
  79                     ; 19 }
  82  0019 cc0000        	jp	_CLK_PeripheralClockConfig
 107                     ; 23 void GPIO_Config (void)
 107                     ; 24 {
 108                     	switch	.text
 109  001c               _GPIO_Config:
 113                     ; 27 	GPIO_Init(GPIOA, E1A, GPIO_MODE_IN_PU_NO_IT);
 115  001c 4b40          	push	#64
 116  001e 4b08          	push	#8
 117  0020 ae5000        	ldw	x,#20480
 118  0023 cd0000        	call	_GPIO_Init
 120  0026 85            	popw	x
 121                     ; 28 	GPIO_Init(GPIOA, E1B, GPIO_MODE_IN_PU_NO_IT);
 123  0027 4b40          	push	#64
 124  0029 4b10          	push	#16
 125  002b ae5000        	ldw	x,#20480
 126  002e cd0000        	call	_GPIO_Init
 128  0031 85            	popw	x
 129                     ; 29 	GPIO_Init(GPIOA, E2A, GPIO_MODE_IN_PU_NO_IT);
 131  0032 4b40          	push	#64
 132  0034 4b20          	push	#32
 133  0036 ae5000        	ldw	x,#20480
 134  0039 cd0000        	call	_GPIO_Init
 136  003c 85            	popw	x
 137                     ; 30 	GPIO_Init(GPIOA, E2B, GPIO_MODE_IN_PU_NO_IT);
 139  003d 4b40          	push	#64
 140  003f 4b40          	push	#64
 141  0041 ae5000        	ldw	x,#20480
 142  0044 cd0000        	call	_GPIO_Init
 144  0047 85            	popw	x
 145                     ; 34 	GPIO_Init(GPIOB, BT1, GPIO_MODE_IN_PU_NO_IT);
 147  0048 4b40          	push	#64
 148  004a 4b01          	push	#1
 149  004c ae5005        	ldw	x,#20485
 150  004f cd0000        	call	_GPIO_Init
 152  0052 85            	popw	x
 153                     ; 35 	GPIO_Init(GPIOB, BT2, GPIO_MODE_IN_PU_NO_IT);
 155  0053 4b40          	push	#64
 156  0055 4b02          	push	#2
 157  0057 ae5005        	ldw	x,#20485
 158  005a cd0000        	call	_GPIO_Init
 160  005d 85            	popw	x
 161                     ; 36 	GPIO_Init(GPIOB, BT3, GPIO_MODE_IN_PU_NO_IT);
 163  005e 4b40          	push	#64
 164  0060 4b04          	push	#4
 165  0062 ae5005        	ldw	x,#20485
 166  0065 cd0000        	call	_GPIO_Init
 168  0068 85            	popw	x
 169                     ; 37 	GPIO_Init(GPIOB, BT4, GPIO_MODE_IN_PU_NO_IT);
 171  0069 4b40          	push	#64
 172  006b 4b08          	push	#8
 173  006d ae5005        	ldw	x,#20485
 174  0070 cd0000        	call	_GPIO_Init
 176  0073 85            	popw	x
 177                     ; 38 	GPIO_Init(GPIOB, BT5, GPIO_MODE_IN_PU_NO_IT);
 179  0074 4b40          	push	#64
 180  0076 4b10          	push	#16
 181  0078 ae5005        	ldw	x,#20485
 182  007b cd0000        	call	_GPIO_Init
 184  007e 85            	popw	x
 185                     ; 39 	GPIO_Init(GPIOB, BT6, GPIO_MODE_IN_PU_NO_IT);
 187  007f 4b40          	push	#64
 188  0081 4b20          	push	#32
 189  0083 ae5005        	ldw	x,#20485
 190  0086 cd0000        	call	_GPIO_Init
 192  0089 85            	popw	x
 193                     ; 40 	GPIO_Init(GPIOB, BT7, GPIO_MODE_IN_PU_NO_IT);
 195  008a 4b40          	push	#64
 196  008c 4b40          	push	#64
 197  008e ae5005        	ldw	x,#20485
 198  0091 cd0000        	call	_GPIO_Init
 200  0094 85            	popw	x
 201                     ; 42 	GPIO_Init(GPIOB, GPIO_PIN_7, GPIO_MODE_IN_PU_NO_IT);
 203  0095 4b40          	push	#64
 204  0097 4b80          	push	#128
 205  0099 ae5005        	ldw	x,#20485
 206  009c cd0000        	call	_GPIO_Init
 208  009f 85            	popw	x
 209                     ; 46 	GPIO_Init(GPIOC, OP1, GPIO_MODE_OUT_PP_HIGH_FAST);
 211  00a0 4bf0          	push	#240
 212  00a2 4b04          	push	#4
 213  00a4 ae500a        	ldw	x,#20490
 214  00a7 cd0000        	call	_GPIO_Init
 216  00aa 85            	popw	x
 217                     ; 47 	GPIO_WriteLow(GPIOC, OP1);
 219  00ab 4b04          	push	#4
 220  00ad ae500a        	ldw	x,#20490
 221  00b0 cd0000        	call	_GPIO_WriteLow
 223  00b3 84            	pop	a
 224                     ; 48 	GPIO_Init(GPIOC, OP2, GPIO_MODE_OUT_PP_HIGH_FAST);
 226  00b4 4bf0          	push	#240
 227  00b6 4b10          	push	#16
 228  00b8 ae500a        	ldw	x,#20490
 229  00bb cd0000        	call	_GPIO_Init
 231  00be 85            	popw	x
 232                     ; 49 	GPIO_WriteLow(GPIOC, OP2);
 234  00bf 4b10          	push	#16
 235  00c1 ae500a        	ldw	x,#20490
 236  00c4 cd0000        	call	_GPIO_WriteLow
 238  00c7 84            	pop	a
 239                     ; 50 	GPIO_Init(GPIOC, OP3, GPIO_MODE_OUT_PP_HIGH_FAST);
 241  00c8 4bf0          	push	#240
 242  00ca 4b02          	push	#2
 243  00cc ae500a        	ldw	x,#20490
 244  00cf cd0000        	call	_GPIO_Init
 246  00d2 85            	popw	x
 247                     ; 51 	GPIO_WriteLow(GPIOC, OP3);
 249  00d3 4b02          	push	#2
 250  00d5 ae500a        	ldw	x,#20490
 251  00d8 cd0000        	call	_GPIO_WriteLow
 253  00db 84            	pop	a
 254                     ; 52 	GPIO_Init(GPIOC, OP4, GPIO_MODE_OUT_PP_HIGH_FAST);
 256  00dc 4bf0          	push	#240
 257  00de 4b08          	push	#8
 258  00e0 ae500a        	ldw	x,#20490
 259  00e3 cd0000        	call	_GPIO_Init
 261  00e6 85            	popw	x
 262                     ; 53 	GPIO_WriteLow(GPIOC, OP4);
 264  00e7 4b08          	push	#8
 265  00e9 ae500a        	ldw	x,#20490
 266  00ec cd0000        	call	_GPIO_WriteLow
 268  00ef 84            	pop	a
 269                     ; 55 	GPIO_Init(GPIOC, LED_CLK, GPIO_MODE_OUT_PP_LOW_FAST);
 271  00f0 4be0          	push	#224
 272  00f2 4b20          	push	#32
 273  00f4 ae500a        	ldw	x,#20490
 274  00f7 cd0000        	call	_GPIO_Init
 276  00fa 85            	popw	x
 277                     ; 56 	GPIO_Init(GPIOC, LED_DATA, GPIO_MODE_OUT_PP_LOW_FAST);
 279  00fb 4be0          	push	#224
 280  00fd 4b40          	push	#64
 281  00ff ae500a        	ldw	x,#20490
 282  0102 cd0000        	call	_GPIO_Init
 284  0105 85            	popw	x
 285                     ; 57 	GPIO_Init(GPIOC, LED_COM_C, GPIO_MODE_OUT_PP_LOW_FAST);
 287  0106 4be0          	push	#224
 288  0108 4b80          	push	#128
 289  010a ae500a        	ldw	x,#20490
 290  010d cd0000        	call	_GPIO_Init
 292  0110 85            	popw	x
 293                     ; 59 	GPIO_WriteLow(GPIOC, LED_COM_C);
 295  0111 4b80          	push	#128
 296  0113 ae500a        	ldw	x,#20490
 297  0116 cd0000        	call	_GPIO_WriteLow
 299  0119 84            	pop	a
 300                     ; 63 	GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_IN_PU_NO_IT);
 302  011a 4b40          	push	#64
 303  011c 4b01          	push	#1
 304  011e ae500f        	ldw	x,#20495
 305  0121 cd0000        	call	_GPIO_Init
 307  0124 85            	popw	x
 308                     ; 65 	GPIO_Init(GPIOD, ON1, GPIO_MODE_OUT_PP_HIGH_FAST);
 310  0125 4bf0          	push	#240
 311  0127 4b08          	push	#8
 312  0129 ae500f        	ldw	x,#20495
 313  012c cd0000        	call	_GPIO_Init
 315  012f 85            	popw	x
 316                     ; 66 	GPIO_WriteLow(GPIOD, ON1);
 318  0130 4b08          	push	#8
 319  0132 ae500f        	ldw	x,#20495
 320  0135 cd0000        	call	_GPIO_WriteLow
 322  0138 84            	pop	a
 323                     ; 67 	GPIO_Init(GPIOD, ON2, GPIO_MODE_OUT_PP_HIGH_FAST);
 325  0139 4bf0          	push	#240
 326  013b 4b40          	push	#64
 327  013d ae500f        	ldw	x,#20495
 328  0140 cd0000        	call	_GPIO_Init
 330  0143 85            	popw	x
 331                     ; 68 	GPIO_WriteLow(GPIOD, ON2);
 333  0144 4b40          	push	#64
 334  0146 ae500f        	ldw	x,#20495
 335  0149 cd0000        	call	_GPIO_WriteLow
 337  014c 84            	pop	a
 338                     ; 70 	GPIO_Init(GPIOD, BE, GPIO_MODE_OUT_PP_LOW_SLOW);
 340  014d 4bc0          	push	#192
 341  014f 4b10          	push	#16
 342  0151 ae500f        	ldw	x,#20495
 343  0154 cd0000        	call	_GPIO_Init
 345  0157 85            	popw	x
 346                     ; 72 	GPIO_Init(GPIOD, ON3, GPIO_MODE_OUT_PP_HIGH_FAST);
 348  0158 4bf0          	push	#240
 349  015a 4b04          	push	#4
 350  015c ae500f        	ldw	x,#20495
 351  015f cd0000        	call	_GPIO_Init
 353  0162 85            	popw	x
 354                     ; 73 	GPIO_WriteLow(GPIOD, ON3);
 356  0163 4b04          	push	#4
 357  0165 ae500f        	ldw	x,#20495
 358  0168 cd0000        	call	_GPIO_WriteLow
 360  016b 84            	pop	a
 361                     ; 74 	GPIO_Init(GPIOD, ON4, GPIO_MODE_OUT_PP_HIGH_FAST);
 363  016c 4bf0          	push	#240
 364  016e 4b20          	push	#32
 365  0170 ae500f        	ldw	x,#20495
 366  0173 cd0000        	call	_GPIO_Init
 368  0176 85            	popw	x
 369                     ; 75 	GPIO_WriteLow(GPIOD, ON4);
 371  0177 4b20          	push	#32
 372  0179 ae500f        	ldw	x,#20495
 373  017c cd0000        	call	_GPIO_WriteLow
 375  017f 84            	pop	a
 376                     ; 77 	GPIO_Init(GPIOD, GPIO_PIN_7, GPIO_MODE_IN_PU_NO_IT);
 378  0180 4b40          	push	#64
 379  0182 4b80          	push	#128
 380  0184 ae500f        	ldw	x,#20495
 381  0187 cd0000        	call	_GPIO_Init
 383  018a 85            	popw	x
 384                     ; 81 	GPIO_Init(GPIOE, E5A, GPIO_MODE_IN_PU_NO_IT);
 386  018b 4b40          	push	#64
 387  018d 4b01          	push	#1
 388  018f ae5014        	ldw	x,#20500
 389  0192 cd0000        	call	_GPIO_Init
 391  0195 85            	popw	x
 392                     ; 83 	GPIO_Init(GPIOE, GPIO_PIN_1, GPIO_MODE_IN_PU_NO_IT);	
 394  0196 4b40          	push	#64
 395  0198 4b02          	push	#2
 396  019a ae5014        	ldw	x,#20500
 397  019d cd0000        	call	_GPIO_Init
 399  01a0 85            	popw	x
 400                     ; 84 	GPIO_Init(GPIOE, GPIO_PIN_2, GPIO_MODE_IN_PU_NO_IT);
 402  01a1 4b40          	push	#64
 403  01a3 4b04          	push	#4
 404  01a5 ae5014        	ldw	x,#20500
 405  01a8 cd0000        	call	_GPIO_Init
 407  01ab 85            	popw	x
 408                     ; 86   GPIO_Init(GPIOE, E5B, GPIO_MODE_IN_PU_NO_IT);
 410  01ac 4b40          	push	#64
 411  01ae 4b08          	push	#8
 412  01b0 ae5014        	ldw	x,#20500
 413  01b3 cd0000        	call	_GPIO_Init
 415  01b6 85            	popw	x
 416                     ; 87 	GPIO_Init(GPIOE, E4A, GPIO_MODE_IN_PU_NO_IT);
 418  01b7 4b40          	push	#64
 419  01b9 4b20          	push	#32
 420  01bb ae5014        	ldw	x,#20500
 421  01be cd0000        	call	_GPIO_Init
 423  01c1 85            	popw	x
 424                     ; 88 	GPIO_Init(GPIOE, E4B, GPIO_MODE_IN_PU_NO_IT);
 426  01c2 4b40          	push	#64
 427  01c4 4b40          	push	#64
 428  01c6 ae5014        	ldw	x,#20500
 429  01c9 cd0000        	call	_GPIO_Init
 431  01cc 85            	popw	x
 432                     ; 90 	GPIO_Init(GPIOE, GPIO_PIN_7, GPIO_MODE_IN_PU_NO_IT);
 434  01cd 4b40          	push	#64
 435  01cf 4b80          	push	#128
 436  01d1 ae5014        	ldw	x,#20500
 437  01d4 cd0000        	call	_GPIO_Init
 439  01d7 85            	popw	x
 440                     ; 94 	GPIO_Init(GPIOG, E3B, GPIO_MODE_IN_PU_NO_IT);
 442  01d8 4b40          	push	#64
 443  01da 4b01          	push	#1
 444  01dc ae501e        	ldw	x,#20510
 445  01df cd0000        	call	_GPIO_Init
 447  01e2 85            	popw	x
 448                     ; 95 	GPIO_Init(GPIOG, E3A, GPIO_MODE_IN_PU_NO_IT);
 450  01e3 4b40          	push	#64
 451  01e5 4b02          	push	#2
 452  01e7 ae501e        	ldw	x,#20510
 453  01ea cd0000        	call	_GPIO_Init
 455  01ed 85            	popw	x
 456                     ; 99 }
 459  01ee 81            	ret	
 488                     ; 103 void Timers_Config (void)
 488                     ; 104 {
 489                     	switch	.text
 490  01ef               _Timers_Config:
 494                     ; 116   TIM4_TimeBaseInit(TIM4_PRESCALER_64, 250);  // Time base configuration 
 496  01ef ae06fa        	ldw	x,#1786
 497  01f2 cd0000        	call	_TIM4_TimeBaseInit
 499                     ; 117   TIM4_ClearFlag(TIM4_FLAG_UPDATE); 
 501  01f5 a601          	ld	a,#1
 502  01f7 cd0000        	call	_TIM4_ClearFlag
 504                     ; 118   TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
 506  01fa ae0101        	ldw	x,#257
 507  01fd cd0000        	call	_TIM4_ITConfig
 509                     ; 119   TIM4_Cmd(ENABLE);
 511  0200 a601          	ld	a,#1
 512  0202 cd0000        	call	_TIM4_Cmd
 514                     ; 130   TIM2_TimeBaseInit(TIM2_PRESCALER_16, 10000); 															// Time base configuration по умолчанию	
 516  0205 ae2710        	ldw	x,#10000
 517  0208 89            	pushw	x
 518  0209 a604          	ld	a,#4
 519  020b cd0000        	call	_TIM2_TimeBaseInit
 521  020e 85            	popw	x
 522                     ; 131   TIM2_ITConfig(TIM2_IT_UPDATE, ENABLE);  
 524  020f ae0101        	ldw	x,#257
 526                     ; 135 }
 529  0212 cc0000        	jp	_TIM2_ITConfig
 552                     ; 139 void Beep_Config (void)
 552                     ; 140 {
 553                     	switch	.text
 554  0215               _Beep_Config:
 558                     ; 146 }
 561  0215 81            	ret	
 586                     ; 148 void SPI_Config (void)
 586                     ; 149 {
 587                     	switch	.text
 588  0216               _SPI_Config:
 592                     ; 151   SPI_Init(SPI_FIRSTBIT_MSB, SPI_BAUDRATEPRESCALER_2, SPI_MODE_MASTER, 
 592                     ; 152            SPI_CLOCKPOLARITY_HIGH, SPI_CLOCKPHASE_2EDGE, SPI_DATADIRECTION_2LINES_FULLDUPLEX, 
 592                     ; 153            SPI_NSS_SOFT, 0x01);
 594  0216 4b01          	push	#1
 595  0218 4b02          	push	#2
 596  021a 4b00          	push	#0
 597  021c 4b01          	push	#1
 598  021e 4b02          	push	#2
 599  0220 4b04          	push	#4
 600  0222 5f            	clrw	x
 601  0223 cd0000        	call	_SPI_Init
 603  0226 5b06          	addw	sp,#6
 604                     ; 157   SPI_Cmd(ENABLE);
 606  0228 a601          	ld	a,#1
 608                     ; 158 }
 611  022a cc0000        	jp	_SPI_Cmd
 652                     ; 160 void Variables_Config(void)
 652                     ; 161 {
 653                     	switch	.text
 654  022d               _Variables_Config:
 658                     ; 162 	RealTimeSecond = 0;
 660  022d 725f0000      	clr	_RealTimeSecond
 661                     ; 163 	RealTimeMinute = 0;
 663  0231 725f0000      	clr	_RealTimeMinute
 664                     ; 165 	RealTimeCounter = 0;
 666  0235 725f0000      	clr	_RealTimeCounter
 667                     ; 167 	RealTimeSecond = 0;
 669  0239 725f0000      	clr	_RealTimeSecond
 670                     ; 168 	RealTimeMinute = 0;
 672  023d 725f0000      	clr	_RealTimeMinute
 673                     ; 169 	Chenal4Number = 0;
 675  0241 725f0000      	clr	_Chenal4Number
 676                     ; 170 	Chenal3Number = 0;
 678  0245 725f0000      	clr	_Chenal3Number
 679                     ; 171 	Chenal2Number = 0;
 681  0249 725f0000      	clr	_Chenal2Number
 682                     ; 172 	Chenal1Number = 0;
 684  024d 725f0000      	clr	_Chenal1Number
 685                     ; 174 	Chenal1NumberShow = NumberToNumberShow(Chenal1Number, Clear, Clear);
 687  0251 4b00          	push	#0
 688  0253 5f            	clrw	x
 689  0254 cd0000        	call	_NumberToNumberShow
 691  0257 cf0000        	ldw	_Chenal1NumberShow,x
 692  025a 84            	pop	a
 693                     ; 175 	Chenal2NumberShow = NumberToNumberShow(Chenal2Number, Clear, Clear);
 695  025b 4b00          	push	#0
 696  025d 5f            	clrw	x
 697  025e c60000        	ld	a,_Chenal2Number
 698  0261 95            	ld	xh,a
 699  0262 cd0000        	call	_NumberToNumberShow
 701  0265 cf0000        	ldw	_Chenal2NumberShow,x
 702  0268 84            	pop	a
 703                     ; 176 	Chenal3NumberShow = NumberToNumberShow(Chenal3Number, Clear, Clear);
 705  0269 4b00          	push	#0
 706  026b 5f            	clrw	x
 707  026c c60000        	ld	a,_Chenal3Number
 708  026f 95            	ld	xh,a
 709  0270 cd0000        	call	_NumberToNumberShow
 711  0273 cf0000        	ldw	_Chenal3NumberShow,x
 712  0276 84            	pop	a
 713                     ; 177 	Chenal4NumberShow = NumberToNumberShow(Chenal4Number, Clear, Clear);
 715  0277 4b00          	push	#0
 716  0279 5f            	clrw	x
 717  027a c60000        	ld	a,_Chenal4Number
 718  027d 95            	ld	xh,a
 719  027e cd0000        	call	_NumberToNumberShow
 721  0281 cf0000        	ldw	_Chenal4NumberShow,x
 722  0284 84            	pop	a
 723                     ; 179 	RealTimeSecondNumberShow = NumberToNumberShow(RealTimeSecond, Clear, Set);
 725  0285 4b01          	push	#1
 726  0287 5f            	clrw	x
 727  0288 c60000        	ld	a,_RealTimeSecond
 728  028b 95            	ld	xh,a
 729  028c cd0000        	call	_NumberToNumberShow
 731  028f cf0000        	ldw	_RealTimeSecondNumberShow,x
 732  0292 84            	pop	a
 733                     ; 180 	RealTimeMinuteNumberShow = NumberToNumberShow(RealTimeMinute, LowPoint, Set);
 735  0293 4b01          	push	#1
 736  0295 ae0002        	ldw	x,#2
 737  0298 c60000        	ld	a,_RealTimeMinute
 738  029b 95            	ld	xh,a
 739  029c cd0000        	call	_NumberToNumberShow
 741  029f cf0000        	ldw	_RealTimeMinuteNumberShow,x
 742  02a2 ae5005        	ldw	x,#20485
 743  02a5 721b0000      	bres	_Device,#5
 744  02a9 84            	pop	a
 745                     ; 182 	Device.State = Stop;
 747                     ; 184 	StateButtons = GPIO_ReadInputData ( GPIOB );
 749  02aa cd0000        	call	_GPIO_ReadInputData
 751  02ad c70000        	ld	_StateButtons,a
 752                     ; 186 	LedData = 0;
 754  02b0 725f0000      	clr	_LedData
 755                     ; 190 	if ((StateButtons & 0x20) == 0) 
 757  02b4 a520          	bcp	a,#32
 758  02b6 2606          	jrne	L17
 759                     ; 192 		LedData = LedA;	
 761  02b8 35080000      	mov	_LedData,#8
 762                     ; 193 		Device.Mode = ModeA;
 764  02bc 2024          	jp	LC002
 765  02be               L17:
 766                     ; 197 		if ((StateButtons & 0x10) == 0) 
 768  02be a510          	bcp	a,#16
 769  02c0 260a          	jrne	L57
 770                     ; 199 			LedData = LedB;
 772  02c2 35200000      	mov	_LedData,#32
 773                     ; 200 			Device.Mode = ModeB;
 775  02c6 72120000      	bset	_Device,#1
 777  02ca 201a          	jp	LC001
 778  02cc               L57:
 779                     ; 204 			if ((StateButtons & 0x08) == 0)
 781  02cc a508          	bcp	a,#8
 782  02ce 260e          	jrne	L101
 783                     ; 206 				LedData |= LedC;
 785  02d0 72180000      	bset	_LedData,#4
 786                     ; 207 				Device.Mode = ModeC;
 788  02d4 72130000      	bres	_Device,#1
 789  02d8 72140000      	bset	_Device,#2
 791  02dc 200c          	jra	L37
 792  02de               L101:
 793                     ; 211 				LedData |= LedA;	
 795  02de 72160000      	bset	_LedData,#3
 796                     ; 212 				Device.Mode = ModeA;
 798  02e2               LC002:
 800  02e2 72130000      	bres	_Device,#1
 801  02e6               LC001:
 802  02e6 72150000      	bres	_Device,#2
 803  02ea               L37:
 804                     ; 219 	if ((StateButtons & 0x04) == 0) 
 806  02ea 7204000002    	btjt	_StateButtons,#2,L501
 807                     ; 221 		LedData |= LedP;	
 808                     ; 222 		Device.Polarity = PolarityP;
 810  02ef 2021          	jp	L511
 811  02f1               L501:
 812                     ; 226 		if ((StateButtons & 0x02) == 0) 
 814  02f1 720200000a    	btjt	_StateButtons,#1,L111
 815                     ; 228 			LedData |= LedN;
 817  02f6 72120000      	bset	_LedData,#1
 818                     ; 229 			Device.Polarity = PolarityN;
 820  02fa 72160000      	bset	_Device,#3
 822  02fe 201a          	jp	LC003
 823  0300               L111:
 824                     ; 233 			if ((StateButtons & 0x01) == 0)
 826  0300 720000000d    	btjt	_StateButtons,#0,L511
 827                     ; 235 				LedData |= LedPN;
 829  0305 72100000      	bset	_LedData,#0
 830                     ; 236 				Device.Polarity = PolarityPN;
 832  0309 72170000      	bres	_Device,#3
 833  030d 72180000      	bset	_Device,#4
 836  0311 81            	ret	
 837  0312               L511:
 838                     ; 240 				LedData |= LedP;	
 840                     ; 241 				Device.Polarity = PolarityP;
 843  0312 72140000      	bset	_LedData,#2
 845  0316 72170000      	bres	_Device,#3
 846  031a               LC003:
 847  031a 72190000      	bres	_Device,#4
 848                     ; 251 }
 851  031e 81            	ret	
 864                     	xdef	_Variables_Config
 865                     	xdef	_SPI_Config
 866                     	xdef	_Beep_Config
 867                     	xdef	_Timers_Config
 868                     	xdef	_GPIO_Config
 869                     	xdef	_CLK_Config
 870                     	xref	_NumberToNumberShow
 871                     	xref	_StateButtons
 872                     	xref	_Chenal4NumberShow
 873                     	xref	_Chenal3NumberShow
 874                     	xref	_Chenal2NumberShow
 875                     	xref	_Chenal1NumberShow
 876                     	xref	_Chenal4Number
 877                     	xref	_Chenal3Number
 878                     	xref	_Chenal2Number
 879                     	xref	_Chenal1Number
 880                     	xref	_RealTimeMinuteNumberShow
 881                     	xref	_RealTimeSecondNumberShow
 882                     	xref	_RealTimeMinute
 883                     	xref	_RealTimeSecond
 884                     	xref	_RealTimeCounter
 885                     	xref	_LedData
 886                     	xref	_Device
 887                     	xref	_TIM4_ClearFlag
 888                     	xref	_TIM4_ITConfig
 889                     	xref	_TIM4_Cmd
 890                     	xref	_TIM4_TimeBaseInit
 891                     	xref	_TIM2_ITConfig
 892                     	xref	_TIM2_TimeBaseInit
 893                     	xref	_SPI_Cmd
 894                     	xref	_SPI_Init
 895                     	xref	_GPIO_ReadInputData
 896                     	xref	_GPIO_WriteLow
 897                     	xref	_GPIO_Init
 898                     	xref	_CLK_HSIPrescalerConfig
 899                     	xref	_CLK_PeripheralClockConfig
 918                     	end
