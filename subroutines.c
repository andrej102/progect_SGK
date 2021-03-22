
							//   Subroutines


#include "main.h"

							// Buttions service 

void ButtonsService (void)
{
	unsigned char NewStateButtons;
	
	Taskboard.ButtonsPolling = Clear;
  
      if (CounterButtonsDelay != 0)
			{
				CounterButtonsDelay--;
				if (CounterButtonsDelay == 0)
				{             
          NewStateButtons = GPIO_ReadInputData  ( GPIOB );
				/*
					LedData &=~(LedA|LedB|LedC|LedP|LedN|LedPN);
	
					// Mode define
	
					if ((NewStateButtons & 0x20) == 0) 
					{
						FunctionStopGenerator();
						
						LedData |= LedA;	
						Device.Mode = ModeA;
						
						if (Device.State == Start)
						{
							RealTimeCounter = 0;
							FunctionStartGenerator();
						}							
						
					}
					else
					{
						if ((NewStateButtons & 0x10) == 0) 
						{
							FunctionStopGenerator();
							
							LedData |= LedB;
							Device.Mode = ModeB;
							
							if (Device.State == Start)
							{
								RealTimeCounter = 0;
								FunctionStartGenerator();
							}
						}
						else
						{
							if ((NewStateButtons & 0x08) == 0)
							{
								FunctionStopGenerator();							
								
								LedData |= LedC;
								Device.Mode = ModeC;
								
								if (Device.State == Start)
								{
									RealTimeCounter = 0;
									FunctionStartGenerator();
								}
							}
							else
							{
							  FunctionStopGenerator();
								
								LedData |= LedA;	
								Device.Mode = ModeA;
							
								if (Device.State == Start)
								{
									RealTimeCounter = 0;
									FunctionStartGenerator();
								}
							}
						}
					}
					
					// Polarity define
					
					if ((NewStateButtons & 0x04) == 0) 
					{
						LedData |= LedP;	
						Device.Polarity = PolarityP;
					}
					else
					{
						if ((NewStateButtons & 0x02) == 0) 
						{
							LedData |= LedN;
							Device.Polarity = PolarityN;
						}
						else
						{
							if ((NewStateButtons & 0x01) == 0)
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
					// Button "Start" define
						
					if (((StateButtons & 0x40) == 0) && ((NewStateButtons & 0x40) != 0)) 
					{
						BeepTimeCounter = 0;
						BEEP->CSR &= ~BEEP_CSR_BEEPEN;
						
						if (Device.State == Stop)
						{
							if ((RealTimeSecond != 0) | (RealTimeMinute != 0))
							{
								Device.State = Start;
								LedData |= LedStart;
								RealTimeCounter = 0;
								FunctionStartGenerator();	
							}
						}
						else
						{
							Device.State = Stop;
							
							Device2.TestMode = Clear;
							
							LedData &=~ LedStart;
							
							FunctionStopGenerator();
							
							Device2.Chenal1Show = Set;
							Device2.Chenal2Show = Set;
							Device2.Chenal3Show = Set;
							Device2.Chenal4Show = Set;
						}
					}
					
					// button Mode define
					
					if (((StateButtons & 0x20) == 0) && ((NewStateButtons & 0x20) != 0))
					{
						LedData &=~(LedA|LedB|LedC);
						
						FunctionStopGenerator();
						
						if (Device.Mode == ModeA)
						{
							LedData |= LedB;	
						  Device.Mode = ModeB;
						}
						else
						{
							if (Device.Mode == ModeB)
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
						
						if (Device.State == Start)
						{
							RealTimeCounter = 0;
							FunctionStartGenerator();
						}							
					}
	
					// button Polarity define
					
					if (((StateButtons & 0x04) == 0) && ((NewStateButtons & 0x04) != 0))
					{
						LedData &=~(LedP|LedN|LedPN);
						
						if (Device.Polarity == PolarityP)
						{
							LedData |= LedN;	
							Device.Polarity = PolarityN;
						}
						else
						{
							if (Device.Polarity == PolarityN)
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
					
					
					StateButtons = NewStateButtons;
				}
			}
			else
			{
				NewStateButtons = GPIO_ReadInputData ( GPIOB );
				if (NewStateButtons != StateButtons) CounterButtonsDelay = 20;
			}
}


//  Time service

void TimeService (void)
{
  Taskboard.TimePolling = Clear;
	
	if (BeepTimeCounter != 0)
	{
		BeepTimeCounter++;
		if (BeepTimeCounter == 125)
		{
			BeepTimeCounte2++;
			if (BeepTimeCounte2 == 30)
			{
				BeepTimeCounter = 0;
				BEEP->CSR &= ~BEEP_CSR_BEEPEN;
			}
			else
			{
				if ((BEEP->CSR & BEEP_CSR_BEEPEN) == 0) BEEP->CSR |= BEEP_CSR_BEEPEN;
				else BEEP->CSR &= ~BEEP_CSR_BEEPEN;
				BeepTimeCounter = 1;
			}			
		}
	}
	
	if (Device.State == Start)
	{
		
		RealTimeCounter++;
			
		if (Device.Mode == ModeB)
		{
			if (RealTimeCounter == 250)
			{
				CounterParselPeriod++;
				switch (CounterParselPeriod)
				{
					case 4 : 
									{ 
										TIM2_Cmd(DISABLE);
																		
									//	GPIOC->CR2 &= ~(OP1|OP2); GPIOD->CR2 &= ~(ON1|ON2); 
									//	GPIOC->DDR &= ~(OP1|OP2); GPIOD->DDR &= ~(ON1|ON2); 
										Chenal1Enable = Clear;
										Chenal2Enable = Clear;
										
										Device2.Chenal1Show = Clear;
										Device2.Chenal2Show = Clear;
										
									//	GPIOC->DDR |= (OP3|OP4); GPIOD->DDR |= (ON3|ON4);   
									//	GPIOC->CR2 |= (OP3|OP4); GPIOD->CR2 |= (ON3|ON4);   
										
										Device2.Chenal3Show = Set;
										Device2.Chenal4Show = Set;
										
										Chenal3Enable = Set;
										Chenal4Enable = Set;
										
										TIM2_AutoreloadValue = 1000;
										TIM2_SetAutoreload(TIM2_AutoreloadValue);
										Device.Way = UpWay;
										CurrentPulsePeriod = 10000;
										Device.CnPol = PolarityP;
										
										TIM2_SetCounter(1);
										TIM2_Cmd(ENABLE);
										
										break;
									}
					case 8 : 
									{ 
										TIM2_Cmd(DISABLE);
										
										//GPIOC->CR2 &= ~(OP3|OP4); GPIOD->CR2 &= ~(ON3|ON4); 
										//GPIOC->DDR &= ~(OP3|OP4); GPIOD->DDR &= ~(ON3|ON4); 
										
										Chenal3Enable = Clear;
										Chenal4Enable = Clear;
										
										Device2.Chenal3Show = Clear;
										Device2.Chenal4Show = Clear;
										
										//GPIOC->DDR |= (OP1|OP2); GPIOD->DDR |= (ON1|ON2);  
										//GPIOC->CR2 |= (OP1|OP2); GPIOD->CR2 |= (ON1|ON2);  
										
										Device2.Chenal1Show = Set;
										Device2.Chenal2Show = Set;
										
										Chenal1Enable = Set;
										Chenal2Enable = Set;
										
										CounterParselPeriod = 0;
										TIM2_AutoreloadValue = 1000;
										TIM2_SetAutoreload(TIM2_AutoreloadValue);
										Device.Way = UpWay;
										CurrentPulsePeriod = 10000;
										Device.CnPol = PolarityP;
										
										TIM2_SetCounter(1);
										TIM2_Cmd(ENABLE);
										break;
									}
					default : break;
				}
			}
		}
		
		if (Device.Mode == ModeA)
		{
			if (RealTimeCounter == 250)
			{
				CounterParselPeriod++;
				switch (CounterParselPeriod)
				{
					case 4 : 
					{
						FunctionStopGenerator(); 
						Device2.Chenal1Show = Clear; 
						Device2.Chenal2Show = Clear; 
						Device2.Chenal3Show = Clear; 
						Device2.Chenal4Show = Clear; 
						break;
					}
					case 8 : 
					{
						FunctionStartGenerator(); 
						break;
					}
					default : break;
				}
			}
		}
			
		if (RealTimeCounter == 250)
		{
						
			RealTimeCounter = 0;
			
			if (Device2.TestMode == Set)
			{
				Device2.TestMode = Clear;
				Device.State = Stop;
				FunctionStopGenerator();							
			}
			else
			{
				if (RealTimeSecond == 0)
				{
					RealTimeSecond = 59;
					RealTimeMinute--;
				}
				else
				{
					RealTimeSecond--;
				}
			
				if ((RealTimeSecond == 0)&&(RealTimeMinute == 0)) 
				{
					
					Device.State = Stop;
					LedData &=~ LedStart;
				
					FunctionStopGenerator();				
				
					Device2.Chenal1Show = Set;
					Device2.Chenal2Show = Set;
					Device2.Chenal3Show = Set;
					Device2.Chenal4Show = Set;
			
					BeepTimeCounter = 1;
					BeepTimeCounte2 = 0;
					BEEP->CSR |= BEEP_CSR_BEEPEN;			
				}				
			
				RealTimeSecondNumberShow = NumberToNumberShow(RealTimeSecond, Clear, Set);
				RealTimeMinuteNumberShow = NumberToNumberShow(RealTimeMinute, LowPoint, Set);
			}
		}
		
	}
}

								// Encoder sevice

void EncoderService (void)
{
  unsigned char NewStateEncoder1, NewStateEncoder2, NewStateEncoder3, NewStateEncoder4, NewStateEncoder5;
 
	unsigned short ChenalNumberTemp = 0;
 
	Taskboard.EncoderPolling = Clear;
 
  NewStateEncoder1 = (GPIO_ReadInputData(GPIOA) & (E1A|E1B));
	NewStateEncoder2 = (GPIO_ReadInputData(GPIOA) & (E2A|E2B));
	NewStateEncoder3 = (GPIO_ReadInputData(GPIOG) & (E3A|E3B));
	NewStateEncoder4 = (GPIO_ReadInputData(GPIOE) & (E4A|E4B));
	NewStateEncoder5 = (GPIO_ReadInputData(GPIOE) & (E5A|E5B));
 
// encoder 1
			
	switch (StateEncoder1)
	{
		case 0 : 
		{
			if ((NewStateEncoder1 & E1A) == 0) StateEncoder1 = 1; 
			else if ((NewStateEncoder1 & E1B) == 0) StateEncoder1 = 3;
			break;
		}
		case 1 : 
		{
			if ((NewStateEncoder1 & E1A) == 0) 
			{
				if ((NewStateEncoder1 & E1B) == 0) StateEncoder1 = 2;
			} 
			else StateEncoder1 = 0; 
			break;
		}
		case 2 : 
		{
			if ((NewStateEncoder1 & E1B) != 0) 
			{
				StateEncoder1 = 0; 
				if ((Chenal1Number<99) & (Device2.Chenal1Show == Set)) 
				{
					Chenal1Number++;
					ChenalNumberTemp = Chenal1Number;
					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
					Chenal1NumberPWM = (unsigned char)ChenalNumberTemp;
					Chenal1NumberShow = NumberToNumberShow(Chenal1Number, Clear, Clear); 
					RealTimeCounter = 0 ; 
					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
				}
			} 
			break;
		}
		case 3 : {if ((NewStateEncoder1 & E1B) == 0) {if ((NewStateEncoder1 & E1A) == 0) StateEncoder1 = 4;} else StateEncoder1 = 0; break;}
		case 4 : 
		{
			if ((NewStateEncoder1 & E1A) != 0) 
			{
				StateEncoder1 = 0; 
				if ((Chenal1Number>0) & (Device2.Chenal1Show == Set)) 
				{
					Chenal1Number--;
					ChenalNumberTemp = Chenal1Number;
					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
					Chenal1NumberPWM = (unsigned char)ChenalNumberTemp;					
					Chenal1NumberShow = NumberToNumberShow(Chenal1Number, Clear, Clear); 
					RealTimeCounter = 0; 					
					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
				}
			}
			break;
		}
		default : break;
	}
			
	switch (StateEncoder2)
	{
		case 0 : {if ((NewStateEncoder2 & E2A) == 0) StateEncoder2 = 1; else if ((NewStateEncoder2 & E2B) == 0) StateEncoder2 = 3; break;}
		case 1 : {if ((NewStateEncoder2 & E2A) == 0) {if ((NewStateEncoder2 & E2B) == 0) StateEncoder2 = 2;} else StateEncoder2 = 0; break;}
		case 2 : 
		{
			if ((NewStateEncoder2 & E2B) != 0) 
			{
				StateEncoder2 = 0; 
				if ((Chenal2Number<99) & (Device2.Chenal2Show == Set)) 
				{
					Chenal2Number++; 
					ChenalNumberTemp = Chenal2Number;
					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
					Chenal2NumberPWM = (unsigned char)ChenalNumberTemp; 
					Chenal2NumberShow = NumberToNumberShow(Chenal2Number, Clear, Clear); 
					RealTimeCounter = 0; 
					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
				}
			} 
			break;
		}
		case 3 : {if ((NewStateEncoder2 & E2B) == 0) {if ((NewStateEncoder2 & E2A) == 0) StateEncoder2 = 4;} else StateEncoder2 = 0; break;}
		case 4 : 
		{
			if ((NewStateEncoder2 & E2A) != 0) 
			{
				StateEncoder2 = 0; 
				if ((Chenal2Number>0) & (Device2.Chenal2Show == Set)) 
				{
					Chenal2Number--;
					ChenalNumberTemp = Chenal2Number;
					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
					Chenal2NumberPWM = (unsigned char)ChenalNumberTemp;					
					Chenal2NumberShow = NumberToNumberShow(Chenal2Number, Clear, Clear); 
					RealTimeCounter = 0; 
					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
				}
			}
			break;
		}
		default : break;
	}

	switch (StateEncoder3)
	{
		case 0 : {if ((NewStateEncoder3 & E3A) == 0) StateEncoder3 = 1; else if ((NewStateEncoder3 & E3B) == 0) StateEncoder3 = 3; break;}
		case 1 : {if ((NewStateEncoder3 & E3A) == 0) {if ((NewStateEncoder3 & E3B) == 0) StateEncoder3 = 2;} else StateEncoder3 = 0; break;}
		case 2 : 
		{
			if ((NewStateEncoder3 & E3B) != 0) 
			{
				StateEncoder3 = 0; 
				if ((Chenal3Number<99) & (Device2.Chenal3Show == Set))
				{
					Chenal3Number++;
					ChenalNumberTemp = Chenal3Number;
					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
					Chenal3NumberPWM = (unsigned char)ChenalNumberTemp;					
					Chenal3NumberShow = NumberToNumberShow(Chenal3Number, Clear, Clear); 
					RealTimeCounter = 0; 
					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
				}
			} 
			break;
		}
		case 3 : {if ((NewStateEncoder3 & E3B) == 0) {if ((NewStateEncoder3 & E3A) == 0) StateEncoder3 = 4;} else StateEncoder3 = 0; break;}
		case 4 : 
		{
			if ((NewStateEncoder3 & E3A) != 0) 
			{
				StateEncoder3 = 0; 
				if ((Chenal3Number>0) & (Device2.Chenal3Show == Set)) 
				{
					Chenal3Number--;
					ChenalNumberTemp = Chenal3Number;
					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
					Chenal3NumberPWM = (unsigned char)ChenalNumberTemp;				
					Chenal3NumberShow = NumberToNumberShow(Chenal3Number, Clear, Clear); 
					RealTimeCounter = 0; 
					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
				}
			}
			break;
		}
		default : break;
	}

	switch (StateEncoder4)
	{
		case 0 : {if ((NewStateEncoder4 & E4A) == 0) StateEncoder4 = 1; else if ((NewStateEncoder4 & E4B) == 0) StateEncoder4 = 3; break;}
		case 1 : {if ((NewStateEncoder4 & E4A) == 0) {if ((NewStateEncoder4 & E4B) == 0) StateEncoder4 = 2;} else StateEncoder4 = 0; break;}
		case 2 : 
		{
			if ((NewStateEncoder4 & E4B) != 0) 
			{
				StateEncoder4 = 0; 
				if ((Chenal4Number<99) & (Device2.Chenal4Show == Set)) 
				{
					Chenal4Number++;
					ChenalNumberTemp = Chenal4Number;
					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
					Chenal4NumberPWM = (unsigned char)ChenalNumberTemp;					
					Chenal4NumberShow = NumberToNumberShow(Chenal4Number, Clear, Clear); 
					RealTimeCounter = 0; 
					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
				}
			} 
			break;
		}
		case 3 : {if ((NewStateEncoder4 & E4B) == 0) {if ((NewStateEncoder4 & E4A) == 0) StateEncoder4 = 4;} else StateEncoder4 = 0; break;}
		case 4 : 
		{
			if ((NewStateEncoder4 & E4A) != 0) 
			{
				StateEncoder4 = 0; 
				if ((Chenal4Number>0) & (Device2.Chenal4Show == Set)) 
				{
					Chenal4Number--; 
					ChenalNumberTemp = Chenal4Number;
					ChenalNumberTemp = (ChenalNumberTemp*2)/3;
					Chenal4NumberPWM = (unsigned char)ChenalNumberTemp;
					Chenal4NumberShow = NumberToNumberShow(Chenal4Number, Clear, Clear); 
					RealTimeCounter = 0; 
					if (Device.State == Stop) Taskboard.NeedTestPulse = Set;
				}
			}
			break;
		}
		default : break;
	}

	switch (StateEncoder5)
	{
		case 0 : {if ((NewStateEncoder5 & E5A) == 0) StateEncoder5 = 1; else if ((NewStateEncoder5 & E5B) == 0) StateEncoder5 = 3; break;}
		case 1 : {if ((NewStateEncoder5 & E5A) == 0) {if ((NewStateEncoder5 & E5B) == 0) StateEncoder5 = 2;} else StateEncoder5 = 0; break;}
		case 2 : {
							if ((NewStateEncoder5 & E5B) != 0) 
							{
								StateEncoder5 = 0; 
																
								RealTimeSecond = 0;
								 
								if (RealTimeMinute<99) RealTimeMinute++;
		
								RealTimeSecondNumberShow = NumberToNumberShow(RealTimeSecond, Clear, Set);
								RealTimeMinuteNumberShow = NumberToNumberShow(RealTimeMinute, LowPoint, Set);
							 
							} 
							break;
						}
		case 3 : {if ((NewStateEncoder5 & E5B) == 0) {if ((NewStateEncoder5 & E5A) == 0) StateEncoder5 = 4;} else StateEncoder5 = 0; break;}
		case 4 : {
							if ((NewStateEncoder5 & E5A) != 0) 
							{
								StateEncoder5 = 0; 
																
								RealTimeSecond = 0;
					
								if (RealTimeMinute > 1) RealTimeMinute--;
								else
								{
									RealTimeMinute = 0;
																		
									Device.State = Stop;
									LedData &=~ LedStart;									
									FunctionStopGenerator();
									
									Device2.TestMode = Clear;
									
									Device2.Chenal1Show = Set;
									Device2.Chenal2Show = Set;
									Device2.Chenal3Show = Set;
									Device2.Chenal4Show = Set;
									
								}
			
								RealTimeSecondNumberShow = NumberToNumberShow(RealTimeSecond, Clear, Set);
								RealTimeMinuteNumberShow = NumberToNumberShow(RealTimeMinute, LowPoint, Set);
							}
							break;
						}
						
		default : break;
	}
}

// Number To NumberShow function

unsigned int NumberToNumberShow ( unsigned char NumberShowLow, unsigned char Point, unsigned char ShowHighZero)
{
   unsigned char NumberShowHigh;
	 unsigned int  result;
   
   NumberShowHigh=0;
  
  while (NumberShowLow>=10)
  {
		NumberShowHigh++;
		NumberShowLow -=10;
  }
 
  switch (NumberShowHigh)
  {
    case 9 : result=(nine<<8); break;
    case 8 : result=(eight<<8); break;
    case 7 : result=(seven<<8); break;
    case 6 : result=(six<<8); break;
    case 5 : result=(five<<8); break;
    case 4 : result=(four<<8); break;
    case 3 : result=(three<<8); break;
    case 2 : result=(two<<8); break;
    case 1 : result=(one<<8); break;
		default : result=(zero<<8); break;//{if (ShowHighZero == Set) result=(zero<<8); else result=0; break;}
  }
        
  switch (NumberShowLow)
  {
    case 9 : result |= nine; break;
    case 8 : result |= eight; break;
    case 7 : result |= seven; break;
    case 6 : result |= six; break;
    case 5 : result |= five; break;
    case 4 : result |= four; break;
    case 3 : result |= three; break;
    case 2 : result |= two; break;
    case 1 : result |= one; break;
    default : result |= zero; break;
  }

	if (Point == HighPoint)
	{
		result |=0x8000;
	}	
	
	if (Point == LowPoint)
	{
		result |=0x0080;
	}	

	return result;
}

void ScreenUpdate(void)
{
	Taskboard.ScreenUpdate = Clear;
	
	IndicatorsData[0] = LedData;
	IndicatorsData[1] = RealTimeSecondNumberShow;	
	IndicatorsData[2] = (RealTimeSecondNumberShow >> 8);
	IndicatorsData[3] = (RealTimeMinuteNumberShow|0x80);
	IndicatorsData[4] = (RealTimeMinuteNumberShow >> 8);
	
	if (Device2.Chenal4Show == Set)
	{
		IndicatorsData[5] = Chenal4NumberShow;
		IndicatorsData[6] = (Chenal4NumberShow >> 8);
	}
	else
	{
		IndicatorsData[5] = 0;
		IndicatorsData[6] = 0;
	}

	if (Device2.Chenal3Show == Set)
	{
		IndicatorsData[7] = Chenal3NumberShow;
		IndicatorsData[8] = (Chenal3NumberShow >> 8);
	}
	else
	{
		IndicatorsData[7] = 0;
		IndicatorsData[8] = 0;
	}
	
	if (Device2.Chenal2Show == Set)
	{	
		IndicatorsData[9] = Chenal2NumberShow;
		IndicatorsData[10] = (Chenal2NumberShow >> 8);
	}
	else
	{
		IndicatorsData[9] = 0;
		IndicatorsData[10] = 0;
	}
	
	if (Device2.Chenal1Show == Set)
	{	
		IndicatorsData[11] = Chenal1NumberShow;
		IndicatorsData[12] = (Chenal1NumberShow >> 8);
	}
	else
	{
		IndicatorsData[11] = 0;
		IndicatorsData[12] = 0;
	}
	
	IndicatorsDataPointer = 0;
	
	GPIO_WriteLow(GPIOC, LED_COM_C);
	
	SPI_ITConfig(SPI_IT_TXE, ENABLE);
	
}

void FunctionStartGenerator(void)
{																																
	CounterParselPeriod = 0;
	TIM2_AutoreloadValue = 1000;
	TIM2_SetAutoreload(TIM2_AutoreloadValue);
	Device.Way = UpWay;
	CurrentPulsePeriod = 10000;
	Device.CnPol = PolarityP;
	
	if (Device.Mode == ModeB)
	{
//		GPIOC->CR2 &= ~(OP3|OP4); GPIOD->CR2 &= ~(ON3|ON4); 
//		GPIOC->DDR &= ~(OP3|OP4); GPIOD->DDR &= ~(ON3|ON4); 
	
		Device2.Chenal3Show = Clear;
		Device2.Chenal4Show = Clear;
		
//		GPIOC->DDR |= (OP1|OP2); GPIOD->DDR |= (ON1|ON2); 
//		GPIOC->CR2 |= (OP1|OP2); GPIOD->CR2 |= (ON1|ON2);
		
		Device2.Chenal1Show = Set;
		Device2.Chenal2Show = Set;
		
		Chenal1Enable = Set;
		Chenal2Enable = Set;
		Chenal3Enable = Clear;
		Chenal4Enable = Clear;

	}
	else
	{
//		GPIOC->DDR |= (OP1|OP2|OP3|OP4);
//		GPIOD->DDR |= (ON1|ON2|ON3|ON4);
//		GPIOC->CR2 |= (OP1|OP2|OP3|OP4);
//		GPIOD->CR2 |= (ON1|ON2|ON3|ON4);
		
		Device2.Chenal1Show = Set;
		Device2.Chenal2Show = Set;
		Device2.Chenal3Show = Set;
		Device2.Chenal4Show = Set;		
		
		Chenal1Enable = Set;
		Chenal2Enable = Set;
		Chenal3Enable = Set;
		Chenal4Enable = Set;
	}
		
	TIM2_SetCounter(1);
	TIM2_Cmd(ENABLE);
}

void FunctionStopGenerator(void)
{
	TIM2_Cmd(DISABLE);
	
	Chenal1Enable = Clear;
	Chenal2Enable = Clear;
	Chenal3Enable = Clear;
	Chenal4Enable = Clear;
}

void StartTestPulse (void)
{
	Taskboard.NeedTestPulse = Clear;
	
	if (Device.State == Stop) 
	{
		Device2.TestMode = Set;
		
		Device.State = Start;
		
		RealTimeCounter = 0;
	 
		CounterParselPeriod = 0;
		TIM2_AutoreloadValue = 1000;
		TIM2_SetAutoreload(TIM2_AutoreloadValue);
		Device.Way = UpWay;
		CurrentPulsePeriod = 10000;
		Device.CnPol = PolarityP;	
	
//		GPIOC->DDR |= (OP1|OP2|OP3|OP4);
//		GPIOD->DDR |= (ON1|ON2|ON3|ON4);
//		GPIOC->CR2 |= (OP1|OP2|OP3|OP4);
//		GPIOD->CR2 |= (ON1|ON2|ON3|ON4);

		Chenal1Enable = Set;
		Chenal2Enable = Set;
		Chenal3Enable = Set;
		Chenal4Enable = Set;
		
		TIM2_SetCounter(1);
		TIM2_Cmd(ENABLE); 
		
	}		 
}