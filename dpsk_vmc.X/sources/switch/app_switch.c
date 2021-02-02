/*
 * File:   switch.c
 * Author: M91406
 *
 * Created on March 12, 2020, 12:10 PM
 */


#include "config/hal.h"
#include "app_switch.h" 
#include "pwr_control/app_power_control.h"
#include "lcd/app_lcd.h"

// PRIVATE VARIABLE DELARATIONS

#define SWITCH_DEBOUNCE_DELAY_DEFAULT    199    // Switch needs to be pressed >20ms to trip a SWITCH BUTTON event
#define SWITCH_LONG_PRESS_DELAY_DEFAULT  4999   // Switch needs to be pressed >500ms to trip a SWITCH BUTTON event

volatile SWITCH_OBJECT_t switch_button;

volatile uint16_t appSwitch_Initialize(void) 
{
    volatile uint16_t retval = 1;
    
    retval &= drv_Switch_Initialize(&switch_button);   
    
    switch_button.debounce_delay = SWITCH_DEBOUNCE_DELAY_DEFAULT;
    switch_button.long_press_delay = SWITCH_LONG_PRESS_DELAY_DEFAULT;
    switch_button.status.bits.enabled = true;
    
    switch_button.event_btn_down = &appSwitch_EventButtonDown;
    switch_button.event_long_press = &appSwitch_EventButtonLongPress;
    switch_button.event_pressed = NULL; // Event not used
    switch_button.event_release = &appSwitch_EventButtonUp;
    
    return(retval);
}

volatile uint16_t appSwitch_Execute(void) 
{
    volatile uint16_t retval = 1;

    retval &= drv_Switch_Execute(&switch_button);

    return(retval);
}

volatile uint16_t appSwitch_EventButtonDown(void) {
    Nop();
    return(1);
}

volatile uint16_t appSwitch_EventButtonLongPress(void) {
    
    lcd.screen += 1;    // increment screen index
    if (lcd.screen > 2) // Roll-over after screen #2
        lcd.screen = 0; // REset to default view
    return(1);
}

volatile uint16_t appSwitch_EventButtonUp(void) {

    return(1);
}

volatile uint16_t appSwitch_Dispose(void) 
{
    volatile uint16_t retval = 1;
    
    retval &= drv_Switch_Dispose(&switch_button);

    return(retval);
}
