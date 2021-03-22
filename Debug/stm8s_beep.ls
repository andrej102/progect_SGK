   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.21 - 04 Feb 2014
   3                     ; Generator (Limited) V4.3.12 - 11 Feb 2014
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
  46                     ; 48 void BEEP_DeInit(void)
  46                     ; 49 {
  48                     	switch	.text
  49  0000               _BEEP_DeInit:
  53                     ; 50     BEEP->CSR = BEEP_CSR_RESET_VALUE;
  55  0000 351f50f3      	mov	20723,#31
  56                     ; 51 }
  59  0004 81            	ret	
 125                     ; 61 void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
 125                     ; 62 {
 126                     	switch	.text
 127  0005               _BEEP_Init:
 129  0005 88            	push	a
 130       00000000      OFST:	set	0
 133                     ; 65     assert_param(IS_BEEP_FREQUENCY_OK(BEEP_Frequency));
 135  0006 4d            	tnz	a
 136  0007 2716          	jreq	L41
 137  0009 a140          	cp	a,#64
 138  000b 2712          	jreq	L41
 139  000d a180          	cp	a,#128
 140  000f 270e          	jreq	L41
 141  0011 ae0041        	ldw	x,#65
 142  0014 89            	pushw	x
 143  0015 5f            	clrw	x
 144  0016 89            	pushw	x
 145  0017 ae000c        	ldw	x,#L15
 146  001a cd0000        	call	_assert_failed
 148  001d 5b04          	addw	sp,#4
 149  001f               L41:
 150                     ; 68     if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
 152  001f c650f3        	ld	a,20723
 153  0022 a41f          	and	a,#31
 154  0024 a11f          	cp	a,#31
 155  0026 2610          	jrne	L35
 156                     ; 70         BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 158  0028 c650f3        	ld	a,20723
 159  002b a4e0          	and	a,#224
 160  002d c750f3        	ld	20723,a
 161                     ; 71         BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
 163  0030 c650f3        	ld	a,20723
 164  0033 aa0b          	or	a,#11
 165  0035 c750f3        	ld	20723,a
 166  0038               L35:
 167                     ; 75     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
 169  0038 c650f3        	ld	a,20723
 170  003b a43f          	and	a,#63
 171  003d c750f3        	ld	20723,a
 172                     ; 76     BEEP->CSR |= (uint8_t)(BEEP_Frequency);
 174  0040 c650f3        	ld	a,20723
 175  0043 1a01          	or	a,(OFST+1,sp)
 176  0045 c750f3        	ld	20723,a
 177                     ; 78 }
 180  0048 84            	pop	a
 181  0049 81            	ret	
 236                     ; 87 void BEEP_Cmd(FunctionalState NewState)
 236                     ; 88 {
 237                     	switch	.text
 238  004a               _BEEP_Cmd:
 242                     ; 89     if (NewState != DISABLE)
 244  004a 4d            	tnz	a
 245  004b 2705          	jreq	L301
 246                     ; 92         BEEP->CSR |= BEEP_CSR_BEEPEN;
 248  004d 721a50f3      	bset	20723,#5
 251  0051 81            	ret	
 252  0052               L301:
 253                     ; 97         BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
 255  0052 721b50f3      	bres	20723,#5
 256                     ; 99 }
 259  0056 81            	ret	
 307                     .const:	section	.text
 308  0000               L62:
 309  0000 0001adb0      	dc.l	110000
 310  0004               L03:
 311  0004 000249f1      	dc.l	150001
 312  0008               L63:
 313  0008 000003e8      	dc.l	1000
 314                     ; 114 void BEEP_LSICalibrationConfig(uint32_t LSIFreqHz)
 314                     ; 115 {
 315                     	switch	.text
 316  0057               _BEEP_LSICalibrationConfig:
 318  0057 5206          	subw	sp,#6
 319       00000006      OFST:	set	6
 322                     ; 121     assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 324  0059 96            	ldw	x,sp
 325  005a 1c0009        	addw	x,#OFST+3
 326  005d cd0000        	call	c_ltor
 328  0060 ae0000        	ldw	x,#L62
 329  0063 cd0000        	call	c_lcmp
 331  0066 250f          	jrult	L42
 332  0068 96            	ldw	x,sp
 333  0069 1c0009        	addw	x,#OFST+3
 334  006c cd0000        	call	c_ltor
 336  006f ae0004        	ldw	x,#L03
 337  0072 cd0000        	call	c_lcmp
 339  0075 250e          	jrult	L23
 340  0077               L42:
 341  0077 ae0079        	ldw	x,#121
 342  007a 89            	pushw	x
 343  007b 5f            	clrw	x
 344  007c 89            	pushw	x
 345  007d ae000c        	ldw	x,#L15
 346  0080 cd0000        	call	_assert_failed
 348  0083 5b04          	addw	sp,#4
 349  0085               L23:
 350                     ; 123     lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 352  0085 96            	ldw	x,sp
 353  0086 1c0009        	addw	x,#OFST+3
 354  0089 cd0000        	call	c_ltor
 356  008c ae0008        	ldw	x,#L63
 357  008f cd0000        	call	c_ludv
 359  0092 be02          	ldw	x,c_lreg+2
 360  0094 1f03          	ldw	(OFST-3,sp),x
 361                     ; 127     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 363  0096 c650f3        	ld	a,20723
 364  0099 a4e0          	and	a,#224
 365  009b c750f3        	ld	20723,a
 366                     ; 129     A = (uint16_t)(lsifreqkhz >> 3U); /* Division by 8, keep integer part only */
 368  009e 54            	srlw	x
 369  009f 54            	srlw	x
 370  00a0 54            	srlw	x
 371  00a1 1f05          	ldw	(OFST-1,sp),x
 372                     ; 131     if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
 374  00a3 58            	sllw	x
 375  00a4 58            	sllw	x
 376  00a5 58            	sllw	x
 377  00a6 1f01          	ldw	(OFST-5,sp),x
 378  00a8 1e03          	ldw	x,(OFST-3,sp)
 379  00aa 72f001        	subw	x,(OFST-5,sp)
 380  00ad 1605          	ldw	y,(OFST-1,sp)
 381  00af 9058          	sllw	y
 382  00b1 905c          	incw	y
 383  00b3 cd0000        	call	c_imul
 385  00b6 1605          	ldw	y,(OFST-1,sp)
 386  00b8 9058          	sllw	y
 387  00ba 9058          	sllw	y
 388  00bc bf00          	ldw	c_x,x
 389  00be 9058          	sllw	y
 390  00c0 90b300        	cpw	y,c_x
 391  00c3 7b06          	ld	a,(OFST+0,sp)
 392  00c5 2504          	jrult	L721
 393                     ; 133         BEEP->CSR |= (uint8_t)(A - 2U);
 395  00c7 a002          	sub	a,#2
 397  00c9 2001          	jra	L131
 398  00cb               L721:
 399                     ; 137         BEEP->CSR |= (uint8_t)(A - 1U);
 401  00cb 4a            	dec	a
 402  00cc               L131:
 403  00cc ca50f3        	or	a,20723
 404  00cf c750f3        	ld	20723,a
 405                     ; 139 }
 408  00d2 5b06          	addw	sp,#6
 409  00d4 81            	ret	
 422                     	xdef	_BEEP_LSICalibrationConfig
 423                     	xdef	_BEEP_Cmd
 424                     	xdef	_BEEP_Init
 425                     	xdef	_BEEP_DeInit
 426                     	xref	_assert_failed
 427                     	switch	.const
 428  000c               L15:
 429  000c 6c6962726172  	dc.b	"libraries\src\stm8"
 430  001e 735f62656570  	dc.b	"s_beep.c",0
 431                     	xref.b	c_lreg
 432                     	xref.b	c_x
 452                     	xref	c_imul
 453                     	xref	c_ludv
 454                     	xref	c_lcmp
 455                     	xref	c_ltor
 456                     	end
