   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
   4                     ; Optimizer V4.4.7 - 05 Oct 2017
 112                     ; 47 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 112                     ; 48 {
 114                     	switch	.text
 115  0000               _GPIO_DeInit:
 119                     ; 49     GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 121  0000 7f            	clr	(x)
 122                     ; 50     GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 124  0001 6f02          	clr	(2,x)
 125                     ; 51     GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 127  0003 6f03          	clr	(3,x)
 128                     ; 52     GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 130  0005 6f04          	clr	(4,x)
 131                     ; 53 }
 134  0007 81            	ret	
 375                     ; 65 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 375                     ; 66 {
 376                     	switch	.text
 377  0008               _GPIO_Init:
 379  0008 89            	pushw	x
 380       00000000      OFST:	set	0
 383                     ; 71     assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 385  0009 7b06          	ld	a,(OFST+6,sp)
 386  000b 273a          	jreq	L41
 387  000d a140          	cp	a,#64
 388  000f 2736          	jreq	L41
 389  0011 a120          	cp	a,#32
 390  0013 2732          	jreq	L41
 391  0015 a160          	cp	a,#96
 392  0017 272e          	jreq	L41
 393  0019 a1a0          	cp	a,#160
 394  001b 272a          	jreq	L41
 395  001d a1e0          	cp	a,#224
 396  001f 2726          	jreq	L41
 397  0021 a180          	cp	a,#128
 398  0023 2722          	jreq	L41
 399  0025 a1c0          	cp	a,#192
 400  0027 271e          	jreq	L41
 401  0029 a1b0          	cp	a,#176
 402  002b 271a          	jreq	L41
 403  002d a1f0          	cp	a,#240
 404  002f 2716          	jreq	L41
 405  0031 a190          	cp	a,#144
 406  0033 2712          	jreq	L41
 407  0035 a1d0          	cp	a,#208
 408  0037 270e          	jreq	L41
 409  0039 ae0047        	ldw	x,#71
 410  003c 89            	pushw	x
 411  003d 5f            	clrw	x
 412  003e 89            	pushw	x
 413  003f ae0000        	ldw	x,#L771
 414  0042 cd0000        	call	_assert_failed
 416  0045 5b04          	addw	sp,#4
 417  0047               L41:
 418                     ; 72     assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 420  0047 7b05          	ld	a,(OFST+5,sp)
 421  0049 2610          	jrne	L22
 422  004b ae0048        	ldw	x,#72
 423  004e 89            	pushw	x
 424  004f 5f            	clrw	x
 425  0050 89            	pushw	x
 426  0051 ae0000        	ldw	x,#L771
 427  0054 cd0000        	call	_assert_failed
 429  0057 5b04          	addw	sp,#4
 430  0059 7b05          	ld	a,(OFST+5,sp)
 431  005b               L22:
 432                     ; 75   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 434  005b 1e01          	ldw	x,(OFST+1,sp)
 435  005d 43            	cpl	a
 436  005e e404          	and	a,(4,x)
 437  0060 e704          	ld	(4,x),a
 438                     ; 81     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 440  0062 7b06          	ld	a,(OFST+6,sp)
 441  0064 2a14          	jrpl	L102
 442                     ; 83         if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 444  0066 a510          	bcp	a,#16
 445  0068 2705          	jreq	L302
 446                     ; 85             GPIOx->ODR |= (uint8_t)GPIO_Pin;
 448  006a f6            	ld	a,(x)
 449  006b 1a05          	or	a,(OFST+5,sp)
 451  006d 2004          	jra	L502
 452  006f               L302:
 453                     ; 89             GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 455  006f 7b05          	ld	a,(OFST+5,sp)
 456  0071 43            	cpl	a
 457  0072 f4            	and	a,(x)
 458  0073               L502:
 459  0073 f7            	ld	(x),a
 460                     ; 92         GPIOx->DDR |= (uint8_t)GPIO_Pin;
 462  0074 e602          	ld	a,(2,x)
 463  0076 1a05          	or	a,(OFST+5,sp)
 465  0078 2005          	jra	L702
 466  007a               L102:
 467                     ; 97         GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 469  007a 7b05          	ld	a,(OFST+5,sp)
 470  007c 43            	cpl	a
 471  007d e402          	and	a,(2,x)
 472  007f               L702:
 473  007f e702          	ld	(2,x),a
 474                     ; 104     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 476  0081 7b06          	ld	a,(OFST+6,sp)
 477  0083 a540          	bcp	a,#64
 478  0085 2706          	jreq	L112
 479                     ; 106         GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 481  0087 e603          	ld	a,(3,x)
 482  0089 1a05          	or	a,(OFST+5,sp)
 484  008b 2005          	jra	L312
 485  008d               L112:
 486                     ; 110         GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 488  008d 7b05          	ld	a,(OFST+5,sp)
 489  008f 43            	cpl	a
 490  0090 e403          	and	a,(3,x)
 491  0092               L312:
 492  0092 e703          	ld	(3,x),a
 493                     ; 117     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 495  0094 7b06          	ld	a,(OFST+6,sp)
 496  0096 a520          	bcp	a,#32
 497  0098 2708          	jreq	L512
 498                     ; 119         GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 500  009a 1e01          	ldw	x,(OFST+1,sp)
 501  009c e604          	ld	a,(4,x)
 502  009e 1a05          	or	a,(OFST+5,sp)
 504  00a0 2007          	jra	L712
 505  00a2               L512:
 506                     ; 123         GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 508  00a2 1e01          	ldw	x,(OFST+1,sp)
 509  00a4 7b05          	ld	a,(OFST+5,sp)
 510  00a6 43            	cpl	a
 511  00a7 e404          	and	a,(4,x)
 512  00a9               L712:
 513  00a9 e704          	ld	(4,x),a
 514                     ; 125 }
 517  00ab 85            	popw	x
 518  00ac 81            	ret	
 562                     ; 135 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 562                     ; 136 {
 563                     	switch	.text
 564  00ad               _GPIO_Write:
 566       fffffffe      OFST: set -2
 569                     ; 137     GPIOx->ODR = PortVal;
 571  00ad 7b03          	ld	a,(OFST+5,sp)
 572  00af f7            	ld	(x),a
 573                     ; 138 }
 576  00b0 81            	ret	
 623                     ; 148 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 623                     ; 149 {
 624                     	switch	.text
 625  00b1               _GPIO_WriteHigh:
 627       fffffffe      OFST: set -2
 630                     ; 150     GPIOx->ODR |= (uint8_t)PortPins;
 632  00b1 f6            	ld	a,(x)
 633  00b2 1a03          	or	a,(OFST+5,sp)
 634  00b4 f7            	ld	(x),a
 635                     ; 151 }
 638  00b5 81            	ret	
 685                     ; 161 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 685                     ; 162 {
 686                     	switch	.text
 687  00b6               _GPIO_WriteLow:
 689       fffffffe      OFST: set -2
 692                     ; 163     GPIOx->ODR &= (uint8_t)(~PortPins);
 694  00b6 7b03          	ld	a,(OFST+5,sp)
 695  00b8 43            	cpl	a
 696  00b9 f4            	and	a,(x)
 697  00ba f7            	ld	(x),a
 698                     ; 164 }
 701  00bb 81            	ret	
 748                     ; 174 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 748                     ; 175 {
 749                     	switch	.text
 750  00bc               _GPIO_WriteReverse:
 752       fffffffe      OFST: set -2
 755                     ; 176     GPIOx->ODR ^= (uint8_t)PortPins;
 757  00bc f6            	ld	a,(x)
 758  00bd 1803          	xor	a,(OFST+5,sp)
 759  00bf f7            	ld	(x),a
 760                     ; 177 }
 763  00c0 81            	ret	
 801                     ; 185 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 801                     ; 186 {
 802                     	switch	.text
 803  00c1               _GPIO_ReadOutputData:
 807                     ; 187     return ((uint8_t)GPIOx->ODR);
 809  00c1 f6            	ld	a,(x)
 812  00c2 81            	ret	
 849                     ; 196 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 849                     ; 197 {
 850                     	switch	.text
 851  00c3               _GPIO_ReadInputData:
 855                     ; 198     return ((uint8_t)GPIOx->IDR);
 857  00c3 e601          	ld	a,(1,x)
 860  00c5 81            	ret	
 928                     ; 207 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 928                     ; 208 {
 929                     	switch	.text
 930  00c6               _GPIO_ReadInputPin:
 932       fffffffe      OFST: set -2
 935                     ; 209     return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 937  00c6 e601          	ld	a,(1,x)
 938  00c8 1403          	and	a,(OFST+5,sp)
 941  00ca 81            	ret	
1020                     ; 219 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
1020                     ; 220 {
1021                     	switch	.text
1022  00cb               _GPIO_ExternalPullUpConfig:
1024  00cb 89            	pushw	x
1025       00000000      OFST:	set	0
1028                     ; 222     assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
1030  00cc 7b05          	ld	a,(OFST+5,sp)
1031  00ce 260e          	jrne	L05
1032  00d0 ae00de        	ldw	x,#222
1033  00d3 89            	pushw	x
1034  00d4 5f            	clrw	x
1035  00d5 89            	pushw	x
1036  00d6 ae0000        	ldw	x,#L771
1037  00d9 cd0000        	call	_assert_failed
1039  00dc 5b04          	addw	sp,#4
1040  00de               L05:
1041                     ; 223     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1043  00de 7b06          	ld	a,(OFST+6,sp)
1044  00e0 2711          	jreq	L06
1045  00e2 4a            	dec	a
1046  00e3 270e          	jreq	L06
1047  00e5 ae00df        	ldw	x,#223
1048  00e8 89            	pushw	x
1049  00e9 5f            	clrw	x
1050  00ea 89            	pushw	x
1051  00eb ae0000        	ldw	x,#L771
1052  00ee cd0000        	call	_assert_failed
1054  00f1 5b04          	addw	sp,#4
1055  00f3               L06:
1056                     ; 225     if (NewState != DISABLE) /* External Pull-Up Set*/
1058  00f3 7b06          	ld	a,(OFST+6,sp)
1059  00f5 2708          	jreq	L374
1060                     ; 227         GPIOx->CR1 |= (uint8_t)GPIO_Pin;
1062  00f7 1e01          	ldw	x,(OFST+1,sp)
1063  00f9 e603          	ld	a,(3,x)
1064  00fb 1a05          	or	a,(OFST+5,sp)
1066  00fd 2007          	jra	L574
1067  00ff               L374:
1068                     ; 230         GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1070  00ff 1e01          	ldw	x,(OFST+1,sp)
1071  0101 7b05          	ld	a,(OFST+5,sp)
1072  0103 43            	cpl	a
1073  0104 e403          	and	a,(3,x)
1074  0106               L574:
1075  0106 e703          	ld	(3,x),a
1076                     ; 232 }
1079  0108 85            	popw	x
1080  0109 81            	ret	
1093                     	xdef	_GPIO_ExternalPullUpConfig
1094                     	xdef	_GPIO_ReadInputPin
1095                     	xdef	_GPIO_ReadOutputData
1096                     	xdef	_GPIO_ReadInputData
1097                     	xdef	_GPIO_WriteReverse
1098                     	xdef	_GPIO_WriteLow
1099                     	xdef	_GPIO_WriteHigh
1100                     	xdef	_GPIO_Write
1101                     	xdef	_GPIO_Init
1102                     	xdef	_GPIO_DeInit
1103                     	xref	_assert_failed
1104                     .const:	section	.text
1105  0000               L771:
1106  0000 6c6962726172  	dc.b	"libraries\src\stm8"
1107  0012 735f6770696f  	dc.b	"s_gpio.c",0
1127                     	end
