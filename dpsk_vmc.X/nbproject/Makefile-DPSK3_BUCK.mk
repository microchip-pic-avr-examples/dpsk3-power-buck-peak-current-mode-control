#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-DPSK3_BUCK.mk)" "nbproject/Makefile-local-DPSK3_BUCK.mk"
include nbproject/Makefile-local-DPSK3_BUCK.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=DPSK3_BUCK
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/dpsk_vmc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/dpsk_vmc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=sources/common/p33c_pral/p33c_pwm.c sources/common/p33c_pral/p33c_gpio.c sources/common/p33c_pral/p33c_dsp.c sources/common/p33c_pral/p33c_dac.c sources/config/init/init_fosc.c sources/config/init/init_gpio.c sources/config/init/init_timer1.c sources/config/init/init_dsp.c sources/config/config_bits.c sources/fault_handler/app_fault_monitor.c sources/fault_handler/drivers/drv_fault_handler.c sources/fault_handler/drivers/fdrv_TrapHandler.c sources/lcd/app_lcd.c sources/lcd/devices/dev_lcd.c sources/lcd/drivers/drv_lcd_interface.c sources/led/app_led.c sources/pwr_control/app_power_control.c sources/pwr_control/app_power_control_isr.c sources/pwr_control/devices/templates/dev_buck_ptemp_adc.c sources/pwr_control/devices/templates/dev_buck_ptemp_dac.c sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.c sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.c sources/pwr_control/devices/dev_buck_converter.c sources/pwr_control/devices/dev_buck_opstates.c sources/pwr_control/devices/dev_buck_pconfig.c sources/pwr_control/devices/dev_buck_substates.c sources/pwr_control/drivers/v_loop.c sources/pwr_control/drivers/v_loop_asm.s sources/switch/app_switch.c sources/switch/drivers/drv_switch.c sources/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/sources/common/p33c_pral/p33c_pwm.o ${OBJECTDIR}/sources/common/p33c_pral/p33c_gpio.o ${OBJECTDIR}/sources/common/p33c_pral/p33c_dsp.o ${OBJECTDIR}/sources/common/p33c_pral/p33c_dac.o ${OBJECTDIR}/sources/config/init/init_fosc.o ${OBJECTDIR}/sources/config/init/init_gpio.o ${OBJECTDIR}/sources/config/init/init_timer1.o ${OBJECTDIR}/sources/config/init/init_dsp.o ${OBJECTDIR}/sources/config/config_bits.o ${OBJECTDIR}/sources/fault_handler/app_fault_monitor.o ${OBJECTDIR}/sources/fault_handler/drivers/drv_fault_handler.o ${OBJECTDIR}/sources/fault_handler/drivers/fdrv_TrapHandler.o ${OBJECTDIR}/sources/lcd/app_lcd.o ${OBJECTDIR}/sources/lcd/devices/dev_lcd.o ${OBJECTDIR}/sources/lcd/drivers/drv_lcd_interface.o ${OBJECTDIR}/sources/led/app_led.o ${OBJECTDIR}/sources/pwr_control/app_power_control.o ${OBJECTDIR}/sources/pwr_control/app_power_control_isr.o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_adc.o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_dac.o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_converter.o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_opstates.o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_pconfig.o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_substates.o ${OBJECTDIR}/sources/pwr_control/drivers/v_loop.o ${OBJECTDIR}/sources/pwr_control/drivers/v_loop_asm.o ${OBJECTDIR}/sources/switch/app_switch.o ${OBJECTDIR}/sources/switch/drivers/drv_switch.o ${OBJECTDIR}/sources/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/sources/common/p33c_pral/p33c_pwm.o.d ${OBJECTDIR}/sources/common/p33c_pral/p33c_gpio.o.d ${OBJECTDIR}/sources/common/p33c_pral/p33c_dsp.o.d ${OBJECTDIR}/sources/common/p33c_pral/p33c_dac.o.d ${OBJECTDIR}/sources/config/init/init_fosc.o.d ${OBJECTDIR}/sources/config/init/init_gpio.o.d ${OBJECTDIR}/sources/config/init/init_timer1.o.d ${OBJECTDIR}/sources/config/init/init_dsp.o.d ${OBJECTDIR}/sources/config/config_bits.o.d ${OBJECTDIR}/sources/fault_handler/app_fault_monitor.o.d ${OBJECTDIR}/sources/fault_handler/drivers/drv_fault_handler.o.d ${OBJECTDIR}/sources/fault_handler/drivers/fdrv_TrapHandler.o.d ${OBJECTDIR}/sources/lcd/app_lcd.o.d ${OBJECTDIR}/sources/lcd/devices/dev_lcd.o.d ${OBJECTDIR}/sources/lcd/drivers/drv_lcd_interface.o.d ${OBJECTDIR}/sources/led/app_led.o.d ${OBJECTDIR}/sources/pwr_control/app_power_control.o.d ${OBJECTDIR}/sources/pwr_control/app_power_control_isr.o.d ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_adc.o.d ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_dac.o.d ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.o.d ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.o.d ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_converter.o.d ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_opstates.o.d ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_pconfig.o.d ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_substates.o.d ${OBJECTDIR}/sources/pwr_control/drivers/v_loop.o.d ${OBJECTDIR}/sources/pwr_control/drivers/v_loop_asm.o.d ${OBJECTDIR}/sources/switch/app_switch.o.d ${OBJECTDIR}/sources/switch/drivers/drv_switch.o.d ${OBJECTDIR}/sources/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/sources/common/p33c_pral/p33c_pwm.o ${OBJECTDIR}/sources/common/p33c_pral/p33c_gpio.o ${OBJECTDIR}/sources/common/p33c_pral/p33c_dsp.o ${OBJECTDIR}/sources/common/p33c_pral/p33c_dac.o ${OBJECTDIR}/sources/config/init/init_fosc.o ${OBJECTDIR}/sources/config/init/init_gpio.o ${OBJECTDIR}/sources/config/init/init_timer1.o ${OBJECTDIR}/sources/config/init/init_dsp.o ${OBJECTDIR}/sources/config/config_bits.o ${OBJECTDIR}/sources/fault_handler/app_fault_monitor.o ${OBJECTDIR}/sources/fault_handler/drivers/drv_fault_handler.o ${OBJECTDIR}/sources/fault_handler/drivers/fdrv_TrapHandler.o ${OBJECTDIR}/sources/lcd/app_lcd.o ${OBJECTDIR}/sources/lcd/devices/dev_lcd.o ${OBJECTDIR}/sources/lcd/drivers/drv_lcd_interface.o ${OBJECTDIR}/sources/led/app_led.o ${OBJECTDIR}/sources/pwr_control/app_power_control.o ${OBJECTDIR}/sources/pwr_control/app_power_control_isr.o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_adc.o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_dac.o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_converter.o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_opstates.o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_pconfig.o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_substates.o ${OBJECTDIR}/sources/pwr_control/drivers/v_loop.o ${OBJECTDIR}/sources/pwr_control/drivers/v_loop_asm.o ${OBJECTDIR}/sources/switch/app_switch.o ${OBJECTDIR}/sources/switch/drivers/drv_switch.o ${OBJECTDIR}/sources/main.o

# Source Files
SOURCEFILES=sources/common/p33c_pral/p33c_pwm.c sources/common/p33c_pral/p33c_gpio.c sources/common/p33c_pral/p33c_dsp.c sources/common/p33c_pral/p33c_dac.c sources/config/init/init_fosc.c sources/config/init/init_gpio.c sources/config/init/init_timer1.c sources/config/init/init_dsp.c sources/config/config_bits.c sources/fault_handler/app_fault_monitor.c sources/fault_handler/drivers/drv_fault_handler.c sources/fault_handler/drivers/fdrv_TrapHandler.c sources/lcd/app_lcd.c sources/lcd/devices/dev_lcd.c sources/lcd/drivers/drv_lcd_interface.c sources/led/app_led.c sources/pwr_control/app_power_control.c sources/pwr_control/app_power_control_isr.c sources/pwr_control/devices/templates/dev_buck_ptemp_adc.c sources/pwr_control/devices/templates/dev_buck_ptemp_dac.c sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.c sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.c sources/pwr_control/devices/dev_buck_converter.c sources/pwr_control/devices/dev_buck_opstates.c sources/pwr_control/devices/dev_buck_pconfig.c sources/pwr_control/devices/dev_buck_substates.c sources/pwr_control/drivers/v_loop.c sources/pwr_control/drivers/v_loop_asm.s sources/switch/app_switch.c sources/switch/drivers/drv_switch.c sources/main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-DPSK3_BUCK.mk dist/${CND_CONF}/${IMAGE_TYPE}/dpsk_vmc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33CK256MP505
MP_LINKER_FILE_OPTION=,--script=p33CK256MP505.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/sources/common/p33c_pral/p33c_pwm.o: sources/common/p33c_pral/p33c_pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/common/p33c_pral" 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_pwm.o.d 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/common/p33c_pral/p33c_pwm.c  -o ${OBJECTDIR}/sources/common/p33c_pral/p33c_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/common/p33c_pral/p33c_pwm.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/common/p33c_pral/p33c_pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/common/p33c_pral/p33c_gpio.o: sources/common/p33c_pral/p33c_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/common/p33c_pral" 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_gpio.o.d 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/common/p33c_pral/p33c_gpio.c  -o ${OBJECTDIR}/sources/common/p33c_pral/p33c_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/common/p33c_pral/p33c_gpio.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/common/p33c_pral/p33c_gpio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/common/p33c_pral/p33c_dsp.o: sources/common/p33c_pral/p33c_dsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/common/p33c_pral" 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_dsp.o.d 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_dsp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/common/p33c_pral/p33c_dsp.c  -o ${OBJECTDIR}/sources/common/p33c_pral/p33c_dsp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/common/p33c_pral/p33c_dsp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/common/p33c_pral/p33c_dsp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/common/p33c_pral/p33c_dac.o: sources/common/p33c_pral/p33c_dac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/common/p33c_pral" 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_dac.o.d 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_dac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/common/p33c_pral/p33c_dac.c  -o ${OBJECTDIR}/sources/common/p33c_pral/p33c_dac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/common/p33c_pral/p33c_dac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/common/p33c_pral/p33c_dac.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/config/init/init_fosc.o: sources/config/init/init_fosc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/config/init" 
	@${RM} ${OBJECTDIR}/sources/config/init/init_fosc.o.d 
	@${RM} ${OBJECTDIR}/sources/config/init/init_fosc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/config/init/init_fosc.c  -o ${OBJECTDIR}/sources/config/init/init_fosc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/config/init/init_fosc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/config/init/init_fosc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/config/init/init_gpio.o: sources/config/init/init_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/config/init" 
	@${RM} ${OBJECTDIR}/sources/config/init/init_gpio.o.d 
	@${RM} ${OBJECTDIR}/sources/config/init/init_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/config/init/init_gpio.c  -o ${OBJECTDIR}/sources/config/init/init_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/config/init/init_gpio.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/config/init/init_gpio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/config/init/init_timer1.o: sources/config/init/init_timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/config/init" 
	@${RM} ${OBJECTDIR}/sources/config/init/init_timer1.o.d 
	@${RM} ${OBJECTDIR}/sources/config/init/init_timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/config/init/init_timer1.c  -o ${OBJECTDIR}/sources/config/init/init_timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/config/init/init_timer1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/config/init/init_timer1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/config/init/init_dsp.o: sources/config/init/init_dsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/config/init" 
	@${RM} ${OBJECTDIR}/sources/config/init/init_dsp.o.d 
	@${RM} ${OBJECTDIR}/sources/config/init/init_dsp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/config/init/init_dsp.c  -o ${OBJECTDIR}/sources/config/init/init_dsp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/config/init/init_dsp.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/config/init/init_dsp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/config/config_bits.o: sources/config/config_bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/config" 
	@${RM} ${OBJECTDIR}/sources/config/config_bits.o.d 
	@${RM} ${OBJECTDIR}/sources/config/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/config/config_bits.c  -o ${OBJECTDIR}/sources/config/config_bits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/config/config_bits.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/config/config_bits.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/fault_handler/app_fault_monitor.o: sources/fault_handler/app_fault_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/fault_handler" 
	@${RM} ${OBJECTDIR}/sources/fault_handler/app_fault_monitor.o.d 
	@${RM} ${OBJECTDIR}/sources/fault_handler/app_fault_monitor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/fault_handler/app_fault_monitor.c  -o ${OBJECTDIR}/sources/fault_handler/app_fault_monitor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/fault_handler/app_fault_monitor.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/fault_handler/app_fault_monitor.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/fault_handler/drivers/drv_fault_handler.o: sources/fault_handler/drivers/drv_fault_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/fault_handler/drivers" 
	@${RM} ${OBJECTDIR}/sources/fault_handler/drivers/drv_fault_handler.o.d 
	@${RM} ${OBJECTDIR}/sources/fault_handler/drivers/drv_fault_handler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/fault_handler/drivers/drv_fault_handler.c  -o ${OBJECTDIR}/sources/fault_handler/drivers/drv_fault_handler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/fault_handler/drivers/drv_fault_handler.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/fault_handler/drivers/drv_fault_handler.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/fault_handler/drivers/fdrv_TrapHandler.o: sources/fault_handler/drivers/fdrv_TrapHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/fault_handler/drivers" 
	@${RM} ${OBJECTDIR}/sources/fault_handler/drivers/fdrv_TrapHandler.o.d 
	@${RM} ${OBJECTDIR}/sources/fault_handler/drivers/fdrv_TrapHandler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/fault_handler/drivers/fdrv_TrapHandler.c  -o ${OBJECTDIR}/sources/fault_handler/drivers/fdrv_TrapHandler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/fault_handler/drivers/fdrv_TrapHandler.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/fault_handler/drivers/fdrv_TrapHandler.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/lcd/app_lcd.o: sources/lcd/app_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/lcd" 
	@${RM} ${OBJECTDIR}/sources/lcd/app_lcd.o.d 
	@${RM} ${OBJECTDIR}/sources/lcd/app_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/lcd/app_lcd.c  -o ${OBJECTDIR}/sources/lcd/app_lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/lcd/app_lcd.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/lcd/app_lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/lcd/devices/dev_lcd.o: sources/lcd/devices/dev_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/lcd/devices" 
	@${RM} ${OBJECTDIR}/sources/lcd/devices/dev_lcd.o.d 
	@${RM} ${OBJECTDIR}/sources/lcd/devices/dev_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/lcd/devices/dev_lcd.c  -o ${OBJECTDIR}/sources/lcd/devices/dev_lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/lcd/devices/dev_lcd.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/lcd/devices/dev_lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/lcd/drivers/drv_lcd_interface.o: sources/lcd/drivers/drv_lcd_interface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/lcd/drivers" 
	@${RM} ${OBJECTDIR}/sources/lcd/drivers/drv_lcd_interface.o.d 
	@${RM} ${OBJECTDIR}/sources/lcd/drivers/drv_lcd_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/lcd/drivers/drv_lcd_interface.c  -o ${OBJECTDIR}/sources/lcd/drivers/drv_lcd_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/lcd/drivers/drv_lcd_interface.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/lcd/drivers/drv_lcd_interface.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/led/app_led.o: sources/led/app_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/led" 
	@${RM} ${OBJECTDIR}/sources/led/app_led.o.d 
	@${RM} ${OBJECTDIR}/sources/led/app_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/led/app_led.c  -o ${OBJECTDIR}/sources/led/app_led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/led/app_led.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/led/app_led.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/app_power_control.o: sources/pwr_control/app_power_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/app_power_control.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/app_power_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/app_power_control.c  -o ${OBJECTDIR}/sources/pwr_control/app_power_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/app_power_control.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/app_power_control.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/app_power_control_isr.o: sources/pwr_control/app_power_control_isr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/app_power_control_isr.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/app_power_control_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/app_power_control_isr.c  -o ${OBJECTDIR}/sources/pwr_control/app_power_control_isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/app_power_control_isr.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/app_power_control_isr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_adc.o: sources/pwr_control/devices/templates/dev_buck_ptemp_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices/templates" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_adc.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/templates/dev_buck_ptemp_adc.c  -o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_adc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_dac.o: sources/pwr_control/devices/templates/dev_buck_ptemp_dac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices/templates" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_dac.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_dac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/templates/dev_buck_ptemp_dac.c  -o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_dac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_dac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_dac.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.o: sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices/templates" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.c  -o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.o: sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices/templates" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.c  -o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/dev_buck_converter.o: sources/pwr_control/devices/dev_buck_converter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_converter.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_converter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/dev_buck_converter.c  -o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_converter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_converter.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_converter.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/dev_buck_opstates.o: sources/pwr_control/devices/dev_buck_opstates.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_opstates.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_opstates.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/dev_buck_opstates.c  -o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_opstates.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_opstates.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_opstates.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/dev_buck_pconfig.o: sources/pwr_control/devices/dev_buck_pconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_pconfig.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_pconfig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/dev_buck_pconfig.c  -o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_pconfig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_pconfig.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_pconfig.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/dev_buck_substates.o: sources/pwr_control/devices/dev_buck_substates.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_substates.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_substates.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/dev_buck_substates.c  -o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_substates.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_substates.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_substates.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/drivers/v_loop.o: sources/pwr_control/drivers/v_loop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/drivers" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/drivers/v_loop.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/drivers/v_loop.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/drivers/v_loop.c  -o ${OBJECTDIR}/sources/pwr_control/drivers/v_loop.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/drivers/v_loop.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/drivers/v_loop.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/switch/app_switch.o: sources/switch/app_switch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/switch" 
	@${RM} ${OBJECTDIR}/sources/switch/app_switch.o.d 
	@${RM} ${OBJECTDIR}/sources/switch/app_switch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/switch/app_switch.c  -o ${OBJECTDIR}/sources/switch/app_switch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/switch/app_switch.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/switch/app_switch.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/switch/drivers/drv_switch.o: sources/switch/drivers/drv_switch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/switch/drivers" 
	@${RM} ${OBJECTDIR}/sources/switch/drivers/drv_switch.o.d 
	@${RM} ${OBJECTDIR}/sources/switch/drivers/drv_switch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/switch/drivers/drv_switch.c  -o ${OBJECTDIR}/sources/switch/drivers/drv_switch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/switch/drivers/drv_switch.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/switch/drivers/drv_switch.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/main.o: sources/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources" 
	@${RM} ${OBJECTDIR}/sources/main.o.d 
	@${RM} ${OBJECTDIR}/sources/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/main.c  -o ${OBJECTDIR}/sources/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/sources/common/p33c_pral/p33c_pwm.o: sources/common/p33c_pral/p33c_pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/common/p33c_pral" 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_pwm.o.d 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/common/p33c_pral/p33c_pwm.c  -o ${OBJECTDIR}/sources/common/p33c_pral/p33c_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/common/p33c_pral/p33c_pwm.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/common/p33c_pral/p33c_pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/common/p33c_pral/p33c_gpio.o: sources/common/p33c_pral/p33c_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/common/p33c_pral" 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_gpio.o.d 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/common/p33c_pral/p33c_gpio.c  -o ${OBJECTDIR}/sources/common/p33c_pral/p33c_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/common/p33c_pral/p33c_gpio.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/common/p33c_pral/p33c_gpio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/common/p33c_pral/p33c_dsp.o: sources/common/p33c_pral/p33c_dsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/common/p33c_pral" 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_dsp.o.d 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_dsp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/common/p33c_pral/p33c_dsp.c  -o ${OBJECTDIR}/sources/common/p33c_pral/p33c_dsp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/common/p33c_pral/p33c_dsp.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/common/p33c_pral/p33c_dsp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/common/p33c_pral/p33c_dac.o: sources/common/p33c_pral/p33c_dac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/common/p33c_pral" 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_dac.o.d 
	@${RM} ${OBJECTDIR}/sources/common/p33c_pral/p33c_dac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/common/p33c_pral/p33c_dac.c  -o ${OBJECTDIR}/sources/common/p33c_pral/p33c_dac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/common/p33c_pral/p33c_dac.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/common/p33c_pral/p33c_dac.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/config/init/init_fosc.o: sources/config/init/init_fosc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/config/init" 
	@${RM} ${OBJECTDIR}/sources/config/init/init_fosc.o.d 
	@${RM} ${OBJECTDIR}/sources/config/init/init_fosc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/config/init/init_fosc.c  -o ${OBJECTDIR}/sources/config/init/init_fosc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/config/init/init_fosc.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/config/init/init_fosc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/config/init/init_gpio.o: sources/config/init/init_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/config/init" 
	@${RM} ${OBJECTDIR}/sources/config/init/init_gpio.o.d 
	@${RM} ${OBJECTDIR}/sources/config/init/init_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/config/init/init_gpio.c  -o ${OBJECTDIR}/sources/config/init/init_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/config/init/init_gpio.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/config/init/init_gpio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/config/init/init_timer1.o: sources/config/init/init_timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/config/init" 
	@${RM} ${OBJECTDIR}/sources/config/init/init_timer1.o.d 
	@${RM} ${OBJECTDIR}/sources/config/init/init_timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/config/init/init_timer1.c  -o ${OBJECTDIR}/sources/config/init/init_timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/config/init/init_timer1.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/config/init/init_timer1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/config/init/init_dsp.o: sources/config/init/init_dsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/config/init" 
	@${RM} ${OBJECTDIR}/sources/config/init/init_dsp.o.d 
	@${RM} ${OBJECTDIR}/sources/config/init/init_dsp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/config/init/init_dsp.c  -o ${OBJECTDIR}/sources/config/init/init_dsp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/config/init/init_dsp.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/config/init/init_dsp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/config/config_bits.o: sources/config/config_bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/config" 
	@${RM} ${OBJECTDIR}/sources/config/config_bits.o.d 
	@${RM} ${OBJECTDIR}/sources/config/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/config/config_bits.c  -o ${OBJECTDIR}/sources/config/config_bits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/config/config_bits.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/config/config_bits.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/fault_handler/app_fault_monitor.o: sources/fault_handler/app_fault_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/fault_handler" 
	@${RM} ${OBJECTDIR}/sources/fault_handler/app_fault_monitor.o.d 
	@${RM} ${OBJECTDIR}/sources/fault_handler/app_fault_monitor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/fault_handler/app_fault_monitor.c  -o ${OBJECTDIR}/sources/fault_handler/app_fault_monitor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/fault_handler/app_fault_monitor.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/fault_handler/app_fault_monitor.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/fault_handler/drivers/drv_fault_handler.o: sources/fault_handler/drivers/drv_fault_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/fault_handler/drivers" 
	@${RM} ${OBJECTDIR}/sources/fault_handler/drivers/drv_fault_handler.o.d 
	@${RM} ${OBJECTDIR}/sources/fault_handler/drivers/drv_fault_handler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/fault_handler/drivers/drv_fault_handler.c  -o ${OBJECTDIR}/sources/fault_handler/drivers/drv_fault_handler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/fault_handler/drivers/drv_fault_handler.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/fault_handler/drivers/drv_fault_handler.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/fault_handler/drivers/fdrv_TrapHandler.o: sources/fault_handler/drivers/fdrv_TrapHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/fault_handler/drivers" 
	@${RM} ${OBJECTDIR}/sources/fault_handler/drivers/fdrv_TrapHandler.o.d 
	@${RM} ${OBJECTDIR}/sources/fault_handler/drivers/fdrv_TrapHandler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/fault_handler/drivers/fdrv_TrapHandler.c  -o ${OBJECTDIR}/sources/fault_handler/drivers/fdrv_TrapHandler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/fault_handler/drivers/fdrv_TrapHandler.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/fault_handler/drivers/fdrv_TrapHandler.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/lcd/app_lcd.o: sources/lcd/app_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/lcd" 
	@${RM} ${OBJECTDIR}/sources/lcd/app_lcd.o.d 
	@${RM} ${OBJECTDIR}/sources/lcd/app_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/lcd/app_lcd.c  -o ${OBJECTDIR}/sources/lcd/app_lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/lcd/app_lcd.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/lcd/app_lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/lcd/devices/dev_lcd.o: sources/lcd/devices/dev_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/lcd/devices" 
	@${RM} ${OBJECTDIR}/sources/lcd/devices/dev_lcd.o.d 
	@${RM} ${OBJECTDIR}/sources/lcd/devices/dev_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/lcd/devices/dev_lcd.c  -o ${OBJECTDIR}/sources/lcd/devices/dev_lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/lcd/devices/dev_lcd.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/lcd/devices/dev_lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/lcd/drivers/drv_lcd_interface.o: sources/lcd/drivers/drv_lcd_interface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/lcd/drivers" 
	@${RM} ${OBJECTDIR}/sources/lcd/drivers/drv_lcd_interface.o.d 
	@${RM} ${OBJECTDIR}/sources/lcd/drivers/drv_lcd_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/lcd/drivers/drv_lcd_interface.c  -o ${OBJECTDIR}/sources/lcd/drivers/drv_lcd_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/lcd/drivers/drv_lcd_interface.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/lcd/drivers/drv_lcd_interface.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/led/app_led.o: sources/led/app_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/led" 
	@${RM} ${OBJECTDIR}/sources/led/app_led.o.d 
	@${RM} ${OBJECTDIR}/sources/led/app_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/led/app_led.c  -o ${OBJECTDIR}/sources/led/app_led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/led/app_led.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/led/app_led.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/app_power_control.o: sources/pwr_control/app_power_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/app_power_control.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/app_power_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/app_power_control.c  -o ${OBJECTDIR}/sources/pwr_control/app_power_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/app_power_control.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/app_power_control.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/app_power_control_isr.o: sources/pwr_control/app_power_control_isr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/app_power_control_isr.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/app_power_control_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/app_power_control_isr.c  -o ${OBJECTDIR}/sources/pwr_control/app_power_control_isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/app_power_control_isr.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/app_power_control_isr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_adc.o: sources/pwr_control/devices/templates/dev_buck_ptemp_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices/templates" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_adc.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/templates/dev_buck_ptemp_adc.c  -o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_adc.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_dac.o: sources/pwr_control/devices/templates/dev_buck_ptemp_dac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices/templates" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_dac.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_dac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/templates/dev_buck_ptemp_dac.c  -o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_dac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_dac.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_dac.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.o: sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices/templates" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.c  -o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.o: sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices/templates" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.c  -o ${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/templates/dev_buck_ptemp_aux_pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/dev_buck_converter.o: sources/pwr_control/devices/dev_buck_converter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_converter.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_converter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/dev_buck_converter.c  -o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_converter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_converter.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_converter.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/dev_buck_opstates.o: sources/pwr_control/devices/dev_buck_opstates.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_opstates.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_opstates.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/dev_buck_opstates.c  -o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_opstates.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_opstates.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_opstates.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/dev_buck_pconfig.o: sources/pwr_control/devices/dev_buck_pconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_pconfig.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_pconfig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/dev_buck_pconfig.c  -o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_pconfig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_pconfig.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_pconfig.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/devices/dev_buck_substates.o: sources/pwr_control/devices/dev_buck_substates.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/devices" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_substates.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_substates.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/devices/dev_buck_substates.c  -o ${OBJECTDIR}/sources/pwr_control/devices/dev_buck_substates.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_substates.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/devices/dev_buck_substates.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/pwr_control/drivers/v_loop.o: sources/pwr_control/drivers/v_loop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/drivers" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/drivers/v_loop.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/drivers/v_loop.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/pwr_control/drivers/v_loop.c  -o ${OBJECTDIR}/sources/pwr_control/drivers/v_loop.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/pwr_control/drivers/v_loop.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/drivers/v_loop.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/switch/app_switch.o: sources/switch/app_switch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/switch" 
	@${RM} ${OBJECTDIR}/sources/switch/app_switch.o.d 
	@${RM} ${OBJECTDIR}/sources/switch/app_switch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/switch/app_switch.c  -o ${OBJECTDIR}/sources/switch/app_switch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/switch/app_switch.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/switch/app_switch.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/switch/drivers/drv_switch.o: sources/switch/drivers/drv_switch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/switch/drivers" 
	@${RM} ${OBJECTDIR}/sources/switch/drivers/drv_switch.o.d 
	@${RM} ${OBJECTDIR}/sources/switch/drivers/drv_switch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/switch/drivers/drv_switch.c  -o ${OBJECTDIR}/sources/switch/drivers/drv_switch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/switch/drivers/drv_switch.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/switch/drivers/drv_switch.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sources/main.o: sources/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources" 
	@${RM} ${OBJECTDIR}/sources/main.o.d 
	@${RM} ${OBJECTDIR}/sources/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sources/main.c  -o ${OBJECTDIR}/sources/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sources/main.o.d"      -mno-eds-warn  -g -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -msmall-code -msmall-data -O1 -I"sources" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/sources/pwr_control/drivers/v_loop_asm.o: sources/pwr_control/drivers/v_loop_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/drivers" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/drivers/v_loop_asm.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/drivers/v_loop_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  sources/pwr_control/drivers/v_loop_asm.s  -o ${OBJECTDIR}/sources/pwr_control/drivers/v_loop_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  -I"sources/common/p33c_pral" -Wa,-MD,"${OBJECTDIR}/sources/pwr_control/drivers/v_loop_asm.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/drivers/v_loop_asm.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/sources/pwr_control/drivers/v_loop_asm.o: sources/pwr_control/drivers/v_loop_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sources/pwr_control/drivers" 
	@${RM} ${OBJECTDIR}/sources/pwr_control/drivers/v_loop_asm.o.d 
	@${RM} ${OBJECTDIR}/sources/pwr_control/drivers/v_loop_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  sources/pwr_control/drivers/v_loop_asm.s  -o ${OBJECTDIR}/sources/pwr_control/drivers/v_loop_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  -I"sources/common/p33c_pral" -Wa,-MD,"${OBJECTDIR}/sources/pwr_control/drivers/v_loop_asm.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/sources/pwr_control/drivers/v_loop_asm.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/dpsk_vmc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/dpsk_vmc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral"  -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,--preserve-all,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/dpsk_vmc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/dpsk_vmc.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -D__DPSK3_R30__ -DXPRJ_DPSK3_BUCK=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"sources/common/p33c_pral" -Wl,--local-stack,--preserve-all,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/dpsk_vmc.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/DPSK3_BUCK
	${RM} -r dist/DPSK3_BUCK

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
