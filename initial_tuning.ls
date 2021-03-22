   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
   4                     ; Optimizer V4.4.7 - 05 Oct 2017
  49                     ; 8 void CLK_Config(void)
  49                     ; 9 {
  51                     	switch	.text
  52  0000               _CLK_Config:
  56                     ; 12     CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
  58  0000 4f            	clr	a
  59  0001 cd0000        	call	_CLK_HSIPrescalerConfig
  61                     ; 14 		CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, ENABLE);
  63  0004 ae0101        	ldw	x,#257
  64  0007 cd0000        	call	_CLK_PeripheralClockConfig
  66                     ; 15 		CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, ENABLE);
  68  000a ae0401        	ldw	x,#1025
  69  000d cd0000        	call	_CLK_PeripheralClockConfig
  71                     ; 16 		CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, ENABLE);
  73  0010 ae0501        	ldw	x,#1281
  74  0013 cd0000        	call	_CLK_PeripheralClockConfig
  76                     ; 17 		CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);
  78  0016 ae0701        	ldw	x,#1793
  79  0019 cd0000        	call	_CLK_PeripheralClockConfig
  81                     ; 19 		CLK_LSICmd(ENABLE);
  83  001c a601          	ld	a,#1
  85                     ; 21 }
  88  001e cc0000        	jp	_CLK_LSICmd
 113                     ; 25 void GPIO_Config (void)
 113                     ; 26 {
 114                     	switch	.text
 115  0021               _GPIO_Config:
 119                     ; 29 	GPIO_Init(GPIOA, E1A, GPIO_MODE_IN_PU_NO_IT);
 121  0021 4b40          	push	#64
 122  0023 4b08          	push	#8
 123  0025 ae5000        	ldw	x,#20480
 124  0028 cd0000        	call	_GPIO_Init
 126  002b 85            	popw	x
 127                     ; 30 	GPIO_Init(GPIOA, E1B, GPIO_MODE_IN_PU_NO_IT);
 129  002c 4b40          	push	#64
 130  002e 4b10          	push	#16
 131  0030 ae5000        	ldw	x,#20480
 132  0033 cd0000        	call	_GPIO_Init
 134  0036 85            	popw	x
 135                     ; 31 	GPIO_Init(GPIOA, E2A, GPIO_MODE_IN_PU_NO_IT);
 137  0037 4b40          	push	#64
 138  0039 4b20          	push	#32
 139  003b ae5000        	ldw	x,#20480
 140  003e cd0000        	call	_GPIO_Init
 142  0041 85            	popw	x
 143                     ; 32 	GPIO_Init(GPIOA, E2B, GPIO_MODE_IN_PU_NO_IT);
 145  0042 4b40          	push	#64
 146  0044 4b40          	push	#64
 147  0046 ae5000        	ldw	x,#20480
 148  0049 cd0000        	call	_GPIO_Init
 150  004c 85            	popw	x
 151                     ; 36 	GPIO_Init(GPIOB, BT1, GPIO_MODE_IN_PU_NO_IT);
 153  004d 4b40          	push	#64
 154  004f 4b01          	push	#1
 155  0051 ae5005        	ldw	x,#20485
 156  0054 cd0000        	call	_GPIO_Init
 158  0057 85            	popw	x
 159                     ; 37 	GPIO_Init(GPIOB, BT2, GPIO_MODE_IN_PU_NO_IT);
 161  0058 4b40          	push	#64
 162  005a 4b02          	push	#2
 163  005c ae5005        	ldw	x,#20485
 164  005f cd0000        	call	_GPIO_Init
 166  0062 85            	popw	x
 167                     ; 38 	GPIO_Init(GPIOB, BT3, GPIO_MODE_IN_PU_NO_IT);
 169  0063 4b40          	push	#64
 170  0065 4b04          	push	#4
 171  0067 ae5005        	ldw	x,#20485
 172  006a cd0000        	call	_GPIO_Init
 174  006d 85            	popw	x
 175                     ; 39 	GPIO_Init(GPIOB, BT4, GPIO_MODE_IN_PU_NO_IT);
 177  006e 4b40          	push	#64
 178  0070 4b08          	push	#8
 179  0072 ae5005        	ldw	x,#20485
 180  0075 cd0000        	call	_GPIO_Init
 182  0078 85            	popw	x
 183                     ; 40 	GPIO_Init(GPIOB, BT5, GPIO_MODE_IN_PU_NO_IT);
 185  0079 4b40          	push	#64
 186  007b 4b10          	push	#16
 187  007d ae5005        	ldw	x,#20485
 188  0080 cd0000        	call	_GPIO_Init
 190  0083 85            	popw	x
 191                     ; 41 	GPIO_Init(GPIOB, BT6, GPIO_MODE_IN_PU_NO_IT);
 193  0084 4b40          	push	#64
 194  0086 4b20          	push	#32
 195  0088 ae5005        	ldw	x,#20485
 196  008b cd0000        	call	_GPIO_Init
 198  008e 85            	popw	x
 199                     ; 42 	GPIO_Init(GPIOB, BT7, GPIO_MODE_IN_PU_NO_IT);
 201  008f 4b40          	push	#64
 202  0091 4b40          	push	#64
 203  0093 ae5005        	ldw	x,#20485
 204  0096 cd0000        	call	_GPIO_Init
 206  0099 85            	popw	x
 207                     ; 44 	GPIO_Init(GPIOB, GPIO_PIN_7, GPIO_MODE_IN_PU_NO_IT);
 209  009a 4b40          	push	#64
 210  009c 4b80          	push	#128
 211  009e ae5005        	ldw	x,#20485
 212  00a1 cd0000        	call	_GPIO_Init
 214  00a4 85            	popw	x
 215                     ; 48 	GPIO_Init(GPIOC, OP1, GPIO_MODE_OUT_PP_HIGH_FAST);
 217  00a5 4bf0          	push	#240
 218  00a7 4b08          	push	#8
 219  00a9 ae500a        	ldw	x,#20490
 220  00ac cd0000        	call	_GPIO_Init
 222  00af 85            	popw	x
 223                     ; 49 	GPIO_WriteLow(GPIOC, OP1);
 225  00b0 4b08          	push	#8
 226  00b2 ae500a        	ldw	x,#20490
 227  00b5 cd0000        	call	_GPIO_WriteLow
 229  00b8 84            	pop	a
 230                     ; 50 	GPIO_Init(GPIOC, OP2, GPIO_MODE_OUT_PP_HIGH_FAST);
 232  00b9 4bf0          	push	#240
 233  00bb 4b02          	push	#2
 234  00bd ae500a        	ldw	x,#20490
 235  00c0 cd0000        	call	_GPIO_Init
 237  00c3 85            	popw	x
 238                     ; 51 	GPIO_WriteLow(GPIOC, OP2);
 240  00c4 4b02          	push	#2
 241  00c6 ae500a        	ldw	x,#20490
 242  00c9 cd0000        	call	_GPIO_WriteLow
 244  00cc 84            	pop	a
 245                     ; 52 	GPIO_Init(GPIOC, OP3, GPIO_MODE_OUT_PP_HIGH_FAST);
 247  00cd 4bf0          	push	#240
 248  00cf 4b10          	push	#16
 249  00d1 ae500a        	ldw	x,#20490
 250  00d4 cd0000        	call	_GPIO_Init
 252  00d7 85            	popw	x
 253                     ; 53 	GPIO_WriteLow(GPIOC, OP3);
 255  00d8 4b10          	push	#16
 256  00da ae500a        	ldw	x,#20490
 257  00dd cd0000        	call	_GPIO_WriteLow
 259  00e0 84            	pop	a
 260                     ; 54 	GPIO_Init(GPIOC, OP4, GPIO_MODE_OUT_PP_HIGH_FAST);
 262  00e1 4bf0          	push	#240
 263  00e3 4b04          	push	#4
 264  00e5 ae500a        	ldw	x,#20490
 265  00e8 cd0000        	call	_GPIO_Init
 267  00eb 85            	popw	x
 268                     ; 55 	GPIO_WriteLow(GPIOC, OP4);
 270  00ec 4b04          	push	#4
 271  00ee ae500a        	ldw	x,#20490
 272  00f1 cd0000        	call	_GPIO_WriteLow
 274  00f4 84            	pop	a
 275                     ; 57 	GPIO_Init(GPIOC, LED_CLK, GPIO_MODE_OUT_PP_LOW_FAST);
 277  00f5 4be0          	push	#224
 278  00f7 4b20          	push	#32
 279  00f9 ae500a        	ldw	x,#20490
 280  00fc cd0000        	call	_GPIO_Init
 282  00ff 85            	popw	x
 283                     ; 58 	GPIO_Init(GPIOC, LED_DATA, GPIO_MODE_OUT_PP_LOW_FAST);
 285  0100 4be0          	push	#224
 286  0102 4b40          	push	#64
 287  0104 ae500a        	ldw	x,#20490
 288  0107 cd0000        	call	_GPIO_Init
 290  010a 85            	popw	x
 291                     ; 59 	GPIO_Init(GPIOC, LED_COM_C, GPIO_MODE_OUT_PP_LOW_FAST);
 293  010b 4be0          	push	#224
 294  010d 4b80          	push	#128
 295  010f ae500a        	ldw	x,#20490
 296  0112 cd0000        	call	_GPIO_Init
 298  0115 85            	popw	x
 299                     ; 61 	GPIO_WriteLow(GPIOC, LED_COM_C);
 301  0116 4b80          	push	#128
 302  0118 ae500a        	ldw	x,#20490
 303  011b cd0000        	call	_GPIO_WriteLow
 305  011e 84            	pop	a
 306                     ; 65 	GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_IN_PU_NO_IT);
 308  011f 4b40          	push	#64
 309  0121 4b01          	push	#1
 310  0123 ae500f        	ldw	x,#20495
 311  0126 cd0000        	call	_GPIO_Init
 313  0129 85            	popw	x
 314                     ; 67 	GPIO_Init(GPIOD, ON1, GPIO_MODE_OUT_PP_HIGH_FAST);
 316  012a 4bf0          	push	#240
 317  012c 4b20          	push	#32
 318  012e ae500f        	ldw	x,#20495
 319  0131 cd0000        	call	_GPIO_Init
 321  0134 85            	popw	x
 322                     ; 68 	GPIO_WriteLow(GPIOD, ON1);
 324  0135 4b20          	push	#32
 325  0137 ae500f        	ldw	x,#20495
 326  013a cd0000        	call	_GPIO_WriteLow
 328  013d 84            	pop	a
 329                     ; 69 	GPIO_Init(GPIOD, ON2, GPIO_MODE_OUT_PP_HIGH_FAST);
 331  013e 4bf0          	push	#240
 332  0140 4b04          	push	#4
 333  0142 ae500f        	ldw	x,#20495
 334  0145 cd0000        	call	_GPIO_Init
 336  0148 85            	popw	x
 337                     ; 70 	GPIO_WriteLow(GPIOD, ON2);
 339  0149 4b04          	push	#4
 340  014b ae500f        	ldw	x,#20495
 341  014e cd0000        	call	_GPIO_WriteLow
 343  0151 84            	pop	a
 344                     ; 72 	GPIO_Init(GPIOD, BE, GPIO_MODE_OUT_PP_LOW_SLOW);
 346  0152 4bc0          	push	#192
 347  0154 4b10          	push	#16
 348  0156 ae500f        	ldw	x,#20495
 349  0159 cd0000        	call	_GPIO_Init
 351  015c 85            	popw	x
 352                     ; 74 	GPIO_Init(GPIOD, ON3, GPIO_MODE_OUT_PP_HIGH_FAST);
 354  015d 4bf0          	push	#240
 355  015f 4b40          	push	#64
 356  0161 ae500f        	ldw	x,#20495
 357  0164 cd0000        	call	_GPIO_Init
 359  0167 85            	popw	x
 360                     ; 75 	GPIO_WriteLow(GPIOD, ON3);
 362  0168 4b40          	push	#64
 363  016a ae500f        	ldw	x,#20495
 364  016d cd0000        	call	_GPIO_WriteLow
 366  0170 84            	pop	a
 367                     ; 76 	GPIO_Init(GPIOD, ON4, GPIO_MODE_OUT_PP_HIGH_FAST);
 369  0171 4bf0          	push	#240
 370  0173 4b08          	push	#8
 371  0175 ae500f        	ldw	x,#20495
 372  0178 cd0000        	call	_GPIO_Init
 374  017b 85            	popw	x
 375                     ; 77 	GPIO_WriteLow(GPIOD, ON4);
 377  017c 4b08          	push	#8
 378  017e ae500f        	ldw	x,#20495
 379  0181 cd0000        	call	_GPIO_WriteLow
 381  0184 84            	pop	a
 382                     ; 79 	GPIO_Init(GPIOD, GPIO_PIN_7, GPIO_MODE_IN_PU_NO_IT);
 384  0185 4b40          	push	#64
 385  0187 4b80          	push	#128
 386  0189 ae500f        	ldw	x,#20495
 387  018c cd0000        	call	_GPIO_Init
 389  018f 85            	popw	x
 390                     ; 83 	GPIO_Init(GPIOE, E5A, GPIO_MODE_IN_PU_NO_IT);
 392  0190 4b40          	push	#64
 393  0192 4b01          	push	#1
 394  0194 ae5014        	ldw	x,#20500
 395  0197 cd0000        	call	_GPIO_Init
 397  019a 85            	popw	x
 398                     ; 85 	GPIO_Init(GPIOE, GPIO_PIN_1, GPIO_MODE_IN_PU_NO_IT);	
 400  019b 4b40          	push	#64
 401  019d 4b02          	push	#2
 402  019f ae5014        	ldw	x,#20500
 403  01a2 cd0000        	call	_GPIO_Init
 405  01a5 85            	popw	x
 406                     ; 86 	GPIO_Init(GPIOE, GPIO_PIN_2, GPIO_MODE_IN_PU_NO_IT);
 408  01a6 4b40          	push	#64
 409  01a8 4b04          	push	#4
 410  01aa ae5014        	ldw	x,#20500
 411  01ad cd0000        	call	_GPIO_Init
 413  01b0 85            	popw	x
 414                     ; 88   GPIO_Init(GPIOE, E5B, GPIO_MODE_IN_PU_NO_IT);
 416  01b1 4b40          	push	#64
 417  01b3 4b08          	push	#8
 418  01b5 ae5014        	ldw	x,#20500
 419  01b8 cd0000        	call	_GPIO_Init
 421  01bb 85            	popw	x
 422                     ; 89 	GPIO_Init(GPIOE, E4A, GPIO_MODE_IN_PU_NO_IT);
 424  01bc 4b40          	push	#64
 425  01be 4b20          	push	#32
 426  01c0 ae5014        	ldw	x,#20500
 427  01c3 cd0000        	call	_GPIO_Init
 429  01c6 85            	popw	x
 430                     ; 90 	GPIO_Init(GPIOE, E4B, GPIO_MODE_IN_PU_NO_IT);
 432  01c7 4b40          	push	#64
 433  01c9 4b40          	push	#64
 434  01cb ae5014        	ldw	x,#20500
 435  01ce cd0000        	call	_GPIO_Init
 437  01d1 85            	popw	x
 438                     ; 92 	GPIO_Init(GPIOE, GPIO_PIN_7, GPIO_MODE_IN_PU_NO_IT);
 440  01d2 4b40          	push	#64
 441  01d4 4b80          	push	#128
 442  01d6 ae5014        	ldw	x,#20500
 443  01d9 cd0000        	call	_GPIO_Init
 445  01dc 85            	popw	x
 446                     ; 96 	GPIO_Init(GPIOG, E3B, GPIO_MODE_IN_PU_NO_IT);
 448  01dd 4b40          	push	#64
 449  01df 4b01          	push	#1
 450  01e1 ae501e        	ldw	x,#20510
 451  01e4 cd0000        	call	_GPIO_Init
 453  01e7 85            	popw	x
 454                     ; 97 	GPIO_Init(GPIOG, E3A, GPIO_MODE_IN_PU_NO_IT);
 456  01e8 4b40          	push	#64
 457  01ea 4b02          	push	#2
 458  01ec ae501e        	ldw	x,#20510
 459  01ef cd0000        	call	_GPIO_Init
 461  01f2 85            	popw	x
 462                     ; 101 }
 465  01f3 81            	ret	
 494                     ; 105 void Timers_Config (void)
 494                     ; 106 {
 495                     	switch	.text
 496  01f4               _Timers_Config:
 500                     ; 118   TIM4_TimeBaseInit(TIM4_PRESCALER_64, 250);  // Time base configuration 
 502  01f4 ae06fa        	ldw	x,#1786
 503  01f7 cd0000        	call	_TIM4_TimeBaseInit
 505                     ; 119   TIM4_ClearFlag(TIM4_FLAG_UPDATE); 
 507  01fa a601          	ld	a,#1
 508  01fc cd0000        	call	_TIM4_ClearFlag
 510                     ; 120   TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
 512  01ff ae0101        	ldw	x,#257
 513  0202 cd0000        	call	_TIM4_ITConfig
 515                     ; 121   TIM4_Cmd(ENABLE);
 517  0205 a601          	ld	a,#1
 518  0207 cd0000        	call	_TIM4_Cmd
 520                     ; 132   TIM2_TimeBaseInit(TIM2_PRESCALER_16, 10000); 															// Time base configuration по умолчанию	
 522  020a ae2710        	ldw	x,#10000
 523  020d 89            	pushw	x
 524  020e a604          	ld	a,#4
 525  0210 cd0000        	call	_TIM2_TimeBaseInit
 527  0213 85            	popw	x
 528                     ; 133   TIM2_ITConfig(TIM2_IT_UPDATE, ENABLE);  
 530  0214 ae0101        	ldw	x,#257
 532                     ; 137 }
 535  0217 cc0000        	jp	_TIM2_ITConfig
 561                     ; 141 void Beep_Config (void)
 561                     ; 142 {
 562                     	switch	.text
 563  021a               _Beep_Config:
 567                     ; 143 	BEEP_LSICalibrationConfig (LSIMeasurment());
 569  021a cd030c        	call	_LSIMeasurment
 571  021d be02          	ldw	x,c_lreg+2
 572  021f 89            	pushw	x
 573  0220 be00          	ldw	x,c_lreg
 574  0222 89            	pushw	x
 575  0223 cd0000        	call	_BEEP_LSICalibrationConfig
 577  0226 5b04          	addw	sp,#4
 578                     ; 144   BEEP_Init(BEEP_FREQUENCY_4KHZ);
 580  0228 a680          	ld	a,#128
 582                     ; 152 }
 585  022a cc0000        	jp	_BEEP_Init
 610                     ; 154 void SPI_Config (void)
 610                     ; 155 {
 611                     	switch	.text
 612  022d               _SPI_Config:
 616                     ; 157   SPI_Init(SPI_FIRSTBIT_MSB, SPI_BAUDRATEPRESCALER_2, SPI_MODE_MASTER, 
 616                     ; 158   SPI_CLOCKPOLARITY_HIGH, SPI_CLOCKPHASE_2EDGE, SPI_DATADIRECTION_2LINES_FULLDUPLEX, 
 616                     ; 159   SPI_NSS_SOFT, 0x01);
 618  022d 4b01          	push	#1
 619  022f 4b02          	push	#2
 620  0231 4b00          	push	#0
 621  0233 4b01          	push	#1
 622  0235 4b02          	push	#2
 623  0237 4b04          	push	#4
 624  0239 5f            	clrw	x
 625  023a cd0000        	call	_SPI_Init
 627  023d 5b06          	addw	sp,#6
 628                     ; 161   SPI_Cmd(ENABLE);
 630  023f a601          	ld	a,#1
 632                     ; 162 }
 635  0241 cc0000        	jp	_SPI_Cmd
 685                     ; 164 void Variables_Config(void)
 685                     ; 165 {
 686                     	switch	.text
 687  0244               _Variables_Config:
 691                     ; 166 	RealTimeSecond = 0;
 693  0244 725f0000      	clr	_RealTimeSecond
 694                     ; 167 	RealTimeMinute = 0;
 696  0248 725f0000      	clr	_RealTimeMinute
 697                     ; 169 	RealTimeCounter = 0;
 699  024c 725f0000      	clr	_RealTimeCounter
 700                     ; 171 	RealTimeSecond = 0;
 702  0250 725f0000      	clr	_RealTimeSecond
 703                     ; 172 	RealTimeMinute = 0;
 705  0254 725f0000      	clr	_RealTimeMinute
 706                     ; 173 	Chenal4Number = 0;
 708  0258 725f0000      	clr	_Chenal4Number
 709                     ; 174 	Chenal3Number = 0;
 711  025c 725f0000      	clr	_Chenal3Number
 712                     ; 175 	Chenal2Number = 0;
 714  0260 725f0000      	clr	_Chenal2Number
 715                     ; 176 	Chenal1Number = 0;
 717  0264 725f0000      	clr	_Chenal1Number
 718                     ; 178 	Chenal1Enable = Clear;
 720  0268 725f0000      	clr	_Chenal1Enable
 721                     ; 179 	Chenal2Enable = Clear;
 723  026c 725f0000      	clr	_Chenal2Enable
 724                     ; 180 	Chenal3Enable = Clear;
 726  0270 725f0000      	clr	_Chenal3Enable
 727                     ; 181 	Chenal4Enable = Clear;
 729  0274 725f0000      	clr	_Chenal4Enable
 730                     ; 183 	Chenal4NumberPWM = 0;
 732  0278 725f0000      	clr	_Chenal4NumberPWM
 733                     ; 184 	Chenal3NumberPWM = 0;
 735  027c 725f0000      	clr	_Chenal3NumberPWM
 736                     ; 185 	Chenal2NumberPWM = 0;
 738  0280 725f0000      	clr	_Chenal2NumberPWM
 739                     ; 186 	Chenal1NumberPWM = 0;
 741  0284 725f0000      	clr	_Chenal1NumberPWM
 742                     ; 188 	Chenal1NumberShow = NumberToNumberShow(Chenal1Number, Clear, Clear);
 744  0288 4b00          	push	#0
 745  028a 5f            	clrw	x
 746  028b cd0000        	call	_NumberToNumberShow
 748  028e cf0000        	ldw	_Chenal1NumberShow,x
 749  0291 84            	pop	a
 750                     ; 189 	Chenal2NumberShow = NumberToNumberShow(Chenal2Number, Clear, Clear);
 752  0292 4b00          	push	#0
 753  0294 c60000        	ld	a,_Chenal2Number
 754  0297 5f            	clrw	x
 755  0298 95            	ld	xh,a
 756  0299 cd0000        	call	_NumberToNumberShow
 758  029c cf0000        	ldw	_Chenal2NumberShow,x
 759  029f 84            	pop	a
 760                     ; 190 	Chenal3NumberShow = NumberToNumberShow(Chenal3Number, Clear, Clear);
 762  02a0 4b00          	push	#0
 763  02a2 c60000        	ld	a,_Chenal3Number
 764  02a5 5f            	clrw	x
 765  02a6 95            	ld	xh,a
 766  02a7 cd0000        	call	_NumberToNumberShow
 768  02aa cf0000        	ldw	_Chenal3NumberShow,x
 769  02ad 84            	pop	a
 770                     ; 191 	Chenal4NumberShow = NumberToNumberShow(Chenal4Number, Clear, Clear);
 772  02ae 4b00          	push	#0
 773  02b0 c60000        	ld	a,_Chenal4Number
 774  02b3 5f            	clrw	x
 775  02b4 95            	ld	xh,a
 776  02b5 cd0000        	call	_NumberToNumberShow
 778  02b8 cf0000        	ldw	_Chenal4NumberShow,x
 779  02bb 84            	pop	a
 780                     ; 193 	RealTimeSecondNumberShow = NumberToNumberShow(RealTimeSecond, Clear, Set);
 782  02bc 4b01          	push	#1
 783  02be c60000        	ld	a,_RealTimeSecond
 784  02c1 5f            	clrw	x
 785  02c2 95            	ld	xh,a
 786  02c3 cd0000        	call	_NumberToNumberShow
 788  02c6 cf0000        	ldw	_RealTimeSecondNumberShow,x
 789  02c9 84            	pop	a
 790                     ; 194 	RealTimeMinuteNumberShow = NumberToNumberShow(RealTimeMinute, LowPoint, Set);
 792  02ca 4b01          	push	#1
 793  02cc c60000        	ld	a,_RealTimeMinute
 794  02cf ae0002        	ldw	x,#2
 795  02d2 95            	ld	xh,a
 796  02d3 cd0000        	call	_NumberToNumberShow
 798  02d6 cf0000        	ldw	_RealTimeMinuteNumberShow,x
 799  02d9 721b0000      	bres	_Device,#5
 800  02dd c60000        	ld	a,_Device2
 801  02e0 aa0f          	or	a,#15
 802  02e2 c70000        	ld	_Device2,a
 803  02e5 ae5005        	ldw	x,#20485
 804  02e8 84            	pop	a
 805                     ; 196 	Device.State = Stop;
 807                     ; 198 	Device2.Chenal1Show = Set;
 809                     ; 199 	Device2.Chenal2Show = Set;
 811                     ; 200 	Device2.Chenal3Show = Set;
 813                     ; 201 	Device2.Chenal4Show = Set;
 815                     ; 203 	StateButtons = GPIO_ReadInputData ( GPIOB );
 817  02e9 cd0000        	call	_GPIO_ReadInputData
 819  02ec c70000        	ld	_StateButtons,a
 820                     ; 205 	LedData = 0;
 822  02ef 725f0000      	clr	_LedData
 823                     ; 209 	LedData = LedA;	
 825  02f3 35080000      	mov	_LedData,#8
 826                     ; 210 	Device.Mode = ModeA;
 828  02f7 72130000      	bres	_Device,#1
 829  02fb 72150000      	bres	_Device,#2
 830                     ; 244 	LedData |= LedP;	
 832  02ff 72140000      	bset	_LedData,#2
 833                     ; 245 	Device.Polarity = PolarityP;
 835  0303 72170000      	bres	_Device,#3
 836  0307 72190000      	bres	_Device,#4
 837                     ; 275 }
 840  030b 81            	ret	
 898                     ; 277 uint32_t LSIMeasurment(void)
 898                     ; 278 {
 899                     	switch	.text
 900  030c               _LSIMeasurment:
 902  030c 520c          	subw	sp,#12
 903       0000000c      OFST:	set	12
 906                     ; 280   uint32_t lsi_freq_hz = 0x0;
 908                     ; 281   uint32_t fmaster = 0x0;
 910                     ; 282   uint16_t ICValue1 = 0x0;
 912                     ; 283   uint16_t ICValue2 = 0x0;
 914                     ; 285   fmaster = CLK_GetClockFreq();  /* Get master frequency */
 916  030e cd0000        	call	_CLK_GetClockFreq
 918  0311 96            	ldw	x,sp
 919  0312 1c0009        	addw	x,#OFST-3
 920  0315 cd0000        	call	c_rtol
 923                     ; 287   AWU->CSR |= AWU_CSR_MSR;	/* Enable the LSI measurement: LSI clock connected to timer Input Capture 1 */
 925  0318 721050f0      	bset	20720,#0
 926                     ; 293   TIM3_ICInit(TIM3_CHANNEL_1, TIM3_ICPOLARITY_RISING, TIM3_ICSELECTION_DIRECTTI, TIM3_ICPSC_DIV8, 0);
 928  031c 4b00          	push	#0
 929  031e 4b0c          	push	#12
 930  0320 4b01          	push	#1
 931  0322 5f            	clrw	x
 932  0323 cd0000        	call	_TIM3_ICInit
 934  0326 5b03          	addw	sp,#3
 935                     ; 294   TIM3_Cmd(ENABLE);
 937  0328 a601          	ld	a,#1
 938  032a cd0000        	call	_TIM3_Cmd
 941  032d               L511:
 942                     ; 296   while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1); 	/* wait a capture on cc1 */	
 944  032d 72035322fb    	btjf	21282,#1,L511
 945                     ; 297   ICValue1 = TIM3_GetCapture1(); 													/* Get CCR1 value*/
 947  0332 cd0000        	call	_TIM3_GetCapture1
 949  0335 1f05          	ldw	(OFST-7,sp),x
 951                     ; 298   TIM3_ClearFlag(TIM3_FLAG_CC1);
 953  0337 ae0002        	ldw	x,#2
 954  033a cd0000        	call	_TIM3_ClearFlag
 957  033d               L321:
 958                     ; 300   while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);   /* wait a capture on cc1 */    
 960  033d 72035322fb    	btjf	21282,#1,L321
 961                     ; 301   ICValue2 = TIM3_GetCapture1();													/* Get CCR1 value*/
 963  0342 cd0000        	call	_TIM3_GetCapture1
 965  0345 1f07          	ldw	(OFST-5,sp),x
 967                     ; 302 	TIM3_ClearFlag(TIM3_FLAG_CC1);
 969  0347 ae0002        	ldw	x,#2
 970  034a cd0000        	call	_TIM3_ClearFlag
 972                     ; 304   TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);						 /* Disable IC1 input capture */
 974  034d 72115327      	bres	21287,#0
 975                     ; 306   TIM3_Cmd(DISABLE);
 977  0351 4f            	clr	a
 978  0352 cd0000        	call	_TIM3_Cmd
 980                     ; 308   lsi_freq_hz = (8 * fmaster) / (ICValue2 - ICValue1);   /* Compute LSI clock frequency */
 982  0355 1e07          	ldw	x,(OFST-5,sp)
 983  0357 72f005        	subw	x,(OFST-7,sp)
 984  035a cd0000        	call	c_uitolx
 986  035d 96            	ldw	x,sp
 987  035e 5c            	incw	x
 988  035f cd0000        	call	c_rtol
 991  0362 96            	ldw	x,sp
 992  0363 1c0009        	addw	x,#OFST-3
 993  0366 cd0000        	call	c_ltor
 995  0369 a603          	ld	a,#3
 996  036b cd0000        	call	c_llsh
 998  036e 96            	ldw	x,sp
 999  036f 5c            	incw	x
1000  0370 cd0000        	call	c_ludv
1002  0373 96            	ldw	x,sp
1003  0374 1c0009        	addw	x,#OFST-3
1004  0377 cd0000        	call	c_rtol
1007                     ; 310   AWU->CSR &= (uint8_t)(~AWU_CSR_MSR);     /* Disable the LSI measurement: LSI clock disconnected from timer Input Capture 1 */
1009  037a 721150f0      	bres	20720,#0
1010                     ; 312   return (lsi_freq_hz);
1012  037e 96            	ldw	x,sp
1013  037f 1c0009        	addw	x,#OFST-3
1014  0382 cd0000        	call	c_ltor
1018  0385 5b0c          	addw	sp,#12
1019  0387 81            	ret	
1032                     	xdef	_LSIMeasurment
1033                     	xdef	_Variables_Config
1034                     	xdef	_SPI_Config
1035                     	xdef	_Beep_Config
1036                     	xdef	_Timers_Config
1037                     	xdef	_GPIO_Config
1038                     	xdef	_CLK_Config
1039                     	xref	_NumberToNumberShow
1040                     	xref	_StateButtons
1041                     	xref	_Chenal4NumberShow
1042                     	xref	_Chenal3NumberShow
1043                     	xref	_Chenal2NumberShow
1044                     	xref	_Chenal1NumberShow
1045                     	xref	_Chenal4NumberPWM
1046                     	xref	_Chenal3NumberPWM
1047                     	xref	_Chenal2NumberPWM
1048                     	xref	_Chenal1NumberPWM
1049                     	xref	_Chenal4Enable
1050                     	xref	_Chenal3Enable
1051                     	xref	_Chenal2Enable
1052                     	xref	_Chenal1Enable
1053                     	xref	_Chenal4Number
1054                     	xref	_Chenal3Number
1055                     	xref	_Chenal2Number
1056                     	xref	_Chenal1Number
1057                     	xref	_RealTimeMinuteNumberShow
1058                     	xref	_RealTimeSecondNumberShow
1059                     	xref	_RealTimeMinute
1060                     	xref	_RealTimeSecond
1061                     	xref	_RealTimeCounter
1062                     	xref	_LedData
1063                     	xref	_Device2
1064                     	xref	_Device
1065                     	xref	_TIM4_ClearFlag
1066                     	xref	_TIM4_ITConfig
1067                     	xref	_TIM4_Cmd
1068                     	xref	_TIM4_TimeBaseInit
1069                     	xref	_TIM3_ClearFlag
1070                     	xref	_TIM3_GetCapture1
1071                     	xref	_TIM3_Cmd
1072                     	xref	_TIM3_ICInit
1073                     	xref	_TIM2_ITConfig
1074                     	xref	_TIM2_TimeBaseInit
1075                     	xref	_SPI_Cmd
1076                     	xref	_SPI_Init
1077                     	xref	_GPIO_ReadInputData
1078                     	xref	_GPIO_WriteLow
1079                     	xref	_GPIO_Init
1080                     	xref	_CLK_GetClockFreq
1081                     	xref	_CLK_HSIPrescalerConfig
1082                     	xref	_CLK_PeripheralClockConfig
1083                     	xref	_CLK_LSICmd
1084                     	xref	_BEEP_LSICalibrationConfig
1085                     	xref	_BEEP_Init
1086                     	xref.b	c_lreg
1087                     	xref.b	c_x
1106                     	xref	c_ludv
1107                     	xref	c_uitolx
1108                     	xref	c_llsh
1109                     	xref	c_ltor
1110                     	xref	c_rtol
1111                     	end
