/**
  ******************************************************************************
  * @file     stm8s_it.c
  * @author   MCD Application Team
  * @version  V2.1.0
  * @date     18-November-2011
  * @brief    Main Interrupt Service Routines.
  *           This file provides template for all peripherals interrupt service 
  *           routine.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */ 

/* Includes ------------------------------------------------------------------*/
#include "stm8s_it.h"


#include "main.h"

/** @addtogroup Template_Project
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/* Public functions ----------------------------------------------------------*/

#ifdef _COSMIC_

INTERRUPT_HANDLER(NonHandledInterrupt, 25)
{
  
}
#endif /*_COSMIC_*/

INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
{
 
}

INTERRUPT_HANDLER(TLI_IRQHandler, 0)

{
 
}

INTERRUPT_HANDLER(AWU_IRQHandler, 1)
{

}

INTERRUPT_HANDLER(CLK_IRQHandler, 2)
{

}

INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
{

}

INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
{
 
}

INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
{
 
}

INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
{
 
}

INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
{
 
}

INTERRUPT_HANDLER(SPI_IRQHandler, 10)
{
	if (IndicatorsDataPointer < 13)
	{	 
	 SPI->DR = IndicatorsData[IndicatorsDataPointer];	 
	 IndicatorsDataPointer++;
  }
	else {GPIOC->ODR |= LED_COM_C; SPI->ICR &= ~SPI_ICR_TXEI;}
}

INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
{

}

INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
{
	
}

INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
{	
	if (Device.CnPol == PolarityP)
	{
		TIM2->ARRH = 0x00;
		TIM2->ARRL = 0x3C;
		
		if ((Device.Polarity == PolarityP)|(Device.Polarity == PolarityPN))
		{
			if ((Chenal1NumberPWM) && (Chenal1Enable)) {OutPWM[0] |= OP1; OutPWM[Chenal1NumberPWM] |= OP1;}
			if ((Chenal2NumberPWM) && (Chenal2Enable)) {OutPWM[0] |= OP2; OutPWM[Chenal2NumberPWM] |= OP2;}
			if ((Chenal3NumberPWM) && (Chenal3Enable)) {OutPWM[0] |= OP3; OutPWM[Chenal3NumberPWM] |= OP3;}
			if ((Chenal4NumberPWM) && (Chenal4Enable)) {OutPWM[0] |= OP4; OutPWM[Chenal4NumberPWM] |= OP4;}
		}	
	}
	else
	{				
		TIM2->ARRH = 0x03;
		TIM2->ARRL = 0xAC;
		
		if ((Device.Polarity == PolarityN)|(Device.Polarity == PolarityPN))
		{
			if ((Chenal1NumberPWM) && (Chenal1Enable)) {OutPWM[0] |= ON1; OutPWM[Chenal1NumberPWM] |= ON1;}
			if ((Chenal2NumberPWM) && (Chenal2Enable)) {OutPWM[0] |= ON2; OutPWM[Chenal2NumberPWM] |= ON2;}
			if ((Chenal3NumberPWM) && (Chenal3Enable)) {OutPWM[0] |= ON3; OutPWM[Chenal3NumberPWM] |= ON3;}
			if ((Chenal4NumberPWM) && (Chenal4Enable)) {OutPWM[0] |= ON4; OutPWM[Chenal4NumberPWM] |= ON4;}
		}	
	}

	#asm

		LD		A,_OutPWM
	
		XOR		A,_OutPWM+1
		LD    _OutPWM+1,A
		XOR		A,_OutPWM+2
		LD    _OutPWM+2,A
		XOR		A,_OutPWM+3
		LD    _OutPWM+3,A
		XOR		A,_OutPWM+4
		LD    _OutPWM+4,A
		XOR		A,_OutPWM+5
		LD    _OutPWM+5,A
		XOR		A,_OutPWM+6
		LD    _OutPWM+6,A
		XOR		A,_OutPWM+7
		LD    _OutPWM+7,A
		XOR		A,_OutPWM+8
		LD    _OutPWM+8,A
		XOR		A,_OutPWM+9
		LD    _OutPWM+9,A
	
		XOR		A,_OutPWM+10
		LD    _OutPWM+10,A
		XOR		A,_OutPWM+11	
		LD    _OutPWM+11,A
		XOR		A,_OutPWM+12
		LD    _OutPWM+12,A
		XOR		A,_OutPWM+13
		LD    _OutPWM+13,A
		XOR		A,_OutPWM+14
		LD    _OutPWM+14,A
		XOR		A,_OutPWM+15
		LD    _OutPWM+15,A
		XOR		A,_OutPWM+16
		LD    _OutPWM+16,A
		XOR		A,_OutPWM+17
		LD    _OutPWM+17,A
		XOR		A,_OutPWM+18
		LD    _OutPWM+18,A
		XOR		A,_OutPWM+19
		LD    _OutPWM+19,A
	
		XOR		A,_OutPWM+20
		LD    _OutPWM+20,A
		XOR		A,_OutPWM+21
		LD    _OutPWM+21,A
		XOR		A,_OutPWM+22
		LD    _OutPWM+22,A
		XOR		A,_OutPWM+23
		LD    _OutPWM+23,A
		XOR		A,_OutPWM+24
		LD    _OutPWM+24,A
		XOR		A,_OutPWM+25
		LD    _OutPWM+25,A
		XOR		A,_OutPWM+26
		LD    _OutPWM+26,A
		XOR		A,_OutPWM+27
		LD    _OutPWM+27,A
		XOR		A,_OutPWM+28
		LD    _OutPWM+28,A
		XOR		A,_OutPWM+29
		LD    _OutPWM+29,A
	
		XOR		A,_OutPWM+30
		LD    _OutPWM+30,A
		XOR		A,_OutPWM+31
		LD    _OutPWM+31,A
		XOR		A,_OutPWM+32
		LD    _OutPWM+32,A
		XOR		A,_OutPWM+33
		LD    _OutPWM+33,A
		XOR		A,_OutPWM+34
		LD    _OutPWM+34,A
		XOR		A,_OutPWM+35
		LD    _OutPWM+35,A
		XOR		A,_OutPWM+36
		LD    _OutPWM+36,A
		XOR		A,_OutPWM+37
		LD    _OutPWM+37,A
		XOR		A,_OutPWM+38
		LD    _OutPWM+38,A
		XOR		A,_OutPWM+39
		LD    _OutPWM+39,A
	
		XOR		A,_OutPWM+40
		LD    _OutPWM+40,A
		XOR		A,_OutPWM+41
		LD    _OutPWM+41,A
		XOR		A,_OutPWM+42
		LD    _OutPWM+42,A
		XOR		A,_OutPWM+43
		LD    _OutPWM+43,A
		XOR		A,_OutPWM+44
		LD    _OutPWM+44,A
		XOR		A,_OutPWM+45
		LD    _OutPWM+45,A
		XOR		A,_OutPWM+46
		LD    _OutPWM+46,A
		XOR		A,_OutPWM+47
		LD    _OutPWM+47,A
		XOR		A,_OutPWM+48
		LD    _OutPWM+48,A
		XOR		A,_OutPWM+49
		LD    _OutPWM+49,A
	
		XOR		A,_OutPWM+50
		LD    _OutPWM+50,A
		XOR		A,_OutPWM+51
		LD    _OutPWM+51,A
		XOR		A,_OutPWM+52
		LD    _OutPWM+52,A
		XOR		A,_OutPWM+53
		LD    _OutPWM+53,A
		XOR		A,_OutPWM+54
		LD    _OutPWM+54,A
		XOR		A,_OutPWM+55
		LD    _OutPWM+55,A
		XOR		A,_OutPWM+56
		LD    _OutPWM+56,A
		XOR		A,_OutPWM+57
		LD    _OutPWM+57,A
		XOR		A,_OutPWM+58
		LD    _OutPWM+58,A
		XOR		A,_OutPWM+59
		LD    _OutPWM+59,A
	
		XOR		A,_OutPWM+60
		LD    _OutPWM+60,A
		XOR		A,_OutPWM+61
		LD    _OutPWM+61,A
		XOR		A,_OutPWM+62
		LD    _OutPWM+62,A
		XOR		A,_OutPWM+63
		LD    _OutPWM+63,A
		XOR		A,_OutPWM+64
		LD    _OutPWM+64,A
		XOR		A,_OutPWM+65
		LD    _OutPWM+65,A
		XOR		A,_OutPWM+66
		LD    _OutPWM+66,A
		XOR		A,_OutPWM+67
		LD    _OutPWM+67,A
		XOR		A,_OutPWM+68
		LD    _OutPWM+68,A
		XOR		A,_OutPWM+69
		LD    _OutPWM+69,A
	
		XOR		A,_OutPWM+70
		LD    _OutPWM+70,A
		XOR		A,_OutPWM+71
		LD    _OutPWM+71,A
		XOR		A,_OutPWM+72
		LD    _OutPWM+72,A
		XOR		A,_OutPWM+73
		LD    _OutPWM+73,A
		XOR		A,_OutPWM+74
		LD    _OutPWM+74,A
		XOR		A,_OutPWM+75
		LD    _OutPWM+75,A
		XOR		A,_OutPWM+76
		LD    _OutPWM+76,A
		XOR		A,_OutPWM+77
		LD    _OutPWM+77,A
		XOR		A,_OutPWM+78
		LD    _OutPWM+78,A
		XOR		A,_OutPWM+79
		LD    _OutPWM+79,A
	
		XOR		A,_OutPWM+80
		LD    _OutPWM+80,A
		XOR		A,_OutPWM+81
		LD    _OutPWM+81,A
		XOR		A,_OutPWM+82
		LD    _OutPWM+82,A
		XOR		A,_OutPWM+83
		LD    _OutPWM+83,A
		XOR		A,_OutPWM+84
		LD    _OutPWM+84,A
		XOR		A,_OutPWM+85
		LD    _OutPWM+85,A
		XOR		A,_OutPWM+86
		LD    _OutPWM+86,A
		XOR		A,_OutPWM+87
		LD    _OutPWM+87,A
		XOR		A,_OutPWM+88
		LD    _OutPWM+88,A
		XOR		A,_OutPWM+89
		LD    _OutPWM+89,A
	
		XOR		A,_OutPWM+90
		LD    _OutPWM+90,A
		XOR		A,_OutPWM+91
		LD    _OutPWM+91,A
		XOR		A,_OutPWM+92
		LD    _OutPWM+92,A
		XOR		A,_OutPWM+93
		LD    _OutPWM+93,A
		XOR		A,_OutPWM+94
		LD    _OutPWM+94,A
		XOR		A,_OutPWM+95
		LD    _OutPWM+95,A
		XOR		A,_OutPWM+96
		LD    _OutPWM+96,A
		XOR		A,_OutPWM+97
		LD    _OutPWM+97,A
		XOR		A,_OutPWM+98
		LD    _OutPWM+98,A
		XOR		A,_OutPWM+99
		LD    _OutPWM+99,A
	
	#endasm
				
	if (Device.CnPol == PolarityP)
	{	
	
		GPIOC->ODR &= ~LED_COM_C;
	
		#asm		
		
			MOV    0x500a,_OutPWM
			MOV    0x500a,_OutPWM+1
			MOV    0x500a,_OutPWM+2
			MOV    0x500a,_OutPWM+3
			MOV    0x500a,_OutPWM+4
			MOV    0x500a,_OutPWM+5
			MOV    0x500a,_OutPWM+6
			MOV    0x500a,_OutPWM+7
			MOV    0x500a,_OutPWM+8
			MOV    0x500a,_OutPWM+9
		
			MOV    0x500a,_OutPWM+10
			MOV    0x500a,_OutPWM+11
			MOV    0x500a,_OutPWM+12
			MOV    0x500a,_OutPWM+13
			MOV    0x500a,_OutPWM+14
			MOV    0x500a,_OutPWM+15
			MOV    0x500a,_OutPWM+16
			MOV    0x500a,_OutPWM+17
			MOV    0x500a,_OutPWM+18
			MOV    0x500a,_OutPWM+19
		
			MOV    0x500a,_OutPWM+20
			MOV    0x500a,_OutPWM+21
			MOV    0x500a,_OutPWM+22
			MOV    0x500a,_OutPWM+23
			MOV    0x500a,_OutPWM+24
			MOV    0x500a,_OutPWM+25
			MOV    0x500a,_OutPWM+26
			MOV    0x500a,_OutPWM+27
			MOV    0x500a,_OutPWM+28
			MOV    0x500a,_OutPWM+29
		
			MOV    0x500a,_OutPWM+30
			MOV    0x500a,_OutPWM+31
			MOV    0x500a,_OutPWM+32
			MOV    0x500a,_OutPWM+33
			MOV    0x500a,_OutPWM+34
			MOV    0x500a,_OutPWM+35
			MOV    0x500a,_OutPWM+36
			MOV    0x500a,_OutPWM+37
			MOV    0x500a,_OutPWM+38
			MOV    0x500a,_OutPWM+39
		
			MOV    0x500a,_OutPWM+40
			MOV    0x500a,_OutPWM+41
			MOV    0x500a,_OutPWM+42
			MOV    0x500a,_OutPWM+43
			MOV    0x500a,_OutPWM+44
			MOV    0x500a,_OutPWM+45
			MOV    0x500a,_OutPWM+46
			MOV    0x500a,_OutPWM+47
			MOV    0x500a,_OutPWM+48
			MOV    0x500a,_OutPWM+49
		
			MOV    0x500a,_OutPWM+50
			MOV    0x500a,_OutPWM+51
			MOV    0x500a,_OutPWM+52
			MOV    0x500a,_OutPWM+53
			MOV    0x500a,_OutPWM+54
			MOV    0x500a,_OutPWM+55
			MOV    0x500a,_OutPWM+56
			MOV    0x500a,_OutPWM+57
			MOV    0x500a,_OutPWM+58
			MOV    0x500a,_OutPWM+59
		
			MOV    0x500a,_OutPWM+60
			MOV    0x500a,_OutPWM+61
			MOV    0x500a,_OutPWM+62
			MOV    0x500a,_OutPWM+63
			MOV    0x500a,_OutPWM+64
			MOV    0x500a,_OutPWM+65
			MOV    0x500a,_OutPWM+66
			MOV    0x500a,_OutPWM+67
			MOV    0x500a,_OutPWM+68
			MOV    0x500a,_OutPWM+69
		
			MOV    0x500a,_OutPWM+70
			MOV    0x500a,_OutPWM+71
			MOV    0x500a,_OutPWM+72
			MOV    0x500a,_OutPWM+73
			MOV    0x500a,_OutPWM+74
			MOV    0x500a,_OutPWM+75
			MOV    0x500a,_OutPWM+76
			MOV    0x500a,_OutPWM+77
			MOV    0x500a,_OutPWM+78
			MOV    0x500a,_OutPWM+79
		
			MOV    0x500a,_OutPWM+80
			MOV    0x500a,_OutPWM+81
			MOV    0x500a,_OutPWM+82
			MOV    0x500a,_OutPWM+83
			MOV    0x500a,_OutPWM+84
			MOV    0x500a,_OutPWM+85
			MOV    0x500a,_OutPWM+86
			MOV    0x500a,_OutPWM+87
			MOV    0x500a,_OutPWM+88
			MOV    0x500a,_OutPWM+89
		
			MOV    0x500a,_OutPWM+90
			MOV    0x500a,_OutPWM+91
			MOV    0x500a,_OutPWM+92
			MOV    0x500a,_OutPWM+93
			MOV    0x500a,_OutPWM+94
			MOV    0x500a,_OutPWM+95
			MOV    0x500a,_OutPWM+96
			MOV    0x500a,_OutPWM+97
			MOV    0x500a,_OutPWM+98
			MOV    0x500a,_OutPWM+99
		
		#endasm		
	
		GPIOC->ODR |= LED_COM_C;		
	
		Device.CnPol = PolarityN;
	}
	
	else
	{		
		#asm		
		
			MOV    0x500f,_OutPWM
			MOV    0x500f,_OutPWM+1
			MOV    0x500f,_OutPWM+2
			MOV    0x500f,_OutPWM+3
			MOV    0x500f,_OutPWM+4
			MOV    0x500f,_OutPWM+5
			MOV    0x500f,_OutPWM+6
			MOV    0x500f,_OutPWM+7
			MOV    0x500f,_OutPWM+8
			MOV    0x500f,_OutPWM+9
		
			MOV    0x500f,_OutPWM+10
			MOV    0x500f,_OutPWM+11
			MOV    0x500f,_OutPWM+12
			MOV    0x500f,_OutPWM+13
			MOV    0x500f,_OutPWM+14
			MOV    0x500f,_OutPWM+15
			MOV    0x500f,_OutPWM+16
			MOV    0x500f,_OutPWM+17
			MOV    0x500f,_OutPWM+18
			MOV    0x500f,_OutPWM+19
		
			MOV    0x500f,_OutPWM+20
			MOV    0x500f,_OutPWM+21
			MOV    0x500f,_OutPWM+22
			MOV    0x500f,_OutPWM+23
			MOV    0x500f,_OutPWM+24
			MOV    0x500f,_OutPWM+25
			MOV    0x500f,_OutPWM+26
			MOV    0x500f,_OutPWM+27
			MOV    0x500f,_OutPWM+28
			MOV    0x500f,_OutPWM+29
		
			MOV    0x500f,_OutPWM+30
			MOV    0x500f,_OutPWM+31
			MOV    0x500f,_OutPWM+32
			MOV    0x500f,_OutPWM+33
			MOV    0x500f,_OutPWM+34
			MOV    0x500f,_OutPWM+35
			MOV    0x500f,_OutPWM+36
			MOV    0x500f,_OutPWM+37
			MOV    0x500f,_OutPWM+38
			MOV    0x500f,_OutPWM+39
		
			MOV    0x500f,_OutPWM+40
			MOV    0x500f,_OutPWM+41
			MOV    0x500f,_OutPWM+42
			MOV    0x500f,_OutPWM+43
			MOV    0x500f,_OutPWM+44
			MOV    0x500f,_OutPWM+45
			MOV    0x500f,_OutPWM+46
			MOV    0x500f,_OutPWM+47
			MOV    0x500f,_OutPWM+48
			MOV    0x500f,_OutPWM+49
		
			MOV    0x500f,_OutPWM+50
			MOV    0x500f,_OutPWM+51
			MOV    0x500f,_OutPWM+52
			MOV    0x500f,_OutPWM+53
			MOV    0x500f,_OutPWM+54
			MOV    0x500f,_OutPWM+55
			MOV    0x500f,_OutPWM+56
			MOV    0x500f,_OutPWM+57
			MOV    0x500f,_OutPWM+58
			MOV    0x500f,_OutPWM+59
		
			MOV    0x500f,_OutPWM+60
			MOV    0x500f,_OutPWM+61
			MOV    0x500f,_OutPWM+62
			MOV    0x500f,_OutPWM+63
			MOV    0x500f,_OutPWM+64
			MOV    0x500f,_OutPWM+65
			MOV    0x500f,_OutPWM+66
			MOV    0x500f,_OutPWM+67
			MOV    0x500f,_OutPWM+68
			MOV    0x500f,_OutPWM+69
		
			MOV    0x500f,_OutPWM+70
			MOV    0x500f,_OutPWM+71
			MOV    0x500f,_OutPWM+72
			MOV    0x500f,_OutPWM+73
			MOV    0x500f,_OutPWM+74
			MOV    0x500f,_OutPWM+75
			MOV    0x500f,_OutPWM+76
			MOV    0x500f,_OutPWM+77
			MOV    0x500f,_OutPWM+78
			MOV    0x500f,_OutPWM+79
		
			MOV    0x500f,_OutPWM+80
			MOV    0x500f,_OutPWM+81
			MOV    0x500f,_OutPWM+82
			MOV    0x500f,_OutPWM+83
			MOV    0x500f,_OutPWM+84
			MOV    0x500f,_OutPWM+85
			MOV    0x500f,_OutPWM+86
			MOV    0x500f,_OutPWM+87
			MOV    0x500f,_OutPWM+88
			MOV    0x500f,_OutPWM+89
		
			MOV    0x500f,_OutPWM+90
			MOV    0x500f,_OutPWM+91
			MOV    0x500f,_OutPWM+92
			MOV    0x500f,_OutPWM+93
			MOV    0x500f,_OutPWM+94
			MOV    0x500f,_OutPWM+95
			MOV    0x500f,_OutPWM+96
			MOV    0x500f,_OutPWM+97
			MOV    0x500f,_OutPWM+98
			MOV    0x500f,_OutPWM+99
		
		#endasm		

		if (Device.Way == UpWay)
		{
			CurrentPulsePeriod -=100;
			
			TIM2->ARRH = (CurrentPulsePeriod >> 8);
			TIM2->ARRL = CurrentPulsePeriod;
			
			if (CurrentPulsePeriod <= 1000) Device.Way = DownWay;
		 
		}
		else
		{
			CurrentPulsePeriod +=100;
			
			TIM2->ARRH = (CurrentPulsePeriod >> 8);
			TIM2->ARRL = CurrentPulsePeriod;
			
			if (CurrentPulsePeriod >= 10000) Device.Way = UpWay;
			
		}

		Device.CnPol = PolarityP;

	}	
 
	#asm

		CLR		_OutPWM
		CLR		_OutPWM+1
		CLR		_OutPWM+2
		CLR		_OutPWM+3
		CLR		_OutPWM+4
		CLR		_OutPWM+5
		CLR		_OutPWM+6
		CLR		_OutPWM+7
		CLR		_OutPWM+8
		CLR		_OutPWM+9
		CLR		_OutPWM+10
		CLR		_OutPWM+11
		CLR		_OutPWM+12
		CLR		_OutPWM+13
		CLR		_OutPWM+14
		CLR		_OutPWM+15
		CLR		_OutPWM+16
		CLR		_OutPWM+17
		CLR		_OutPWM+18
		CLR		_OutPWM+19
		CLR		_OutPWM+20
		CLR		_OutPWM+21
		CLR		_OutPWM+22
		CLR		_OutPWM+23
		CLR		_OutPWM+24
		CLR		_OutPWM+25
		CLR		_OutPWM+26
		CLR		_OutPWM+27
		CLR		_OutPWM+28
		CLR		_OutPWM+29
		CLR		_OutPWM+30
		CLR		_OutPWM+31
		CLR		_OutPWM+32
		CLR		_OutPWM+33
		CLR		_OutPWM+34
		CLR		_OutPWM+35
		CLR		_OutPWM+36
		CLR		_OutPWM+37
		CLR		_OutPWM+38
		CLR		_OutPWM+39
		CLR		_OutPWM+40
		CLR		_OutPWM+41
		CLR		_OutPWM+42
		CLR		_OutPWM+43
		CLR		_OutPWM+44
		CLR		_OutPWM+45
		CLR		_OutPWM+46
		CLR		_OutPWM+47
		CLR		_OutPWM+48
		CLR		_OutPWM+49
		CLR		_OutPWM+50
		CLR		_OutPWM+51
		CLR		_OutPWM+52
		CLR		_OutPWM+53
		CLR		_OutPWM+54
		CLR		_OutPWM+55
		CLR		_OutPWM+56
		CLR		_OutPWM+57
		CLR		_OutPWM+58
		CLR		_OutPWM+59
		CLR		_OutPWM+60
		CLR		_OutPWM+61
		CLR		_OutPWM+62
		CLR		_OutPWM+63
		CLR		_OutPWM+64
		CLR		_OutPWM+65
		CLR		_OutPWM+66
		CLR		_OutPWM+67
		CLR		_OutPWM+68
		CLR		_OutPWM+69
		CLR		_OutPWM+70
		CLR		_OutPWM+71
		CLR		_OutPWM+72
		CLR		_OutPWM+73
		CLR		_OutPWM+74
		CLR		_OutPWM+75
		CLR		_OutPWM+76
		CLR		_OutPWM+77
		CLR		_OutPWM+78
		CLR		_OutPWM+79
		CLR		_OutPWM+80
		CLR		_OutPWM+81
		CLR		_OutPWM+82
		CLR		_OutPWM+83
		CLR		_OutPWM+84
		CLR		_OutPWM+85
		CLR		_OutPWM+86
		CLR		_OutPWM+87
		CLR		_OutPWM+88
		CLR		_OutPWM+89
		CLR		_OutPWM+90
		CLR		_OutPWM+91
		CLR		_OutPWM+92
		CLR		_OutPWM+93
		CLR		_OutPWM+94
		CLR		_OutPWM+95
		CLR		_OutPWM+96
		CLR		_OutPWM+97
		CLR		_OutPWM+98
		CLR		_OutPWM+99
	
	#endasm
	
	TIM2->SR1 &= ~TIM2_SR1_UIF;
}

INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
{
  
}

INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
{
 
}


INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
{
 
}

INTERRUPT_HANDLER(I2C_IRQHandler, 19)
{
 
}

INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
{
   
}

INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
{
   
}

INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
{
 
}

INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
{	
	switch (TaskCounter)
	{
		case 1 : Taskboard.TimePolling = Set; break;
		case 2 : Taskboard.ButtonsPolling = Set; break;
		case 3 : Taskboard.EncoderPolling = Set; break;
		case 4 : Taskboard.ScreenUpdate = Set; TaskCounter = 0; break;
		default : break;
	}
	TaskCounter++;
	
	TIM4->SR1 &= ~TIM4_SR1_UIF;
}

INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
{
 
}

