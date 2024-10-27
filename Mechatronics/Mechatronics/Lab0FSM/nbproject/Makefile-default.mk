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
FINAL_IMAGE=${DISTDIR}/Lab0FSM.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab0FSM.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateFSM.c C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateES_Main.c C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateEventChecker.c C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateService.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/948890089/AD.o ${OBJECTDIR}/_ext/948890089/BOARD.o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o ${OBJECTDIR}/_ext/948890089/ES_Framework.o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o ${OBJECTDIR}/_ext/948890089/ES_PostList.o ${OBJECTDIR}/_ext/948890089/ES_Queue.o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o ${OBJECTDIR}/_ext/948890089/ES_Timers.o ${OBJECTDIR}/_ext/948890089/RC_Servo.o ${OBJECTDIR}/_ext/948890089/pwm.o ${OBJECTDIR}/_ext/948890089/roach.o ${OBJECTDIR}/_ext/948890089/serial.o ${OBJECTDIR}/_ext/948890089/timers.o ${OBJECTDIR}/_ext/556706420/TemplateFSM.o ${OBJECTDIR}/_ext/556706420/TemplateES_Main.o ${OBJECTDIR}/_ext/556706420/TemplateEventChecker.o ${OBJECTDIR}/_ext/556706420/TemplateService.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/948890089/AD.o.d ${OBJECTDIR}/_ext/948890089/BOARD.o.d ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/948890089/ES_Framework.o.d ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/948890089/ES_PostList.o.d ${OBJECTDIR}/_ext/948890089/ES_Queue.o.d ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d ${OBJECTDIR}/_ext/948890089/ES_Timers.o.d ${OBJECTDIR}/_ext/948890089/RC_Servo.o.d ${OBJECTDIR}/_ext/948890089/pwm.o.d ${OBJECTDIR}/_ext/948890089/roach.o.d ${OBJECTDIR}/_ext/948890089/serial.o.d ${OBJECTDIR}/_ext/948890089/timers.o.d ${OBJECTDIR}/_ext/556706420/TemplateFSM.o.d ${OBJECTDIR}/_ext/556706420/TemplateES_Main.o.d ${OBJECTDIR}/_ext/556706420/TemplateEventChecker.o.d ${OBJECTDIR}/_ext/556706420/TemplateService.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/948890089/AD.o ${OBJECTDIR}/_ext/948890089/BOARD.o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o ${OBJECTDIR}/_ext/948890089/ES_Framework.o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o ${OBJECTDIR}/_ext/948890089/ES_PostList.o ${OBJECTDIR}/_ext/948890089/ES_Queue.o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o ${OBJECTDIR}/_ext/948890089/ES_Timers.o ${OBJECTDIR}/_ext/948890089/RC_Servo.o ${OBJECTDIR}/_ext/948890089/pwm.o ${OBJECTDIR}/_ext/948890089/roach.o ${OBJECTDIR}/_ext/948890089/serial.o ${OBJECTDIR}/_ext/948890089/timers.o ${OBJECTDIR}/_ext/556706420/TemplateFSM.o ${OBJECTDIR}/_ext/556706420/TemplateES_Main.o ${OBJECTDIR}/_ext/556706420/TemplateEventChecker.o ${OBJECTDIR}/_ext/556706420/TemplateService.o

# Source Files
SOURCEFILES=C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateFSM.c C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateES_Main.c C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateEventChecker.c C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateService.c



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
ProjectDir="C:\Users\19722\Desktop\Mechatronics\Lab0FSM"
ProjectName=Lab0FSM
ConfName=default
ImagePath="${DISTDIR}\Lab0FSM.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
ImageName="Lab0FSM.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  .pre ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Lab0FSM.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="C:\Users\19722\Desktop\Mechatronics\Lab0FSM\bootloader320.ld"
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
${OBJECTDIR}/_ext/948890089/AD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c  .generated_files/flags/default/adc18ca71868fd065a00e9d41f9839115aba3984 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/AD.o.d" -o ${OBJECTDIR}/_ext/948890089/AD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/BOARD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c  .generated_files/flags/default/aefd11c838b01dc846a2c8d07e942c3f3f234d1e .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/BOARD.o.d" -o ${OBJECTDIR}/_ext/948890089/BOARD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/bc663c5d7b7f8c7022ff7dd581b93efa812d4ea9 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Framework.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c  .generated_files/flags/default/1779a56351c7ba839adb1021a18b1d792b091519 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Framework.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/2808232ef7f98ad1aa455357d5eb39d35173420 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_PostList.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c  .generated_files/flags/default/5f75c15f81aeb5e09c3a6f0ed24cea5b0ed4a402 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_PostList.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Queue.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c  .generated_files/flags/default/d6c228b53c79427255f4e06785f65ac3dce40360 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Queue.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_TattleTale.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/a193f21cb3d55910b2c51fdd50163732720c0010 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c  .generated_files/flags/default/a7ff60c06f2be517981c97be2ee129e2f5033acd .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/RC_Servo.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c  .generated_files/flags/default/7fce9c76ab21039476b091fea21e81324105d6eb .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/948890089/RC_Servo.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/pwm.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c  .generated_files/flags/default/f2619eca44072f8d7abae45d1de1861dd7e5282a .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/pwm.o.d" -o ${OBJECTDIR}/_ext/948890089/pwm.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/roach.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c  .generated_files/flags/default/5c4698fa112b4a225d47401e08637a93e1737e0f .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/roach.o.d" -o ${OBJECTDIR}/_ext/948890089/roach.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/serial.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c  .generated_files/flags/default/e31f91f30f5c84602a77c16b8a53b6bfb942a864 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/serial.o.d" -o ${OBJECTDIR}/_ext/948890089/serial.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c  .generated_files/flags/default/d4fd5dc748ab00e2698666275fca4471ee72e790 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/timers.o.d" -o ${OBJECTDIR}/_ext/948890089/timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/556706420/TemplateFSM.o: C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateFSM.c  .generated_files/flags/default/da371c7a1b8452d83b0027b9538f5eb0b83962d6 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/556706420" 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateFSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/556706420/TemplateFSM.o.d" -o ${OBJECTDIR}/_ext/556706420/TemplateFSM.o C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/556706420/TemplateES_Main.o: C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateES_Main.c  .generated_files/flags/default/a18668b13830063ddac01af63353846dd3613eb7 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/556706420" 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/556706420/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/556706420/TemplateES_Main.o C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/556706420/TemplateEventChecker.o: C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateEventChecker.c  .generated_files/flags/default/5e5a62a1815740445b9c5323a2aad5a25ec7da4d .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/556706420" 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/556706420/TemplateEventChecker.o.d" -o ${OBJECTDIR}/_ext/556706420/TemplateEventChecker.o C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/556706420/TemplateService.o: C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateService.c  .generated_files/flags/default/f1ef41238f7bab0e6ab8ed80cac44468bd8721c1 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/556706420" 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateService.o.d 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/556706420/TemplateService.o.d" -o ${OBJECTDIR}/_ext/556706420/TemplateService.o C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/948890089/AD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c  .generated_files/flags/default/145650e7d5a23e86392ddad1940028d8f29e0228 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/AD.o.d" -o ${OBJECTDIR}/_ext/948890089/AD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/BOARD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c  .generated_files/flags/default/83839a6a9167ef99124325382be3b4599127eba7 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/BOARD.o.d" -o ${OBJECTDIR}/_ext/948890089/BOARD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/be3ad62ff8dbc014623f54da88ff4cd3f450922c .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Framework.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c  .generated_files/flags/default/e6d24384f467d1d30ba5be28999070c162a37332 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Framework.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/3200079c93c9b80635f5b068d292fc153a122e72 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_PostList.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c  .generated_files/flags/default/b2a0bd12d26bc7ea179a7baf4554c9b25552e61 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_PostList.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Queue.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c  .generated_files/flags/default/96ed3bb13202d2552bdce5eeaa1f331af22cb4f5 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Queue.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_TattleTale.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/3cf89fddbfa78f1b7d2219a957dc6ce818ba1cf8 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c  .generated_files/flags/default/7aea35d05c21ad8ad13fd795e3a27e5a9d6c3c84 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/RC_Servo.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c  .generated_files/flags/default/c0005fcc5fbcfd0be42a0f58db4f77a15b8e63b6 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/948890089/RC_Servo.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/pwm.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c  .generated_files/flags/default/73a1c9b184edb0d345514bb9f184da8e677654d .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/pwm.o.d" -o ${OBJECTDIR}/_ext/948890089/pwm.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/roach.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c  .generated_files/flags/default/bc8c444a93200c0abae1c3d54d8e4401f0c9292b .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/roach.o.d" -o ${OBJECTDIR}/_ext/948890089/roach.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/serial.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c  .generated_files/flags/default/9860bd9f33307439e67af46365a34a9e511caf14 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/serial.o.d" -o ${OBJECTDIR}/_ext/948890089/serial.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c  .generated_files/flags/default/dd8b1bce809369bf2a92cb5aea7e27f6af7d85a .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/timers.o.d" -o ${OBJECTDIR}/_ext/948890089/timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/556706420/TemplateFSM.o: C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateFSM.c  .generated_files/flags/default/d5e4472982d4406cf611d4f503df8562d9efc7e1 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/556706420" 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateFSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/556706420/TemplateFSM.o.d" -o ${OBJECTDIR}/_ext/556706420/TemplateFSM.o C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/556706420/TemplateES_Main.o: C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateES_Main.c  .generated_files/flags/default/b0c3dfe2816015fde764c1ec11f61c8ae92760e7 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/556706420" 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/556706420/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/556706420/TemplateES_Main.o C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/556706420/TemplateEventChecker.o: C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateEventChecker.c  .generated_files/flags/default/f0ba69066c02b881069d9c2fd2e00b37da0e3a13 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/556706420" 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/556706420/TemplateEventChecker.o.d" -o ${OBJECTDIR}/_ext/556706420/TemplateEventChecker.o C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/556706420/TemplateService.o: C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateService.c  .generated_files/flags/default/5171aa54f86df490febd544cd06fcef255fb197f .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/556706420" 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateService.o.d 
	@${RM} ${OBJECTDIR}/_ext/556706420/TemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/556706420/TemplateService.o.d" -o ${OBJECTDIR}/_ext/556706420/TemplateService.o C:/Users/19722/Desktop/Mechatronics/Lab0FSM/TemplateService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Lab0FSM.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/Users/19722/Desktop/Mechatronics/Lab0FSM/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0FSM.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=2000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Lab0FSM.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/Users/19722/Desktop/Mechatronics/Lab0FSM/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0FSM.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/Lab0FSM.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
