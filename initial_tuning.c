// file contanes subriutines for initial tuning pheropherals


#include "main.h"

// 1. Clock configuration

void CLK_Config(void)
{
    /* Initialization of the clock */
    /* Clock divider to HSI/1 */
    CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
		
		CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, ENABLE);
		CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, ENABLE);
		CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, ENABLE);
		CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);
		
		CLK_LSICmd(ENABLE);
		 
}

// 2. Ports configuration

void GPIO_Config (void)
{
	// port A
	
	GPIO_Init(GPIOA, E1A, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOA, E1B, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOA, E2A, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOA, E2B, GPIO_MODE_IN_PU_NO_IT);
	
	// port B
	
	GPIO_Init(GPIOB, BT1, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOB, BT2, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOB, BT3, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOB, BT4, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOB, BT5, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOB, BT6, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOB, BT7, GPIO_MODE_IN_PU_NO_IT);
	
	GPIO_Init(GPIOB, GPIO_PIN_7, GPIO_MODE_IN_PU_NO_IT);
	
	// port C
	
	GPIO_Init(GPIOC, OP1, GPIO_MODE_OUT_PP_HIGH_FAST);
	GPIO_WriteLow(GPIOC, OP1);
	GPIO_Init(GPIOC, OP2, GPIO_MODE_OUT_PP_HIGH_FAST);
	GPIO_WriteLow(GPIOC, OP2);
	GPIO_Init(GPIOC, OP3, GPIO_MODE_OUT_PP_HIGH_FAST);
	GPIO_WriteLow(GPIOC, OP3);
	GPIO_Init(GPIOC, OP4, GPIO_MODE_OUT_PP_HIGH_FAST);
	GPIO_WriteLow(GPIOC, OP4);
	
	GPIO_Init(GPIOC, LED_CLK, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GPIOC, LED_DATA, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GPIOC, LED_COM_C, GPIO_MODE_OUT_PP_LOW_FAST);
	
	GPIO_WriteLow(GPIOC, LED_COM_C);
	
	// port D
	
	GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_IN_PU_NO_IT);
	
	GPIO_Init(GPIOD, ON1, GPIO_MODE_OUT_PP_HIGH_FAST);
	GPIO_WriteLow(GPIOD, ON1);
	GPIO_Init(GPIOD, ON2, GPIO_MODE_OUT_PP_HIGH_FAST);
	GPIO_WriteLow(GPIOD, ON2);
	
	GPIO_Init(GPIOD, BE, GPIO_MODE_OUT_PP_LOW_SLOW);
	
	GPIO_Init(GPIOD, ON3, GPIO_MODE_OUT_PP_HIGH_FAST);
	GPIO_WriteLow(GPIOD, ON3);
	GPIO_Init(GPIOD, ON4, GPIO_MODE_OUT_PP_HIGH_FAST);
	GPIO_WriteLow(GPIOD, ON4);
	
	GPIO_Init(GPIOD, GPIO_PIN_7, GPIO_MODE_IN_PU_NO_IT);
	
	// port E
	
	GPIO_Init(GPIOE, E5A, GPIO_MODE_IN_PU_NO_IT);

	GPIO_Init(GPIOE, GPIO_PIN_1, GPIO_MODE_IN_PU_NO_IT);	
	GPIO_Init(GPIOE, GPIO_PIN_2, GPIO_MODE_IN_PU_NO_IT);

  GPIO_Init(GPIOE, E5B, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOE, E4A, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOE, E4B, GPIO_MODE_IN_PU_NO_IT);
	
	GPIO_Init(GPIOE, GPIO_PIN_7, GPIO_MODE_IN_PU_NO_IT);
	
	// port G
	
	GPIO_Init(GPIOG, E3B, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOG, E3A, GPIO_MODE_IN_PU_NO_IT);
	
//	for (i=0;i<99;i++) OutPWM[i] |= LED_COM_C;
	
}

// 5. Timers configuration

void Timers_Config (void)
{
	
	
	 /* TIM4 configuration:
   - TIM4CLK is set to 16 MHz, the TIM4 Prescaler is equal to 64 so the TIM1 counter
   clock used is 16 MHz / 64 = 250 000 Hz
  - With 250 000 Hz we can generate time base:
      max time base is 1.024 ms if TIM4_PERIOD = 255 --> (255 + 1) / 250000 = 1.024 ms
      min time base is 0.016 ms if TIM4_PERIOD = 1   --> (  1 + 1) / 250000 = 0.008 ms
  - we need to generate a time base equal to 1 ms
   so TIM4_PERIOD = (0.001 * 250000 - 1) = 250 */

  TIM4_TimeBaseInit(TIM4_PRESCALER_64, 250);  // Time base configuration 
  TIM4_ClearFlag(TIM4_FLAG_UPDATE); 
  TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
  TIM4_Cmd(ENABLE);
	
	/* TIM2 configuration:
	   TIM2 используетс€ дл€ формировани€ старта импулсов в каналах с частотой 
		 от 100 до 1000 √ц (изменение от 100 до 1000 √ц с шагом 100 us за 0,5 сек, и обратно за 0,5 сек
		 и так 4 раза подр€д (посылка 4 секунды)), тоесть дл€ периодического запуска TIM1
		 (делее саму осциллограмму 4-х каналов одного импульса формирует TIM1)
   - TIM2CLK от 16 MHz с делителем 16 получим 16 MHz / 16 = 1 000 000 Hz,
	 или 1 us, т.е. 100 us это 100 таймов, а 10 ms - 10000 таймов.
  */

  TIM2_TimeBaseInit(TIM2_PRESCALER_16, 10000); 															// Time base configuration по умолчанию	
  TIM2_ITConfig(TIM2_IT_UPDATE, ENABLE);  
	
//	TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 120, 0);
	
}

// 4. Beep configuration

void Beep_Config (void)
{
	BEEP_LSICalibrationConfig (LSIMeasurment());
  BEEP_Init(BEEP_FREQUENCY_4KHZ);
 
//  BEEP-> CSR = 0x0e;
//  BEEP-> CSR |= 0x80;
//  BEEP-> CSR |= 0x20;

//	BEEP_Cmd(ENABLE);
 
}

void SPI_Config (void)
{
  /* Initialize SPI */
  SPI_Init(SPI_FIRSTBIT_MSB, SPI_BAUDRATEPRESCALER_2, SPI_MODE_MASTER, 
  SPI_CLOCKPOLARITY_HIGH, SPI_CLOCKPHASE_2EDGE, SPI_DATADIRECTION_2LINES_FULLDUPLEX, 
  SPI_NSS_SOFT, 0x01);
	
  SPI_Cmd(ENABLE);
}

void Variables_Config(void)
{
	RealTimeSecond = 0;
	RealTimeMinute = 0;
	
	RealTimeCounter = 0;
	
	RealTimeSecond = 0;
	RealTimeMinute = 0;
	Chenal4Number = 0;
	Chenal3Number = 0;
	Chenal2Number = 0;
	Chenal1Number = 0;
	
	Chenal1Enable = Clear;
	Chenal2Enable = Clear;
	Chenal3Enable = Clear;
	Chenal4Enable = Clear;
	
	Chenal4NumberPWM = 0;
	Chenal3NumberPWM = 0;
	Chenal2NumberPWM = 0;
	Chenal1NumberPWM = 0;
	
	Chenal1NumberShow = NumberToNumberShow(Chenal1Number, Clear, Clear);
	Chenal2NumberShow = NumberToNumberShow(Chenal2Number, Clear, Clear);
	Chenal3NumberShow = NumberToNumberShow(Chenal3Number, Clear, Clear);
	Chenal4NumberShow = NumberToNumberShow(Chenal4Number, Clear, Clear);
	
	RealTimeSecondNumberShow = NumberToNumberShow(RealTimeSecond, Clear, Set);
	RealTimeMinuteNumberShow = NumberToNumberShow(RealTimeMinute, LowPoint, Set);
	
	Device.State = Stop;
	
	Device2.Chenal1Show = Set;
	Device2.Chenal2Show = Set;
	Device2.Chenal3Show = Set;
	Device2.Chenal4Show = Set;
	
	StateButtons = GPIO_ReadInputData ( GPIOB );
	
	LedData = 0;
	
	// Mode define
	
	LedData = LedA;	
	Device.Mode = ModeA;
	
	/*
	if ((StateButtons & 0x20) == 0) 
	{
		LedData = LedA;	
		Device.Mode = ModeA;
	}
	else
	{
		if ((StateButtons & 0x10) == 0) 
		{
			LedData = LedB;
			Device.Mode = ModeB;
			
		}
		else
		{
			if ((StateButtons & 0x08) == 0)
			{
				LedData |= LedC;
				Device.Mode = ModeC;
			}
			else
			{
				LedData |= LedA;	
				Device.Mode = ModeA;
			}
		}
	}
	*/
	
	// Polarity define
	
	LedData |= LedP;	
	Device.Polarity = PolarityP;
	
	/*
	if ((StateButtons & 0x04) == 0) 
	{
		LedData |= LedP;	
		Device.Polarity = PolarityP;
	}
	else
	{
		if ((StateButtons & 0x02) == 0) 
		{
			LedData |= LedN;
			Device.Polarity = PolarityN;
		}
		else
		{
			if ((StateButtons & 0x01) == 0)
			{
				LedData |= LedPN;
				Device.Polarity = PolarityPN;
			}
			else
			{
				LedData |= LedP;	
				Device.Polarity = PolarityP;
			}
		}
	}
	*/
}

uint32_t LSIMeasurment(void)
{

  uint32_t lsi_freq_hz = 0x0;
  uint32_t fmaster = 0x0;
  uint16_t ICValue1 = 0x0;
  uint16_t ICValue2 = 0x0;

  fmaster = CLK_GetClockFreq();  /* Get master frequency */

  AWU->CSR |= AWU_CSR_MSR;	/* Enable the LSI measurement: LSI clock connected to timer Input Capture 1 */

  /* Measure the LSI frequency with TIMER Input Capture 1 */
  
  /* Capture only every 8 events!!! */
  /* Enable capture of TI1 */
  TIM3_ICInit(TIM3_CHANNEL_1, TIM3_ICPOLARITY_RISING, TIM3_ICSELECTION_DIRECTTI, TIM3_ICPSC_DIV8, 0);
  TIM3_Cmd(ENABLE);
	
  while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1); 	/* wait a capture on cc1 */	
  ICValue1 = TIM3_GetCapture1(); 													/* Get CCR1 value*/
  TIM3_ClearFlag(TIM3_FLAG_CC1);
  
  while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);   /* wait a capture on cc1 */    
  ICValue2 = TIM3_GetCapture1();													/* Get CCR1 value*/
	TIM3_ClearFlag(TIM3_FLAG_CC1);

  TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);						 /* Disable IC1 input capture */
  
  TIM3_Cmd(DISABLE);
  
  lsi_freq_hz = (8 * fmaster) / (ICValue2 - ICValue1);   /* Compute LSI clock frequency */
    
  AWU->CSR &= (uint8_t)(~AWU_CSR_MSR);     /* Disable the LSI measurement: LSI clock disconnected from timer Input Capture 1 */

  return (lsi_freq_hz);
}