/* Microchip Technology Inc. and its subsidiaries.  You may use this software 
 * and any derivatives exclusively with Microchip products. 
 * 
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS".  NO WARRANTIES, WHETHER 
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED 
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A 
 * PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION 
 * WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION. 
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS 
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE 
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS 
 * IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF 
 * ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE 
 * TERMS. 
 */

/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef BUCK_CONVERTER_CONTROL_EXTENSIONS_H
#define	BUCK_CONVERTER_CONTROL_EXTENSIONS_H

#include <xc.h> // include processor files - each processor file is guarded.  

struct BUCK_SYNC_CONTROL_s {
    
    volatile uint16_t* prtIOCtrlRegister;   // Pointer to PGxIOCONL register to set override bits of sync switch
    volatile uint16_t OvrEnBitLocation;     // bit location of the control bit within the control register
    volatile uint16_t OnThreshold;          // threshold value turning on sync rectifier switch drive
    volatile uint16_t OffThreshold;         // threshold value turning off sync rectifier switch drive
};
typedef struct BUCK_SYNC_CONTROL_s BUCK_SYNC_CONTROL_t;

/* FUNCTION PROTOTYPES OF BUCK CONVERTER EXTENSION FUNCTIONS */

/*********************************************************************************
 * @ingroup special-function-layer-npnz16-functions
 * @fn      void buck_SyncRectControl(volatile struct BUCK_SYNC_CONTROL_s* sync_control)
 * @brief   Cycle-by-Cycle Synchronous Rectifier Control Module
 * @param   sync_control: Pointer to NPNZ16b extension data object of type struct BUCK_SYNC_CONTROL_s*
 * 
 * @details
 * Synchronous rectifier control sets and clears the override bit of the 
 * synchronous rectifier switch drive PWM channel depending on the signal 
 * level of the most recent control output value. The sync rectifier control 
 * extension data structure supports two thresholds to apply some hysteresis 
 * between the turn-on and turn-off thresholds.
 * 
 * @note
 * This function will be called from the standard control loop without 
 * context management. 
 *
 **********************************************************************************/
//extern __attribute__((near)) void buck_SyncRectControl( // Cycle-by-cycle synchronous rectifier control
//        volatile struct BUCK_SYNC_CONTROL_s* sync_control
//    ); 

extern void __attribute__((near)) buck_SyncRectControl(void); // Cycle-by-cycle synchronous rectifier control


#endif	/* BUCK_CONVERTER_CONTROL_EXTENSIONS_H */

