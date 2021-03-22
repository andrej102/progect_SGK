/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */
//#include "stm8s.h"

#include "main.h"

const char Version[]="V2.0";

struct DeviceStruct Device;
struct Device2Struct Device2;
struct TaskboardStruct Taskboard;

unsigned char IndicatorsData[13], IndicatorsDataPointer;

unsigned char LedData;

unsigned char TaskCounter;

unsigned char RealTimeCounter, RealTimeSecond, RealTimeMinute, BeepTimeCounter,BeepTimeCounte2;
unsigned short RealTimeSecondNumberShow, RealTimeMinuteNumberShow;

unsigned char Chenal1Number, Chenal2Number, Chenal3Number, Chenal4Number;
unsigned char Chenal1Enable, Chenal2Enable, Chenal3Enable, Chenal4Enable;
unsigned char Chenal1NumberPWM, Chenal2NumberPWM, Chenal3NumberPWM, Chenal4NumberPWM;
unsigned short Chenal1NumberShow, Chenal2NumberShow, Chenal3NumberShow,Chenal4NumberShow;

unsigned char StateEncoder1, StateEncoder2, StateEncoder3, StateEncoder4, StateEncoder5, CounterEncoderDelay;

unsigned char StateButtons, CounterButtonsDelay;

unsigned char CounterParselPeriod;

unsigned short CurrentPulsePeriod;

unsigned int TIM2_AutoreloadValue;

unsigned char OutPWM[100];

main()
{
	
	/* Clock configuration */
    CLK_Config();

    /* GPIO configuration */
    GPIO_Config();

    /* BEEP calibration */
    Beep_Config();
		
		/* SPI config */
		
		SPI_Config();
		
		/* Timers configuration */
		
		Timers_Config();
		
		/* var config */
		
		Variables_Config();
				
		ITC_SetSoftwarePriority(ITC_IRQ_TIM4_OVF ,ITC_PRIORITYLEVEL_2);
		ITC_SetSoftwarePriority(ITC_IRQ_SPI ,ITC_PRIORITYLEVEL_1);
    
    /* Enable general interrupts for Key button reading */
    enableInterrupts();
		
	while (1)
	{
		if (Taskboard.ButtonsPolling == Set) ButtonsService();
		if (Taskboard.EncoderPolling == Set) EncoderService();
		if (Taskboard.TimePolling == Set) TimeService();
		if (Taskboard.ScreenUpdate == Set) ScreenUpdate(); 	
		if (Taskboard.NeedTestPulse == Set) StartTestPulse(); 	
	}
}






#ifdef USE_FULL_ASSERT

void assert_failed(u8* file, u32 line)
{ 
  
  while (1)
  {
  }
}
#endif
