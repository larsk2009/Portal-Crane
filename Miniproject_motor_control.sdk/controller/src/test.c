/*
 * test.c
 *
 *  Created on: 2 okt. 2019
 *      Author: Mark Wolvers
 */
/*
 * test.c
 *
 *  Created on: 2 okt. 2019
 *      Author: Mark Wolvers
 */
#include "xtmrctr.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "sleep.h"

#ifdef XPAR_INTC_0_DEVICE_ID
#include "xintc.h"
#include <stdio.h>
#else
#include "xscugic.h"
#include "xil_printf.h"
#endif

#include "MotorDriver/MotorDriver.h"
#include "Encoder/encoder.h"
#include <xgpio.h>
#include "pid/pid.h"
#include "xadcps.h"

/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/
#define 	NANOSECONDS_PER_SECOND 	1000000000
#define XADC_DEVICE_ID 		XPAR_XADCPS_0_DEVICE_ID

static XGpio mux_reset;
static XGpio counter;
static XGpio buttons;
static XAdcPs XAdcInst;

XTmrCtr 	TimerCounterInst;

static bool DriveHighDutyCycle = false;

void ResetCounter() {
	XGpio_DiscreteWrite(&mux_reset, 2, 0);
	usleep(100);
	XGpio_DiscreteWrite(&mux_reset, 2, 1);
}

uint32_t CalibrateCrane() {
	DriveMotor(50);

	DriveMotor(70);

	uint32_t data = 0, lastData = 0;

	do {
		lastData = data;
		usleep(100000);
		data = XGpio_DiscreteRead(&counter, 1);
	} while(data != lastData);

	DriveMotor(50);
	ResetCounter();
	DriveMotor(30);
	usleep(3000000);
	uint32_t value = XGpio_DiscreteRead(&counter, 1);
	DriveMotor(70);
	usleep(1000000);
	DriveMotor(50);
	uint32_t value2 = XGpio_DiscreteRead(&counter, 1);

	bool side = value2 > value;

	DriveHighDutyCycle = side;
	if(side) {
		//Andere kant
		DriveMotor(30);
	} else {
		//zelfde kant
		DriveMotor(70);
	}

	data = 0, lastData = 0;

	do {
		lastData = data;
		usleep(100000);
		data = XGpio_DiscreteRead(&counter, 1);
	} while(data != lastData);

	DriveMotor(50);
	ResetCounter();

	if(side) {
		DriveMotor(70);
	} else {
		DriveMotor(30);
	}

	data = 0, lastData = 0;

	do {
		lastData = data;
		usleep(100000);
		data = XGpio_DiscreteRead(&counter, 1);
	} while(data != lastData);

	DriveMotor(50);
	return data;
}

void DriveTo(uint32_t value) {
	uint32_t currentValue = XGpio_DiscreteRead(&counter, 1);

	if(currentValue == value) return;

	if(currentValue > value) {
		if(DriveHighDutyCycle) {
			DriveMotor(10);
		} else {
			DriveMotor(90);
		}
	} else {
		if(DriveHighDutyCycle) {
			DriveMotor(90);
		} else {
			DriveMotor(10);
		}
	}

	uint32_t data = 0;
	uint32_t margin = 0;

	do {
		data = XGpio_DiscreteRead(&counter, 1);
	} while(data < value - margin || data > value + margin);
	DriveMotor(50);
}

int main(void)
{
	InitializeMotorDriver(50, 16000);

	usleep(1000000);

	int Status;
	XAdcPs_Config *ConfigPtr;
	XAdcPs *XAdcInstPtr = &XAdcInst;

	/*
	 * Initialize the XAdc driver.
	 */
	ConfigPtr = XAdcPs_LookupConfig(XADC_DEVICE_ID);
	if (ConfigPtr == NULL) {
		return XST_FAILURE;
	}
	XAdcPs_CfgInitialize(XAdcInstPtr, ConfigPtr,
			ConfigPtr->BaseAddress);

	/*
	 * Self Test the XADC/ADC device
	 */
	Status = XAdcPs_SelfTest(XAdcInstPtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Disable the Channel Sequencer before configuring the Sequence
	 * registers.
	 */
	XAdcPs_SetSequencerMode(XAdcInstPtr, XADCPS_SEQ_MODE_SINGCHAN);

	InitializeMotorDriver(50, 16000);


	XGpio_Initialize(&mux_reset, XPAR_MUXOUT_RESETOUT_DEVICE_ID);
	XGpio_Initialize(&counter, XPAR_COUNTERIN_COUNTEROUT_DEVICE_ID);
	XGpio_Initialize(&buttons, XPAR_AXI_GPIO_0_DEVICE_ID);

	XGpio_SetDataDirection(&mux_reset, 1, 0);
	XGpio_SetDataDirection(&mux_reset, 2, 0);
	XGpio_SetDataDirection(&counter, 1, 1);
	XGpio_SetDataDirection(&buttons, 1, 1);

	uint32_t theta = XAdcPs_GetAdcData(XAdcInstPtr, XADCPS_CH_AUX_MIN+14);
	XGpio_DiscreteWrite(&mux_reset, 1, 0); // mux to self controlled pwm

	ResetCounter();

	uint32_t maxValue = CalibrateCrane();
	xil_printf("Encoder max :%d\r\n", maxValue);
	DriveTo(1000);

	int data = 0;

	data = XGpio_DiscreteRead(&counter, 1);
	xil_printf("Encoder halv :%d\r\n", data);

	double value = maxValue / 56;
	uint16_t pos0 = (double)10 * (double)value;
	uint16_t pos1 = (double)20 * (double)value;
	uint16_t pos2 = (double)30 * (double)value;
	uint16_t pos3 = (double)40 * (double)value;

	usleep(1000000);

	//init pid
	PIDcontrollerNew_initialize();

	PIDcontrollerNew_step();

	rtU.des_x = maxValue / 2;
	rtU.des_theta = theta;
	uint16_t margin = 100;
	rtU.Theta = theta;
	uint16_t old_pwm = 50;

	while(true)
	{
		uint8_t button = XGpio_DiscreteRead(&buttons, 1);
		if(button == 1)
		{
			rtU.des_x = pos0;
		}
		else if(button == 2)
		{
			rtU.des_x = pos1;
		}
		else if(button == 4)
		{
			rtU.des_x = pos2;
		}
		else if(button == 8)
		{
			rtU.des_x = pos3;
		}
		rtU.x = XGpio_DiscreteRead(&counter, 1);

		uint16_t angle = XAdcPs_GetAdcData(XAdcInstPtr, XADCPS_CH_AUX_MIN+14);
		rtU.Theta = angle;

		int16_t difference = ((double)angle - (double)rtU.des_theta) * 0.0058144;

		PIDcontrollerNew_step();

		int16_t pwm = rtY.pwm;

		if(pwm < -50)
		{
			//to maxValue
			pwm += 1000;
			pwm = (pwm* (0.04 - 0.01)) + 10;
		}
		else if(pwm > 50)
		{
			//to 0
			pwm = (pwm* (0.09 - 0.070)) + 70;
		}
		else
		{
			pwm = 50;
		}

		if(old_pwm != pwm)
		{
			DriveMotor(pwm);
			old_pwm = pwm;
		}

		usleep(1000);
	}
}
