/*
 * MotorDriver.h
 *
 *  Created on: Oct 2, 2019
 *      Author: lars
 */

#ifndef SRC_MOTORDRIVER_MOTORDRIVER_H_
#define SRC_MOTORDRIVER_MOTORDRIVER_H_

#include <stdbool.h>
#include <stdint.h>

//typedef enum	motorDirection {DriveLeft = 0, DriveRight = 1} MotorDirection;

bool 			InitializeMotorDriver(double initialDutyCycle, uint16_t frequency);
bool 			DriveMotor(double dutyCycle);

#endif /* SRC_MOTORDRIVER_MOTORDRIVER_H_ */
