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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic16f1454_usb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic16f1454_usb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=buttons.c leds.c ../../microchip/mla/v2016_04_27/framework/usb/src/usb_device.c ../../microchip/mla/v2016_04_27/framework/usb/src/usb_device_cdc.c main.c system.c app_device_cdc_basic.c app_led_usb_status.c usb_events.c usb_descriptors.c serial.c pic16f145x_usb.c gpio.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/buttons.p1 ${OBJECTDIR}/leds.p1 ${OBJECTDIR}/_ext/786922599/usb_device.p1 ${OBJECTDIR}/_ext/786922599/usb_device_cdc.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/system.p1 ${OBJECTDIR}/app_device_cdc_basic.p1 ${OBJECTDIR}/app_led_usb_status.p1 ${OBJECTDIR}/usb_events.p1 ${OBJECTDIR}/usb_descriptors.p1 ${OBJECTDIR}/serial.p1 ${OBJECTDIR}/pic16f145x_usb.p1 ${OBJECTDIR}/gpio.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/buttons.p1.d ${OBJECTDIR}/leds.p1.d ${OBJECTDIR}/_ext/786922599/usb_device.p1.d ${OBJECTDIR}/_ext/786922599/usb_device_cdc.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/system.p1.d ${OBJECTDIR}/app_device_cdc_basic.p1.d ${OBJECTDIR}/app_led_usb_status.p1.d ${OBJECTDIR}/usb_events.p1.d ${OBJECTDIR}/usb_descriptors.p1.d ${OBJECTDIR}/serial.p1.d ${OBJECTDIR}/pic16f145x_usb.p1.d ${OBJECTDIR}/gpio.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/buttons.p1 ${OBJECTDIR}/leds.p1 ${OBJECTDIR}/_ext/786922599/usb_device.p1 ${OBJECTDIR}/_ext/786922599/usb_device_cdc.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/system.p1 ${OBJECTDIR}/app_device_cdc_basic.p1 ${OBJECTDIR}/app_led_usb_status.p1 ${OBJECTDIR}/usb_events.p1 ${OBJECTDIR}/usb_descriptors.p1 ${OBJECTDIR}/serial.p1 ${OBJECTDIR}/pic16f145x_usb.p1 ${OBJECTDIR}/gpio.p1

# Source Files
SOURCEFILES=buttons.c leds.c ../../microchip/mla/v2016_04_27/framework/usb/src/usb_device.c ../../microchip/mla/v2016_04_27/framework/usb/src/usb_device_cdc.c main.c system.c app_device_cdc_basic.c app_led_usb_status.c usb_events.c usb_descriptors.c serial.c pic16f145x_usb.c gpio.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/pic16f1454_usb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F1454
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/buttons.p1: buttons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/buttons.p1.d 
	@${RM} ${OBJECTDIR}/buttons.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/buttons.p1  buttons.c 
	@-${MV} ${OBJECTDIR}/buttons.d ${OBJECTDIR}/buttons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/buttons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/leds.p1: leds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/leds.p1.d 
	@${RM} ${OBJECTDIR}/leds.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/leds.p1  leds.c 
	@-${MV} ${OBJECTDIR}/leds.d ${OBJECTDIR}/leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/786922599/usb_device.p1: ../../microchip/mla/v2016_04_27/framework/usb/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/786922599" 
	@${RM} ${OBJECTDIR}/_ext/786922599/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/786922599/usb_device.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/786922599/usb_device.p1  ../../microchip/mla/v2016_04_27/framework/usb/src/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/786922599/usb_device.d ${OBJECTDIR}/_ext/786922599/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/786922599/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/786922599/usb_device_cdc.p1: ../../microchip/mla/v2016_04_27/framework/usb/src/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/786922599" 
	@${RM} ${OBJECTDIR}/_ext/786922599/usb_device_cdc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/786922599/usb_device_cdc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/786922599/usb_device_cdc.p1  ../../microchip/mla/v2016_04_27/framework/usb/src/usb_device_cdc.c 
	@-${MV} ${OBJECTDIR}/_ext/786922599/usb_device_cdc.d ${OBJECTDIR}/_ext/786922599/usb_device_cdc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/786922599/usb_device_cdc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/system.p1: system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/system.p1.d 
	@${RM} ${OBJECTDIR}/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/system.p1  system.c 
	@-${MV} ${OBJECTDIR}/system.d ${OBJECTDIR}/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app_device_cdc_basic.p1: app_device_cdc_basic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_device_cdc_basic.p1.d 
	@${RM} ${OBJECTDIR}/app_device_cdc_basic.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/app_device_cdc_basic.p1  app_device_cdc_basic.c 
	@-${MV} ${OBJECTDIR}/app_device_cdc_basic.d ${OBJECTDIR}/app_device_cdc_basic.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app_device_cdc_basic.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app_led_usb_status.p1: app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_led_usb_status.p1.d 
	@${RM} ${OBJECTDIR}/app_led_usb_status.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/app_led_usb_status.p1  app_led_usb_status.c 
	@-${MV} ${OBJECTDIR}/app_led_usb_status.d ${OBJECTDIR}/app_led_usb_status.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app_led_usb_status.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/usb_events.p1: usb_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_events.p1.d 
	@${RM} ${OBJECTDIR}/usb_events.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/usb_events.p1  usb_events.c 
	@-${MV} ${OBJECTDIR}/usb_events.d ${OBJECTDIR}/usb_events.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/usb_events.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/usb_descriptors.p1: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/usb_descriptors.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/usb_descriptors.p1  usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/usb_descriptors.d ${OBJECTDIR}/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/serial.p1: serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial.p1.d 
	@${RM} ${OBJECTDIR}/serial.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/serial.p1  serial.c 
	@-${MV} ${OBJECTDIR}/serial.d ${OBJECTDIR}/serial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/serial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pic16f145x_usb.p1: pic16f145x_usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pic16f145x_usb.p1.d 
	@${RM} ${OBJECTDIR}/pic16f145x_usb.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/pic16f145x_usb.p1  pic16f145x_usb.c 
	@-${MV} ${OBJECTDIR}/pic16f145x_usb.d ${OBJECTDIR}/pic16f145x_usb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pic16f145x_usb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/gpio.p1: gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/gpio.p1.d 
	@${RM} ${OBJECTDIR}/gpio.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/gpio.p1  gpio.c 
	@-${MV} ${OBJECTDIR}/gpio.d ${OBJECTDIR}/gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/buttons.p1: buttons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/buttons.p1.d 
	@${RM} ${OBJECTDIR}/buttons.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/buttons.p1  buttons.c 
	@-${MV} ${OBJECTDIR}/buttons.d ${OBJECTDIR}/buttons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/buttons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/leds.p1: leds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/leds.p1.d 
	@${RM} ${OBJECTDIR}/leds.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/leds.p1  leds.c 
	@-${MV} ${OBJECTDIR}/leds.d ${OBJECTDIR}/leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/786922599/usb_device.p1: ../../microchip/mla/v2016_04_27/framework/usb/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/786922599" 
	@${RM} ${OBJECTDIR}/_ext/786922599/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/786922599/usb_device.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/786922599/usb_device.p1  ../../microchip/mla/v2016_04_27/framework/usb/src/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/786922599/usb_device.d ${OBJECTDIR}/_ext/786922599/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/786922599/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/786922599/usb_device_cdc.p1: ../../microchip/mla/v2016_04_27/framework/usb/src/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/786922599" 
	@${RM} ${OBJECTDIR}/_ext/786922599/usb_device_cdc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/786922599/usb_device_cdc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/786922599/usb_device_cdc.p1  ../../microchip/mla/v2016_04_27/framework/usb/src/usb_device_cdc.c 
	@-${MV} ${OBJECTDIR}/_ext/786922599/usb_device_cdc.d ${OBJECTDIR}/_ext/786922599/usb_device_cdc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/786922599/usb_device_cdc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/system.p1: system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/system.p1.d 
	@${RM} ${OBJECTDIR}/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/system.p1  system.c 
	@-${MV} ${OBJECTDIR}/system.d ${OBJECTDIR}/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app_device_cdc_basic.p1: app_device_cdc_basic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_device_cdc_basic.p1.d 
	@${RM} ${OBJECTDIR}/app_device_cdc_basic.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/app_device_cdc_basic.p1  app_device_cdc_basic.c 
	@-${MV} ${OBJECTDIR}/app_device_cdc_basic.d ${OBJECTDIR}/app_device_cdc_basic.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app_device_cdc_basic.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app_led_usb_status.p1: app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_led_usb_status.p1.d 
	@${RM} ${OBJECTDIR}/app_led_usb_status.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/app_led_usb_status.p1  app_led_usb_status.c 
	@-${MV} ${OBJECTDIR}/app_led_usb_status.d ${OBJECTDIR}/app_led_usb_status.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app_led_usb_status.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/usb_events.p1: usb_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_events.p1.d 
	@${RM} ${OBJECTDIR}/usb_events.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/usb_events.p1  usb_events.c 
	@-${MV} ${OBJECTDIR}/usb_events.d ${OBJECTDIR}/usb_events.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/usb_events.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/usb_descriptors.p1: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/usb_descriptors.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/usb_descriptors.p1  usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/usb_descriptors.d ${OBJECTDIR}/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/serial.p1: serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial.p1.d 
	@${RM} ${OBJECTDIR}/serial.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/serial.p1  serial.c 
	@-${MV} ${OBJECTDIR}/serial.d ${OBJECTDIR}/serial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/serial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pic16f145x_usb.p1: pic16f145x_usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pic16f145x_usb.p1.d 
	@${RM} ${OBJECTDIR}/pic16f145x_usb.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/pic16f145x_usb.p1  pic16f145x_usb.c 
	@-${MV} ${OBJECTDIR}/pic16f145x_usb.d ${OBJECTDIR}/pic16f145x_usb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pic16f145x_usb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/gpio.p1: gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/gpio.p1.d 
	@${RM} ${OBJECTDIR}/gpio.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/gpio.p1  gpio.c 
	@-${MV} ${OBJECTDIR}/gpio.d ${OBJECTDIR}/gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic16f1454_usb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/pic16f1454_usb.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/pic16f1454_usb.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/pic16f1454_usb.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic16f1454_usb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/pic16f1454_usb.X.${IMAGE_TYPE}.map  --double=24 --float=24 --rom=default,-0-1FF,-1F7F-1F7F --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"." -I"../../microchip/mla/v2016_04_27/framework/usb/inc" -I"../../microchip/mla/v2016_04_27/framework/usb/src" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x200 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/pic16f1454_usb.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
