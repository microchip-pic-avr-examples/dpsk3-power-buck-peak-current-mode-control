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
 * File:   dev_buck_ptemp_dac.h
 * Author: M91406
 * Comments: DAC Peripheral Special Function Register Configuration Template
 * Revision history: 
 *   10/29/2020     1.0     initial release
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef BUCK_CONVERTER_PERIPHERAL_CONFIGURATION_DAC_H
#define	BUCK_CONVERTER_PERIPHERAL_CONFIGURATION_DAC_H

#include <xc.h> // include processor files - each processor file is guarded.  
#include <stdint.h> // include standard integer data types
#include <stdbool.h> // include standard boolean data types
#include <stddef.h> // include standard definition data types

/**
 * @ingroup lib-layer-buck-ptemplate-properties-defines
 * @{
 */

/* ********************************************************************************
 * DAC / COMPARATOR / SLOPE COMPENSATION INSTANCE CONFIGURATION
 * *******************************************************************************/
/**
 * @def REG_DACxCONL
 * @brief DACxCONL: DACx CONTROL REGISTER LOW
 */
/* 

                           ________________ BIT 15: DACEN: Individual DACx Module Enable
                          | _______________ BIT 14: IRQM[1:0]: Interrupt Mode select
                          || ______________ BIT 13: 
                          ||| _____________ BIT 12: (unimplemented)
                          |||| ____________ BIT 11: (unimplemented)
                          ||||| ___________ BIT 10: CBE: Comparator Blank Enable
                          |||||| __________ BIT  9: DACOEN: DACx Output Buffer Enable
                          ||||||| _________ BIT  8: FLTREN: Comparator Digital Filter Enable
                          |||||||| ________ BIT  7: CMPSTAT: Comparator Status
                          ||||||||| _______ BIT  6: CMPPOL: Comparator Output Polarity Control
                          |||||||||| ______ BIT  5: INSEL[2:0]: Comparator Input Source Select
                          ||||||||||| _____ BIT  4: 
                          |||||||||||| ____ BIT  3: 
                          ||||||||||||| ___ BIT  2: HYSPOL: Comparator Hysteresis Polarity Select
                          |||||||||||||| __ BIT  1: HYSSEL[1:0]: Comparator Hysteresis Select
                          ||||||||||||||| _ BIT  0: 
                          ||||||||||||||||  */
#define REG_DACxCONL_PC 0b0000000000000110  // Peak Current Mode Configuration
#define REG_DACxCONL    0b0000000000000000  // Default Configuration
#define REG_DACOEN_EN   0b0000001000000000  // Register bit mask enabling the DAC output
/**
 * @def REG_DACxCONH
 * @brief DACxCONH: DACx CONTROL REGISTER LOW
 */
/* 

                           ________________ BIT 15: (unimplemented)
                          | _______________ BIT 14: (unimplemented)
                          || ______________ BIT 13: (unimplemented)
                          ||| _____________ BIT 12: (unimplemented)
                          |||| ____________ BIT 11: (unimplemented)
                          ||||| ___________ BIT 10: (unimplemented)
                          |||||| __________ BIT  9: TMCB[9:0]: DACx Leading-Edge Blanking bits
                          ||||||| _________ BIT  8: 
                          |||||||| ________ BIT  7: 
                          ||||||||| _______ BIT  6: 
                          |||||||||| ______ BIT  5: 
                          ||||||||||| _____ BIT  4: 
                          |||||||||||| ____ BIT  3: 
                          ||||||||||||| ___ BIT  2: 
                          |||||||||||||| __ BIT  1: 
                          ||||||||||||||| _ BIT  0: 
                          ||||||||||||||||  */
#define REG_DACxCONH    0b0000000000000000 // Leading Edge Blanking period will be loaded during initialization

/* DACxCONH: DACx CONTROL REGISTER HIGH => Timing Register: User value will be set in code */
/* DACxCONL: DACx CONTROL REGISTER LOW  => Timing Register: User value will be set in code */

/**
 * @def REG_SLPxCONL
 * @brief SLPxCONL: DACx SLOPE CONTROL REGISTER LOW
 */  
/* SLPxCONL: DACx SLOPE CONTROL REGISTER LOW

                           ________________ BIT 15: HCFSEL[3:0]: Hysteretic Comparator Function Input Selection
                          | _______________ BIT 14: 
                          || ______________ BIT 13: 
                          ||| _____________ BIT 12: 
                          |||| ____________ BIT 11: SLPSTOPA[3:0]: Slope Stop A Signal Selection
                          ||||| ___________ BIT 10: 
                          |||||| __________ BIT  9: 
                          ||||||| _________ BIT  8: 
                          |||||||| ________ BIT  7: SLPSTOPB[3:0]: Slope Stop B Signal Selection
                          ||||||||| _______ BIT  6: 
                          |||||||||| ______ BIT  5: 
                          ||||||||||| _____ BIT  4: 
                          |||||||||||| ____ BIT  3: SLPSTRT[3:0]: Slope Start Signal Selection
                          ||||||||||||| ___ BIT  2: 
                          |||||||||||||| __ BIT  1: 
                          ||||||||||||||| _ BIT  0: 
                          ||||||||||||||||  */
#define REG_SLPxCONL    0b0000000000000000

/**
 * @def REG_SLPxCONH
 * @brief SLPxCONH: DACx SLOPE CONTROL REGISTER LOW
 */ 
/* 

                           ________________ BIT 15: SLOPEN: Slope Function Enable/On
                          | _______________ BIT 14: (unimplemented)
                          || ______________ BIT 13: (unimplemented)
                          ||| _____________ BIT 12: (unimplemented)
                          |||| ____________ BIT 11: HME: Hysteretic Mode Enable bit
                          ||||| ___________ BIT 10: TWME: Triangle Wave Mode Enable
                          |||||| __________ BIT  9: PSE: Positive Slope Mode Enable
                          ||||||| _________ BIT  8: (unimplemented)
                          |||||||| ________ BIT  7: (unimplemented)
                          ||||||||| _______ BIT  6: (unimplemented)
                          |||||||||| ______ BIT  5: (unimplemented)
                          ||||||||||| _____ BIT  4: (unimplemented)
                          |||||||||||| ____ BIT  3: (unimplemented)
                          ||||||||||||| ___ BIT  2: (unimplemented)
                          |||||||||||||| __ BIT  1: (unimplemented)
                          ||||||||||||||| _ BIT  0: (unimplemented)
                          ||||||||||||||||  */
#define REG_SLPxCONH_PC 0b1000000000000000  // Peak Current Mode Configuration
#define REG_SLPxCONH    0b0000000000000000  // Slope COmpensation disabled

/**
 * @def REG_DACCTRL1L
 * @brief DACCTRL1L: DAC CONTROL 1 LOW REGISTER
 */ 
/* 
                           ________________ BIT 15: DACON: Slope Function Enable bit
                          | _______________ BIT 14: (unimplemented)
                          || ______________ BIT 13: DACSIDL: DAC Stop in Idle Mode bit
                          ||| _____________ BIT 12: (unimplemented)
                          |||| ____________ BIT 11: (unimplemented)
                          ||||| ___________ BIT 10: (unimplemented)
                          |||||| __________ BIT  9: (unimplemented)
                          ||||||| _________ BIT  8: (unimplemented)
                          |||||||| ________ BIT  7: CLKSEL[1:0]: DAC Clock Source Select bits
                          ||||||||| _______ BIT  6: 
                          |||||||||| ______ BIT  5: CLKDIV[1:0]: DAC Clock Divider bits
                          ||||||||||| _____ BIT  4: 
                          |||||||||||| ____ BIT  3: (unimplemented)
                          ||||||||||||| ___ BIT  2: FCLKDIV[2:0]: Comparator Filter Clock Divider bits
                          |||||||||||||| __ BIT  1: 
                          ||||||||||||||| _ BIT  0: 
                          ||||||||||||||||  */
#define REG_DACCTRL1L   0b0000000010000000 // Selecting AFPLLO as default input clock with no dividers

/**
 * @def REG_DACCTRL2L
 * @brief DACCTRL2L: DAC CONTROL 2 LOW REGISTER
 */ 
/* 
                           ________________ BIT 15: (unimplemented)
                          | _______________ BIT 14: (unimplemented)
                          || ______________ BIT 13: (unimplemented)
                          ||| _____________ BIT 12: (unimplemented)
                          |||| ____________ BIT 11: (unimplemented)
                          ||||| ___________ BIT 10: (unimplemented)
                          |||||| __________ BIT  9: TMODTIME[9:0]: Transition Mode Duration bits
                          ||||||| _________ BIT  8: 
                          |||||||| ________ BIT  7: 
                          ||||||||| _______ BIT  6: 
                          |||||||||| ______ BIT  5: 
                          ||||||||||| _____ BIT  4: 
                          |||||||||||| ____ BIT  3: 
                          ||||||||||||| ___ BIT  2: 
                          |||||||||||||| __ BIT  1: 
                          ||||||||||||||| _ BIT  0: 
                          ||||||||||||||||  */
#define REG_DACCTRL2L   0b0000000000000000 // Transition time setting will be loaded during initializaiton

/**
 * @def REG_DACCTRL2H
 * @brief DACCTRL2H: DAC CONTROL 2 HIGH REGISTER
 */ 
/* 
                           ________________ BIT 15: (unimplemented)
                          | _______________ BIT 14: (unimplemented)
                          || ______________ BIT 13: (unimplemented)
                          ||| _____________ BIT 12: (unimplemented)
                          |||| ____________ BIT 11: (unimplemented)
                          ||||| ___________ BIT 10: (unimplemented)
                          |||||| __________ BIT  9: SSTIME[9:0]: Time from Start of Transition Mode until Steady-State Filter is Enabled bits
                          ||||||| _________ BIT  8: 
                          |||||||| ________ BIT  7: 
                          ||||||||| _______ BIT  6: 
                          |||||||||| ______ BIT  5: 
                          ||||||||||| _____ BIT  4: 
                          |||||||||||| ____ BIT  3: 
                          ||||||||||||| ___ BIT  2: 
                          |||||||||||||| __ BIT  1: 
                          ||||||||||||||| _ BIT  0: 
                          ||||||||||||||||  */
#define REG_DACCTRL2H   0b0000000000000000 // Steady-State time setting will be loaded during initializaiton


/* ********************************************************************************
 * PUBLIC DATA OBJECTS
 * *******************************************************************************/
extern volatile struct P33C_DAC_MODULE_s buckDacModuleConfig;
extern volatile struct P33C_DAC_INSTANCE_s buckDacInstanceConfig;


/**@}*/
    
#endif	/* BUCK_CONVERTER_PERIPHERAL_CONFIGURATION_DAC_H */
