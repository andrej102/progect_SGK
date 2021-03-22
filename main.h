
#include "stm8s.h"

//******** global vars ****************

extern struct DeviceStruct Device;
extern struct Device2Struct Device2;
extern struct TaskboardStruct Taskboard;

extern unsigned char IndicatorsData[], IndicatorsDataPointer;

extern unsigned char LedData;

extern unsigned char TaskCounter;

extern unsigned char RealTimeCounter, RealTimeSecond, RealTimeMinute, BeepTimeCounter, BeepTimeCounte2;
extern unsigned short RealTimeSecondNumberShow, RealTimeMinuteNumberShow;

extern unsigned char Chenal1Number, Chenal2Number, Chenal3Number, Chenal4Number;
extern unsigned char Chenal1Enable, Chenal2Enable, Chenal3Enable, Chenal4Enable;
extern unsigned char Chenal1NumberPWM, Chenal2NumberPWM, Chenal3NumberPWM, Chenal4NumberPWM;
extern unsigned short Chenal1NumberShow, Chenal2NumberShow, Chenal3NumberShow,Chenal4NumberShow;

extern unsigned char StateEncoder1, StateEncoder2, StateEncoder3, StateEncoder4, StateEncoder5, CounterEncoderDelay;

extern unsigned char StateButtons, CounterButtonsDelay;

extern unsigned char CounterParselPeriod;

extern unsigned short CurrentPulsePeriod;

extern unsigned int TIM2_AutoreloadValue;

extern unsigned char OutPWM[];

//******************************

//*********** global functions ****

extern void ButtonsService (void);
extern void TimeService (void);
extern void EncoderService (void);
extern unsigned int NumberToNumberShow ( unsigned char NumberShowLow, unsigned char Point, unsigned char ShowHighZero);
extern void ScreenUpdate(void);
extern void CLK_Config(void);
extern void GPIO_Config (void);
extern void Timers_Config (void);
extern void Beep_Config (void);
extern void SPI_Config (void);
extern void Variables_Config(void);
extern void FunctionStartGenerator(void);
extern void FunctionStopGenerator(void);
extern void StartTestPulse (void);

extern uint32_t LSIMeasurment(void);


//*********** definitions ******

#define UpWay				1
#define DownWay			0
#define Set   			1
#define Clear 			0
#define HighPoint		1
#define LowPoint		2
#define NoPoint			1
#define Start 			1
#define Stop  			0
#define PolarityP  	0
#define PolarityN  	1
#define PolarityPN 	2
#define ModeA				0
#define ModeB				1
#define ModeC				2


//		  __0__
// 		 |  a  |
// 	5 f|     |b 1
//		 |     |
//		 |__g__|
//		 |  6  |
//  4 e|     |c 2
//		 |__d__|
//	      3    * dp 7


// define digits 
	
// led  dp g  f  e  d  c  b  a  with point
//
// bit  7  6  5  4  3  2  1  0       7
//      |  |  |  |  |  |  |  |       |   
//
// 0 -  0  0  1  1  1  1  1  1       1
// 1 -  0  0  0  0  0  1  1  0       1
// 2 -  0  1  0  1  1  0  1  1       1
// 3 -  0  1  0  0  1  1  1  1       1
// 4 -  0  1  1  0  0  1  1  0       1
// 5 -  0  1  1  0  1  1  0  1       1
// 6 -  0  1  1  1  1  1  0  1       1
// 7 -  0  0  0  0  0  1  1  1       1
// 8 -  0  1  1  1  1  1  1  1       1
// 9 -  0  1  1  0  1  1  1  1       1

// digit code without point

#define zero   0x3F
#define one    0x06
#define two    0x5B
#define three  0x4F
#define four   0x66
#define five   0x6D
#define six    0x7D
#define seven  0x07
#define eight  0x7F
#define nine   0x6F

//******************************

//********* Led code ************

#define LedA			0x08
#define LedB			0x20
#define LedC			0x10

#define LedP			0x04
#define LedN			0x02
#define LedPN			0x01

#define LedStart	0x40


//******************************

//***** struct difinitions *****

struct DeviceStruct
		{          
   		unsigned char Type		  : 1;      //  Timer reload
   		unsigned char Mode		  : 2;      //  Timer reload
   		unsigned char Polarity  : 2;      //  Timer Start/Stop
   		unsigned char State		  : 1;
			unsigned char Way 		  : 1;
			unsigned char	CnPol	    : 1;
		};
		
struct Device2Struct
	 {          
   		unsigned char Chenal1Show		  : 1;      //  Timer reload
   		unsigned char Chenal2Show		  : 1;      //  Timer reload
   		unsigned char Chenal3Show  		: 1;      //  Timer Start/Stop
   		unsigned char Chenal4Show		  : 1;			
			unsigned char TestMode			  : 1;			
			unsigned char	Empty	    			: 3;
		};
	
struct TaskboardStruct
		{          
   		unsigned char ButtonsPolling	: 1;      //  Timer reload
   		unsigned char EncoderPolling	: 1;      //  Timer reload
   		unsigned char TimePolling 		: 1;      //  Timer Start/Stop
   		unsigned char	ScreenUpdate    : 1;
			unsigned char	NeedTestPulse	  : 1;
			unsigned char	Emtpy	    			: 4;
		};

//****************************************************

// define port A

#define XCLK1				GPIO_PIN_1
#define XCLK2				GPIO_PIN_2
#define E1A				GPIO_PIN_3
#define E1B				GPIO_PIN_4
#define E2A				GPIO_PIN_5
#define E2B				GPIO_PIN_6

// define port B

#define BT1				GPIO_PIN_0
#define BT2				GPIO_PIN_1
#define BT3				GPIO_PIN_2
#define BT4				GPIO_PIN_3
#define BT5				GPIO_PIN_4
#define BT6				GPIO_PIN_5
#define BT7				GPIO_PIN_6

// define port C

#define OP3 GPIO_PIN_4//OP3				GPIO_PIN_1
#define OP1 GPIO_PIN_3//OP1				GPIO_PIN_2
#define OP4 GPIO_PIN_2//OP4				GPIO_PIN_3
#define OP2 GPIO_PIN_1//OP2				GPIO_PIN_4
#define LED_CLK		GPIO_PIN_5
#define LED_DATA	GPIO_PIN_6
#define LED_COM_C	GPIO_PIN_7

// define port D

#define SWIM			GPIO_PIN_1
#define ON3 GPIO_PIN_6//ON3				GPIO_PIN_2
#define ON1 GPIO_PIN_5//ON1				GPIO_PIN_3
#define BE				GPIO_PIN_4
#define ON4 GPIO_PIN_3//ON4				GPIO_PIN_5
#define ON2 GPIO_PIN_2//ON2				GPIO_PIN_6

// define port E

#define E5A				GPIO_PIN_0
#define E5B				GPIO_PIN_3
#define E4A				GPIO_PIN_5
#define E4B				GPIO_PIN_6

// define port G

#define E3B				GPIO_PIN_0
#define E3A				GPIO_PIN_1