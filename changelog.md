# dpsk3-power-buck-voltage-mode-control, release v1.2.1

### Features Added\Updated

In MPLAB&reg; PowerSmart&trade; Digital Control Library Designer, release 0.9.14.676 labels of user extension function hooks changed, causing the compiler to fail when new control code is generated. This firmware release ensures compatibility with the latest version of this code generating tool.

When you download this version of the firmware, please also update your version of PowerSmart&trade; Digital Control Library Designer to version 0.9.14 or higher:
[MPLAB&reg; PowerSmart&trade; Digital Control Library Designer v0.9.14](https://microchip-pic-avr-tools.github.io/powersmart-dcld/)

# dpsk3-power-buck-voltage-mode-control, release v1.2.0

### Release Highlights

In this release the fault handler device driver got optimized and fault indication got improved. The improved fault handler now supports the declaration
of a maximum number of restart attempts after the power supply has been shut down during fault conditions. This setting will put the power supply into 
a safe state after 'n' unsuccessful restart attempts. If any of the restart procedures passes the POWER GOOD state and reaches state ONLINE, the restart
counter is reset. The default number has been set to 10. This setting can be changed by editing `#define BUCK_FAULT_RESTART_CYCLES` in file dpsk3_hwrdescr.h

This new feature prevents the power supply from ending up in an endless hiccup condition where the power supply is continuously driven into fault conditions 
with the potential risk of over stressing components, connected sources or loads. The 'safe state' is OFF, where the controller still acquires ADC data but 
keeps the power supply turned off and PWM outputs disabled. The on-board LED flashes at a higher frequency and the error code "(LA)" is displayed on the LCD to 
indicate the latched fault condition.

In this condition a CPU reset or power cycle is required to restart the power supply.

### Features Added\Updated

- Fault object management bugfix: a sloppy if-statement accidentally disabled regulation error in Online mode
- Limitation of restart-attempts after fault shut-down with latched safe-state fault condition
- On-Board LED changes blinking frequency in fault conditions
- LC display got 4th screen showing most recent firmware version
- Fault indication on LC display is now visible on all screens (except firmware version view)
- Updated online documentation

### Supported Hardware Revisions:

- Digital Power Starter Kit 3, Revision 3.0 (Part-No. 330017-3)
Visit [www.microchip.com/330017-3](https://www.microchip.com/330017-3) for more information

# dpsk3-power-buck-voltage-mode-control, release v1.1.0

### Release Highlights
The buck converter device driver was extended with two new features:

- Swapped PWM Output Support
- Average Current Startup Current Limit

### Features Added\Updated
Although the two new features of the buck converter device driver are not used in this code example, they extend the feature set when the buck converter device driver is migrated to user projects.
The application layer configuration also covers the configuration of the new features and teh hardware description header file was extended to contain user settings and macros for easy code migration.

The application documentation got updated by fixing some typos and adding documentation of the boost converter interface description.

### Supported Hardware Revisions:

- Digital Power Starter Kit 3, Revision 3.0 (Part-No. 330017-3)
Visit [www.microchip.com/330017-3](https://www.microchip.com/330017-3) for more information


# dpsk3-power-buck-voltage-mode-control, release v1.0.0

### Release Highlights
This is the initial release demonstrating the basic control loop implementation of a simple digital voltage mode control loop regulating the output voltage of a synchronous buck converter.
This example is part #1 of a series of code examples for the Digital Power Starter Kit 3 demonstrating the implementation of specific control modes and features.

### Features Added\Updated
This code example runs automatically after power has been applied to the development board. In this initial version the on-board LED of the dsPIC33CK Digital Power Plug-In Module is toggled with a interval period of 300 ms, when the controller is running at maximum speed of 100 MIPS. After startup, PWM generator #1 is generating a 500 kHz complementary waveform at the PWM1H/PWM1L outputs. The output voltage feedback is read through ADC input #13 and processed through the digital control loop in the respective interrupt service routine. At the end of the control loop execution the result is written to the PWM duty cycle register, eventually regulating the output voltage to the nominal 3.3 V output voltage.

During operation the most recent values of input voltage, output voltage, output current and temperature are displayed on the on-board LCD. The screens can be switched by pressing the User button for more than 1 second.

### Supported Hardware Revisions:
Digital Power Starter Kit 3, Revision 3.0 (Part-No. 330017-3)
Visit [www.microchip.com/330017-3](https://www.microchip.com/330017-3) for more information