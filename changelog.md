# dpsk3-power-buck-peak-current-mode-control, release v1.0.0

### Release Highlights
This is the initial release demonstrating the basic control loop implementation of a simple digital peak current mode control loop regulating the output voltage of a synchronous buck converter.
This example is part of a series of code examples for the Digital Power Starter Kit 3 demonstrating the implementation of specific control modes and features.

### Features Added\Updated
This code example runs automatically after power has been applied to the development board. In this initial version the on-board LED of the dsPIC33CK Digital Power Plug-In Module is toggled with a interval period of 300 ms, when the controller is running at maximum speed of 100 MIPS. After startup, PWM generator #1 is generating a 500 kHz complementary waveform at the PWM1H/PWM1L outputs. The output voltage feedback is read through ADC input #13 and processed through the digital control loop in the respective interrupt service routine. At the end of the control loop execution the result is written to the Digital-to-Analog converter (DAC) register, which then provides a reference voltage to a hardware comparator. This comparator is comparing the inductor current feedback signal with the applied reference. When the feedback signal exceeds the reference signal level, the comparator output triggers the PWM module, truncating the active duty cycle, eventually regulating the output voltage to the nominal 3.3 V output voltage.
In this example the low-side rectifier FET is turned off at light load conditions, improving efficiency. In this condition the converter drops into burst mode, only generating sequences of short pulses recharging the output capacitor. As soon as more load is applied, the rectifier FET will be turned back on to minimize conduction losses at high loads.

During operation the most recent values of input voltage, output voltage, output current and temperature are displayed on the on-board LCD. The screens can be switched by pressing the User button for more than 1 second.

### Supported Hardware Revisions:
Digital Power Starter Kit 3, Revision 3.0 (Part-No. 330017-3)
Visit [www.microchip.com/330017-3](https://www.microchip.com/330017-3) for more information
