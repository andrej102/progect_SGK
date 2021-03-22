   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
   4                     ; Optimizer V4.4.7 - 05 Oct 2017
  68                     ; 9 void ButtonsService (void)
  68                     ; 10 {
  70                     	switch	.text
  71  0000               _ButtonsService:
  73       00000001      OFST:	set	1
  76                     ; 13 	Taskboard.ButtonsPolling = Clear;
  78  0000 72110000      	bres	_Taskboard,#0
  79  0004 88            	push	a
  80                     ; 15       if (CounterButtonsDelay != 0)
  82  0005 c60000        	ld	a,_CounterButtonsDelay
  83  0008 2603cc010c    	jreq	L52
  84                     ; 17 				CounterButtonsDelay--;
  86  000d 725a0000      	dec	_CounterButtonsDelay
  87                     ; 18 				if (CounterButtonsDelay == 0)
  89  0011 2703cc011b    	jrne	L17
  90                     ; 20           NewStateButtons = GPIO_ReadInputData  ( GPIOB );
  92  0016 ae5005        	ldw	x,#20485
  93  0019 cd0000        	call	_GPIO_ReadInputData
  95  001c 6b01          	ld	(OFST+0,sp),a
  97                     ; 117 					if (((StateButtons & 0x40) == 0) && ((NewStateButtons & 0x40) != 0)) 
  99  001e 720c00004b    	btjt	_StateButtons,#6,L13
 101  0023 a540          	bcp	a,#64
 102  0025 2747          	jreq	L13
 103                     ; 119 						BeepTimeCounter = 0;
 105  0027 725f0000      	clr	_BeepTimeCounter
 106                     ; 120 						BEEP->CSR &= ~BEEP_CSR_BEEPEN;
 108  002b 721b50f3      	bres	20723,#5
 109                     ; 122 						if (Device.State == Stop)
 111  002f 720a00001b    	btjt	_Device,#5,L33
 112                     ; 124 							if ((RealTimeSecond != 0) | (RealTimeMinute != 0))
 114  0034 c60000        	ld	a,_RealTimeSecond
 115  0037 2605          	jrne	L73
 117  0039 c60000        	ld	a,_RealTimeMinute
 118  003c 2730          	jreq	L13
 119  003e               L73:
 120                     ; 126 								Device.State = Start;
 122  003e 721a0000      	bset	_Device,#5
 123                     ; 127 								LedData |= LedStart;
 125  0042 721c0000      	bset	_LedData,#6
 126                     ; 128 								RealTimeCounter = 0;
 128  0046 725f0000      	clr	_RealTimeCounter
 129                     ; 129 								FunctionStartGenerator();	
 131  004a cd07c6        	call	_FunctionStartGenerator
 133  004d 201f          	jra	L13
 134  004f               L33:
 135                     ; 134 							Device.State = Stop;
 137  004f 721b0000      	bres	_Device,#5
 138                     ; 136 							Device2.TestMode = Clear;
 140  0053 72190000      	bres	_Device2,#4
 141                     ; 138 							LedData &=~ LedStart;
 143  0057 721d0000      	bres	_LedData,#6
 144                     ; 140 							FunctionStopGenerator();
 146  005b cd0829        	call	_FunctionStopGenerator
 148                     ; 142 							Device2.Chenal1Show = Set;
 150  005e 72100000      	bset	_Device2,#0
 151                     ; 143 							Device2.Chenal2Show = Set;
 153  0062 72120000      	bset	_Device2,#1
 154                     ; 144 							Device2.Chenal3Show = Set;
 156  0066 72140000      	bset	_Device2,#2
 157                     ; 145 							Device2.Chenal4Show = Set;
 159  006a 72160000      	bset	_Device2,#3
 160  006e               L13:
 161                     ; 151 					if (((StateButtons & 0x20) == 0) && ((NewStateButtons & 0x20) != 0))
 163  006e 720a00004e    	btjt	_StateButtons,#5,L34
 165  0073 7b01          	ld	a,(OFST+0,sp)
 166  0075 a520          	bcp	a,#32
 167  0077 2748          	jreq	L34
 168                     ; 153 						LedData &=~(LedA|LedB|LedC);
 170  0079 c60000        	ld	a,_LedData
 171  007c a4c7          	and	a,#199
 172  007e c70000        	ld	_LedData,a
 173                     ; 155 						FunctionStopGenerator();
 175  0081 cd0829        	call	_FunctionStopGenerator
 177                     ; 157 						if (Device.Mode == ModeA)
 179  0084 c60000        	ld	a,_Device
 180  0087 a506          	bcp	a,#6
 181  0089 260a          	jrne	L54
 182                     ; 159 							LedData |= LedB;	
 184  008b 721a0000      	bset	_LedData,#5
 185                     ; 160 						  Device.Mode = ModeB;
 187  008f 72120000      	bset	_Device,#1
 189  0093 201c          	jp	LC001
 190  0095               L54:
 191                     ; 164 							if (Device.Mode == ModeB)
 193  0095 a406          	and	a,#6
 194  0097 a102          	cp	a,#2
 195  0099 260e          	jrne	L15
 196                     ; 166 								LedData |= LedC;	
 198  009b 72180000      	bset	_LedData,#4
 199                     ; 167 								Device.Mode = ModeC;
 201  009f 72130000      	bres	_Device,#1
 202  00a3 72140000      	bset	_Device,#2
 204  00a7 200c          	jra	L74
 205  00a9               L15:
 206                     ; 171 								LedData |= LedA;	
 208  00a9 72160000      	bset	_LedData,#3
 209                     ; 172 								Device.Mode = ModeA;
 211  00ad 72130000      	bres	_Device,#1
 212  00b1               LC001:
 213  00b1 72150000      	bres	_Device,#2
 214  00b5               L74:
 215                     ; 176 						if (Device.State == Start)
 217  00b5 720b000007    	btjf	_Device,#5,L34
 218                     ; 178 							RealTimeCounter = 0;
 220  00ba 725f0000      	clr	_RealTimeCounter
 221                     ; 179 							FunctionStartGenerator();
 223  00be cd07c6        	call	_FunctionStartGenerator
 225  00c1               L34:
 226                     ; 185 					if (((StateButtons & 0x04) == 0) && ((NewStateButtons & 0x04) != 0))
 228  00c1 720400003f    	btjt	_StateButtons,#2,L75
 230  00c6 7b01          	ld	a,(OFST+0,sp)
 231  00c8 a504          	bcp	a,#4
 232  00ca 2739          	jreq	L75
 233                     ; 187 						LedData &=~(LedP|LedN|LedPN);
 235  00cc c60000        	ld	a,_LedData
 236  00cf a4f8          	and	a,#248
 237  00d1 c70000        	ld	_LedData,a
 238                     ; 189 						if (Device.Polarity == PolarityP)
 240  00d4 c60000        	ld	a,_Device
 241  00d7 a518          	bcp	a,#24
 242  00d9 260a          	jrne	L16
 243                     ; 191 							LedData |= LedN;	
 245  00db 72120000      	bset	_LedData,#1
 246                     ; 192 							Device.Polarity = PolarityN;
 248  00df 72160000      	bset	_Device,#3
 250  00e3 201c          	jp	LC002
 251  00e5               L16:
 252                     ; 196 							if (Device.Polarity == PolarityN)
 254  00e5 a418          	and	a,#24
 255  00e7 a108          	cp	a,#8
 256  00e9 260e          	jrne	L56
 257                     ; 198 								LedData |= LedPN;	
 259  00eb 72100000      	bset	_LedData,#0
 260                     ; 199 							  Device.Polarity = PolarityPN;
 262  00ef 72170000      	bres	_Device,#3
 263  00f3 72180000      	bset	_Device,#4
 265  00f7 200c          	jra	L75
 266  00f9               L56:
 267                     ; 203 								LedData |= LedP;	
 269  00f9 72140000      	bset	_LedData,#2
 270                     ; 204 							  Device.Polarity = PolarityP;
 272  00fd 72170000      	bres	_Device,#3
 273  0101               LC002:
 274  0101 72190000      	bres	_Device,#4
 275  0105               L75:
 276                     ; 210 					StateButtons = NewStateButtons;
 278  0105 7b01          	ld	a,(OFST+0,sp)
 279  0107 c70000        	ld	_StateButtons,a
 280  010a 200f          	jra	L17
 281  010c               L52:
 282                     ; 215 				NewStateButtons = GPIO_ReadInputData ( GPIOB );
 284  010c ae5005        	ldw	x,#20485
 285  010f cd0000        	call	_GPIO_ReadInputData
 288                     ; 216 				if (NewStateButtons != StateButtons) CounterButtonsDelay = 20;
 290  0112 c10000        	cp	a,_StateButtons
 291  0115 2704          	jreq	L17
 294  0117 35140000      	mov	_CounterButtonsDelay,#20
 295  011b               L17:
 296                     ; 218 }
 299  011b 84            	pop	a
 300  011c 81            	ret	
 347                     ; 223 void TimeService (void)
 347                     ; 224 {
 348                     	switch	.text
 349  011d               _TimeService:
 353                     ; 225   Taskboard.TimePolling = Clear;
 355  011d 72150000      	bres	_Taskboard,#2
 356                     ; 227 	if (BeepTimeCounter != 0)
 358  0121 c60000        	ld	a,_BeepTimeCounter
 359  0124 2733          	jreq	L121
 360                     ; 229 		BeepTimeCounter++;
 362  0126 725c0000      	inc	_BeepTimeCounter
 363                     ; 230 		if (BeepTimeCounter == 125)
 365  012a c60000        	ld	a,_BeepTimeCounter
 366  012d a17d          	cp	a,#125
 367  012f 2628          	jrne	L121
 368                     ; 232 			BeepTimeCounte2++;
 370  0131 725c0000      	inc	_BeepTimeCounte2
 371                     ; 233 			if (BeepTimeCounte2 == 30)
 373  0135 c60000        	ld	a,_BeepTimeCounte2
 374  0138 a11e          	cp	a,#30
 375  013a 260a          	jrne	L521
 376                     ; 235 				BeepTimeCounter = 0;
 378  013c 725f0000      	clr	_BeepTimeCounter
 379                     ; 236 				BEEP->CSR &= ~BEEP_CSR_BEEPEN;
 381  0140 721b50f3      	bres	20723,#5
 383  0144 2013          	jra	L121
 384  0146               L521:
 385                     ; 240 				if ((BEEP->CSR & BEEP_CSR_BEEPEN) == 0) BEEP->CSR |= BEEP_CSR_BEEPEN;
 387  0146 720a50f306    	btjt	20723,#5,L131
 390  014b 721a50f3      	bset	20723,#5
 392  014f 2004          	jra	L331
 393  0151               L131:
 394                     ; 241 				else BEEP->CSR &= ~BEEP_CSR_BEEPEN;
 396  0151 721b50f3      	bres	20723,#5
 397  0155               L331:
 398                     ; 242 				BeepTimeCounter = 1;
 400  0155 35010000      	mov	_BeepTimeCounter,#1
 401  0159               L121:
 402                     ; 247 	if (Device.State == Start)
 404  0159 720a000003cc  	btjf	_Device,#5,L531
 405                     ; 250 		RealTimeCounter++;
 407  0161 725c0000      	inc	_RealTimeCounter
 408                     ; 252 		if (Device.Mode == ModeB)
 410  0165 c60000        	ld	a,_Device
 411  0168 a406          	and	a,#6
 412  016a a102          	cp	a,#2
 413  016c 267a          	jrne	L731
 414                     ; 254 			if (RealTimeCounter == 250)
 416  016e c60000        	ld	a,_RealTimeCounter
 417  0171 a1fa          	cp	a,#250
 418  0173 2673          	jrne	L731
 419                     ; 256 				CounterParselPeriod++;
 421  0175 725c0000      	inc	_CounterParselPeriod
 422                     ; 257 				switch (CounterParselPeriod)
 424  0179 c60000        	ld	a,_CounterParselPeriod
 426                     ; 324 					default : break;
 427  017c a004          	sub	a,#4
 428  017e 2706          	jreq	L57
 429  0180 a004          	sub	a,#4
 430  0182 2721          	jreq	L77
 431  0184 2062          	jra	L731
 432  0186               L57:
 433                     ; 261 										TIM2_Cmd(DISABLE);
 435  0186 cd0000        	call	_TIM2_Cmd
 437                     ; 265 										Chenal1Enable = Clear;
 439  0189 725f0000      	clr	_Chenal1Enable
 440                     ; 266 										Chenal2Enable = Clear;
 442  018d 725f0000      	clr	_Chenal2Enable
 443                     ; 268 										Device2.Chenal1Show = Clear;
 445                     ; 269 										Device2.Chenal2Show = Clear;
 447                     ; 274 										Device2.Chenal3Show = Set;
 449                     ; 275 										Device2.Chenal4Show = Set;
 451                     ; 277 										Chenal3Enable = Set;
 453  0191 c60000        	ld	a,_Device2
 454  0194 a4fc          	and	a,#252
 455  0196 aa0c          	or	a,#12
 456  0198 c70000        	ld	_Device2,a
 457  019b 35010000      	mov	_Chenal3Enable,#1
 458                     ; 278 										Chenal4Enable = Set;
 460  019f 35010000      	mov	_Chenal4Enable,#1
 461                     ; 280 										TIM2_AutoreloadValue = 1000;
 462                     ; 281 										TIM2_SetAutoreload(TIM2_AutoreloadValue);
 464                     ; 282 										Device.Way = UpWay;
 465                     ; 283 										CurrentPulsePeriod = 10000;
 466                     ; 284 										Device.CnPol = PolarityP;
 467                     ; 286 										TIM2_SetCounter(1);
 469                     ; 287 										TIM2_Cmd(ENABLE);
 471                     ; 289 										break;
 473  01a3 2021          	jp	LC003
 474  01a5               L77:
 475                     ; 293 										TIM2_Cmd(DISABLE);
 477  01a5 cd0000        	call	_TIM2_Cmd
 479                     ; 298 										Chenal3Enable = Clear;
 481  01a8 725f0000      	clr	_Chenal3Enable
 482                     ; 299 										Chenal4Enable = Clear;
 484  01ac 725f0000      	clr	_Chenal4Enable
 485                     ; 301 										Device2.Chenal3Show = Clear;
 487                     ; 302 										Device2.Chenal4Show = Clear;
 489                     ; 307 										Device2.Chenal1Show = Set;
 491                     ; 308 										Device2.Chenal2Show = Set;
 493                     ; 310 										Chenal1Enable = Set;
 495  01b0 c60000        	ld	a,_Device2
 496  01b3 a4f3          	and	a,#243
 497  01b5 aa03          	or	a,#3
 498  01b7 c70000        	ld	_Device2,a
 499  01ba 35010000      	mov	_Chenal1Enable,#1
 500                     ; 311 										Chenal2Enable = Set;
 502  01be 35010000      	mov	_Chenal2Enable,#1
 503                     ; 313 										CounterParselPeriod = 0;
 505  01c2 725f0000      	clr	_CounterParselPeriod
 506                     ; 314 										TIM2_AutoreloadValue = 1000;
 508                     ; 315 										TIM2_SetAutoreload(TIM2_AutoreloadValue);
 511                     ; 316 										Device.Way = UpWay;
 513                     ; 317 										CurrentPulsePeriod = 10000;
 515                     ; 318 										Device.CnPol = PolarityP;
 517                     ; 320 										TIM2_SetCounter(1);
 520                     ; 321 										TIM2_Cmd(ENABLE);
 522  01c6               LC003:
 524  01c6 ae03e8        	ldw	x,#1000
 525  01c9 cf0000        	ldw	_TIM2_AutoreloadValue,x
 527  01cc cd0000        	call	_TIM2_SetAutoreload
 529  01cf 721c0000      	bset	_Device,#6
 531  01d3 ae2710        	ldw	x,#10000
 532  01d6 cf0000        	ldw	_CurrentPulsePeriod,x
 535  01d9 ae0001        	ldw	x,#1
 536  01dc 721f0000      	bres	_Device,#7
 537  01e0 cd0000        	call	_TIM2_SetCounter
 539  01e3 a601          	ld	a,#1
 540  01e5 cd0000        	call	_TIM2_Cmd
 542                     ; 322 										break;
 544                     ; 324 					default : break;
 546  01e8               L731:
 547                     ; 329 		if (Device.Mode == ModeA)
 549  01e8 c60000        	ld	a,_Device
 550  01eb a506          	bcp	a,#6
 551  01ed 2628          	jrne	L741
 552                     ; 331 			if (RealTimeCounter == 250)
 554  01ef c60000        	ld	a,_RealTimeCounter
 555  01f2 a1fa          	cp	a,#250
 556  01f4 2621          	jrne	L741
 557                     ; 333 				CounterParselPeriod++;
 559  01f6 725c0000      	inc	_CounterParselPeriod
 560                     ; 334 				switch (CounterParselPeriod)
 562  01fa c60000        	ld	a,_CounterParselPeriod
 564                     ; 350 					default : break;
 565  01fd a004          	sub	a,#4
 566  01ff 2706          	jreq	L301
 567  0201 a004          	sub	a,#4
 568  0203 270f          	jreq	L501
 569  0205 2010          	jra	L741
 570  0207               L301:
 571                     ; 338 						FunctionStopGenerator(); 
 573  0207 cd0829        	call	_FunctionStopGenerator
 575                     ; 339 						Device2.Chenal1Show = Clear; 
 577                     ; 340 						Device2.Chenal2Show = Clear; 
 579                     ; 341 						Device2.Chenal3Show = Clear; 
 581                     ; 342 						Device2.Chenal4Show = Clear; 
 583                     ; 343 						break;
 585  020a c60000        	ld	a,_Device2
 586  020d a4f0          	and	a,#240
 587  020f c70000        	ld	_Device2,a
 588  0212 2003          	jra	L741
 589  0214               L501:
 590                     ; 347 						FunctionStartGenerator(); 
 592  0214 cd07c6        	call	_FunctionStartGenerator
 594                     ; 348 						break;
 596                     ; 350 					default : break;
 598  0217               L741:
 599                     ; 355 		if (RealTimeCounter == 250)
 601  0217 c60000        	ld	a,_RealTimeCounter
 602  021a a1fa          	cp	a,#250
 603  021c 266e          	jrne	L531
 604                     ; 358 			RealTimeCounter = 0;
 606  021e 725f0000      	clr	_RealTimeCounter
 607                     ; 360 			if (Device2.TestMode == Set)
 609  0222 720900000b    	btjf	_Device2,#4,L161
 610                     ; 362 				Device2.TestMode = Clear;
 612  0227 72190000      	bres	_Device2,#4
 613                     ; 363 				Device.State = Stop;
 615  022b 721b0000      	bres	_Device,#5
 616                     ; 364 				FunctionStopGenerator();							
 621  022f cc0829        	jp	_FunctionStopGenerator
 622  0232               L161:
 623                     ; 368 				if (RealTimeSecond == 0)
 625  0232 c60000        	ld	a,_RealTimeSecond
 626  0235 260a          	jrne	L561
 627                     ; 370 					RealTimeSecond = 59;
 629  0237 353b0000      	mov	_RealTimeSecond,#59
 630                     ; 371 					RealTimeMinute--;
 632  023b 725a0000      	dec	_RealTimeMinute
 634  023f 2004          	jra	L761
 635  0241               L561:
 636                     ; 375 					RealTimeSecond--;
 638  0241 725a0000      	dec	_RealTimeSecond
 639  0245               L761:
 640                     ; 378 				if ((RealTimeSecond == 0)&&(RealTimeMinute == 0)) 
 642  0245 c60000        	ld	a,_RealTimeSecond
 643  0248 2624          	jrne	L171
 645  024a c60000        	ld	a,_RealTimeMinute
 646  024d 261f          	jrne	L171
 647                     ; 381 					Device.State = Stop;
 649  024f 721b0000      	bres	_Device,#5
 650                     ; 382 					LedData &=~ LedStart;
 652  0253 721d0000      	bres	_LedData,#6
 653                     ; 384 					FunctionStopGenerator();				
 655  0257 cd0829        	call	_FunctionStopGenerator
 657                     ; 386 					Device2.Chenal1Show = Set;
 659                     ; 387 					Device2.Chenal2Show = Set;
 661                     ; 388 					Device2.Chenal3Show = Set;
 663                     ; 389 					Device2.Chenal4Show = Set;
 665                     ; 391 					BeepTimeCounter = 1;
 667  025a c60000        	ld	a,_Device2
 668  025d aa0f          	or	a,#15
 669  025f c70000        	ld	_Device2,a
 670  0262 35010000      	mov	_BeepTimeCounter,#1
 671                     ; 392 					BeepTimeCounte2 = 0;
 673  0266 725f0000      	clr	_BeepTimeCounte2
 674                     ; 393 					BEEP->CSR |= BEEP_CSR_BEEPEN;			
 676  026a 721a50f3      	bset	20723,#5
 677  026e               L171:
 678                     ; 396 				RealTimeSecondNumberShow = NumberToNumberShow(RealTimeSecond, Clear, Set);
 680  026e 4b01          	push	#1
 681  0270 c60000        	ld	a,_RealTimeSecond
 682  0273 5f            	clrw	x
 683  0274 95            	ld	xh,a
 684  0275 cd0657        	call	_NumberToNumberShow
 686  0278 cf0000        	ldw	_RealTimeSecondNumberShow,x
 687  027b 84            	pop	a
 688                     ; 397 				RealTimeMinuteNumberShow = NumberToNumberShow(RealTimeMinute, LowPoint, Set);
 690  027c 4b01          	push	#1
 691  027e c60000        	ld	a,_RealTimeMinute
 692  0281 ae0002        	ldw	x,#2
 693  0284 95            	ld	xh,a
 694  0285 cd0657        	call	_NumberToNumberShow
 696  0288 cf0000        	ldw	_RealTimeMinuteNumberShow,x
 697  028b 84            	pop	a
 698  028c               L531:
 699                     ; 402 }
 702  028c 81            	ret	
 798                     ; 406 void EncoderService (void)
 798                     ; 407 {
 799                     	switch	.text
 800  028d               _EncoderService:
 802  028d 5207          	subw	sp,#7
 803       00000007      OFST:	set	7
 806                     ; 410 	unsigned short ChenalNumberTemp = 0;
 808                     ; 412 	Taskboard.EncoderPolling = Clear;
 810  028f 72130000      	bres	_Taskboard,#1
 811                     ; 414   NewStateEncoder1 = (GPIO_ReadInputData(GPIOA) & (E1A|E1B));
 813  0293 ae5000        	ldw	x,#20480
 814  0296 cd0000        	call	_GPIO_ReadInputData
 816  0299 a418          	and	a,#24
 817  029b 6b01          	ld	(OFST-6,sp),a
 819                     ; 415 	NewStateEncoder2 = (GPIO_ReadInputData(GPIOA) & (E2A|E2B));
 821  029d ae5000        	ldw	x,#20480
 822  02a0 cd0000        	call	_GPIO_ReadInputData
 824  02a3 a460          	and	a,#96
 825  02a5 6b02          	ld	(OFST-5,sp),a
 827                     ; 416 	NewStateEncoder3 = (GPIO_ReadInputData(GPIOG) & (E3A|E3B));
 829  02a7 ae501e        	ldw	x,#20510
 830  02aa cd0000        	call	_GPIO_ReadInputData
 832  02ad a403          	and	a,#3
 833  02af 6b03          	ld	(OFST-4,sp),a
 835                     ; 417 	NewStateEncoder4 = (GPIO_ReadInputData(GPIOE) & (E4A|E4B));
 837  02b1 ae5014        	ldw	x,#20500
 838  02b4 cd0000        	call	_GPIO_ReadInputData
 840  02b7 a460          	and	a,#96
 841  02b9 6b04          	ld	(OFST-3,sp),a
 843                     ; 418 	NewStateEncoder5 = (GPIO_ReadInputData(GPIOE) & (E5A|E5B));
 845  02bb ae5014        	ldw	x,#20500
 846  02be cd0000        	call	_GPIO_ReadInputData
 848  02c1 a409          	and	a,#9
 849  02c3 6b05          	ld	(OFST-2,sp),a
 851                     ; 422 	switch (StateEncoder1)
 853  02c5 c60000        	ld	a,_StateEncoder1
 855                     ; 476 		default : break;
 856  02c8 270f          	jreq	L371
 857  02ca 4a            	dec	a
 858  02cb 2724          	jreq	L571
 859  02cd 4a            	dec	a
 860  02ce 2731          	jreq	L771
 861  02d0 4a            	dec	a
 862  02d1 274a          	jreq	L102
 863  02d3 4a            	dec	a
 864  02d4 275d          	jreq	L302
 865  02d6 cc0376        	jra	L713
 866  02d9               L371:
 867                     ; 426 			if ((NewStateEncoder1 & E1A) == 0) StateEncoder1 = 1; 
 869  02d9 7b01          	ld	a,(OFST-6,sp)
 870  02db a508          	bcp	a,#8
 871  02dd 2607          	jrne	L123
 874  02df 35010000      	mov	_StateEncoder1,#1
 876  02e3 cc0376        	jra	L713
 877  02e6               L123:
 878                     ; 427 			else if ((NewStateEncoder1 & E1B) == 0) StateEncoder1 = 3;
 880  02e6 a510          	bcp	a,#16
 881  02e8 26f9          	jrne	L713
 884  02ea 35030000      	mov	_StateEncoder1,#3
 885  02ee cc0376        	jra	L713
 886  02f1               L571:
 887                     ; 432 			if ((NewStateEncoder1 & E1A) == 0) 
 889  02f1 7b01          	ld	a,(OFST-6,sp)
 890  02f3 a508          	bcp	a,#8
 891  02f5 2636          	jrne	L343
 892                     ; 434 				if ((NewStateEncoder1 & E1B) == 0) StateEncoder1 = 2;
 894  02f7 a510          	bcp	a,#16
 895  02f9 267b          	jrne	L713
 898  02fb 35020000      	mov	_StateEncoder1,#2
 899  02ff 2075          	jra	L713
 900                     ; 436 			else StateEncoder1 = 0; 
 901  0301               L771:
 902                     ; 441 			if ((NewStateEncoder1 & E1B) != 0) 
 904  0301 7b01          	ld	a,(OFST-6,sp)
 905  0303 a510          	bcp	a,#16
 906  0305 276f          	jreq	L713
 907                     ; 443 				StateEncoder1 = 0; 
 909  0307 725f0000      	clr	_StateEncoder1
 910                     ; 444 				if ((Chenal1Number<99) & (Device2.Chenal1Show == Set)) 
 912  030b c60000        	ld	a,_Chenal1Number
 913  030e a163          	cp	a,#99
 914  0310 2464          	jruge	L713
 916  0312 720100005f    	btjf	_Device2,#0,L713
 917                     ; 446 					Chenal1Number++;
 919  0317 725c0000      	inc	_Chenal1Number
 920                     ; 447 					ChenalNumberTemp = Chenal1Number;
 921                     ; 448 					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
 922                     ; 449 					Chenal1NumberPWM = (unsigned char)ChenalNumberTemp;
 923                     ; 450 					Chenal1NumberShow = NumberToNumberShow(Chenal1Number, Clear, Clear); 
 925                     ; 451 					RealTimeCounter = 0 ; 
 927                     ; 452 					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
 929  031b 202e          	jp	LC004
 930  031d               L102:
 931                     ; 457 		case 3 : {if ((NewStateEncoder1 & E1B) == 0) {if ((NewStateEncoder1 & E1A) == 0) StateEncoder1 = 4;} else StateEncoder1 = 0; break;}
 933  031d 7b01          	ld	a,(OFST-6,sp)
 934  031f a510          	bcp	a,#16
 935  0321 260a          	jrne	L343
 938  0323 a508          	bcp	a,#8
 939  0325 264f          	jrne	L713
 942  0327 35040000      	mov	_StateEncoder1,#4
 943  032b 2049          	jra	L713
 944  032d               L343:
 948  032d 725f0000      	clr	_StateEncoder1
 949  0331 2043          	jra	L713
 950  0333               L302:
 951                     ; 460 			if ((NewStateEncoder1 & E1A) != 0) 
 953  0333 7b01          	ld	a,(OFST-6,sp)
 954  0335 a508          	bcp	a,#8
 955  0337 273d          	jreq	L713
 956                     ; 462 				StateEncoder1 = 0; 
 958  0339 725f0000      	clr	_StateEncoder1
 959                     ; 463 				if ((Chenal1Number>0) & (Device2.Chenal1Show == Set)) 
 961  033d c60000        	ld	a,_Chenal1Number
 962  0340 2734          	jreq	L713
 964  0342 720100002f    	btjf	_Device2,#0,L713
 965                     ; 465 					Chenal1Number--;
 967  0347 725a0000      	dec	_Chenal1Number
 968                     ; 466 					ChenalNumberTemp = Chenal1Number;
 970                     ; 467 					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
 972                     ; 468 					Chenal1NumberPWM = (unsigned char)ChenalNumberTemp;					
 974                     ; 469 					Chenal1NumberShow = NumberToNumberShow(Chenal1Number, Clear, Clear); 
 977                     ; 470 					RealTimeCounter = 0; 					
 979                     ; 471 					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
 983  034b               LC004:
 985  034b c60000        	ld	a,_Chenal1Number
 986  034e 5f            	clrw	x
 987  034f 97            	ld	xl,a
 990  0350 58            	sllw	x
 991  0351 a603          	ld	a,#3
 992  0353 62            	div	x,a
 993  0354 1f06          	ldw	(OFST-1,sp),x
 996  0356 7b07          	ld	a,(OFST+0,sp)
 997  0358 c70000        	ld	_Chenal1NumberPWM,a
 999  035b 4b00          	push	#0
1000  035d c60000        	ld	a,_Chenal1Number
1001  0360 5f            	clrw	x
1002  0361 95            	ld	xh,a
1003  0362 cd0657        	call	_NumberToNumberShow
1004  0365 cf0000        	ldw	_Chenal1NumberShow,x
1005  0368 725f0000      	clr	_RealTimeCounter
1006  036c 84            	pop	a
1008  036d 720a000004    	btjt	_Device,#5,L713
1010  0372 72180000      	bset	_Taskboard,#4
1011                     ; 476 		default : break;
1013  0376               L713:
1014                     ; 479 	switch (StateEncoder2)
1016  0376 c60000        	ld	a,_StateEncoder2
1018                     ; 520 		default : break;
1019  0379 270f          	jreq	L702
1020  037b 4a            	dec	a
1021  037c 2724          	jreq	L112
1022  037e 4a            	dec	a
1023  037f 2731          	jreq	L312
1024  0381 4a            	dec	a
1025  0382 274a          	jreq	L512
1026  0384 4a            	dec	a
1027  0385 275d          	jreq	L712
1028  0387 cc0427        	jra	L163
1029  038a               L702:
1030                     ; 481 		case 0 : {if ((NewStateEncoder2 & E2A) == 0) StateEncoder2 = 1; else if ((NewStateEncoder2 & E2B) == 0) StateEncoder2 = 3; break;}
1032  038a 7b02          	ld	a,(OFST-5,sp)
1033  038c a520          	bcp	a,#32
1034  038e 2607          	jrne	L363
1037  0390 35010000      	mov	_StateEncoder2,#1
1039  0394 cc0427        	jra	L163
1040  0397               L363:
1043  0397 a540          	bcp	a,#64
1044  0399 26f9          	jrne	L163
1047  039b 35030000      	mov	_StateEncoder2,#3
1048  039f cc0427        	jra	L163
1049  03a2               L112:
1050                     ; 482 		case 1 : {if ((NewStateEncoder2 & E2A) == 0) {if ((NewStateEncoder2 & E2B) == 0) StateEncoder2 = 2;} else StateEncoder2 = 0; break;}
1052  03a2 7b02          	ld	a,(OFST-5,sp)
1053  03a4 a520          	bcp	a,#32
1054  03a6 2636          	jrne	L504
1057  03a8 a540          	bcp	a,#64
1058  03aa 267b          	jrne	L163
1061  03ac 35020000      	mov	_StateEncoder2,#2
1062  03b0 2075          	jra	L163
1064  03b2               L312:
1065                     ; 485 			if ((NewStateEncoder2 & E2B) != 0) 
1067  03b2 7b02          	ld	a,(OFST-5,sp)
1068  03b4 a540          	bcp	a,#64
1069  03b6 276f          	jreq	L163
1070                     ; 487 				StateEncoder2 = 0; 
1072  03b8 725f0000      	clr	_StateEncoder2
1073                     ; 488 				if ((Chenal2Number<99) & (Device2.Chenal2Show == Set)) 
1075  03bc c60000        	ld	a,_Chenal2Number
1076  03bf a163          	cp	a,#99
1077  03c1 2464          	jruge	L163
1079  03c3 720300005f    	btjf	_Device2,#1,L163
1080                     ; 490 					Chenal2Number++; 
1082  03c8 725c0000      	inc	_Chenal2Number
1083                     ; 491 					ChenalNumberTemp = Chenal2Number;
1084                     ; 492 					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
1085                     ; 493 					Chenal2NumberPWM = (unsigned char)ChenalNumberTemp; 
1086                     ; 494 					Chenal2NumberShow = NumberToNumberShow(Chenal2Number, Clear, Clear); 
1088                     ; 495 					RealTimeCounter = 0; 
1090                     ; 496 					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
1092  03cc 202e          	jp	LC006
1093  03ce               L512:
1094                     ; 501 		case 3 : {if ((NewStateEncoder2 & E2B) == 0) {if ((NewStateEncoder2 & E2A) == 0) StateEncoder2 = 4;} else StateEncoder2 = 0; break;}
1096  03ce 7b02          	ld	a,(OFST-5,sp)
1097  03d0 a540          	bcp	a,#64
1098  03d2 260a          	jrne	L504
1101  03d4 a520          	bcp	a,#32
1102  03d6 264f          	jrne	L163
1105  03d8 35040000      	mov	_StateEncoder2,#4
1106  03dc 2049          	jra	L163
1107  03de               L504:
1111  03de 725f0000      	clr	_StateEncoder2
1112  03e2 2043          	jra	L163
1113  03e4               L712:
1114                     ; 504 			if ((NewStateEncoder2 & E2A) != 0) 
1116  03e4 7b02          	ld	a,(OFST-5,sp)
1117  03e6 a520          	bcp	a,#32
1118  03e8 273d          	jreq	L163
1119                     ; 506 				StateEncoder2 = 0; 
1121  03ea 725f0000      	clr	_StateEncoder2
1122                     ; 507 				if ((Chenal2Number>0) & (Device2.Chenal2Show == Set)) 
1124  03ee c60000        	ld	a,_Chenal2Number
1125  03f1 2734          	jreq	L163
1127  03f3 720300002f    	btjf	_Device2,#1,L163
1128                     ; 509 					Chenal2Number--;
1130  03f8 725a0000      	dec	_Chenal2Number
1131                     ; 510 					ChenalNumberTemp = Chenal2Number;
1133                     ; 511 					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
1135                     ; 512 					Chenal2NumberPWM = (unsigned char)ChenalNumberTemp;					
1137                     ; 513 					Chenal2NumberShow = NumberToNumberShow(Chenal2Number, Clear, Clear); 
1140                     ; 514 					RealTimeCounter = 0; 
1142                     ; 515 					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
1146  03fc               LC006:
1148  03fc c60000        	ld	a,_Chenal2Number
1149  03ff 5f            	clrw	x
1150  0400 97            	ld	xl,a
1153  0401 58            	sllw	x
1154  0402 a603          	ld	a,#3
1155  0404 62            	div	x,a
1156  0405 1f06          	ldw	(OFST-1,sp),x
1159  0407 7b07          	ld	a,(OFST+0,sp)
1160  0409 c70000        	ld	_Chenal2NumberPWM,a
1162  040c 4b00          	push	#0
1163  040e c60000        	ld	a,_Chenal2Number
1164  0411 5f            	clrw	x
1165  0412 95            	ld	xh,a
1166  0413 cd0657        	call	_NumberToNumberShow
1167  0416 cf0000        	ldw	_Chenal2NumberShow,x
1168  0419 725f0000      	clr	_RealTimeCounter
1169  041d 84            	pop	a
1171  041e 720a000004    	btjt	_Device,#5,L163
1173  0423 72180000      	bset	_Taskboard,#4
1174                     ; 520 		default : break;
1176  0427               L163:
1177                     ; 523 	switch (StateEncoder3)
1179  0427 c60000        	ld	a,_StateEncoder3
1181                     ; 564 		default : break;
1182  042a 270f          	jreq	L322
1183  042c 4a            	dec	a
1184  042d 2724          	jreq	L522
1185  042f 4a            	dec	a
1186  0430 2731          	jreq	L722
1187  0432 4a            	dec	a
1188  0433 274a          	jreq	L132
1189  0435 4a            	dec	a
1190  0436 275d          	jreq	L332
1191  0438 cc04d8        	jra	L324
1192  043b               L322:
1193                     ; 525 		case 0 : {if ((NewStateEncoder3 & E3A) == 0) StateEncoder3 = 1; else if ((NewStateEncoder3 & E3B) == 0) StateEncoder3 = 3; break;}
1195  043b 7b03          	ld	a,(OFST-4,sp)
1196  043d a502          	bcp	a,#2
1197  043f 2607          	jrne	L524
1200  0441 35010000      	mov	_StateEncoder3,#1
1202  0445 cc04d8        	jra	L324
1203  0448               L524:
1206  0448 a501          	bcp	a,#1
1207  044a 26f9          	jrne	L324
1210  044c 35030000      	mov	_StateEncoder3,#3
1211  0450 cc04d8        	jra	L324
1212  0453               L522:
1213                     ; 526 		case 1 : {if ((NewStateEncoder3 & E3A) == 0) {if ((NewStateEncoder3 & E3B) == 0) StateEncoder3 = 2;} else StateEncoder3 = 0; break;}
1215  0453 7b03          	ld	a,(OFST-4,sp)
1216  0455 a502          	bcp	a,#2
1217  0457 2636          	jrne	L744
1220  0459 a501          	bcp	a,#1
1221  045b 267b          	jrne	L324
1224  045d 35020000      	mov	_StateEncoder3,#2
1225  0461 2075          	jra	L324
1227  0463               L722:
1228                     ; 529 			if ((NewStateEncoder3 & E3B) != 0) 
1230  0463 7b03          	ld	a,(OFST-4,sp)
1231  0465 a501          	bcp	a,#1
1232  0467 276f          	jreq	L324
1233                     ; 531 				StateEncoder3 = 0; 
1235  0469 725f0000      	clr	_StateEncoder3
1236                     ; 532 				if ((Chenal3Number<99) & (Device2.Chenal3Show == Set))
1238  046d c60000        	ld	a,_Chenal3Number
1239  0470 a163          	cp	a,#99
1240  0472 2464          	jruge	L324
1242  0474 720500005f    	btjf	_Device2,#2,L324
1243                     ; 534 					Chenal3Number++;
1245  0479 725c0000      	inc	_Chenal3Number
1246                     ; 535 					ChenalNumberTemp = Chenal3Number;
1247                     ; 536 					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
1248                     ; 537 					Chenal3NumberPWM = (unsigned char)ChenalNumberTemp;					
1249                     ; 538 					Chenal3NumberShow = NumberToNumberShow(Chenal3Number, Clear, Clear); 
1251                     ; 539 					RealTimeCounter = 0; 
1253                     ; 540 					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
1255  047d 202e          	jp	LC008
1256  047f               L132:
1257                     ; 545 		case 3 : {if ((NewStateEncoder3 & E3B) == 0) {if ((NewStateEncoder3 & E3A) == 0) StateEncoder3 = 4;} else StateEncoder3 = 0; break;}
1259  047f 7b03          	ld	a,(OFST-4,sp)
1260  0481 a501          	bcp	a,#1
1261  0483 260a          	jrne	L744
1264  0485 a502          	bcp	a,#2
1265  0487 264f          	jrne	L324
1268  0489 35040000      	mov	_StateEncoder3,#4
1269  048d 2049          	jra	L324
1270  048f               L744:
1274  048f 725f0000      	clr	_StateEncoder3
1275  0493 2043          	jra	L324
1276  0495               L332:
1277                     ; 548 			if ((NewStateEncoder3 & E3A) != 0) 
1279  0495 7b03          	ld	a,(OFST-4,sp)
1280  0497 a502          	bcp	a,#2
1281  0499 273d          	jreq	L324
1282                     ; 550 				StateEncoder3 = 0; 
1284  049b 725f0000      	clr	_StateEncoder3
1285                     ; 551 				if ((Chenal3Number>0) & (Device2.Chenal3Show == Set)) 
1287  049f c60000        	ld	a,_Chenal3Number
1288  04a2 2734          	jreq	L324
1290  04a4 720500002f    	btjf	_Device2,#2,L324
1291                     ; 553 					Chenal3Number--;
1293  04a9 725a0000      	dec	_Chenal3Number
1294                     ; 554 					ChenalNumberTemp = Chenal3Number;
1296                     ; 555 					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
1298                     ; 556 					Chenal3NumberPWM = (unsigned char)ChenalNumberTemp;				
1300                     ; 557 					Chenal3NumberShow = NumberToNumberShow(Chenal3Number, Clear, Clear); 
1303                     ; 558 					RealTimeCounter = 0; 
1305                     ; 559 					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
1309  04ad               LC008:
1311  04ad c60000        	ld	a,_Chenal3Number
1312  04b0 5f            	clrw	x
1313  04b1 97            	ld	xl,a
1316  04b2 58            	sllw	x
1317  04b3 a603          	ld	a,#3
1318  04b5 62            	div	x,a
1319  04b6 1f06          	ldw	(OFST-1,sp),x
1322  04b8 7b07          	ld	a,(OFST+0,sp)
1323  04ba c70000        	ld	_Chenal3NumberPWM,a
1325  04bd 4b00          	push	#0
1326  04bf c60000        	ld	a,_Chenal3Number
1327  04c2 5f            	clrw	x
1328  04c3 95            	ld	xh,a
1329  04c4 cd0657        	call	_NumberToNumberShow
1330  04c7 cf0000        	ldw	_Chenal3NumberShow,x
1331  04ca 725f0000      	clr	_RealTimeCounter
1332  04ce 84            	pop	a
1334  04cf 720a000004    	btjt	_Device,#5,L324
1336  04d4 72180000      	bset	_Taskboard,#4
1337                     ; 564 		default : break;
1339  04d8               L324:
1340                     ; 567 	switch (StateEncoder4)
1342  04d8 c60000        	ld	a,_StateEncoder4
1344                     ; 608 		default : break;
1345  04db 270f          	jreq	L732
1346  04dd 4a            	dec	a
1347  04de 2724          	jreq	L142
1348  04e0 4a            	dec	a
1349  04e1 2731          	jreq	L342
1350  04e3 4a            	dec	a
1351  04e4 274a          	jreq	L542
1352  04e6 4a            	dec	a
1353  04e7 275d          	jreq	L742
1354  04e9 cc0589        	jra	L564
1355  04ec               L732:
1356                     ; 569 		case 0 : {if ((NewStateEncoder4 & E4A) == 0) StateEncoder4 = 1; else if ((NewStateEncoder4 & E4B) == 0) StateEncoder4 = 3; break;}
1358  04ec 7b04          	ld	a,(OFST-3,sp)
1359  04ee a520          	bcp	a,#32
1360  04f0 2607          	jrne	L764
1363  04f2 35010000      	mov	_StateEncoder4,#1
1365  04f6 cc0589        	jra	L564
1366  04f9               L764:
1369  04f9 a540          	bcp	a,#64
1370  04fb 26f9          	jrne	L564
1373  04fd 35030000      	mov	_StateEncoder4,#3
1374  0501 cc0589        	jra	L564
1375  0504               L142:
1376                     ; 570 		case 1 : {if ((NewStateEncoder4 & E4A) == 0) {if ((NewStateEncoder4 & E4B) == 0) StateEncoder4 = 2;} else StateEncoder4 = 0; break;}
1378  0504 7b04          	ld	a,(OFST-3,sp)
1379  0506 a520          	bcp	a,#32
1380  0508 2636          	jrne	L115
1383  050a a540          	bcp	a,#64
1384  050c 267b          	jrne	L564
1387  050e 35020000      	mov	_StateEncoder4,#2
1388  0512 2075          	jra	L564
1390  0514               L342:
1391                     ; 573 			if ((NewStateEncoder4 & E4B) != 0) 
1393  0514 7b04          	ld	a,(OFST-3,sp)
1394  0516 a540          	bcp	a,#64
1395  0518 276f          	jreq	L564
1396                     ; 575 				StateEncoder4 = 0; 
1398  051a 725f0000      	clr	_StateEncoder4
1399                     ; 576 				if ((Chenal4Number<99) & (Device2.Chenal4Show == Set)) 
1401  051e c60000        	ld	a,_Chenal4Number
1402  0521 a163          	cp	a,#99
1403  0523 2464          	jruge	L564
1405  0525 720700005f    	btjf	_Device2,#3,L564
1406                     ; 578 					Chenal4Number++;
1408  052a 725c0000      	inc	_Chenal4Number
1409                     ; 579 					ChenalNumberTemp = Chenal4Number;
1410                     ; 580 					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
1411                     ; 581 					Chenal4NumberPWM = (unsigned char)ChenalNumberTemp;					
1412                     ; 582 					Chenal4NumberShow = NumberToNumberShow(Chenal4Number, Clear, Clear); 
1414                     ; 583 					RealTimeCounter = 0; 
1416                     ; 584 					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
1418  052e 202e          	jp	LC010
1419  0530               L542:
1420                     ; 589 		case 3 : {if ((NewStateEncoder4 & E4B) == 0) {if ((NewStateEncoder4 & E4A) == 0) StateEncoder4 = 4;} else StateEncoder4 = 0; break;}
1422  0530 7b04          	ld	a,(OFST-3,sp)
1423  0532 a540          	bcp	a,#64
1424  0534 260a          	jrne	L115
1427  0536 a520          	bcp	a,#32
1428  0538 264f          	jrne	L564
1431  053a 35040000      	mov	_StateEncoder4,#4
1432  053e 2049          	jra	L564
1433  0540               L115:
1437  0540 725f0000      	clr	_StateEncoder4
1438  0544 2043          	jra	L564
1439  0546               L742:
1440                     ; 592 			if ((NewStateEncoder4 & E4A) != 0) 
1442  0546 7b04          	ld	a,(OFST-3,sp)
1443  0548 a520          	bcp	a,#32
1444  054a 273d          	jreq	L564
1445                     ; 594 				StateEncoder4 = 0; 
1447  054c 725f0000      	clr	_StateEncoder4
1448                     ; 595 				if ((Chenal4Number>0) & (Device2.Chenal4Show == Set)) 
1450  0550 c60000        	ld	a,_Chenal4Number
1451  0553 2734          	jreq	L564
1453  0555 720700002f    	btjf	_Device2,#3,L564
1454                     ; 597 					Chenal4Number--; 
1456  055a 725a0000      	dec	_Chenal4Number
1457                     ; 598 					ChenalNumberTemp = Chenal4Number;
1459                     ; 599 					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
1461                     ; 600 					Chenal4NumberPWM = (unsigned char)ChenalNumberTemp;
1463                     ; 601 					Chenal4NumberShow = NumberToNumberShow(Chenal4Number, Clear, Clear); 
1466                     ; 602 					RealTimeCounter = 0; 
1468                     ; 603 					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
1472  055e               LC010:
1474  055e c60000        	ld	a,_Chenal4Number
1475  0561 5f            	clrw	x
1476  0562 97            	ld	xl,a
1479  0563 58            	sllw	x
1480  0564 a603          	ld	a,#3
1481  0566 62            	div	x,a
1482  0567 1f06          	ldw	(OFST-1,sp),x
1485  0569 7b07          	ld	a,(OFST+0,sp)
1486  056b c70000        	ld	_Chenal4NumberPWM,a
1488  056e 4b00          	push	#0
1489  0570 c60000        	ld	a,_Chenal4Number
1490  0573 5f            	clrw	x
1491  0574 95            	ld	xh,a
1492  0575 cd0657        	call	_NumberToNumberShow
1493  0578 cf0000        	ldw	_Chenal4NumberShow,x
1494  057b 725f0000      	clr	_RealTimeCounter
1495  057f 84            	pop	a
1497  0580 720a000004    	btjt	_Device,#5,L564
1499  0585 72180000      	bset	_Taskboard,#4
1500                     ; 608 		default : break;
1502  0589               L564:
1503                     ; 611 	switch (StateEncoder5)
1505  0589 c60000        	ld	a,_StateEncoder5
1507                     ; 662 		default : break;
1508  058c 270f          	jreq	L352
1509  058e 4a            	dec	a
1510  058f 2724          	jreq	L552
1511  0591 4a            	dec	a
1512  0592 2732          	jreq	L752
1513  0594 4a            	dec	a
1514  0595 274d          	jreq	L162
1515  0597 4a            	dec	a
1516  0598 2760          	jreq	L362
1517  059a cc0654        	jra	L725
1518  059d               L352:
1519                     ; 613 		case 0 : {if ((NewStateEncoder5 & E5A) == 0) StateEncoder5 = 1; else if ((NewStateEncoder5 & E5B) == 0) StateEncoder5 = 3; break;}
1521  059d 7b05          	ld	a,(OFST-2,sp)
1522  059f a501          	bcp	a,#1
1523  05a1 2607          	jrne	L135
1526  05a3 35010000      	mov	_StateEncoder5,#1
1528  05a7 cc0654        	jra	L725
1529  05aa               L135:
1532  05aa a508          	bcp	a,#8
1533  05ac 26f9          	jrne	L725
1536  05ae 35030000      	mov	_StateEncoder5,#3
1537  05b2 cc0654        	jra	L725
1538  05b5               L552:
1539                     ; 614 		case 1 : {if ((NewStateEncoder5 & E5A) == 0) {if ((NewStateEncoder5 & E5B) == 0) StateEncoder5 = 2;} else StateEncoder5 = 0; break;}
1541  05b5 7b05          	ld	a,(OFST-2,sp)
1542  05b7 a501          	bcp	a,#1
1543  05b9 2639          	jrne	L155
1546  05bb a508          	bcp	a,#8
1547  05bd 26f3          	jrne	L725
1550  05bf 35020000      	mov	_StateEncoder5,#2
1551  05c3 cc0654        	jra	L725
1553  05c6               L752:
1554                     ; 616 							if ((NewStateEncoder5 & E5B) != 0) 
1556  05c6 7b05          	ld	a,(OFST-2,sp)
1557  05c8 a508          	bcp	a,#8
1558  05ca 27f7          	jreq	L725
1559                     ; 618 								StateEncoder5 = 0; 
1561  05cc 725f0000      	clr	_StateEncoder5
1562                     ; 620 								RealTimeSecond = 0;
1564  05d0 725f0000      	clr	_RealTimeSecond
1565                     ; 622 								if (RealTimeMinute<99) RealTimeMinute++;
1567  05d4 c60000        	ld	a,_RealTimeMinute
1568  05d7 a163          	cp	a,#99
1569  05d9 2404          	jruge	L745
1572  05db 725c0000      	inc	_RealTimeMinute
1573  05df               L745:
1574                     ; 624 								RealTimeSecondNumberShow = NumberToNumberShow(RealTimeSecond, Clear, Set);
1576  05df 4b01          	push	#1
1577  05e1 5f            	clrw	x
1579                     ; 625 								RealTimeMinuteNumberShow = NumberToNumberShow(RealTimeMinute, LowPoint, Set);
1581  05e2 205b          	jp	LC012
1582  05e4               L162:
1583                     ; 630 		case 3 : {if ((NewStateEncoder5 & E5B) == 0) {if ((NewStateEncoder5 & E5A) == 0) StateEncoder5 = 4;} else StateEncoder5 = 0; break;}
1585  05e4 7b05          	ld	a,(OFST-2,sp)
1586  05e6 a508          	bcp	a,#8
1587  05e8 260a          	jrne	L155
1590  05ea a501          	bcp	a,#1
1591  05ec 2666          	jrne	L725
1594  05ee 35040000      	mov	_StateEncoder5,#4
1595  05f2 2060          	jra	L725
1596  05f4               L155:
1600  05f4 725f0000      	clr	_StateEncoder5
1601  05f8 205a          	jra	L725
1602  05fa               L362:
1603                     ; 632 							if ((NewStateEncoder5 & E5A) != 0) 
1605  05fa 7b05          	ld	a,(OFST-2,sp)
1606  05fc a501          	bcp	a,#1
1607  05fe 2754          	jreq	L725
1608                     ; 634 								StateEncoder5 = 0; 
1610  0600 725f0000      	clr	_StateEncoder5
1611                     ; 636 								RealTimeSecond = 0;
1613  0604 725f0000      	clr	_RealTimeSecond
1614                     ; 638 								if (RealTimeMinute > 1) RealTimeMinute--;
1616  0608 c60000        	ld	a,_RealTimeMinute
1617  060b a102          	cp	a,#2
1618  060d 2506          	jrult	L165
1621  060f 725a0000      	dec	_RealTimeMinute
1623  0613 2023          	jra	L365
1624  0615               L165:
1625                     ; 641 									RealTimeMinute = 0;
1627  0615 725f0000      	clr	_RealTimeMinute
1628                     ; 643 									Device.State = Stop;
1630  0619 721b0000      	bres	_Device,#5
1631                     ; 644 									LedData &=~ LedStart;									
1633  061d 721d0000      	bres	_LedData,#6
1634                     ; 645 									FunctionStopGenerator();
1636  0621 cd0829        	call	_FunctionStopGenerator
1638                     ; 647 									Device2.TestMode = Clear;
1640  0624 72190000      	bres	_Device2,#4
1641                     ; 649 									Device2.Chenal1Show = Set;
1643  0628 72100000      	bset	_Device2,#0
1644                     ; 650 									Device2.Chenal2Show = Set;
1646  062c 72120000      	bset	_Device2,#1
1647                     ; 651 									Device2.Chenal3Show = Set;
1649  0630 72140000      	bset	_Device2,#2
1650                     ; 652 									Device2.Chenal4Show = Set;
1652  0634 72160000      	bset	_Device2,#3
1653  0638               L365:
1654                     ; 656 								RealTimeSecondNumberShow = NumberToNumberShow(RealTimeSecond, Clear, Set);
1656  0638 4b01          	push	#1
1657  063a c60000        	ld	a,_RealTimeSecond
1658  063d 5f            	clrw	x
1659  063e 95            	ld	xh,a
1661                     ; 657 								RealTimeMinuteNumberShow = NumberToNumberShow(RealTimeMinute, LowPoint, Set);
1664  063f               LC012:
1665  063f ad16          	call	_NumberToNumberShow
1666  0641 cf0000        	ldw	_RealTimeSecondNumberShow,x
1667  0644 84            	pop	a
1669  0645 4b01          	push	#1
1670  0647 c60000        	ld	a,_RealTimeMinute
1671  064a ae0002        	ldw	x,#2
1672  064d 95            	ld	xh,a
1673  064e ad07          	call	_NumberToNumberShow
1674  0650 cf0000        	ldw	_RealTimeMinuteNumberShow,x
1675  0653 84            	pop	a
1676                     ; 662 		default : break;
1678  0654               L725:
1679                     ; 664 }
1682  0654 5b07          	addw	sp,#7
1683  0656 81            	ret	
1736                     ; 668 unsigned int NumberToNumberShow ( unsigned char NumberShowLow, unsigned char Point, unsigned char ShowHighZero)
1736                     ; 669 {
1737                     	switch	.text
1738  0657               _NumberToNumberShow:
1740  0657 89            	pushw	x
1741  0658 5203          	subw	sp,#3
1742       00000003      OFST:	set	3
1745                     ; 673    NumberShowHigh=0;
1747  065a 0f01          	clr	(OFST-2,sp)
1750  065c 7b04          	ld	a,(OFST+1,sp)
1751  065e 2006          	jra	L366
1752  0660               L756:
1753                     ; 677 		NumberShowHigh++;
1755  0660 0c01          	inc	(OFST-2,sp)
1757                     ; 678 		NumberShowLow -=10;
1759  0662 a00a          	sub	a,#10
1760  0664 6b04          	ld	(OFST+1,sp),a
1761  0666               L366:
1762                     ; 675   while (NumberShowLow>=10)
1764  0666 a10a          	cp	a,#10
1765  0668 24f6          	jruge	L756
1766                     ; 681   switch (NumberShowHigh)
1768  066a 7b01          	ld	a,(OFST-2,sp)
1770                     ; 692 		default : result=(zero<<8); break;//{if (ShowHighZero == Set) result=(zero<<8); else result=0; break;}
1771  066c 4a            	dec	a
1772  066d 2745          	jreq	L506
1773  066f 4a            	dec	a
1774  0670 273d          	jreq	L306
1775  0672 4a            	dec	a
1776  0673 2735          	jreq	L106
1777  0675 4a            	dec	a
1778  0676 272d          	jreq	L775
1779  0678 4a            	dec	a
1780  0679 2725          	jreq	L575
1781  067b 4a            	dec	a
1782  067c 271d          	jreq	L375
1783  067e 4a            	dec	a
1784  067f 2715          	jreq	L175
1785  0681 4a            	dec	a
1786  0682 270d          	jreq	L765
1787  0684 4a            	dec	a
1788  0685 2705          	jreq	L565
1791  0687 ae3f00        	ldw	x,#16128
1794  068a 202b          	jra	L176
1795  068c               L565:
1796                     ; 683     case 9 : result=(nine<<8); break;
1798  068c ae6f00        	ldw	x,#28416
1801  068f 2026          	jra	L176
1802  0691               L765:
1803                     ; 684     case 8 : result=(eight<<8); break;
1805  0691 ae7f00        	ldw	x,#32512
1808  0694 2021          	jra	L176
1809  0696               L175:
1810                     ; 685     case 7 : result=(seven<<8); break;
1812  0696 ae0700        	ldw	x,#1792
1815  0699 201c          	jra	L176
1816  069b               L375:
1817                     ; 686     case 6 : result=(six<<8); break;
1819  069b ae7d00        	ldw	x,#32000
1822  069e 2017          	jra	L176
1823  06a0               L575:
1824                     ; 687     case 5 : result=(five<<8); break;
1826  06a0 ae6d00        	ldw	x,#27904
1829  06a3 2012          	jra	L176
1830  06a5               L775:
1831                     ; 688     case 4 : result=(four<<8); break;
1833  06a5 ae6600        	ldw	x,#26112
1836  06a8 200d          	jra	L176
1837  06aa               L106:
1838                     ; 689     case 3 : result=(three<<8); break;
1840  06aa ae4f00        	ldw	x,#20224
1843  06ad 2008          	jra	L176
1844  06af               L306:
1845                     ; 690     case 2 : result=(two<<8); break;
1847  06af ae5b00        	ldw	x,#23296
1850  06b2 2003          	jra	L176
1851  06b4               L506:
1852                     ; 691     case 1 : result=(one<<8); break;
1854  06b4 ae0600        	ldw	x,#1536
1857  06b7               L176:
1858  06b7 1f02          	ldw	(OFST-1,sp),x
1860                     ; 695   switch (NumberShowLow)
1862  06b9 7b04          	ld	a,(OFST+1,sp)
1864                     ; 706     default : result |= zero; break;
1865  06bb 4a            	dec	a
1866  06bc 274e          	jreq	L136
1867  06be 4a            	dec	a
1868  06bf 2745          	jreq	L726
1869  06c1 4a            	dec	a
1870  06c2 273c          	jreq	L526
1871  06c4 4a            	dec	a
1872  06c5 2733          	jreq	L326
1873  06c7 4a            	dec	a
1874  06c8 272a          	jreq	L126
1875  06ca 4a            	dec	a
1876  06cb 2721          	jreq	L716
1877  06cd 4a            	dec	a
1878  06ce 2718          	jreq	L516
1879  06d0 4a            	dec	a
1880  06d1 270f          	jreq	L316
1881  06d3 4a            	dec	a
1882  06d4 2706          	jreq	L116
1885  06d6 7b03          	ld	a,(OFST+0,sp)
1886  06d8 aa3f          	or	a,#63
1889  06da 2034          	jra	L576
1890  06dc               L116:
1891                     ; 697     case 9 : result |= nine; break;
1893  06dc 7b03          	ld	a,(OFST+0,sp)
1894  06de aa6f          	or	a,#111
1897  06e0 202e          	jra	L576
1898  06e2               L316:
1899                     ; 698     case 8 : result |= eight; break;
1901  06e2 7b03          	ld	a,(OFST+0,sp)
1902  06e4 aa7f          	or	a,#127
1905  06e6 2028          	jra	L576
1906  06e8               L516:
1907                     ; 699     case 7 : result |= seven; break;
1909  06e8 7b03          	ld	a,(OFST+0,sp)
1910  06ea aa07          	or	a,#7
1913  06ec 2022          	jra	L576
1914  06ee               L716:
1915                     ; 700     case 6 : result |= six; break;
1917  06ee 7b03          	ld	a,(OFST+0,sp)
1918  06f0 aa7d          	or	a,#125
1921  06f2 201c          	jra	L576
1922  06f4               L126:
1923                     ; 701     case 5 : result |= five; break;
1925  06f4 7b03          	ld	a,(OFST+0,sp)
1926  06f6 aa6d          	or	a,#109
1929  06f8 2016          	jra	L576
1930  06fa               L326:
1931                     ; 702     case 4 : result |= four; break;
1933  06fa 7b03          	ld	a,(OFST+0,sp)
1934  06fc aa66          	or	a,#102
1937  06fe 2010          	jra	L576
1938  0700               L526:
1939                     ; 703     case 3 : result |= three; break;
1941  0700 7b03          	ld	a,(OFST+0,sp)
1942  0702 aa4f          	or	a,#79
1945  0704 200a          	jra	L576
1946  0706               L726:
1947                     ; 704     case 2 : result |= two; break;
1949  0706 7b03          	ld	a,(OFST+0,sp)
1950  0708 aa5b          	or	a,#91
1953  070a 2004          	jra	L576
1954  070c               L136:
1955                     ; 705     case 1 : result |= one; break;
1957  070c 7b03          	ld	a,(OFST+0,sp)
1958  070e aa06          	or	a,#6
1961  0710               L576:
1962  0710 6b03          	ld	(OFST+0,sp),a
1964                     ; 709 	if (Point == HighPoint)
1966  0712 7b05          	ld	a,(OFST+2,sp)
1967  0714 a101          	cp	a,#1
1968  0716 2608          	jrne	L776
1969                     ; 711 		result |=0x8000;
1971  0718 7b02          	ld	a,(OFST-1,sp)
1972  071a aa80          	or	a,#128
1973  071c 6b02          	ld	(OFST-1,sp),a
1975  071e 7b05          	ld	a,(OFST+2,sp)
1976  0720               L776:
1977                     ; 714 	if (Point == LowPoint)
1979  0720 a102          	cp	a,#2
1980  0722 2606          	jrne	L107
1981                     ; 716 		result |=0x0080;
1983  0724 7b03          	ld	a,(OFST+0,sp)
1984  0726 aa80          	or	a,#128
1985  0728 6b03          	ld	(OFST+0,sp),a
1987  072a               L107:
1988                     ; 719 	return result;
1990  072a 1e02          	ldw	x,(OFST-1,sp)
1993  072c 5b05          	addw	sp,#5
1994  072e 81            	ret	
2030                     ; 722 void ScreenUpdate(void)
2030                     ; 723 {
2031                     	switch	.text
2032  072f               _ScreenUpdate:
2036                     ; 724 	Taskboard.ScreenUpdate = Clear;
2038  072f 72170000      	bres	_Taskboard,#3
2039                     ; 726 	IndicatorsData[0] = LedData;
2041  0733 5500000000    	mov	_IndicatorsData,_LedData
2042                     ; 727 	IndicatorsData[1] = RealTimeSecondNumberShow;	
2044  0738 5500010001    	mov	_IndicatorsData+1,_RealTimeSecondNumberShow+1
2045                     ; 728 	IndicatorsData[2] = (RealTimeSecondNumberShow >> 8);
2047  073d 5500000002    	mov	_IndicatorsData+2,_RealTimeSecondNumberShow
2048                     ; 729 	IndicatorsData[3] = (RealTimeMinuteNumberShow|0x80);
2050  0742 c60001        	ld	a,_RealTimeMinuteNumberShow+1
2051  0745 aa80          	or	a,#128
2052  0747 c70003        	ld	_IndicatorsData+3,a
2053                     ; 730 	IndicatorsData[4] = (RealTimeMinuteNumberShow >> 8);
2055  074a 5500000004    	mov	_IndicatorsData+4,_RealTimeMinuteNumberShow
2056                     ; 732 	if (Device2.Chenal4Show == Set)
2058  074f 720700000c    	btjf	_Device2,#3,L317
2059                     ; 734 		IndicatorsData[5] = Chenal4NumberShow;
2061  0754 5500010005    	mov	_IndicatorsData+5,_Chenal4NumberShow+1
2062                     ; 735 		IndicatorsData[6] = (Chenal4NumberShow >> 8);
2064  0759 5500000006    	mov	_IndicatorsData+6,_Chenal4NumberShow
2066  075e 2008          	jra	L517
2067  0760               L317:
2068                     ; 739 		IndicatorsData[5] = 0;
2070  0760 725f0005      	clr	_IndicatorsData+5
2071                     ; 740 		IndicatorsData[6] = 0;
2073  0764 725f0006      	clr	_IndicatorsData+6
2074  0768               L517:
2075                     ; 743 	if (Device2.Chenal3Show == Set)
2077  0768 720500000c    	btjf	_Device2,#2,L717
2078                     ; 745 		IndicatorsData[7] = Chenal3NumberShow;
2080  076d 5500010007    	mov	_IndicatorsData+7,_Chenal3NumberShow+1
2081                     ; 746 		IndicatorsData[8] = (Chenal3NumberShow >> 8);
2083  0772 5500000008    	mov	_IndicatorsData+8,_Chenal3NumberShow
2085  0777 2008          	jra	L127
2086  0779               L717:
2087                     ; 750 		IndicatorsData[7] = 0;
2089  0779 725f0007      	clr	_IndicatorsData+7
2090                     ; 751 		IndicatorsData[8] = 0;
2092  077d 725f0008      	clr	_IndicatorsData+8
2093  0781               L127:
2094                     ; 754 	if (Device2.Chenal2Show == Set)
2096  0781 720300000c    	btjf	_Device2,#1,L327
2097                     ; 756 		IndicatorsData[9] = Chenal2NumberShow;
2099  0786 5500010009    	mov	_IndicatorsData+9,_Chenal2NumberShow+1
2100                     ; 757 		IndicatorsData[10] = (Chenal2NumberShow >> 8);
2102  078b 550000000a    	mov	_IndicatorsData+10,_Chenal2NumberShow
2104  0790 2008          	jra	L527
2105  0792               L327:
2106                     ; 761 		IndicatorsData[9] = 0;
2108  0792 725f0009      	clr	_IndicatorsData+9
2109                     ; 762 		IndicatorsData[10] = 0;
2111  0796 725f000a      	clr	_IndicatorsData+10
2112  079a               L527:
2113                     ; 765 	if (Device2.Chenal1Show == Set)
2115  079a 720100000c    	btjf	_Device2,#0,L727
2116                     ; 767 		IndicatorsData[11] = Chenal1NumberShow;
2118  079f 550001000b    	mov	_IndicatorsData+11,_Chenal1NumberShow+1
2119                     ; 768 		IndicatorsData[12] = (Chenal1NumberShow >> 8);
2121  07a4 550000000c    	mov	_IndicatorsData+12,_Chenal1NumberShow
2123  07a9 2008          	jra	L137
2124  07ab               L727:
2125                     ; 772 		IndicatorsData[11] = 0;
2127  07ab 725f000b      	clr	_IndicatorsData+11
2128                     ; 773 		IndicatorsData[12] = 0;
2130  07af 725f000c      	clr	_IndicatorsData+12
2131  07b3               L137:
2132                     ; 776 	IndicatorsDataPointer = 0;
2134  07b3 725f0000      	clr	_IndicatorsDataPointer
2135                     ; 778 	GPIO_WriteLow(GPIOC, LED_COM_C);
2137  07b7 4b80          	push	#128
2138  07b9 ae500a        	ldw	x,#20490
2139  07bc cd0000        	call	_GPIO_WriteLow
2141  07bf ae1701        	ldw	x,#5889
2142  07c2 84            	pop	a
2143                     ; 780 	SPI_ITConfig(SPI_IT_TXE, ENABLE);
2146                     ; 782 }
2149  07c3 cc0000        	jp	_SPI_ITConfig
2185                     ; 784 void FunctionStartGenerator(void)
2185                     ; 785 {																																
2186                     	switch	.text
2187  07c6               _FunctionStartGenerator:
2191                     ; 786 	CounterParselPeriod = 0;
2193  07c6 725f0000      	clr	_CounterParselPeriod
2194                     ; 787 	TIM2_AutoreloadValue = 1000;
2196  07ca ae03e8        	ldw	x,#1000
2197  07cd cf0000        	ldw	_TIM2_AutoreloadValue,x
2198                     ; 788 	TIM2_SetAutoreload(TIM2_AutoreloadValue);
2200  07d0 cd0000        	call	_TIM2_SetAutoreload
2202                     ; 789 	Device.Way = UpWay;
2204  07d3 721c0000      	bset	_Device,#6
2205                     ; 790 	CurrentPulsePeriod = 10000;
2207  07d7 ae2710        	ldw	x,#10000
2208  07da cf0000        	ldw	_CurrentPulsePeriod,x
2209                     ; 791 	Device.CnPol = PolarityP;
2211  07dd 721f0000      	bres	_Device,#7
2212                     ; 793 	if (Device.Mode == ModeB)
2214  07e1 c60000        	ld	a,_Device
2215  07e4 a406          	and	a,#6
2216  07e6 a102          	cp	a,#2
2217  07e8 261c          	jrne	L347
2218                     ; 798 		Device2.Chenal3Show = Clear;
2220                     ; 799 		Device2.Chenal4Show = Clear;
2222                     ; 804 		Device2.Chenal1Show = Set;
2224                     ; 805 		Device2.Chenal2Show = Set;
2226                     ; 807 		Chenal1Enable = Set;
2228  07ea c60000        	ld	a,_Device2
2229  07ed a4f3          	and	a,#243
2230  07ef aa03          	or	a,#3
2231  07f1 c70000        	ld	_Device2,a
2232  07f4 35010000      	mov	_Chenal1Enable,#1
2233                     ; 808 		Chenal2Enable = Set;
2235  07f8 35010000      	mov	_Chenal2Enable,#1
2236                     ; 809 		Chenal3Enable = Clear;
2238  07fc 725f0000      	clr	_Chenal3Enable
2239                     ; 810 		Chenal4Enable = Clear;
2241  0800 725f0000      	clr	_Chenal4Enable
2243  0804 2018          	jra	L547
2244  0806               L347:
2245                     ; 820 		Device2.Chenal1Show = Set;
2247                     ; 821 		Device2.Chenal2Show = Set;
2249                     ; 822 		Device2.Chenal3Show = Set;
2251                     ; 823 		Device2.Chenal4Show = Set;		
2253                     ; 825 		Chenal1Enable = Set;
2255  0806 c60000        	ld	a,_Device2
2256  0809 aa0f          	or	a,#15
2257  080b c70000        	ld	_Device2,a
2258  080e 35010000      	mov	_Chenal1Enable,#1
2259                     ; 826 		Chenal2Enable = Set;
2261  0812 35010000      	mov	_Chenal2Enable,#1
2262                     ; 827 		Chenal3Enable = Set;
2264  0816 35010000      	mov	_Chenal3Enable,#1
2265                     ; 828 		Chenal4Enable = Set;
2267  081a 35010000      	mov	_Chenal4Enable,#1
2268  081e               L547:
2269                     ; 831 	TIM2_SetCounter(1);
2271  081e ae0001        	ldw	x,#1
2272  0821 cd0000        	call	_TIM2_SetCounter
2274                     ; 832 	TIM2_Cmd(ENABLE);
2276  0824 a601          	ld	a,#1
2278                     ; 833 }
2281  0826 cc0000        	jp	_TIM2_Cmd
2310                     ; 835 void FunctionStopGenerator(void)
2310                     ; 836 {
2311                     	switch	.text
2312  0829               _FunctionStopGenerator:
2316                     ; 837 	TIM2_Cmd(DISABLE);
2318  0829 4f            	clr	a
2319  082a cd0000        	call	_TIM2_Cmd
2321                     ; 839 	Chenal1Enable = Clear;
2323  082d 725f0000      	clr	_Chenal1Enable
2324                     ; 840 	Chenal2Enable = Clear;
2326  0831 725f0000      	clr	_Chenal2Enable
2327                     ; 841 	Chenal3Enable = Clear;
2329  0835 725f0000      	clr	_Chenal3Enable
2330                     ; 842 	Chenal4Enable = Clear;
2332  0839 725f0000      	clr	_Chenal4Enable
2333                     ; 843 }
2336  083d 81            	ret	
2373                     ; 845 void StartTestPulse (void)
2373                     ; 846 {
2374                     	switch	.text
2375  083e               _StartTestPulse:
2379                     ; 847 	Taskboard.NeedTestPulse = Clear;
2381  083e 72190000      	bres	_Taskboard,#4
2382                     ; 849 	if (Device.State == Stop) 
2384  0842 720a000042    	btjt	_Device,#5,L767
2385                     ; 851 		Device2.TestMode = Set;
2387  0847 72180000      	bset	_Device2,#4
2388                     ; 853 		Device.State = Start;
2390  084b 721a0000      	bset	_Device,#5
2391                     ; 855 		RealTimeCounter = 0;
2393  084f 725f0000      	clr	_RealTimeCounter
2394                     ; 857 		CounterParselPeriod = 0;
2396  0853 725f0000      	clr	_CounterParselPeriod
2397                     ; 858 		TIM2_AutoreloadValue = 1000;
2399  0857 ae03e8        	ldw	x,#1000
2400  085a cf0000        	ldw	_TIM2_AutoreloadValue,x
2401                     ; 859 		TIM2_SetAutoreload(TIM2_AutoreloadValue);
2403  085d cd0000        	call	_TIM2_SetAutoreload
2405                     ; 860 		Device.Way = UpWay;
2407  0860 721c0000      	bset	_Device,#6
2408                     ; 861 		CurrentPulsePeriod = 10000;
2410  0864 ae2710        	ldw	x,#10000
2411  0867 cf0000        	ldw	_CurrentPulsePeriod,x
2412                     ; 862 		Device.CnPol = PolarityP;	
2414  086a 721f0000      	bres	_Device,#7
2415                     ; 869 		Chenal1Enable = Set;
2417  086e 35010000      	mov	_Chenal1Enable,#1
2418                     ; 870 		Chenal2Enable = Set;
2420  0872 35010000      	mov	_Chenal2Enable,#1
2421                     ; 871 		Chenal3Enable = Set;
2423  0876 35010000      	mov	_Chenal3Enable,#1
2424                     ; 872 		Chenal4Enable = Set;
2426  087a 35010000      	mov	_Chenal4Enable,#1
2427                     ; 874 		TIM2_SetCounter(1);
2429  087e ae0001        	ldw	x,#1
2430  0881 cd0000        	call	_TIM2_SetCounter
2432                     ; 875 		TIM2_Cmd(ENABLE); 
2434  0884 a601          	ld	a,#1
2435  0886 cd0000        	call	_TIM2_Cmd
2437  0889               L767:
2438                     ; 878 }
2441  0889 81            	ret	
2454                     	xdef	_StartTestPulse
2455                     	xdef	_FunctionStopGenerator
2456                     	xdef	_FunctionStartGenerator
2457                     	xdef	_ScreenUpdate
2458                     	xdef	_NumberToNumberShow
2459                     	xdef	_EncoderService
2460                     	xdef	_TimeService
2461                     	xdef	_ButtonsService
2462                     	xref	_TIM2_AutoreloadValue
2463                     	xref	_CurrentPulsePeriod
2464                     	xref	_CounterParselPeriod
2465                     	xref	_CounterButtonsDelay
2466                     	xref	_StateButtons
2467                     	xref	_StateEncoder5
2468                     	xref	_StateEncoder4
2469                     	xref	_StateEncoder3
2470                     	xref	_StateEncoder2
2471                     	xref	_StateEncoder1
2472                     	xref	_Chenal4NumberShow
2473                     	xref	_Chenal3NumberShow
2474                     	xref	_Chenal2NumberShow
2475                     	xref	_Chenal1NumberShow
2476                     	xref	_Chenal4NumberPWM
2477                     	xref	_Chenal3NumberPWM
2478                     	xref	_Chenal2NumberPWM
2479                     	xref	_Chenal1NumberPWM
2480                     	xref	_Chenal4Enable
2481                     	xref	_Chenal3Enable
2482                     	xref	_Chenal2Enable
2483                     	xref	_Chenal1Enable
2484                     	xref	_Chenal4Number
2485                     	xref	_Chenal3Number
2486                     	xref	_Chenal2Number
2487                     	xref	_Chenal1Number
2488                     	xref	_RealTimeMinuteNumberShow
2489                     	xref	_RealTimeSecondNumberShow
2490                     	xref	_BeepTimeCounte2
2491                     	xref	_BeepTimeCounter
2492                     	xref	_RealTimeMinute
2493                     	xref	_RealTimeSecond
2494                     	xref	_RealTimeCounter
2495                     	xref	_LedData
2496                     	xref	_IndicatorsDataPointer
2497                     	xref	_IndicatorsData
2498                     	xref	_Taskboard
2499                     	xref	_Device2
2500                     	xref	_Device
2501                     	xref	_TIM2_SetAutoreload
2502                     	xref	_TIM2_SetCounter
2503                     	xref	_TIM2_Cmd
2504                     	xref	_SPI_ITConfig
2505                     	xref	_GPIO_ReadInputData
2506                     	xref	_GPIO_WriteLow
2525                     	end
