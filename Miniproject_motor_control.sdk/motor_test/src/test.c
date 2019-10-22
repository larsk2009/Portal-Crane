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
static XGpio multiplex;

int main(void)
{
	InitializeMotorDriver(50, 15000);
	XGpio_Initialize(&multiplex, XPAR_AXI_GPIO_0_DEVICE_ID);

	XGpio_SetDataDirection(&multiplex, 1, 0);
	XGpio_DiscreteWrite(&multiplex, 1, 1);

	int data = 0;

	while(1) {
		DriveMotor(50);
		for(uint8_t i = 0; i < 20; i++)
		{
			usleep(100000);
			data = ENCODER_mReadReg(0x43C00000, ENCODER_S00_AXI_SLV_REG0_OFFSET);
			xil_printf("REG0 :%d\r\n", data);
		}
		DriveMotor(50);
		for(uint8_t i = 0; i < 20; i++)
		{
			usleep(100000);
			data = ENCODER_mReadReg(0x43C00000, ENCODER_S00_AXI_SLV_REG0_OFFSET);
			xil_printf("REG0 :%d\r\n", data);
		}
	}
}
