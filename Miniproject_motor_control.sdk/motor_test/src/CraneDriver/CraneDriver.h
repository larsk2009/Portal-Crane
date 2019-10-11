/*
 * CraneDriver.h
 *
 *  Created on: Oct 8, 2019
 *      Author: Lars
 */

#ifndef SRC_MOTORDRIVER_MOTORDRIVER_H_
#define SRC_MOTORDRIVER_MOTORDRIVER_H_

#include <stdbool.h>
#include <stdint.h>

typedef enum	motorDirection {DriveLeft = 0, DriveRight = 1} MotorDirection;

bool 			InitializeCraneDriver();
bool 			DriveCrane(MotorDirection direction, double speed);

#endif /* SRC_MOTORDRIVER_CRANEDRIVER_H_ */
