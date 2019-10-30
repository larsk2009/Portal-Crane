/*
 * pid.h
 *
 *  Created on: 29 okt. 2019
 *      Author: Mark Wolvers
 */

#ifndef SRC_PID_PID_H_
#define SRC_PID_PID_H_

/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: PIDcontrollerNew.h
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

#ifndef PIDcontrollerNew_COMMON_INCLUDES_
# define PIDcontrollerNew_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* PIDcontrollerNew_COMMON_INCLUDES_ */

/* Macros for accessing real-time model data structure */

/* Block signals and states (default storage) for system '<Root>' */
typedef struct {
  real_T Integrator_DSTATE;            /* '<S76>/Integrator' */
  real_T Filter_DSTATE;                /* '<S71>/Filter' */
  real_T Integrator_DSTATE_p;
  real_T Filter_DSTATE_d;
} DW;

/* External inputs (root inport signals with default storage) */
typedef struct {
  real_T des_x;                        /* '<Root>/des_x' */
  real_T x;                            /* '<Root>/x' */
  real_T des_theta;                    /* '<Root>/des_theta' */
  real_T Theta;                        /* '<Root>/theta' */
} ExtU;

/* External outputs (root outports fed by signals with default storage) */
typedef struct {
  real_T pwm;                          /* '<Root>/pwm' */
} ExtY;

/* Block signals and states (default storage) */
extern DW rtDW;

/* External inputs (root inport signals with default storage) */
extern ExtU rtU;

/* External outputs (root outports fed by signals with default storage) */
extern ExtY rtY;

/* Model entry point functions */
extern void PIDcontrollerNew_initialize(void);
extern void PIDcontrollerNew_step(void);

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'PIDcontrollerNew'
 * '<S1>'   : 'PIDcontrollerNew/PID Controller'
 * '<S2>'   : 'PIDcontrollerNew/PID Controller1'
 * '<S3>'   : 'PIDcontrollerNew/PID Controller/Anti-windup'
 * '<S4>'   : 'PIDcontrollerNew/PID Controller/D Gain'
 * '<S5>'   : 'PIDcontrollerNew/PID Controller/Filter'
 * '<S6>'   : 'PIDcontrollerNew/PID Controller/Filter ICs'
 * '<S7>'   : 'PIDcontrollerNew/PID Controller/I Gain'
 * '<S8>'   : 'PIDcontrollerNew/PID Controller/Ideal P Gain'
 * '<S9>'   : 'PIDcontrollerNew/PID Controller/Ideal P Gain Fdbk'
 * '<S10>'  : 'PIDcontrollerNew/PID Controller/Integrator'
 * '<S11>'  : 'PIDcontrollerNew/PID Controller/Integrator ICs'
 * '<S12>'  : 'PIDcontrollerNew/PID Controller/N Copy'
 * '<S13>'  : 'PIDcontrollerNew/PID Controller/N Gain'
 * '<S14>'  : 'PIDcontrollerNew/PID Controller/P Copy'
 * '<S15>'  : 'PIDcontrollerNew/PID Controller/Parallel P Gain'
 * '<S16>'  : 'PIDcontrollerNew/PID Controller/Reset Signal'
 * '<S17>'  : 'PIDcontrollerNew/PID Controller/Saturation'
 * '<S18>'  : 'PIDcontrollerNew/PID Controller/Saturation Fdbk'
 * '<S19>'  : 'PIDcontrollerNew/PID Controller/Sum'
 * '<S20>'  : 'PIDcontrollerNew/PID Controller/Sum Fdbk'
 * '<S21>'  : 'PIDcontrollerNew/PID Controller/Tracking Mode'
 * '<S22>'  : 'PIDcontrollerNew/PID Controller/Tracking Mode Sum'
 * '<S23>'  : 'PIDcontrollerNew/PID Controller/postSat Signal'
 * '<S24>'  : 'PIDcontrollerNew/PID Controller/preSat Signal'
 * '<S25>'  : 'PIDcontrollerNew/PID Controller/Anti-windup/Disabled'
 * '<S26>'  : 'PIDcontrollerNew/PID Controller/D Gain/Disabled'
 * '<S27>'  : 'PIDcontrollerNew/PID Controller/Filter/Disabled'
 * '<S28>'  : 'PIDcontrollerNew/PID Controller/Filter ICs/Disabled'
 * '<S29>'  : 'PIDcontrollerNew/PID Controller/I Gain/Disabled'
 * '<S30>'  : 'PIDcontrollerNew/PID Controller/Ideal P Gain/Passthrough'
 * '<S31>'  : 'PIDcontrollerNew/PID Controller/Ideal P Gain Fdbk/Disabled'
 * '<S32>'  : 'PIDcontrollerNew/PID Controller/Integrator/Disabled'
 * '<S33>'  : 'PIDcontrollerNew/PID Controller/Integrator ICs/Disabled'
 * '<S34>'  : 'PIDcontrollerNew/PID Controller/N Copy/Disabled wSignal Specification'
 * '<S35>'  : 'PIDcontrollerNew/PID Controller/N Gain/Disabled'
 * '<S36>'  : 'PIDcontrollerNew/PID Controller/P Copy/Disabled'
 * '<S37>'  : 'PIDcontrollerNew/PID Controller/Parallel P Gain/Internal Parameters'
 * '<S38>'  : 'PIDcontrollerNew/PID Controller/Reset Signal/Disabled'
 * '<S39>'  : 'PIDcontrollerNew/PID Controller/Saturation/Passthrough'
 * '<S40>'  : 'PIDcontrollerNew/PID Controller/Saturation Fdbk/Disabled'
 * '<S41>'  : 'PIDcontrollerNew/PID Controller/Sum/Passthrough_P'
 * '<S42>'  : 'PIDcontrollerNew/PID Controller/Sum Fdbk/Disabled'
 * '<S43>'  : 'PIDcontrollerNew/PID Controller/Tracking Mode/Disabled'
 * '<S44>'  : 'PIDcontrollerNew/PID Controller/Tracking Mode Sum/Passthrough'
 * '<S45>'  : 'PIDcontrollerNew/PID Controller/postSat Signal/Forward_Path'
 * '<S46>'  : 'PIDcontrollerNew/PID Controller/preSat Signal/Forward_Path'
 * '<S47>'  : 'PIDcontrollerNew/PID Controller1/Anti-windup'
 * '<S48>'  : 'PIDcontrollerNew/PID Controller1/D Gain'
 * '<S49>'  : 'PIDcontrollerNew/PID Controller1/Filter'
 * '<S50>'  : 'PIDcontrollerNew/PID Controller1/Filter ICs'
 * '<S51>'  : 'PIDcontrollerNew/PID Controller1/I Gain'
 * '<S52>'  : 'PIDcontrollerNew/PID Controller1/Ideal P Gain'
 * '<S53>'  : 'PIDcontrollerNew/PID Controller1/Ideal P Gain Fdbk'
 * '<S54>'  : 'PIDcontrollerNew/PID Controller1/Integrator'
 * '<S55>'  : 'PIDcontrollerNew/PID Controller1/Integrator ICs'
 * '<S56>'  : 'PIDcontrollerNew/PID Controller1/N Copy'
 * '<S57>'  : 'PIDcontrollerNew/PID Controller1/N Gain'
 * '<S58>'  : 'PIDcontrollerNew/PID Controller1/P Copy'
 * '<S59>'  : 'PIDcontrollerNew/PID Controller1/Parallel P Gain'
 * '<S60>'  : 'PIDcontrollerNew/PID Controller1/Reset Signal'
 * '<S61>'  : 'PIDcontrollerNew/PID Controller1/Saturation'
 * '<S62>'  : 'PIDcontrollerNew/PID Controller1/Saturation Fdbk'
 * '<S63>'  : 'PIDcontrollerNew/PID Controller1/Sum'
 * '<S64>'  : 'PIDcontrollerNew/PID Controller1/Sum Fdbk'
 * '<S65>'  : 'PIDcontrollerNew/PID Controller1/Tracking Mode'
 * '<S66>'  : 'PIDcontrollerNew/PID Controller1/Tracking Mode Sum'
 * '<S67>'  : 'PIDcontrollerNew/PID Controller1/postSat Signal'
 * '<S68>'  : 'PIDcontrollerNew/PID Controller1/preSat Signal'
 * '<S69>'  : 'PIDcontrollerNew/PID Controller1/Anti-windup/Passthrough'
 * '<S70>'  : 'PIDcontrollerNew/PID Controller1/D Gain/Internal Parameters'
 * '<S71>'  : 'PIDcontrollerNew/PID Controller1/Filter/Disc. Forward Euler Filter'
 * '<S72>'  : 'PIDcontrollerNew/PID Controller1/Filter ICs/Internal IC - Filter'
 * '<S73>'  : 'PIDcontrollerNew/PID Controller1/I Gain/Internal Parameters'
 * '<S74>'  : 'PIDcontrollerNew/PID Controller1/Ideal P Gain/Passthrough'
 * '<S75>'  : 'PIDcontrollerNew/PID Controller1/Ideal P Gain Fdbk/Disabled'
 * '<S76>'  : 'PIDcontrollerNew/PID Controller1/Integrator/Discrete'
 * '<S77>'  : 'PIDcontrollerNew/PID Controller1/Integrator ICs/Internal IC'
 * '<S78>'  : 'PIDcontrollerNew/PID Controller1/N Copy/Disabled'
 * '<S79>'  : 'PIDcontrollerNew/PID Controller1/N Gain/Internal Parameters'
 * '<S80>'  : 'PIDcontrollerNew/PID Controller1/P Copy/Disabled'
 * '<S81>'  : 'PIDcontrollerNew/PID Controller1/Parallel P Gain/Internal Parameters'
 * '<S82>'  : 'PIDcontrollerNew/PID Controller1/Reset Signal/Disabled'
 * '<S83>'  : 'PIDcontrollerNew/PID Controller1/Saturation/Passthrough'
 * '<S84>'  : 'PIDcontrollerNew/PID Controller1/Saturation Fdbk/Disabled'
 * '<S85>'  : 'PIDcontrollerNew/PID Controller1/Sum/Sum_PID'
 * '<S86>'  : 'PIDcontrollerNew/PID Controller1/Sum Fdbk/Disabled'
 * '<S87>'  : 'PIDcontrollerNew/PID Controller1/Tracking Mode/Disabled'
 * '<S88>'  : 'PIDcontrollerNew/PID Controller1/Tracking Mode Sum/Passthrough'
 * '<S89>'  : 'PIDcontrollerNew/PID Controller1/postSat Signal/Forward_Path'
 * '<S90>'  : 'PIDcontrollerNew/PID Controller1/preSat Signal/Forward_Path'
 */
/*
 * File trailer for generated code.
 *
 * [EOF]
 */



#endif /* SRC_PID_PID_H_ */
