   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.21 - 04 Feb 2014
   3                     ; Generator (Limited) V4.3.12 - 11 Feb 2014
   4                     ; Optimizer V4.3.10 - 04 Sep 2013
  60                     ; 34 main()
  60                     ; 35 {
  62                     	switch	.text
  63  0000               _main:
  67                     ; 38     CLK_Config();
  69  0000 cd0000        	call	_CLK_Config
  71                     ; 41     GPIO_Config();
  73  0003 cd0000        	call	_GPIO_Config
  75                     ; 44     Beep_Config();
  77  0006 cd0000        	call	_Beep_Config
  79                     ; 48 		SPI_Config();
  81  0009 cd0000        	call	_SPI_Config
  83                     ; 52 		Timers_Config();
  85  000c cd0000        	call	_Timers_Config
  87                     ; 56 		Variables_Config();
  89  000f cd0000        	call	_Variables_Config
  91                     ; 58 		ITC_SetSoftwarePriority(ITC_IRQ_TIM4_OVF ,ITC_PRIORITYLEVEL_2);
  93  0012 ae1700        	ldw	x,#5888
  94  0015 cd0000        	call	_ITC_SetSoftwarePriority
  96                     ; 59 		ITC_SetSoftwarePriority(ITC_IRQ_SPI ,ITC_PRIORITYLEVEL_1);
  98  0018 ae0a01        	ldw	x,#2561
  99  001b cd0000        	call	_ITC_SetSoftwarePriority
 101                     ; 62     enableInterrupts();
 104  001e 9a            	rim	
 106  001f               L12:
 107                     ; 66 		if (Taskboard.ButtonsPolling == Set) ButtonsService();
 109  001f 7201009203    	btjf	_Taskboard,#0,L52
 112  0024 cd0000        	call	_ButtonsService
 114  0027               L52:
 115                     ; 67 		if (Taskboard.EncoderPolling == Set) EncoderService();
 117  0027 7203009203    	btjf	_Taskboard,#1,L72
 120  002c cd0000        	call	_EncoderService
 122  002f               L72:
 123                     ; 68 		if (Taskboard.TimePolling == Set) TimeService();
 125  002f 7205009203    	btjf	_Taskboard,#2,L13
 128  0034 cd0000        	call	_TimeService
 130  0037               L13:
 131                     ; 69 		if (Taskboard.ScreenUpdate == Set) ScreenUpdate(); 
 133  0037 7207009203    	btjf	_Taskboard,#3,L33
 136  003c cd0000        	call	_ScreenUpdate
 138  003f               L33:
 139                     ; 70 		if (Taskboard.SetNewChenalValues == Set) ChenalValuesService();
 141  003f 72090092db    	btjf	_Taskboard,#4,L12
 144  0044 cd0000        	call	_ChenalValuesService
 146  0047 20d6          	jra	L12
 181                     ; 81 void assert_failed(u8* file, u32 line)
 181                     ; 82 { 
 182                     	switch	.text
 183  0049               _assert_failed:
 187  0049               L55:
 188  0049 20fe          	jra	L55
 566                     	xdef	_main
 567                     	xref	_ChenalValuesService
 568                     	xref	_Variables_Config
 569                     	xref	_SPI_Config
 570                     	xref	_Beep_Config
 571                     	xref	_Timers_Config
 572                     	xref	_GPIO_Config
 573                     	xref	_CLK_Config
 574                     	xref	_ScreenUpdate
 575                     	xref	_EncoderService
 576                     	xref	_TimeService
 577                     	xref	_ButtonsService
 578                     	switch	.bss
 579  0000               _OutPWM:
 580  0000 000000000000  	ds.b	100
 581                     	xdef	_OutPWM
 582  0064               _TIM2_AutoreloadValue:
 583  0064 0000          	ds.b	2
 584                     	xdef	_TIM2_AutoreloadValue
 585  0066               _CounterParselPeriod:
 586  0066 00            	ds.b	1
 587                     	xdef	_CounterParselPeriod
 588  0067               _CounterButtonsDelay:
 589  0067 00            	ds.b	1
 590                     	xdef	_CounterButtonsDelay
 591  0068               _StateButtons:
 592  0068 00            	ds.b	1
 593                     	xdef	_StateButtons
 594  0069               _CounterEncoderDelay:
 595  0069 00            	ds.b	1
 596                     	xdef	_CounterEncoderDelay
 597  006a               _StateEncoder5:
 598  006a 00            	ds.b	1
 599                     	xdef	_StateEncoder5
 600  006b               _StateEncoder4:
 601  006b 00            	ds.b	1
 602                     	xdef	_StateEncoder4
 603  006c               _StateEncoder3:
 604  006c 00            	ds.b	1
 605                     	xdef	_StateEncoder3
 606  006d               _StateEncoder2:
 607  006d 00            	ds.b	1
 608                     	xdef	_StateEncoder2
 609  006e               _StateEncoder1:
 610  006e 00            	ds.b	1
 611                     	xdef	_StateEncoder1
 612  006f               _Chenal4NumberShow:
 613  006f 0000          	ds.b	2
 614                     	xdef	_Chenal4NumberShow
 615  0071               _Chenal3NumberShow:
 616  0071 0000          	ds.b	2
 617                     	xdef	_Chenal3NumberShow
 618  0073               _Chenal2NumberShow:
 619  0073 0000          	ds.b	2
 620                     	xdef	_Chenal2NumberShow
 621  0075               _Chenal1NumberShow:
 622  0075 0000          	ds.b	2
 623                     	xdef	_Chenal1NumberShow
 624  0077               _Chenal4Number:
 625  0077 00            	ds.b	1
 626                     	xdef	_Chenal4Number
 627  0078               _Chenal3Number:
 628  0078 00            	ds.b	1
 629                     	xdef	_Chenal3Number
 630  0079               _Chenal2Number:
 631  0079 00            	ds.b	1
 632                     	xdef	_Chenal2Number
 633  007a               _Chenal1Number:
 634  007a 00            	ds.b	1
 635                     	xdef	_Chenal1Number
 636  007b               _RealTimeMinuteNumberShow:
 637  007b 0000          	ds.b	2
 638                     	xdef	_RealTimeMinuteNumberShow
 639  007d               _RealTimeSecondNumberShow:
 640  007d 0000          	ds.b	2
 641                     	xdef	_RealTimeSecondNumberShow
 642  007f               _RealTimeMinute:
 643  007f 00            	ds.b	1
 644                     	xdef	_RealTimeMinute
 645  0080               _RealTimeSecond:
 646  0080 00            	ds.b	1
 647                     	xdef	_RealTimeSecond
 648  0081               _RealTimeCounter:
 649  0081 00            	ds.b	1
 650                     	xdef	_RealTimeCounter
 651  0082               _TaskCounter:
 652  0082 00            	ds.b	1
 653                     	xdef	_TaskCounter
 654  0083               _LedData:
 655  0083 00            	ds.b	1
 656                     	xdef	_LedData
 657  0084               _IndicatorsDataPointer:
 658  0084 00            	ds.b	1
 659                     	xdef	_IndicatorsDataPointer
 660  0085               _IndicatorsData:
 661  0085 000000000000  	ds.b	13
 662                     	xdef	_IndicatorsData
 663  0092               _Taskboard:
 664  0092 00            	ds.b	1
 665                     	xdef	_Taskboard
 666  0093               _Device:
 667  0093 00            	ds.b	1
 668                     	xdef	_Device
 669                     	xdef	_assert_failed
 670                     	xref	_ITC_SetSoftwarePriority
 690                     	end
