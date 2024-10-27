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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab0Roach.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab0Roach.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/IO_Ports.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c C:/Users/19722/Desktop/Mechatronics/Lab0Roach/EventChecker.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/948890089/AD.o ${OBJECTDIR}/_ext/948890089/BOARD.o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o ${OBJECTDIR}/_ext/948890089/ES_Framework.o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o ${OBJECTDIR}/_ext/948890089/ES_PostList.o ${OBJECTDIR}/_ext/948890089/ES_Queue.o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o ${OBJECTDIR}/_ext/948890089/ES_Timers.o ${OBJECTDIR}/_ext/948890089/IO_Ports.o ${OBJECTDIR}/_ext/948890089/LED.o ${OBJECTDIR}/_ext/948890089/RC_Servo.o ${OBJECTDIR}/_ext/948890089/pwm.o ${OBJECTDIR}/_ext/948890089/roach.o ${OBJECTDIR}/_ext/948890089/serial.o ${OBJECTDIR}/_ext/948890089/timers.o ${OBJECTDIR}/_ext/1887981173/EventChecker.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/948890089/AD.o.d ${OBJECTDIR}/_ext/948890089/BOARD.o.d ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/948890089/ES_Framework.o.d ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/948890089/ES_PostList.o.d ${OBJECTDIR}/_ext/948890089/ES_Queue.o.d ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d ${OBJECTDIR}/_ext/948890089/ES_Timers.o.d ${OBJECTDIR}/_ext/948890089/IO_Ports.o.d ${OBJECTDIR}/_ext/948890089/LED.o.d ${OBJECTDIR}/_ext/948890089/RC_Servo.o.d ${OBJECTDIR}/_ext/948890089/pwm.o.d ${OBJECTDIR}/_ext/948890089/roach.o.d ${OBJECTDIR}/_ext/948890089/serial.o.d ${OBJECTDIR}/_ext/948890089/timers.o.d ${OBJECTDIR}/_ext/1887981173/EventChecker.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/948890089/AD.o ${OBJECTDIR}/_ext/948890089/BOARD.o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o ${OBJECTDIR}/_ext/948890089/ES_Framework.o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o ${OBJECTDIR}/_ext/948890089/ES_PostList.o ${OBJECTDIR}/_ext/948890089/ES_Queue.o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o ${OBJECTDIR}/_ext/948890089/ES_Timers.o ${OBJECTDIR}/_ext/948890089/IO_Ports.o ${OBJECTDIR}/_ext/948890089/LED.o ${OBJECTDIR}/_ext/948890089/RC_Servo.o ${OBJECTDIR}/_ext/948890089/pwm.o ${OBJECTDIR}/_ext/948890089/roach.o ${OBJECTDIR}/_ext/948890089/serial.o ${OBJECTDIR}/_ext/948890089/timers.o ${OBJECTDIR}/_ext/1887981173/EventChecker.o

# Source Files
SOURCEFILES=C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/IO_Ports.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c C:/Users/19722/Desktop/Mechatronics/Lab0Roach/EventChecker.c



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

# The following macros may be used in the pre and post step lines
_/_=\\
ShExtension=.bat
Device=PIC32MX320F128H
ProjectDir="C:\Users\19722\Desktop\Mechatronics\Lab0Roach"
ProjectName=Lab0_Roach
ConfName=default
ImagePath="${DISTDIR}\Lab0Roach.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
ImageName="Lab0Roach.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  .pre ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Lab0Roach.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="C:\Users\19722\Desktop\Mechatronics\ECE118\bootloader320.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/948890089/AD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c  .generated_files/flags/default/4049ab3d210d86ffda10bcbac91dd4b4cefdab4f .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/AD.o.d" -o ${OBJECTDIR}/_ext/948890089/AD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/BOARD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c  .generated_files/flags/default/9fc821ecca53e6bc6d4f65069e9612e575bfe6e .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/BOARD.o.d" -o ${OBJECTDIR}/_ext/948890089/BOARD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/c1a8688fe6250edb5850fe40756130f6c34dbf67 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Framework.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c  .generated_files/flags/default/bb5fd45b10121a885e2b259395b30f079f29d2a4 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Framework.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/f4f7a0134314c6e07e47cccca43177c8165f9834 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_PostList.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c  .generated_files/flags/default/3d7eac3944c2f89a21a0107e1a135abab9049cfd .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_PostList.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Queue.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c  .generated_files/flags/default/6e82ecf64338b9e28346ed09d9ff3beb4a024a25 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Queue.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_TattleTale.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/207020d0e3133c17dab9116c25ef843f2e6e10fb .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c  .generated_files/flags/default/f28b8f1d794b7b47ee1f4a47c4afb4a1aa34062a .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/IO_Ports.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/IO_Ports.c  .generated_files/flags/default/2713ab2c5e224b54a24df0d7b4d74dd9bfa51a45 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/948890089/IO_Ports.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/LED.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c  .generated_files/flags/default/8ccb9f3bae03610cd35de88a7148d338cd06c1cb .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/LED.o.d" -o ${OBJECTDIR}/_ext/948890089/LED.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/RC_Servo.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c  .generated_files/flags/default/1c06eb121a4f7706dc6bdbde522f5bfb48181ed4 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/948890089/RC_Servo.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/pwm.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c  .generated_files/flags/default/5615cfb1a319fb5ed9c7bae5f4d79c7fafbea1a8 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/pwm.o.d" -o ${OBJECTDIR}/_ext/948890089/pwm.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/roach.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c  .generated_files/flags/default/a61f9a01b9a87511d73215434450c21089398a39 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/roach.o.d" -o ${OBJECTDIR}/_ext/948890089/roach.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/serial.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c  .generated_files/flags/default/d07c9247ebdd5e74a28e8064c7eb63e9a3bec064 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/serial.o.d" -o ${OBJECTDIR}/_ext/948890089/serial.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c  .generated_files/flags/default/951e4757f04317859bc526238ae572640a32b26a .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/timers.o.d" -o ${OBJECTDIR}/_ext/948890089/timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1887981173/EventChecker.o: C:/Users/19722/Desktop/Mechatronics/Lab0Roach/EventChecker.c  .generated_files/flags/default/9abb0aa0952d701c7956d6642670b03a30c132fc .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1887981173" 
	@${RM} ${OBJECTDIR}/_ext/1887981173/EventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1887981173/EventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1887981173/EventChecker.o.d" -o ${OBJECTDIR}/_ext/1887981173/EventChecker.o C:/Users/19722/Desktop/Mechatronics/Lab0Roach/EventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/948890089/AD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c  .generated_files/flags/default/80f3d5fc4a089a07309a8531b2fc35e9056ac288 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/AD.o.d" -o ${OBJECTDIR}/_ext/948890089/AD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/BOARD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c  .generated_files/flags/default/5f862068d432fd41921b59729e2204e2771a2423 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/BOARD.o.d" -o ${OBJECTDIR}/_ext/948890089/BOARD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/d9a1bb255b4b21d5b8a1381a6e5b6c45c0ed0034 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Framework.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c  .generated_files/flags/default/860d4d7977fe188e74fdebe112cd078950bbaaa6 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Framework.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/723ad20f7fc23dccaeb8b5ea3e3237c1636751a4 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_PostList.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c  .generated_files/flags/default/7a1782d07856d005d497ff2c4d33da2043e4a847 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_PostList.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Queue.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c  .generated_files/flags/default/3a72a36a18647581c94194a8882b66c9d0828e8 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Queue.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_TattleTale.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/af93b37f7af79296565dd808192ef8610baa3a0d .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c  .generated_files/flags/default/61a53effe860cc755fd99bb07fca0f04b413b6b5 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/IO_Ports.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/IO_Ports.c  .generated_files/flags/default/3cdf40639e67bd8a26f45e7ff11bfe14df24e6af .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/948890089/IO_Ports.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/LED.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c  .generated_files/flags/default/75fd2b9d36e7438ed4c21507bcd88da1071e0545 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/LED.o.d" -o ${OBJECTDIR}/_ext/948890089/LED.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/RC_Servo.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c  .generated_files/flags/default/2ea6ce3971f4d576ef17eb9ddeb73014744a6ddb .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/948890089/RC_Servo.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/pwm.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c  .generated_files/flags/default/cb920c113341a54356f2e3ef6e761bc65ee01ce2 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/pwm.o.d" -o ${OBJECTDIR}/_ext/948890089/pwm.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/roach.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c  .generated_files/flags/default/98011b9e8c44af22a626ce75f9d52df9c022212e .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/roach.o.d" -o ${OBJECTDIR}/_ext/948890089/roach.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/serial.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c  .generated_files/flags/default/fb13e02c7520bb7d86c233b617c25625b3c15435 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/serial.o.d" -o ${OBJECTDIR}/_ext/948890089/serial.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c  .generated_files/flags/default/48542cd48abe23055df533d25d788b97add7da78 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/timers.o.d" -o ${OBJECTDIR}/_ext/948890089/timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1887981173/EventChecker.o: C:/Users/19722/Desktop/Mechatronics/Lab0Roach/EventChecker.c  .generated_files/flags/default/13f3baf5a48c88bc74db93ba21b707efbcd65b36 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1887981173" 
	@${RM} ${OBJECTDIR}/_ext/1887981173/EventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1887981173/EventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DEVENTCHECKER_TEST -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1887981173/EventChecker.o.d" -o ${OBJECTDIR}/_ext/1887981173/EventChecker.o C:/Users/19722/Desktop/Mechatronics/Lab0Roach/EventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Lab0Roach.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/Users/19722/Desktop/Mechatronics/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0Roach.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Lab0Roach.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/Users/19722/Desktop/Mechatronics/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0Roach.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/Lab0Roach.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif

.pre:
	@echo "--------------------------------------"
	@echo "User defined pre-build step: [python C:\Users\19722\Desktop\Mechatronics\ECE118\scripts\Enum_To_String.py]"
	@python C:\Users\19722\Desktop\Mechatronics\ECE118\scripts\Enum_To_String.py
	@echo "--------------------------------------"

# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
