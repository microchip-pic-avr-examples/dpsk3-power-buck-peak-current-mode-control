/*
 * File:   app_power_control.c
 * Author: M91406
 *
 * Created on March 12, 2020, 11:55 AM
 */

#include <stdbool.h>

#include "drivers/v_loop.h"
#include "devices/dev_buck_typedef.h"
#include "devices/dev_buck_converter.h"
#include "config/hal.h"

#include "fault_handler/app_fault_monitor.h"

/**************************************************************************************************
 * @ingroup app-layer-power-control-properties-public
 * @var volatile struct BUCK_CONVERTER_s  buck
 * @brief Global data object for a BUCK CONVERTER 
 * 
 * @details
 * The 'buck' data object holds all status, control and monitoring values of the BUCK power 
 * controller. The BUCK_CONVERTER_s data structure is defined in dev_buck_converter.h.
 * Please refer to the comments on top of this file for further information.
 * 
 **************************************************************************************************/
volatile struct BUCK_CONVERTER_s buck;

/* PRIVATE EXTERNAL FUNCTION PROTOTYPES */
extern volatile uint16_t appPowerSupply_ConverterObjectInitialize(void);
extern volatile uint16_t appPowerSupply_ControllerInitialize(void);
extern volatile uint16_t appPowerSupply_PeripheralsInitialize(void);

/* PRIVATE INTERNAL FUNCTION PROTOTYPES */
volatile uint16_t __attribute__((always_inline)) appPowerSupply_DataCapture(void);

/* *************************************************************************************************
 * PRIVATE VARIABLE DECLARATIONS
 * ************************************************************************************************/
#define ISNS_AVG_BITMASK    (uint16_t)0x0007
volatile uint16_t _isns_sample_count = 0;
volatile uint16_t isns_samples;

/* *************************************************************************************************
 * PUBLIC FUNCTIONS
 * ************************************************************************************************/


/*******************************************************************************
 * @ingroup app-layer-power-control-functions-public
 * @fn	volatile uint16_t appPowerSupply_Execute(void)
 * @brief This is the top-level function call triggering the most recent state 
 * machine of all associated power supply controllers
 * @return 0=failure
 * @return 1=success
 * 
 * @details 
 * After initialization, the proprietary user code has to call this function 
 * on a deterministic, constant time base. In each execution step this function
 * will call the power control state machines of each supported/included power
 * supply unit. 
 * 
 *********************************************************************************/

volatile uint16_t appPowerSupply_Execute(void)
{ 
    volatile uint16_t retval=1;

    // Capture data values, which are not captured by the controller automatically
    retval = appPowerSupply_DataCapture();
    
    // Execute buck converter state machine
    retval &= drv_BuckConverter_Execute(&buck);

    // Buck regulation error is only active while controller is running
    // and while being tied to a valid reference
    if(((buck.state_id.bits.opstate_id  >= BUCK_OPSTATE_RAMPUP) &&
        (buck.state_id.bits.substate_id >= BUCK_OPSTATE_V_RAMP_UP)) ||
       ((buck.state_id.bits.opstate_id  == BUCK_OPSTATE_ONLINE)))
    {
        fltobj_BuckRegErr.ReferenceObject.ptrObject = buck.v_loop.controller->Ports.ptrControlReference;
        #if (PLANT_MEASUREMENT == false)
        fltobj_BuckRegErr.Status.bits.Enabled = buck.v_loop.controller->status.bits.enabled;
        fltobj_BuckOCP.Status.bits.Enabled = buck.v_loop.controller->status.bits.enabled;
        #endif
    }
    else {
        fltobj_BuckRegErr.Status.bits.Enabled = false;
        fltobj_BuckOCP.Status.bits.Enabled = false;
    }
    
    return(retval); 
}

/*******************************************************************************
 * @ingroup app-layer-power-control-functions-public
 * @fn	volatile uint16_t appPowerSupply_Initialize(void)
 * @brief  Calls the application layer power controller initialization
 * @return 0=failure
 * @return 1=success
 * 
 * @details 
 * The power control application layer is the proprietary user code layer
 * used to tailor the generic power converter device driver to the specific 
 * hardware of this design. The initialization routine covers three levels
 * 
 * - Converter Object Configuration
 * - Controller Configuration
 * - Peripheral Set Configuration
 * - Interrupt Vector Configuration
 * 
 * Once all modules have been configured successfully, the power converter 
 * object is started with control loops and PWM outputs disabled. However, 
 * the PWM module will start triggering the ADC to allow the standby monitoring
 * of system conditions to allow the firmware to decide if it is safe to start
 * up the power converter.
 * 
 *********************************************************************************/

volatile uint16_t appPowerSupply_Initialize(void)
{ 
    volatile uint16_t retval=1;

    // Run initialization sequence
    retval &= appPowerSupply_ConverterObjectInitialize();
    retval &= appPowerSupply_ControllerInitialize();
    retval &= appPowerSupply_PeripheralsInitialize();

    // Initialize Control Interrupt
    _BUCK_VLOOP_ISR_IP = BUCK_VOUT_ISR_PRIORITY;
    _BUCK_VLOOP_ISR_IF = 0;
    _BUCK_VLOOP_ISR_IE = true;
    
    // Enable Buck Converter
    retval &= drv_BuckConverter_Start(&buck);
    
    return(retval); 
}

/*******************************************************************************
 * @ingroup app-layer-power-control-functions-public
 * @fn	volatile uint16_t appPowerSupply_Start(void)
 * @brief  This function calls the buck converter device driver function starting the power supply 
 * @return 0=failure
 * @return 1=success
 *  
 * @details 
 *  This function exposes the Power Converter Start function of the device driver.
 *********************************************************************************/

volatile uint16_t appPowerSupply_Start(void)
{
    volatile uint16_t retval=1;

    retval &= drv_BuckConverter_Start(&buck); // Start PWM with outputs disabled to start ADC triggering

    return(retval); 
}

/*******************************************************************************
 * @ingroup app-layer-power-control-functions-public
 * @fn	volatile uint16_t appPowerSupply_Stop(void)
 * @brief This function calls the buck converter device driver function stopping the power supply 
 * @return 0=failure
 * @return 1=success
 *  
 * @details
 *  This function exposes the Power Converter Stop function of the device driver.
 * 
 * @note
 *  The STOP function terminates the state machine and all peripherals used by
 *  the power controller. This includes the PWM and ADC peripheral modules and 
 *  will therefore also stop all data acquisition. 
 *  If you are trying to stop the power supply but keep its state machine and
 *  data acquisition running, use the SUSPEND function instead
 * 
 *********************************************************************************/

volatile uint16_t appPowerSupply_Stop(void)
{
    volatile uint16_t retval=1;

    retval &= drv_BuckConverter_Stop(&buck); // Shut down all power supply peripherals and data objects

    return(retval); 
}
/*******************************************************************************
 * @ingroup app-layer-power-control-functions-public
 * @fn	   volatile uint16_t appPowerSupply_Suspend(void)
 * @brief  This function stops the power supply operation
 * @return 0=failure
 * @return 1=success
 *  
 * @details
 *  The SUSPEND function stops the power supply operation but keep its state machine
 *  and data acquisition running.
 *********************************************************************************/

volatile uint16_t appPowerSupply_Suspend(void)
{ 
    volatile uint16_t retval=1;

    retval &= drv_BuckConverter_Suspend(&buck); // Shut down PWM immediately

    return(retval); 
}

/*******************************************************************************
 * @ingroup app-layer-power-control-functions-public
 * @fn	   volatile uint16_t appPowerSupply_Resume(void)
 * @brief  This function resumes the power supply operation
 * @return unsigned integer (0=failure, 1=success)
 *  
 * @details
 *  This function calls the buck converter device driver function recovering
 *  the power supply operation from a previously initiated shut-down.
 * 
 *********************************************************************************/

volatile uint16_t appPowerSupply_Resume(void)
{ 
    volatile uint16_t retval=0;

    retval &= drv_BuckConverter_Resume(&buck); // Shut down PWM immediately
    
    return(retval); 
}

/* *************************************************************************************************
 * PRIVATE FUNCTIONS
 * ************************************************************************************************/

/*********************************************************************************
 * @ingroup app-layer-power-control-functions-private
 * @fn      volatile uint16_t appPowerSupply_DataCapture(void)
 * @brief   Captures runtime data not captured automatically by other firmware modules
 * @return  unsigned integer (0=failure, 1=success)
 * @details
 *  Function appPowerSupply_DataCapture is used to capture runtime data from
 *  ADC inputs which are not used for direct control of the power supply but
 *  are required for fault management, system monitoring and/or communication. 
 *
 * @note
 *  In peak current mode control the inductor current triggers a hardware 
 *  comparator truncating the duty cycle asynchronously from the CPU time-base.
 *  This makes it impossible to track the average current using a ADC. Hence, 
 *  an alternative way is chosen to track the converter output current by 
 *  monitoring the peak current set by the feedback loop instead. A simple 
 *  offset correction is used to estimate the average current by subtracting 
 *  half of the inductor ripple current from the peak current value.
 * 
 * This method is not precise and refers to the nominal ripple current at
 * specific input and output voltage. An improved implementation requires 
 * continuous monitoring of VIN and VOUT and the calculation of the current 
 * slew rate in each condition together with the most recent on-time. In 
 * this implementation, however, the simple estimation was considered 
 * 'good enough' to output the inductor current value on the LC display 
 * of the board.  
 * 
 **********************************************************************************/

volatile uint16_t appPowerSupply_DataCapture(void) 
{
    volatile uint16_t retval=0;

    buck.data.v_in = (BUCK_VIN_ADCBUF - BUCK_VIN_OFFSET);
    buck.data.temp = TEMP_ADCBUF;
    buck.data.i_sns[0] = BUCK_ISNS_ADCBUF;
    if (buck.data.control_output < 210)
        buck.data.i_sns[0] = buck.data.control_output;
    else
        buck.data.i_sns[0] = (buck.data.control_output - 210);

    // Average inductor current value
    isns_samples += buck.data.i_sns[0];
    if(!(++_isns_sample_count & ISNS_AVG_BITMASK))
    {
        isns_samples = (isns_samples >> 3);
        isns_samples -= buck.i_loop[0].feedback_offset;
        if((int16_t)isns_samples < 0) isns_samples = 0;

        buck.data.i_out = isns_samples;
        
        isns_samples = 0; // Reset data buffer
    }
    
    return(retval); 
}

// end of file
