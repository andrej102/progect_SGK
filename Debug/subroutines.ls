   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.21 - 04 Feb 2014
   3                     ; Generator (Limited) V4.3.12 - 11 Feb 2014
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
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
  83  0008 2603cc00d8    	jreq	L52
  84                     ; 17 				CounterButtonsDelay--;
  86  000d 725a0000      	dec	_CounterButtonsDelay
  87                     ; 18 				if (CounterButtonsDelay == 0)
  89  0011 2703cc00e7    	jrne	L37
  90                     ; 20           NewStateButtons = GPIO_ReadInputData  ( GPIOB );
  92  0016 ae5005        	ldw	x,#20485
  93  0019 cd0000        	call	_GPIO_ReadInputData
  95  001c 6b01          	ld	(OFST+0,sp),a
  96                     ; 22 					LedData &=~(LedA|LedB|LedC|LedP|LedN|LedPN);
  98  001e c60000        	ld	a,_LedData
  99  0021 a4c0          	and	a,#192
 100  0023 c70000        	ld	_LedData,a
 101                     ; 26 					if ((NewStateButtons & 0x20) == 0) 
 103  0026 7b01          	ld	a,(OFST+0,sp)
 104  0028 a520          	bcp	a,#32
 105                     ; 28 						LedData |= LedA;	
 106                     ; 29 						Device.Mode = ModeA;
 108  002a 2720          	jreq	L14
 109                     ; 33 						if ((NewStateButtons & 0x10) == 0) 
 111  002c a510          	bcp	a,#16
 112  002e 260a          	jrne	L53
 113                     ; 35 							LedData |= LedB;
 115  0030 721a0000      	bset	_LedData,#5
 116                     ; 36 							Device.Mode = ModeB;
 118  0034 72120000      	bset	_Device,#1
 120  0038 201a          	jp	LC001
 121  003a               L53:
 122                     ; 40 							if ((NewStateButtons & 0x08) == 0)
 124  003a a508          	bcp	a,#8
 125  003c 260e          	jrne	L14
 126                     ; 42 								LedData |= LedC;
 128  003e 72180000      	bset	_LedData,#4
 129                     ; 43 								Device.Mode = ModeC;
 131  0042 72130000      	bres	_Device,#1
 132  0046 72140000      	bset	_Device,#2
 134  004a 200c          	jra	L33
 135  004c               L14:
 136                     ; 47 								LedData |= LedA;	
 138                     ; 48 								Device.Mode = ModeA;
 141  004c 72160000      	bset	_LedData,#3
 143  0050 72130000      	bres	_Device,#1
 144  0054               LC001:
 145  0054 72150000      	bres	_Device,#2
 146  0058               L33:
 147                     ; 55 					if ((NewStateButtons & 0x04) == 0) 
 149  0058 a504          	bcp	a,#4
 150                     ; 57 						LedData |= LedP;	
 151                     ; 58 						Device.Polarity = PolarityP;
 153  005a 2720          	jreq	L55
 154                     ; 62 						if ((NewStateButtons & 0x02) == 0) 
 156  005c a502          	bcp	a,#2
 157  005e 260a          	jrne	L15
 158                     ; 64 							LedData |= LedN;
 160  0060 72120000      	bset	_LedData,#1
 161                     ; 65 							Device.Polarity = PolarityN;
 163  0064 72160000      	bset	_Device,#3
 165  0068 201a          	jp	LC003
 166  006a               L15:
 167                     ; 69 							if ((NewStateButtons & 0x01) == 0)
 169  006a a501          	bcp	a,#1
 170  006c 260e          	jrne	L55
 171                     ; 71 								LedData |= LedPN;
 173  006e 72100000      	bset	_LedData,#0
 174                     ; 72 								Device.Polarity = PolarityPN;
 176  0072 72170000      	bres	_Device,#3
 177  0076 72180000      	bset	_Device,#4
 179  007a 200c          	jra	L74
 180  007c               L55:
 181                     ; 76 								LedData |= LedP;	
 183                     ; 77 								Device.Polarity = PolarityP;
 186  007c 72140000      	bset	_LedData,#2
 188  0080 72170000      	bres	_Device,#3
 189  0084               LC003:
 190  0084 72190000      	bres	_Device,#4
 191  0088               L74:
 192                     ; 84 					if (((StateButtons & 0x40) == 0) && ((NewStateButtons & 0x40) != 0)) 
 194  0088 720c000044    	btjt	_StateButtons,#6,L16
 196  008d a540          	bcp	a,#64
 197  008f 2740          	jreq	L16
 198                     ; 86 						if (Device.State == Stop)
 200  0091 720a00002f    	btjt	_Device,#5,L36
 201                     ; 88 							if ((RealTimeSecond != 0) | (RealTimeMinute != 0))
 203  0096 c60000        	ld	a,_RealTimeSecond
 204  0099 2605          	jrne	L76
 206  009b c60000        	ld	a,_RealTimeMinute
 207  009e 2731          	jreq	L16
 208  00a0               L76:
 209                     ; 90 								Device.State = Start;
 211  00a0 721a0000      	bset	_Device,#5
 212                     ; 91 								LedData |= LedStart;																								
 214  00a4 721c0000      	bset	_LedData,#6
 215                     ; 93 								RealTimeCounter = 0;
 217  00a8 725f0000      	clr	_RealTimeCounter
 218                     ; 94 								CounterParselPeriod = 0;
 220  00ac 725f0000      	clr	_CounterParselPeriod
 221                     ; 95 								TIM2_AutoreloadValue = 1000;
 223  00b0 ae03e8        	ldw	x,#1000
 224  00b3 cf0000        	ldw	_TIM2_AutoreloadValue,x
 225                     ; 96 								TIM2_SetAutoreload(TIM2_AutoreloadValue);
 227  00b6 cd0000        	call	_TIM2_SetAutoreload
 229                     ; 97 								Device.Way = UpWay;
 231  00b9 721c0000      	bset	_Device,#6
 232                     ; 98 								Device.CnPol = PolarityP;
 234                     ; 99 								TIM2_Cmd(ENABLE);
 236  00bd a601          	ld	a,#1
 237  00bf 721f0000      	bres	_Device,#7
 239  00c3 2009          	jp	LC005
 240  00c5               L36:
 241                     ; 104 							Device.State = Stop;
 243  00c5 721b0000      	bres	_Device,#5
 244                     ; 105 							LedData &=~ LedStart;
 246                     ; 106 							TIM2_Cmd(DISABLE);
 248  00c9 4f            	clr	a
 249  00ca 721d0000      	bres	_LedData,#6
 250  00ce               LC005:
 251  00ce cd0000        	call	_TIM2_Cmd
 253  00d1               L16:
 254                     ; 111 					StateButtons = NewStateButtons;
 256  00d1 7b01          	ld	a,(OFST+0,sp)
 257  00d3 c70000        	ld	_StateButtons,a
 258  00d6 200f          	jra	L37
 259  00d8               L52:
 260                     ; 116 				NewStateButtons = GPIO_ReadInputData ( GPIOB );
 262  00d8 ae5005        	ldw	x,#20485
 263  00db cd0000        	call	_GPIO_ReadInputData
 265                     ; 117 				if (NewStateButtons != StateButtons) CounterButtonsDelay = 20;
 267  00de c10000        	cp	a,_StateButtons
 268  00e1 2704          	jreq	L37
 271  00e3 35140000      	mov	_CounterButtonsDelay,#20
 272  00e7               L37:
 273                     ; 119 }
 276  00e7 84            	pop	a
 277  00e8 81            	ret	
 309                     ; 124 void TimeService (void)
 309                     ; 125 {
 310                     	switch	.text
 311  00e9               _TimeService:
 315                     ; 126   Taskboard.TimePolling = Clear;
 317  00e9 72150000      	bres	_Taskboard,#2
 318                     ; 128 	if (Device.State == Start)
 320  00ed 720b000050    	btjf	_Device,#5,L701
 321                     ; 130 		RealTimeCounter++;
 323  00f2 725c0000      	inc	_RealTimeCounter
 324                     ; 131 		if (RealTimeCounter == 250)
 326  00f6 c60000        	ld	a,_RealTimeCounter
 327  00f9 a1fa          	cp	a,#250
 328  00fb 2645          	jrne	L701
 329                     ; 142 			RealTimeCounter = 0;
 331  00fd 725f0000      	clr	_RealTimeCounter
 332                     ; 143 			if (RealTimeSecond == 0)
 334  0101 c60000        	ld	a,_RealTimeSecond
 335  0104 260a          	jrne	L311
 336                     ; 145 				RealTimeSecond = 59;
 338  0106 353b0000      	mov	_RealTimeSecond,#59
 339                     ; 146 				RealTimeMinute--;
 341  010a 725a0000      	dec	_RealTimeMinute
 343  010e 2004          	jra	L511
 344  0110               L311:
 345                     ; 150 				RealTimeSecond--;
 347  0110 725a0000      	dec	_RealTimeSecond
 348  0114               L511:
 349                     ; 153 			if ((RealTimeSecond == 0)&&(RealTimeMinute == 0)) 
 351  0114 c60000        	ld	a,_RealTimeSecond
 352  0117 260e          	jrne	L711
 354  0119 725d0000      	tnz	_RealTimeMinute
 355  011d 2608          	jrne	L711
 356                     ; 155 				Device.State = Stop;
 358  011f 721b0000      	bres	_Device,#5
 359                     ; 156 				LedData &=~ LedStart;
 361  0123 721d0000      	bres	_LedData,#6
 362  0127               L711:
 363                     ; 159 			RealTimeSecondNumberShow = NumberToNumberShow(RealTimeSecond, Clear, Set);
 365  0127 4b01          	push	#1
 366  0129 5f            	clrw	x
 367  012a 95            	ld	xh,a
 368  012b cd0461        	call	_NumberToNumberShow
 370  012e cf0000        	ldw	_RealTimeSecondNumberShow,x
 371  0131 84            	pop	a
 372                     ; 160 			RealTimeMinuteNumberShow = NumberToNumberShow(RealTimeMinute, LowPoint, Set);
 374  0132 4b01          	push	#1
 375  0134 ae0002        	ldw	x,#2
 376  0137 c60000        	ld	a,_RealTimeMinute
 377  013a 95            	ld	xh,a
 378  013b cd0461        	call	_NumberToNumberShow
 380  013e cf0000        	ldw	_RealTimeMinuteNumberShow,x
 381  0141 84            	pop	a
 382  0142               L701:
 383                     ; 163 }
 386  0142 81            	ret	
 469                     ; 167 void EncoderService (void)
 469                     ; 168 {
 470                     	switch	.text
 471  0143               _EncoderService:
 473  0143 5205          	subw	sp,#5
 474       00000005      OFST:	set	5
 477                     ; 171 	Taskboard.EncoderPolling = Clear;
 479  0145 72130000      	bres	_Taskboard,#1
 480                     ; 173   NewStateEncoder1 = (GPIO_ReadInputData(GPIOA) & (E1A|E1B));
 482  0149 ae5000        	ldw	x,#20480
 483  014c cd0000        	call	_GPIO_ReadInputData
 485  014f a418          	and	a,#24
 486  0151 6b01          	ld	(OFST-4,sp),a
 487                     ; 174 	NewStateEncoder2 = (GPIO_ReadInputData(GPIOA) & (E2A|E2B));
 489  0153 ae5000        	ldw	x,#20480
 490  0156 cd0000        	call	_GPIO_ReadInputData
 492  0159 a460          	and	a,#96
 493  015b 6b02          	ld	(OFST-3,sp),a
 494                     ; 175 	NewStateEncoder3 = (GPIO_ReadInputData(GPIOG) & (E3A|E3B));
 496  015d ae501e        	ldw	x,#20510
 497  0160 cd0000        	call	_GPIO_ReadInputData
 499  0163 a403          	and	a,#3
 500  0165 6b03          	ld	(OFST-2,sp),a
 501                     ; 176 	NewStateEncoder4 = (GPIO_ReadInputData(GPIOE) & (E4A|E4B));
 503  0167 ae5014        	ldw	x,#20500
 504  016a cd0000        	call	_GPIO_ReadInputData
 506  016d a460          	and	a,#96
 507  016f 6b04          	ld	(OFST-1,sp),a
 508                     ; 177 	NewStateEncoder5 = (GPIO_ReadInputData(GPIOE) & (E5A|E5B));
 510  0171 ae5014        	ldw	x,#20500
 511  0174 cd0000        	call	_GPIO_ReadInputData
 513  0177 a409          	and	a,#9
 514  0179 6b05          	ld	(OFST+0,sp),a
 515                     ; 181 	switch (StateEncoder1)
 517  017b c60000        	ld	a,_StateEncoder1
 519                     ; 188 		default : break;
 520  017e 270e          	jreq	L121
 521  0180 4a            	dec	a
 522  0181 2721          	jreq	L321
 523  0183 4a            	dec	a
 524  0184 272e          	jreq	L521
 525  0186 4a            	dec	a
 526  0187 2742          	jreq	L721
 527  0189 4a            	dec	a
 528  018a 2755          	jreq	L131
 529  018c 2078          	jra	L342
 530  018e               L121:
 531                     ; 183 		case 0 : {if ((NewStateEncoder1 & E1A) == 0) StateEncoder1 = 1; else if ((NewStateEncoder1 & E1B) == 0) StateEncoder1 = 3; break;}
 533  018e 7b01          	ld	a,(OFST-4,sp)
 534  0190 a508          	bcp	a,#8
 535  0192 2606          	jrne	L542
 538  0194 35010000      	mov	_StateEncoder1,#1
 540  0198 206c          	jra	L342
 541  019a               L542:
 544  019a a510          	bcp	a,#16
 545  019c 2668          	jrne	L342
 548  019e 35030000      	mov	_StateEncoder1,#3
 549  01a2 2062          	jra	L342
 550  01a4               L321:
 551                     ; 184 		case 1 : {if ((NewStateEncoder1 & E1A) == 0) {if ((NewStateEncoder1 & E1B) == 0) StateEncoder1 = 2;} else StateEncoder1 = 0; break;}
 553  01a4 7b01          	ld	a,(OFST-4,sp)
 554  01a6 a508          	bcp	a,#8
 555  01a8 2631          	jrne	L562
 558  01aa a510          	bcp	a,#16
 559  01ac 2658          	jrne	L342
 562  01ae 35020000      	mov	_StateEncoder1,#2
 563  01b2 2052          	jra	L342
 565  01b4               L521:
 566                     ; 185 		case 2 : {if ((NewStateEncoder1 & E1B) != 0) {StateEncoder1 = 0; if (Chenal1Number<99){Chenal1Number++; Taskboard.SetNewChenalValues = Set; Chenal1NumberShow = NumberToNumberShow(Chenal1Number, Clear, Clear);}} break;}
 568  01b4 7b01          	ld	a,(OFST-4,sp)
 569  01b6 a510          	bcp	a,#16
 570  01b8 274c          	jreq	L342
 573  01ba 725f0000      	clr	_StateEncoder1
 576  01be c60000        	ld	a,_Chenal1Number
 577  01c1 a163          	cp	a,#99
 578  01c3 2441          	jruge	L342
 581  01c5 725c0000      	inc	_Chenal1Number
 585  01c9 2029          	jp	LC006
 586  01cb               L721:
 587                     ; 186 		case 3 : {if ((NewStateEncoder1 & E1B) == 0) {if ((NewStateEncoder1 & E1A) == 0) StateEncoder1 = 4;} else StateEncoder1 = 0; break;}
 589  01cb 7b01          	ld	a,(OFST-4,sp)
 590  01cd a510          	bcp	a,#16
 591  01cf 260a          	jrne	L562
 594  01d1 a508          	bcp	a,#8
 595  01d3 2631          	jrne	L342
 598  01d5 35040000      	mov	_StateEncoder1,#4
 599  01d9 202b          	jra	L342
 600  01db               L562:
 604  01db 725f0000      	clr	_StateEncoder1
 605  01df 2025          	jra	L342
 606  01e1               L131:
 607                     ; 187 		case 4 : {if ((NewStateEncoder1 & E1A) != 0) {StateEncoder1 = 0; if (Chenal1Number>0) {Chenal1Number--; Taskboard.SetNewChenalValues = Set; Chenal1NumberShow = NumberToNumberShow(Chenal1Number, Clear, Clear);}}break;}
 609  01e1 7b01          	ld	a,(OFST-4,sp)
 610  01e3 a508          	bcp	a,#8
 611  01e5 271f          	jreq	L342
 614  01e7 725f0000      	clr	_StateEncoder1
 617  01eb c60000        	ld	a,_Chenal1Number
 618  01ee 2716          	jreq	L342
 621  01f0 725a0000      	dec	_Chenal1Number
 627  01f4               LC006:
 629  01f4 72180000      	bset	_Taskboard,#4
 631  01f8 4b00          	push	#0
 632  01fa 5f            	clrw	x
 633  01fb c60000        	ld	a,_Chenal1Number
 634  01fe 95            	ld	xh,a
 635  01ff cd0461        	call	_NumberToNumberShow
 636  0202 cf0000        	ldw	_Chenal1NumberShow,x
 637  0205 84            	pop	a
 638                     ; 188 		default : break;
 640  0206               L342:
 641                     ; 191 	switch (StateEncoder2)
 643  0206 c60000        	ld	a,_StateEncoder2
 645                     ; 198 		default : break;
 646  0209 270e          	jreq	L531
 647  020b 4a            	dec	a
 648  020c 2721          	jreq	L731
 649  020e 4a            	dec	a
 650  020f 272e          	jreq	L141
 651  0211 4a            	dec	a
 652  0212 2742          	jreq	L341
 653  0214 4a            	dec	a
 654  0215 2755          	jreq	L541
 655  0217 2078          	jra	L103
 656  0219               L531:
 657                     ; 193 		case 0 : {if ((NewStateEncoder2 & E2A) == 0) StateEncoder2 = 1; else if ((NewStateEncoder2 & E2B) == 0) StateEncoder2 = 3; break;}
 659  0219 7b02          	ld	a,(OFST-3,sp)
 660  021b a520          	bcp	a,#32
 661  021d 2606          	jrne	L303
 664  021f 35010000      	mov	_StateEncoder2,#1
 666  0223 206c          	jra	L103
 667  0225               L303:
 670  0225 a540          	bcp	a,#64
 671  0227 2668          	jrne	L103
 674  0229 35030000      	mov	_StateEncoder2,#3
 675  022d 2062          	jra	L103
 676  022f               L731:
 677                     ; 194 		case 1 : {if ((NewStateEncoder2 & E2A) == 0) {if ((NewStateEncoder2 & E2B) == 0) StateEncoder2 = 2;} else StateEncoder2 = 0; break;}
 679  022f 7b02          	ld	a,(OFST-3,sp)
 680  0231 a520          	bcp	a,#32
 681  0233 2631          	jrne	L323
 684  0235 a540          	bcp	a,#64
 685  0237 2658          	jrne	L103
 688  0239 35020000      	mov	_StateEncoder2,#2
 689  023d 2052          	jra	L103
 691  023f               L141:
 692                     ; 195 		case 2 : {if ((NewStateEncoder2 & E2B) != 0) {StateEncoder2 = 0; if (Chenal2Number<99){Chenal2Number++; Taskboard.SetNewChenalValues = Set; Chenal2NumberShow = NumberToNumberShow(Chenal2Number, Clear, Clear);}} break;}
 694  023f 7b02          	ld	a,(OFST-3,sp)
 695  0241 a540          	bcp	a,#64
 696  0243 274c          	jreq	L103
 699  0245 725f0000      	clr	_StateEncoder2
 702  0249 c60000        	ld	a,_Chenal2Number
 703  024c a163          	cp	a,#99
 704  024e 2441          	jruge	L103
 707  0250 725c0000      	inc	_Chenal2Number
 711  0254 2029          	jp	LC008
 712  0256               L341:
 713                     ; 196 		case 3 : {if ((NewStateEncoder2 & E2B) == 0) {if ((NewStateEncoder2 & E2A) == 0) StateEncoder2 = 4;} else StateEncoder2 = 0; break;}
 715  0256 7b02          	ld	a,(OFST-3,sp)
 716  0258 a540          	bcp	a,#64
 717  025a 260a          	jrne	L323
 720  025c a520          	bcp	a,#32
 721  025e 2631          	jrne	L103
 724  0260 35040000      	mov	_StateEncoder2,#4
 725  0264 202b          	jra	L103
 726  0266               L323:
 730  0266 725f0000      	clr	_StateEncoder2
 731  026a 2025          	jra	L103
 732  026c               L541:
 733                     ; 197 		case 4 : {if ((NewStateEncoder2 & E2A) != 0) {StateEncoder2 = 0; if (Chenal2Number>0) {Chenal2Number--; Taskboard.SetNewChenalValues = Set; Chenal2NumberShow = NumberToNumberShow(Chenal2Number, Clear, Clear);}}break;}
 735  026c 7b02          	ld	a,(OFST-3,sp)
 736  026e a520          	bcp	a,#32
 737  0270 271f          	jreq	L103
 740  0272 725f0000      	clr	_StateEncoder2
 743  0276 c60000        	ld	a,_Chenal2Number
 744  0279 2716          	jreq	L103
 747  027b 725a0000      	dec	_Chenal2Number
 753  027f               LC008:
 755  027f 72180000      	bset	_Taskboard,#4
 757  0283 4b00          	push	#0
 758  0285 5f            	clrw	x
 759  0286 c60000        	ld	a,_Chenal2Number
 760  0289 95            	ld	xh,a
 761  028a cd0461        	call	_NumberToNumberShow
 762  028d cf0000        	ldw	_Chenal2NumberShow,x
 763  0290 84            	pop	a
 764                     ; 198 		default : break;
 766  0291               L103:
 767                     ; 201 	switch (StateEncoder3)
 769  0291 c60000        	ld	a,_StateEncoder3
 771                     ; 208 		default : break;
 772  0294 270e          	jreq	L151
 773  0296 4a            	dec	a
 774  0297 2721          	jreq	L351
 775  0299 4a            	dec	a
 776  029a 272e          	jreq	L551
 777  029c 4a            	dec	a
 778  029d 2742          	jreq	L751
 779  029f 4a            	dec	a
 780  02a0 2755          	jreq	L161
 781  02a2 2078          	jra	L733
 782  02a4               L151:
 783                     ; 203 		case 0 : {if ((NewStateEncoder3 & E3A) == 0) StateEncoder3 = 1; else if ((NewStateEncoder3 & E3B) == 0) StateEncoder3 = 3; break;}
 785  02a4 7b03          	ld	a,(OFST-2,sp)
 786  02a6 a502          	bcp	a,#2
 787  02a8 2606          	jrne	L143
 790  02aa 35010000      	mov	_StateEncoder3,#1
 792  02ae 206c          	jra	L733
 793  02b0               L143:
 796  02b0 a501          	bcp	a,#1
 797  02b2 2668          	jrne	L733
 800  02b4 35030000      	mov	_StateEncoder3,#3
 801  02b8 2062          	jra	L733
 802  02ba               L351:
 803                     ; 204 		case 1 : {if ((NewStateEncoder3 & E3A) == 0) {if ((NewStateEncoder3 & E3B) == 0) StateEncoder3 = 2;} else StateEncoder3 = 0; break;}
 805  02ba 7b03          	ld	a,(OFST-2,sp)
 806  02bc a502          	bcp	a,#2
 807  02be 2631          	jrne	L163
 810  02c0 a501          	bcp	a,#1
 811  02c2 2658          	jrne	L733
 814  02c4 35020000      	mov	_StateEncoder3,#2
 815  02c8 2052          	jra	L733
 817  02ca               L551:
 818                     ; 205 		case 2 : {if ((NewStateEncoder3 & E3B) != 0) {StateEncoder3 = 0; if (Chenal3Number<99){Chenal3Number++; Taskboard.SetNewChenalValues = Set; Chenal3NumberShow = NumberToNumberShow(Chenal3Number, Clear, Clear);}} break;}
 820  02ca 7b03          	ld	a,(OFST-2,sp)
 821  02cc a501          	bcp	a,#1
 822  02ce 274c          	jreq	L733
 825  02d0 725f0000      	clr	_StateEncoder3
 828  02d4 c60000        	ld	a,_Chenal3Number
 829  02d7 a163          	cp	a,#99
 830  02d9 2441          	jruge	L733
 833  02db 725c0000      	inc	_Chenal3Number
 837  02df 2029          	jp	LC010
 838  02e1               L751:
 839                     ; 206 		case 3 : {if ((NewStateEncoder3 & E3B) == 0) {if ((NewStateEncoder3 & E3A) == 0) StateEncoder3 = 4;} else StateEncoder3 = 0; break;}
 841  02e1 7b03          	ld	a,(OFST-2,sp)
 842  02e3 a501          	bcp	a,#1
 843  02e5 260a          	jrne	L163
 846  02e7 a502          	bcp	a,#2
 847  02e9 2631          	jrne	L733
 850  02eb 35040000      	mov	_StateEncoder3,#4
 851  02ef 202b          	jra	L733
 852  02f1               L163:
 856  02f1 725f0000      	clr	_StateEncoder3
 857  02f5 2025          	jra	L733
 858  02f7               L161:
 859                     ; 207 		case 4 : {if ((NewStateEncoder3 & E3A) != 0) {StateEncoder3 = 0; if (Chenal3Number>0) {Chenal3Number--; Taskboard.SetNewChenalValues = Set; Chenal3NumberShow = NumberToNumberShow(Chenal3Number, Clear, Clear);}}break;}
 861  02f7 7b03          	ld	a,(OFST-2,sp)
 862  02f9 a502          	bcp	a,#2
 863  02fb 271f          	jreq	L733
 866  02fd 725f0000      	clr	_StateEncoder3
 869  0301 c60000        	ld	a,_Chenal3Number
 870  0304 2716          	jreq	L733
 873  0306 725a0000      	dec	_Chenal3Number
 879  030a               LC010:
 881  030a 72180000      	bset	_Taskboard,#4
 883  030e 4b00          	push	#0
 884  0310 5f            	clrw	x
 885  0311 c60000        	ld	a,_Chenal3Number
 886  0314 95            	ld	xh,a
 887  0315 cd0461        	call	_NumberToNumberShow
 888  0318 cf0000        	ldw	_Chenal3NumberShow,x
 889  031b 84            	pop	a
 890                     ; 208 		default : break;
 892  031c               L733:
 893                     ; 211 	switch (StateEncoder4)
 895  031c c60000        	ld	a,_StateEncoder4
 897                     ; 218 		default : break;
 898  031f 270e          	jreq	L561
 899  0321 4a            	dec	a
 900  0322 2721          	jreq	L761
 901  0324 4a            	dec	a
 902  0325 272e          	jreq	L171
 903  0327 4a            	dec	a
 904  0328 2742          	jreq	L371
 905  032a 4a            	dec	a
 906  032b 2755          	jreq	L571
 907  032d 2078          	jra	L573
 908  032f               L561:
 909                     ; 213 		case 0 : {if ((NewStateEncoder4 & E4A) == 0) StateEncoder4 = 1; else if ((NewStateEncoder4 & E4B) == 0) StateEncoder4 = 3; break;}
 911  032f 7b04          	ld	a,(OFST-1,sp)
 912  0331 a520          	bcp	a,#32
 913  0333 2606          	jrne	L773
 916  0335 35010000      	mov	_StateEncoder4,#1
 918  0339 206c          	jra	L573
 919  033b               L773:
 922  033b a540          	bcp	a,#64
 923  033d 2668          	jrne	L573
 926  033f 35030000      	mov	_StateEncoder4,#3
 927  0343 2062          	jra	L573
 928  0345               L761:
 929                     ; 214 		case 1 : {if ((NewStateEncoder4 & E4A) == 0) {if ((NewStateEncoder4 & E4B) == 0) StateEncoder4 = 2;} else StateEncoder4 = 0; break;}
 931  0345 7b04          	ld	a,(OFST-1,sp)
 932  0347 a520          	bcp	a,#32
 933  0349 2631          	jrne	L714
 936  034b a540          	bcp	a,#64
 937  034d 2658          	jrne	L573
 940  034f 35020000      	mov	_StateEncoder4,#2
 941  0353 2052          	jra	L573
 943  0355               L171:
 944                     ; 215 		case 2 : {if ((NewStateEncoder4 & E4B) != 0) {StateEncoder4 = 0; if (Chenal4Number<99){Chenal4Number++; Taskboard.SetNewChenalValues = Set; Chenal4NumberShow = NumberToNumberShow(Chenal4Number, Clear, Clear);}} break;}
 946  0355 7b04          	ld	a,(OFST-1,sp)
 947  0357 a540          	bcp	a,#64
 948  0359 274c          	jreq	L573
 951  035b 725f0000      	clr	_StateEncoder4
 954  035f c60000        	ld	a,_Chenal4Number
 955  0362 a163          	cp	a,#99
 956  0364 2441          	jruge	L573
 959  0366 725c0000      	inc	_Chenal4Number
 963  036a 2029          	jp	LC012
 964  036c               L371:
 965                     ; 216 		case 3 : {if ((NewStateEncoder4 & E4B) == 0) {if ((NewStateEncoder4 & E4A) == 0) StateEncoder4 = 4;} else StateEncoder4 = 0; break;}
 967  036c 7b04          	ld	a,(OFST-1,sp)
 968  036e a540          	bcp	a,#64
 969  0370 260a          	jrne	L714
 972  0372 a520          	bcp	a,#32
 973  0374 2631          	jrne	L573
 976  0376 35040000      	mov	_StateEncoder4,#4
 977  037a 202b          	jra	L573
 978  037c               L714:
 982  037c 725f0000      	clr	_StateEncoder4
 983  0380 2025          	jra	L573
 984  0382               L571:
 985                     ; 217 		case 4 : {if ((NewStateEncoder4 & E4A) != 0) {StateEncoder4 = 0; if (Chenal4Number>0) {Chenal4Number--; Taskboard.SetNewChenalValues = Set; Chenal4NumberShow = NumberToNumberShow(Chenal4Number, Clear, Clear);}}break;}
 987  0382 7b04          	ld	a,(OFST-1,sp)
 988  0384 a520          	bcp	a,#32
 989  0386 271f          	jreq	L573
 992  0388 725f0000      	clr	_StateEncoder4
 995  038c c60000        	ld	a,_Chenal4Number
 996  038f 2716          	jreq	L573
 999  0391 725a0000      	dec	_Chenal4Number
1005  0395               LC012:
1007  0395 72180000      	bset	_Taskboard,#4
1009  0399 4b00          	push	#0
1010  039b 5f            	clrw	x
1011  039c c60000        	ld	a,_Chenal4Number
1012  039f 95            	ld	xh,a
1013  03a0 cd0461        	call	_NumberToNumberShow
1014  03a3 cf0000        	ldw	_Chenal4NumberShow,x
1015  03a6 84            	pop	a
1016                     ; 218 		default : break;
1018  03a7               L573:
1019                     ; 221 	switch (StateEncoder5)
1021  03a7 c60000        	ld	a,_StateEncoder5
1023                     ; 263 		default : break;
1024  03aa 270f          	jreq	L102
1025  03ac 4a            	dec	a
1026  03ad 2724          	jreq	L302
1027  03af 4a            	dec	a
1028  03b0 2731          	jreq	L502
1029  03b2 4a            	dec	a
1030  03b3 274c          	jreq	L702
1031  03b5 4a            	dec	a
1032  03b6 275f          	jreq	L112
1033  03b8 cc045e        	jra	L334
1034  03bb               L102:
1035                     ; 223 		case 0 : {if ((NewStateEncoder5 & E5A) == 0) StateEncoder5 = 1; else if ((NewStateEncoder5 & E5B) == 0) StateEncoder5 = 3; break;}
1037  03bb 7b05          	ld	a,(OFST+0,sp)
1038  03bd a501          	bcp	a,#1
1039  03bf 2607          	jrne	L534
1042  03c1 35010000      	mov	_StateEncoder5,#1
1044  03c5 cc045e        	jra	L334
1045  03c8               L534:
1048  03c8 a508          	bcp	a,#8
1049  03ca 26f9          	jrne	L334
1052  03cc 35030000      	mov	_StateEncoder5,#3
1053  03d0 cc045e        	jra	L334
1054  03d3               L302:
1055                     ; 224 		case 1 : {if ((NewStateEncoder5 & E5A) == 0) {if ((NewStateEncoder5 & E5B) == 0) StateEncoder5 = 2;} else StateEncoder5 = 0; break;}
1057  03d3 7b05          	ld	a,(OFST+0,sp)
1058  03d5 a501          	bcp	a,#1
1059  03d7 2638          	jrne	L554
1062  03d9 a508          	bcp	a,#8
1063  03db 26f3          	jrne	L334
1066  03dd 35020000      	mov	_StateEncoder5,#2
1067  03e1 207b          	jra	L334
1069  03e3               L502:
1070                     ; 226 							if ((NewStateEncoder5 & E5B) != 0) 
1072  03e3 7b05          	ld	a,(OFST+0,sp)
1073  03e5 a508          	bcp	a,#8
1074  03e7 2775          	jreq	L334
1075                     ; 228 								StateEncoder5 = 0; 
1077  03e9 725f0000      	clr	_StateEncoder5
1078                     ; 230 								RealTimeSecond = 0;
1080  03ed 725f0000      	clr	_RealTimeSecond
1081                     ; 232 								if (RealTimeMinute<99) RealTimeMinute++;
1083  03f1 c60000        	ld	a,_RealTimeMinute
1084  03f4 a163          	cp	a,#99
1085  03f6 2404          	jruge	L354
1088  03f8 725c0000      	inc	_RealTimeMinute
1089  03fc               L354:
1090                     ; 234 								RealTimeSecondNumberShow = NumberToNumberShow(RealTimeSecond, Clear, Set);
1092  03fc 4b01          	push	#1
1093  03fe 5f            	clrw	x
1095                     ; 235 								RealTimeMinuteNumberShow = NumberToNumberShow(RealTimeMinute, LowPoint, Set);
1097  03ff 2048          	jp	LC014
1098  0401               L702:
1099                     ; 240 		case 3 : {if ((NewStateEncoder5 & E5B) == 0) {if ((NewStateEncoder5 & E5A) == 0) StateEncoder5 = 4;} else StateEncoder5 = 0; break;}
1101  0401 7b05          	ld	a,(OFST+0,sp)
1102  0403 a508          	bcp	a,#8
1103  0405 260a          	jrne	L554
1106  0407 a501          	bcp	a,#1
1107  0409 2653          	jrne	L334
1110  040b 35040000      	mov	_StateEncoder5,#4
1111  040f 204d          	jra	L334
1112  0411               L554:
1116  0411 725f0000      	clr	_StateEncoder5
1117  0415 2047          	jra	L334
1118  0417               L112:
1119                     ; 242 							if ((NewStateEncoder5 & E5A) != 0) 
1121  0417 7b05          	ld	a,(OFST+0,sp)
1122  0419 a501          	bcp	a,#1
1123  041b 2741          	jreq	L334
1124                     ; 244 								StateEncoder5 = 0; 
1126  041d 725f0000      	clr	_StateEncoder5
1127                     ; 246 								RealTimeSecond = 0;
1129  0421 725f0000      	clr	_RealTimeSecond
1130                     ; 248 								if (RealTimeMinute > 1) RealTimeMinute--;
1132  0425 c60000        	ld	a,_RealTimeMinute
1133  0428 a102          	cp	a,#2
1134  042a 2506          	jrult	L564
1137  042c 725a0000      	dec	_RealTimeMinute
1139  0430 2010          	jra	L764
1140  0432               L564:
1141                     ; 251 									RealTimeMinute = 0;
1143  0432 725f0000      	clr	_RealTimeMinute
1144                     ; 252 									Device.State = Stop;
1146  0436 721b0000      	bres	_Device,#5
1147                     ; 253 									LedData &=~ LedStart;
1149                     ; 254 									TIM2_Cmd(DISABLE);
1151  043a 4f            	clr	a
1152  043b 721d0000      	bres	_LedData,#6
1153  043f cd0000        	call	_TIM2_Cmd
1155  0442               L764:
1156                     ; 257 								RealTimeSecondNumberShow = NumberToNumberShow(RealTimeSecond, Clear, Set);
1158  0442 4b01          	push	#1
1159  0444 5f            	clrw	x
1160  0445 c60000        	ld	a,_RealTimeSecond
1161  0448 95            	ld	xh,a
1163                     ; 258 								RealTimeMinuteNumberShow = NumberToNumberShow(RealTimeMinute, LowPoint, Set);
1166  0449               LC014:
1167  0449 ad16          	call	_NumberToNumberShow
1168  044b cf0000        	ldw	_RealTimeSecondNumberShow,x
1169  044e 84            	pop	a
1171  044f 4b01          	push	#1
1172  0451 ae0002        	ldw	x,#2
1173  0454 c60000        	ld	a,_RealTimeMinute
1174  0457 95            	ld	xh,a
1175  0458 ad07          	call	_NumberToNumberShow
1176  045a cf0000        	ldw	_RealTimeMinuteNumberShow,x
1177  045d 84            	pop	a
1178                     ; 263 		default : break;
1180  045e               L334:
1181                     ; 265 }
1184  045e 5b05          	addw	sp,#5
1185  0460 81            	ret	
1245                     ; 269 unsigned int NumberToNumberShow ( unsigned char NumberShowLow, unsigned char Point, unsigned char ShowHighZero)
1245                     ; 270 {
1246                     	switch	.text
1247  0461               _NumberToNumberShow:
1249  0461 89            	pushw	x
1250  0462 5203          	subw	sp,#3
1251       00000003      OFST:	set	3
1254                     ; 274    NumberShowHigh=0;
1256  0464 0f01          	clr	(OFST-2,sp)
1258  0466 7b04          	ld	a,(OFST+1,sp)
1259  0468 2006          	jra	L175
1260  046a               L565:
1261                     ; 278 		NumberShowHigh++;
1263  046a 0c01          	inc	(OFST-2,sp)
1264                     ; 279 		NumberShowLow -=10;
1266  046c a00a          	sub	a,#10
1267  046e 6b04          	ld	(OFST+1,sp),a
1268  0470               L175:
1269                     ; 276   while (NumberShowLow>=10)
1271  0470 a10a          	cp	a,#10
1272  0472 24f6          	jruge	L565
1273                     ; 282   switch (NumberShowHigh)
1275  0474 7b01          	ld	a,(OFST-2,sp)
1277                     ; 293 		default : {if (ShowHighZero == Set) result=(zero<<8); else result=0; break;}
1278  0476 4a            	dec	a
1279  0477 274a          	jreq	L115
1280  0479 4a            	dec	a
1281  047a 2742          	jreq	L705
1282  047c 4a            	dec	a
1283  047d 273a          	jreq	L505
1284  047f 4a            	dec	a
1285  0480 2732          	jreq	L305
1286  0482 4a            	dec	a
1287  0483 272a          	jreq	L105
1288  0485 4a            	dec	a
1289  0486 2722          	jreq	L774
1290  0488 4a            	dec	a
1291  0489 271a          	jreq	L574
1292  048b 4a            	dec	a
1293  048c 2712          	jreq	L374
1294  048e 4a            	dec	a
1295  048f 270a          	jreq	L174
1298  0491 7b08          	ld	a,(OFST+5,sp)
1299  0493 4a            	dec	a
1300  0494 2632          	jrne	L106
1303  0496 ae3f00        	ldw	x,#16128
1305  0499 202e          	jra	L775
1306  049b               L174:
1307                     ; 284     case 9 : result=(nine<<8); break;
1309  049b ae6f00        	ldw	x,#28416
1312  049e 2029          	jra	L775
1313  04a0               L374:
1314                     ; 285     case 8 : result=(eight<<8); break;
1316  04a0 ae7f00        	ldw	x,#32512
1319  04a3 2024          	jra	L775
1320  04a5               L574:
1321                     ; 286     case 7 : result=(seven<<8); break;
1323  04a5 ae0700        	ldw	x,#1792
1326  04a8 201f          	jra	L775
1327  04aa               L774:
1328                     ; 287     case 6 : result=(six<<8); break;
1330  04aa ae7d00        	ldw	x,#32000
1333  04ad 201a          	jra	L775
1334  04af               L105:
1335                     ; 288     case 5 : result=(five<<8); break;
1337  04af ae6d00        	ldw	x,#27904
1340  04b2 2015          	jra	L775
1341  04b4               L305:
1342                     ; 289     case 4 : result=(four<<8); break;
1344  04b4 ae6600        	ldw	x,#26112
1347  04b7 2010          	jra	L775
1348  04b9               L505:
1349                     ; 290     case 3 : result=(three<<8); break;
1351  04b9 ae4f00        	ldw	x,#20224
1354  04bc 200b          	jra	L775
1355  04be               L705:
1356                     ; 291     case 2 : result=(two<<8); break;
1358  04be ae5b00        	ldw	x,#23296
1361  04c1 2006          	jra	L775
1362  04c3               L115:
1363                     ; 292     case 1 : result=(one<<8); break;
1365  04c3 ae0600        	ldw	x,#1536
1368  04c6 2001          	jra	L775
1369  04c8               L106:
1370                     ; 293 		default : {if (ShowHighZero == Set) result=(zero<<8); else result=0; break;}
1372  04c8 5f            	clrw	x
1373  04c9               L775:
1374  04c9 1f02          	ldw	(OFST-1,sp),x
1375                     ; 296   switch (NumberShowLow)
1377  04cb 7b04          	ld	a,(OFST+1,sp)
1379                     ; 307     default : result |= zero; break;
1380  04cd 4a            	dec	a
1381  04ce 274e          	jreq	L535
1382  04d0 4a            	dec	a
1383  04d1 2745          	jreq	L335
1384  04d3 4a            	dec	a
1385  04d4 273c          	jreq	L135
1386  04d6 4a            	dec	a
1387  04d7 2733          	jreq	L725
1388  04d9 4a            	dec	a
1389  04da 272a          	jreq	L525
1390  04dc 4a            	dec	a
1391  04dd 2721          	jreq	L325
1392  04df 4a            	dec	a
1393  04e0 2718          	jreq	L125
1394  04e2 4a            	dec	a
1395  04e3 270f          	jreq	L715
1396  04e5 4a            	dec	a
1397  04e6 2706          	jreq	L515
1400  04e8 7b03          	ld	a,(OFST+0,sp)
1401  04ea aa3f          	or	a,#63
1404  04ec 2034          	jra	L706
1405  04ee               L515:
1406                     ; 298     case 9 : result |= nine; break;
1408  04ee 7b03          	ld	a,(OFST+0,sp)
1409  04f0 aa6f          	or	a,#111
1412  04f2 202e          	jra	L706
1413  04f4               L715:
1414                     ; 299     case 8 : result |= eight; break;
1416  04f4 7b03          	ld	a,(OFST+0,sp)
1417  04f6 aa7f          	or	a,#127
1420  04f8 2028          	jra	L706
1421  04fa               L125:
1422                     ; 300     case 7 : result |= seven; break;
1424  04fa 7b03          	ld	a,(OFST+0,sp)
1425  04fc aa07          	or	a,#7
1428  04fe 2022          	jra	L706
1429  0500               L325:
1430                     ; 301     case 6 : result |= six; break;
1432  0500 7b03          	ld	a,(OFST+0,sp)
1433  0502 aa7d          	or	a,#125
1436  0504 201c          	jra	L706
1437  0506               L525:
1438                     ; 302     case 5 : result |= five; break;
1440  0506 7b03          	ld	a,(OFST+0,sp)
1441  0508 aa6d          	or	a,#109
1444  050a 2016          	jra	L706
1445  050c               L725:
1446                     ; 303     case 4 : result |= four; break;
1448  050c 7b03          	ld	a,(OFST+0,sp)
1449  050e aa66          	or	a,#102
1452  0510 2010          	jra	L706
1453  0512               L135:
1454                     ; 304     case 3 : result |= three; break;
1456  0512 7b03          	ld	a,(OFST+0,sp)
1457  0514 aa4f          	or	a,#79
1460  0516 200a          	jra	L706
1461  0518               L335:
1462                     ; 305     case 2 : result |= two; break;
1464  0518 7b03          	ld	a,(OFST+0,sp)
1465  051a aa5b          	or	a,#91
1468  051c 2004          	jra	L706
1469  051e               L535:
1470                     ; 306     case 1 : result |= one; break;
1472  051e 7b03          	ld	a,(OFST+0,sp)
1473  0520 aa06          	or	a,#6
1476  0522               L706:
1477  0522 6b03          	ld	(OFST+0,sp),a
1478                     ; 310 	if (Point == HighPoint)
1480  0524 7b05          	ld	a,(OFST+2,sp)
1481  0526 a101          	cp	a,#1
1482  0528 2608          	jrne	L116
1483                     ; 312 		result |=0x8000;
1485  052a 7b02          	ld	a,(OFST-1,sp)
1486  052c aa80          	or	a,#128
1487  052e 6b02          	ld	(OFST-1,sp),a
1488  0530 7b05          	ld	a,(OFST+2,sp)
1489  0532               L116:
1490                     ; 315 	if (Point == LowPoint)
1492  0532 a102          	cp	a,#2
1493  0534 2606          	jrne	L316
1494                     ; 317 		result |=0x0080;
1496  0536 7b03          	ld	a,(OFST+0,sp)
1497  0538 aa80          	or	a,#128
1498  053a 6b03          	ld	(OFST+0,sp),a
1499  053c               L316:
1500                     ; 320 	return result;
1502  053c 1e02          	ldw	x,(OFST-1,sp)
1505  053e 5b05          	addw	sp,#5
1506  0540 81            	ret	
1541                     ; 323 void ScreenUpdate(void)
1541                     ; 324 {
1542                     	switch	.text
1543  0541               _ScreenUpdate:
1547                     ; 325 	Taskboard.ScreenUpdate = Clear;
1549  0541 72170000      	bres	_Taskboard,#3
1550                     ; 327 	IndicatorsData[0] = LedData;
1552  0545 5500000000    	mov	_IndicatorsData,_LedData
1553                     ; 328 	IndicatorsData[1] = RealTimeSecondNumberShow;
1555  054a 5500010001    	mov	_IndicatorsData+1,_RealTimeSecondNumberShow+1
1556                     ; 329 	IndicatorsData[2] = (RealTimeSecondNumberShow >> 8);
1558  054f 5500000002    	mov	_IndicatorsData+2,_RealTimeSecondNumberShow
1559                     ; 330 	IndicatorsData[3] = (RealTimeMinuteNumberShow|0x80);
1561  0554 c60001        	ld	a,_RealTimeMinuteNumberShow+1
1562  0557 aa80          	or	a,#128
1563  0559 c70003        	ld	_IndicatorsData+3,a
1564                     ; 331 	IndicatorsData[4] = (RealTimeMinuteNumberShow >> 8);
1566  055c 5500000004    	mov	_IndicatorsData+4,_RealTimeMinuteNumberShow
1567                     ; 332 	IndicatorsData[5] = Chenal4NumberShow;
1569  0561 5500010005    	mov	_IndicatorsData+5,_Chenal4NumberShow+1
1570                     ; 333 	IndicatorsData[6] = (Chenal4NumberShow >> 8);
1572  0566 5500000006    	mov	_IndicatorsData+6,_Chenal4NumberShow
1573                     ; 334 	IndicatorsData[7] = Chenal3NumberShow;
1575  056b 5500010007    	mov	_IndicatorsData+7,_Chenal3NumberShow+1
1576                     ; 335 	IndicatorsData[8] = (Chenal3NumberShow >> 8);
1578  0570 5500000008    	mov	_IndicatorsData+8,_Chenal3NumberShow
1579                     ; 336 	IndicatorsData[9] = Chenal2NumberShow;
1581  0575 5500010009    	mov	_IndicatorsData+9,_Chenal2NumberShow+1
1582                     ; 337 	IndicatorsData[10] = (Chenal2NumberShow >> 8);
1584  057a 550000000a    	mov	_IndicatorsData+10,_Chenal2NumberShow
1585                     ; 338 	IndicatorsData[11] = Chenal1NumberShow;
1587  057f 550001000b    	mov	_IndicatorsData+11,_Chenal1NumberShow+1
1588                     ; 339 	IndicatorsData[12] = (Chenal1NumberShow >> 8);
1590  0584 550000000c    	mov	_IndicatorsData+12,_Chenal1NumberShow
1591                     ; 341 	IndicatorsDataPointer = 0;
1593  0589 725f0000      	clr	_IndicatorsDataPointer
1594                     ; 343 	GPIO_WriteLow(GPIOC, LED_COM_C);
1596  058d 4b80          	push	#128
1597  058f ae500a        	ldw	x,#20490
1598  0592 cd0000        	call	_GPIO_WriteLow
1600  0595 ae1701        	ldw	x,#5889
1601  0598 84            	pop	a
1602                     ; 345 	SPI_ITConfig(SPI_IT_TXE, ENABLE);
1605                     ; 347 }
1608  0599 cc0000        	jp	_SPI_ITConfig
1633                     ; 349 void ChenalValuesService(void)
1633                     ; 350 {
1634                     	switch	.text
1635  059c               _ChenalValuesService:
1639                     ; 353 	Taskboard.SetNewChenalValues = Clear;
1641  059c 72190000      	bres	_Taskboard,#4
1642                     ; 368 }
1645  05a0 81            	ret	
1658                     	xdef	_ChenalValuesService
1659                     	xdef	_ScreenUpdate
1660                     	xdef	_NumberToNumberShow
1661                     	xdef	_EncoderService
1662                     	xdef	_TimeService
1663                     	xdef	_ButtonsService
1664                     	xref	_TIM2_AutoreloadValue
1665                     	xref	_CounterParselPeriod
1666                     	xref	_CounterButtonsDelay
1667                     	xref	_StateButtons
1668                     	xref	_StateEncoder5
1669                     	xref	_StateEncoder4
1670                     	xref	_StateEncoder3
1671                     	xref	_StateEncoder2
1672                     	xref	_StateEncoder1
1673                     	xref	_Chenal4NumberShow
1674                     	xref	_Chenal3NumberShow
1675                     	xref	_Chenal2NumberShow
1676                     	xref	_Chenal1NumberShow
1677                     	xref	_Chenal4Number
1678                     	xref	_Chenal3Number
1679                     	xref	_Chenal2Number
1680                     	xref	_Chenal1Number
1681                     	xref	_RealTimeMinuteNumberShow
1682                     	xref	_RealTimeSecondNumberShow
1683                     	xref	_RealTimeMinute
1684                     	xref	_RealTimeSecond
1685                     	xref	_RealTimeCounter
1686                     	xref	_LedData
1687                     	xref	_IndicatorsDataPointer
1688                     	xref	_IndicatorsData
1689                     	xref	_Taskboard
1690                     	xref	_Device
1691                     	xref	_TIM2_SetAutoreload
1692                     	xref	_TIM2_Cmd
1693                     	xref	_SPI_ITConfig
1694                     	xref	_GPIO_ReadInputData
1695                     	xref	_GPIO_WriteLow
1714                     	end
