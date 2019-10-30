/*
 * MotorDriver.c
 *
 *  Created on: Oct 2, 2019
 *      Author: lars
 */

#include "MotorDriver.h"
#include "xtmrctr.h"
#include "xparameters.h"


#define 	TMRCTR_DEVICE_ID        XPAR_TMRCTR_0_DEVICE_ID
#define 	TMRCTR_0                0            /* Timer 0 ID */
#define 	TMRCTR_1                1            /* Timer 1 ID */

#define 	NANOSECONDS_PER_SECOND 	1000000000

XTmrCtr 	TimerCounterInst;  /* The instance of the Timer Counter */
uint16_t 	Frequency;

/**
 * Initializes the motor driver
 * @param initialDutyCycle The duty cycle the driver will be initialized with
 * @param frequency The frequency the driver will use. Specify in Hertz (Hz)
 * @return True when initialized, false when an error occurred
 */
bool InitializeMotorDriver(double initialDutyCycle, uint16_t frequency) {
	int Status;
	uint16_t DeviceId = TMRCTR_DEVICE_ID;

	Frequency = frequency;

	/*
	 * Initialize the timer counter so that it's ready to use,
	 * specify the device ID that is generated in xparameters.h
	 */
	Status = XTmrCtr_Initialize(&TimerCounterInst, DeviceId);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built
	 * correctly. Timer0 is used for self test
	 */
	Status = XTmrCtr_SelfTest(&TimerCounterInst, TMRCTR_0);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	//Initialize PWM for initialDriveSpeed

	return DriveMotor(initialDutyCycle);

}

bool DriveMotor(double dutyCycle) {
	uint32_t period;
	uint32_t highTime;

	XTmrCtr_PwmDisable(&TimerCounterInst);

	period = (1.0/Frequency) * NANOSECONDS_PER_SECOND;
	highTime = period * (dutyCycle / 100.0);

	uint8_t actualDutyCycle = XTmrCtr_PwmConfigure(&TimerCounterInst, period, highTime);

	XTmrCtr_PwmEnable(&TimerCounterInst);

	return true;
}
