/*
 * pid.c
 *
 *  Created on: 29 okt. 2019
 *      Author: Mark Wolvers
 */


/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: PIDcontrollerNew.c
 *
 * Code generated for Simulink model 'PIDcontrollerNew'.
 *
 * Model version                  : 1.25
 * Simulink Coder version         : 9.1 (R2019a) 23-Nov-2018
 * C/C++ source code generated on : Tue Oct 29 12:42:31 2019
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Custom Processor->Custom Processor
 * Code generation objectives:
 *    1. Execution efficiency
 *    2. RAM efficiency
 * Validation result: Not run
 */

#include "pid.h"

/* Block signals and states (default storage) */
DW rtDW;

/* External inputs (root inport signals with default storage) */
ExtU rtU;

/* External outputs (root outports fed by signals with default storage) */
ExtY rtY;

/* Model step function */
void PIDcontrollerNew_step(void)
{
	real_T rtb_error;
	real_T rtb_FilterCoefficient;
	real_T rtb_Error;
	real_T rtb_FilterCoefficient_i;
	real_T u0;
	real_T u0_0;

	/* Sum: '<Root>/Sum2' incorporates:
	 *  Gain: '<Root>/Gain'
	 *  Gain: '<Root>/Gain2'
	 *  Inport: '<Root>/des_x'
	 *  Inport: '<Root>/x'
	 */
	rtb_error = 0.02998249 * rtU.des_x - 0.02998249 * rtU.x;

	/* Gain: '<S35>/Filter Coefficient' incorporates:
	 *  DiscreteIntegrator: '<S27>/Filter'
	 *  Gain: '<S26>/Derivative Gain'
	 *  Sum: '<S27>/SumD'
	 */
	rtb_FilterCoefficient = (0.0 * rtb_error - rtDW.Filter_DSTATE) * 100.0;

	/* Sum: '<Root>/Sum' incorporates:
	 *  Gain: '<Root>/Gain3'
	 *  Gain: '<Root>/Gain4'
	 *  Inport: '<Root>/des_theta'
	 *  Inport: '<Root>/theta'
	 */
	rtb_Error = 0.0058144 * rtU.Theta - 0.0058144 * rtU.des_theta;

	/* Gain: '<S79>/Filter Coefficient' incorporates:
	 *  DiscreteIntegrator: '<S71>/Filter'
	 *  Gain: '<S70>/Derivative Gain'
	 *  Sum: '<S71>/SumD'
	 */
	rtb_FilterCoefficient_i = (0 * rtb_Error - rtDW.Filter_DSTATE_d) * 100.0;

	/* Sum: '<S41>/Sum' incorporates:
	 *  DiscreteIntegrator: '<S32>/Integrator'
	 *  Gain: '<S37>/Proportional Gain'
	 */
	u0 = (-2 * rtb_error + rtDW.Integrator_DSTATE) + rtb_FilterCoefficient;

	/* Gain: '<Root>/Gain1' incorporates:
	 *  DiscreteIntegrator: '<S76>/Integrator'
	 *  Gain: '<S81>/Proportional Gain'
	 *  Sum: '<S85>/Sum'
	 */
	//gain = 90
	u0_0 = -((90 * rtb_Error + rtDW.Integrator_DSTATE_p) +
			rtb_FilterCoefficient_i);

	/* Saturate: '<Root>/Saturation5' */
	if (u0 > 1000.0) {
		u0 = 1000.0;
	} else {
		if (u0 < -1000.0) {
			u0 = -1000.0;
		}
	}

	/* End of Saturate: '<Root>/Saturation5' */

	/* Saturate: '<Root>/Saturation4' */
	if (u0_0 > 1000.0) {
		u0_0 = 1000.0;
	} else {
		if (u0_0 < -1000.0) {
			u0_0 = -1000.0;
		}
	}

	/* End of Saturate: '<Root>/Saturation4' */

	/* Sum: '<Root>/Sum1' */
	u0 -= u0_0;

	/* Saturate: '<Root>/Saturation' */
	if (u0 > 1000.0) {
		/* Outport: '<Root>/pwm' */
		rtY.pwm = 1000.0;
	} else if (u0 < -1000.0) {
		/* Outport: '<Root>/pwm' */
		rtY.pwm = -1000.0;
	} else {
		/* Outport: '<Root>/pwm' */
		rtY.pwm = u0;
	}

	/* End of Saturate: '<Root>/Saturation' */

	/* Update for DiscreteIntegrator: '<S32>/Integrator' incorporates:
	 *  Gain: '<S29>/Integral Gain'
	 */
	rtDW.Integrator_DSTATE += 0.0 * rtb_error * 1.0E-5;

	/* Update for DiscreteIntegrator: '<S27>/Filter' */
	rtDW.Filter_DSTATE += 1.0E-5 * rtb_FilterCoefficient;

	/* Update for DiscreteIntegrator: '<S76>/Integrator' incorporates:
	 *  Gain: '<S73>/Integral Gain'
	 */
	rtDW.Integrator_DSTATE_p += 0.0 * rtb_Error * 1.0E-5;

	/* Update for DiscreteIntegrator: '<S71>/Filter' */
	rtDW.Filter_DSTATE_d += 1.0E-5 * rtb_FilterCoefficient_i;
}
/* Model initialize function */
void PIDcontrollerNew_initialize(void)
{
	/* (no initialization code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
