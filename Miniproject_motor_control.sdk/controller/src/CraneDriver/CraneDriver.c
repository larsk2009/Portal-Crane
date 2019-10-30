/*
 * MotorDriver.c
 *
 *  Created on: Oct 2, 2019
 *      Author: lars
 */

#include "CraneDriver.h"
#include "../MotorDriver/MotorDriver.h"
#include "xtmrctr.h"
#include "xparameters.h"

#define DefaultDutyCycle 50
#define DefaultFrequency 15000

/**
 * Initializes the motor driver
 * @param initialDutyCycle The duty cycle the driver will be initialized with
 * @param frequency The frequency the driver will use. Specify in Hertz (Hz)
 * @return True when initialized, false when an error occurred
 */
bool InitializeCraneDriver() {
	return InitializeMotorDriver(DefaultDutyCycle, DefaultFrequency);
}

bool DriveCrane(MotorDirection direction, double speed) {
	double dir = 0;
	if(direction == DriveLeft) {
		dir = -1.0;
	}
	else if(direction == DriveRight) {
		dir = 1.0;
	}

	double dutyCycle = 50.0 + (dir * (speed / 100.0) * 40.0);

	return DriveMotor(dutyCycle);
}
