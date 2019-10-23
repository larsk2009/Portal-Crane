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

/************************** Constant Definitions *****************************/
#define encoder_base 0x43C00000

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/

/*****************************************************************************/
/**
* This function is the main function of the motor test example.
*
* @param	None.
*
* @return	XST_SUCCESS to indicate success, else XST_FAILURE to indicate a
*		Failure.
*
* @note		None.
*
******************************************************************************/
static XGpio mux_reset;
static XGpio counter;
static XGpio adc;

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
			DriveMotor(30);
		} else {
			DriveMotor(70);
		}
	} else {
		if(DriveHighDutyCycle) {
			DriveMotor(70);
		} else {
			DriveMotor(30);
		}
	}

	uint32_t data = 0;
	uint32_t margin = 100;

	do {
		//usleep(10);
		data = XGpio_DiscreteRead(&counter, 1);
		//xil_printf("Encoder :%d\r\n", data);
	} while(data < value - margin || data > value + margin);
	DriveMotor(50);
}

int main(void)
{
	InitializeMotorDriver(50, 15000);
	XGpio_Initialize(&mux_reset, XPAR_MUXOUT_RESETOUT_DEVICE_ID);
	XGpio_Initialize(&counter, XPAR_COUNTERIN_COUNTEROUT_DEVICE_ID);
	XGpio_Initialize(&adc, XPAR_ADCIN_ADCOUT_DEVICE_ID);

	XGpio_SetDataDirection(&mux_reset, 1, 0);
	XGpio_SetDataDirection(&mux_reset, 2, 0);
	XGpio_SetDataDirection(&counter, 1, 1);
	//XGpio_DiscreteWrite(&mux_reset, 1, 1); // mux to adc value
	XGpio_DiscreteWrite(&mux_reset, 1, 0); // mux to self controlled pwm

	ResetCounter();

	uint32_t maxValue = CalibrateCrane();
	DriveTo(maxValue / 2);

	int data = 0;

	while(true);
	while(1) {
		DriveMotor(20);
		for(uint8_t i = 0; i < 20; i++)
		{
			usleep(100000);
			uint32_t data = XGpio_DiscreteRead(&counter, 1);
			xil_printf("Encoder :%d\r\n", data);
			//data = ENCODER_mReadReg(0x43C00000, ENCODER_S00_AXI_SLV_REG0_OFFSET);
			//xil_printf("REG0 :%d\r\n", data);
		}
		DriveMotor(80);
		for(uint8_t i = 0; i < 20; i++)
		{
			usleep(100000);
			uint32_t data = XGpio_DiscreteRead(&counter, 1);
			xil_printf("Encoder :%d\r\n", data);
			//data = ENCODER_mReadReg(0x43C00000, ENCODER_S00_AXI_SLV_REG0_OFFSET);
			//xil_printf("REG0 :%d\r\n", data);
		}
	}
}
