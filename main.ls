   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
   4                     ; Optimizer V4.4.7 - 05 Oct 2017
  18                     .const:	section	.text
  19  0000               _Version:
  20  0000 56322e3000    	dc.b	"V2.0",0
  63                     ; 41 main()
  63                     ; 42 {
  65                     	switch	.text
  66  0000               _main:
  70                     ; 45     CLK_Config();
  72  0000 cd0000        	call	_CLK_Config
  74                     ; 48     GPIO_Config();
  76  0003 cd0000        	call	_GPIO_Config
  78                     ; 51     Beep_Config();
  80  0006 cd0000        	call	_Beep_Config
  82                     ; 55 		SPI_Config();
  84  0009 cd0000        	call	_SPI_Config
  86                     ; 59 		Timers_Config();
  88  000c cd0000        	call	_Timers_Config
  90                     ; 63 		Variables_Config();
  92  000f cd0000        	call	_Variables_Config
  94                     ; 65 		ITC_SetSoftwarePriority(ITC_IRQ_TIM4_OVF ,ITC_PRIORITYLEVEL_2);
  96  0012 ae1700        	ldw	x,#5888
  97  0015 cd0000        	call	_ITC_SetSoftwarePriority
  99                     ; 66 		ITC_SetSoftwarePriority(ITC_IRQ_SPI ,ITC_PRIORITYLEVEL_1);
 101  0018 ae0a01        	ldw	x,#2561
 102  001b cd0000        	call	_ITC_SetSoftwarePriority
 104                     ; 69     enableInterrupts();
 107  001e 9a            	rim	
 109  001f               L12:
 110                     ; 73 		if (Taskboard.ButtonsPolling == Set) ButtonsService();
 112  001f 7201009e03    	btjf	_Taskboard,#0,L52
 115  0024 cd0000        	call	_ButtonsService
 117  0027               L52:
 118                     ; 74 		if (Taskboard.EncoderPolling == Set) EncoderService();
 120  0027 7203009e03    	btjf	_Taskboard,#1,L72
 123  002c cd0000        	call	_EncoderService
 125  002f               L72:
 126                     ; 75 		if (Taskboard.TimePolling == Set) TimeService();
 128  002f 7205009e03    	btjf	_Taskboard,#2,L13
 131  0034 cd0000        	call	_TimeService
 133  0037               L13:
 134                     ; 76 		if (Taskboard.ScreenUpdate == Set) ScreenUpdate(); 	
 136  0037 7207009e03    	btjf	_Taskboard,#3,L33
 139  003c cd0000        	call	_ScreenUpdate
 141  003f               L33:
 142                     ; 77 		if (Taskboard.NeedTestPulse == Set) StartTestPulse(); 	
 144  003f 7209009edb    	btjf	_Taskboard,#4,L12
 147  0044 cd0000        	call	_StartTestPulse
 149  0047 20d6          	jra	L12
 184                     ; 88 void assert_failed(u8* file, u32 line)
 184                     ; 89 { 
 185                     	switch	.text
 186  0049               _assert_failed:
 190  0049               L55:
 191  0049 20fe          	jra	L55
 733                     	xdef	_main
 734                     	xdef	_Version
 735                     	xref	_StartTestPulse
 736                     	xref	_Variables_Config
 737                     	xref	_SPI_Config
 738                     	xref	_Beep_Config
 739                     	xref	_Timers_Config
 740                     	xref	_GPIO_Config
 741                     	xref	_CLK_Config
 742                     	xref	_ScreenUpdate
 743                     	xref	_EncoderService
 744                     	xref	_TimeService
 745                     	xref	_ButtonsService
 746                     	switch	.bss
 747  0000               _OutPWM:
 748  0000 000000000000  	ds.b	100
 749                     	xdef	_OutPWM
 750  0064               _TIM2_AutoreloadValue:
 751  0064 0000          	ds.b	2
 752                     	xdef	_TIM2_AutoreloadValue
 753  0066               _CurrentPulsePeriod:
 754  0066 0000          	ds.b	2
 755                     	xdef	_CurrentPulsePeriod
 756  0068               _CounterParselPeriod:
 757  0068 00            	ds.b	1
 758                     	xdef	_CounterParselPeriod
 759  0069               _CounterButtonsDelay:
 760  0069 00            	ds.b	1
 761                     	xdef	_CounterButtonsDelay
 762  006a               _StateButtons:
 763  006a 00            	ds.b	1
 764                     	xdef	_StateButtons
 765  006b               _CounterEncoderDelay:
 766  006b 00            	ds.b	1
 767                     	xdef	_CounterEncoderDelay
 768  006c               _StateEncoder5:
 769  006c 00            	ds.b	1
 770                     	xdef	_StateEncoder5
 771  006d               _StateEncoder4:
 772  006d 00            	ds.b	1
 773                     	xdef	_StateEncoder4
 774  006e               _StateEncoder3:
 775  006e 00            	ds.b	1
 776                     	xdef	_StateEncoder3
 777  006f               _StateEncoder2:
 778  006f 00            	ds.b	1
 779                     	xdef	_StateEncoder2
 780  0070               _StateEncoder1:
 781  0070 00            	ds.b	1
 782                     	xdef	_StateEncoder1
 783  0071               _Chenal4NumberShow:
 784  0071 0000          	ds.b	2
 785                     	xdef	_Chenal4NumberShow
 786  0073               _Chenal3NumberShow:
 787  0073 0000          	ds.b	2
 788                     	xdef	_Chenal3NumberShow
 789  0075               _Chenal2NumberShow:
 790  0075 0000          	ds.b	2
 791                     	xdef	_Chenal2NumberShow
 792  0077               _Chenal1NumberShow:
 793  0077 0000          	ds.b	2
 794                     	xdef	_Chenal1NumberShow
 795  0079               _Chenal4NumberPWM:
 796  0079 00            	ds.b	1
 797                     	xdef	_Chenal4NumberPWM
 798  007a               _Chenal3NumberPWM:
 799  007a 00            	ds.b	1
 800                     	xdef	_Chenal3NumberPWM
 801  007b               _Chenal2NumberPWM:
 802  007b 00            	ds.b	1
 803                     	xdef	_Chenal2NumberPWM
 804  007c               _Chenal1NumberPWM:
 805  007c 00            	ds.b	1
 806                     	xdef	_Chenal1NumberPWM
 807  007d               _Chenal4Enable:
 808  007d 00            	ds.b	1
 809                     	xdef	_Chenal4Enable
 810  007e               _Chenal3Enable:
 811  007e 00            	ds.b	1
 812                     	xdef	_Chenal3Enable
 813  007f               _Chenal2Enable:
 814  007f 00            	ds.b	1
 815                     	xdef	_Chenal2Enable
 816  0080               _Chenal1Enable:
 817  0080 00            	ds.b	1
 818                     	xdef	_Chenal1Enable
 819  0081               _Chenal4Number:
 820  0081 00            	ds.b	1
 821                     	xdef	_Chenal4Number
 822  0082               _Chenal3Number:
 823  0082 00            	ds.b	1
 824                     	xdef	_Chenal3Number
 825  0083               _Chenal2Number:
 826  0083 00            	ds.b	1
 827                     	xdef	_Chenal2Number
 828  0084               _Chenal1Number:
 829  0084 00            	ds.b	1
 830                     	xdef	_Chenal1Number
 831  0085               _RealTimeMinuteNumberShow:
 832  0085 0000          	ds.b	2
 833                     	xdef	_RealTimeMinuteNumberShow
 834  0087               _RealTimeSecondNumberShow:
 835  0087 0000          	ds.b	2
 836                     	xdef	_RealTimeSecondNumberShow
 837  0089               _BeepTimeCounte2:
 838  0089 00            	ds.b	1
 839                     	xdef	_BeepTimeCounte2
 840  008a               _BeepTimeCounter:
 841  008a 00            	ds.b	1
 842                     	xdef	_BeepTimeCounter
 843  008b               _RealTimeMinute:
 844  008b 00            	ds.b	1
 845                     	xdef	_RealTimeMinute
 846  008c               _RealTimeSecond:
 847  008c 00            	ds.b	1
 848                     	xdef	_RealTimeSecond
 849  008d               _RealTimeCounter:
 850  008d 00            	ds.b	1
 851                     	xdef	_RealTimeCounter
 852  008e               _TaskCounter:
 853  008e 00            	ds.b	1
 854                     	xdef	_TaskCounter
 855  008f               _LedData:
 856  008f 00            	ds.b	1
 857                     	xdef	_LedData
 858  0090               _IndicatorsDataPointer:
 859  0090 00            	ds.b	1
 860                     	xdef	_IndicatorsDataPointer
 861  0091               _IndicatorsData:
 862  0091 000000000000  	ds.b	13
 863                     	xdef	_IndicatorsData
 864  009e               _Taskboard:
 865  009e 0000          	ds.b	2
 866                     	xdef	_Taskboard
 867  00a0               _Device2:
 868  00a0 00            	ds.b	1
 869                     	xdef	_Device2
 870  00a1               _Device:
 871  00a1 00            	ds.b	1
 872                     	xdef	_Device
 873                     	xdef	_assert_failed
 874                     	xref	_ITC_SetSoftwarePriority
 894                     	end
