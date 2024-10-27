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
FINAL_IMAGE=${DISTDIR}/Lab0Final.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab0Final.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateES_Main.c C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateEventChecker.c C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateHSM.c C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateSubHSM.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/948890089/AD.o ${OBJECTDIR}/_ext/948890089/BOARD.o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o ${OBJECTDIR}/_ext/948890089/ES_Framework.o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o ${OBJECTDIR}/_ext/948890089/ES_PostList.o ${OBJECTDIR}/_ext/948890089/ES_Queue.o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o ${OBJECTDIR}/_ext/948890089/ES_Timers.o ${OBJECTDIR}/_ext/948890089/pwm.o ${OBJECTDIR}/_ext/948890089/roach.o ${OBJECTDIR}/_ext/948890089/serial.o ${OBJECTDIR}/_ext/948890089/timers.o ${OBJECTDIR}/_ext/1876732610/TemplateES_Main.o ${OBJECTDIR}/_ext/1876732610/TemplateEventChecker.o ${OBJECTDIR}/_ext/1876732610/TemplateHSM.o ${OBJECTDIR}/_ext/1876732610/TemplateSubHSM.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/948890089/AD.o.d ${OBJECTDIR}/_ext/948890089/BOARD.o.d ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/948890089/ES_Framework.o.d ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/948890089/ES_PostList.o.d ${OBJECTDIR}/_ext/948890089/ES_Queue.o.d ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d ${OBJECTDIR}/_ext/948890089/ES_Timers.o.d ${OBJECTDIR}/_ext/948890089/pwm.o.d ${OBJECTDIR}/_ext/948890089/roach.o.d ${OBJECTDIR}/_ext/948890089/serial.o.d ${OBJECTDIR}/_ext/948890089/timers.o.d ${OBJECTDIR}/_ext/1876732610/TemplateES_Main.o.d ${OBJECTDIR}/_ext/1876732610/TemplateEventChecker.o.d ${OBJECTDIR}/_ext/1876732610/TemplateHSM.o.d ${OBJECTDIR}/_ext/1876732610/TemplateSubHSM.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/948890089/AD.o ${OBJECTDIR}/_ext/948890089/BOARD.o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o ${OBJECTDIR}/_ext/948890089/ES_Framework.o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o ${OBJECTDIR}/_ext/948890089/ES_PostList.o ${OBJECTDIR}/_ext/948890089/ES_Queue.o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o ${OBJECTDIR}/_ext/948890089/ES_Timers.o ${OBJECTDIR}/_ext/948890089/pwm.o ${OBJECTDIR}/_ext/948890089/roach.o ${OBJECTDIR}/_ext/948890089/serial.o ${OBJECTDIR}/_ext/948890089/timers.o ${OBJECTDIR}/_ext/1876732610/TemplateES_Main.o ${OBJECTDIR}/_ext/1876732610/TemplateEventChecker.o ${OBJECTDIR}/_ext/1876732610/TemplateHSM.o ${OBJECTDIR}/_ext/1876732610/TemplateSubHSM.o

# Source Files
SOURCEFILES=C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateES_Main.c C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateEventChecker.c C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateHSM.c C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateSubHSM.c



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
ProjectDir="C:\Users\19722\Desktop\Mechatronics\Lab0Final"
ProjectName=Lab0Final
ConfName=default
ImagePath="${DISTDIR}\Lab0Final.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
ImageName="Lab0Final.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  .pre ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Lab0Final.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/948890089/AD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c  .generated_files/flags/default/c11a2e633f82c30311a2f6f8de0bef22d3f78ce4 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/AD.o.d" -o ${OBJECTDIR}/_ext/948890089/AD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/BOARD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c  .generated_files/flags/default/515c2e10d854f1b85430073460440b9753370309 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/BOARD.o.d" -o ${OBJECTDIR}/_ext/948890089/BOARD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/b4c126f063a26a030089ac190a97f3258a389997 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Framework.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c  .generated_files/flags/default/65c4056fd95d1d601fae9be10b0b7f2f6eb9453e .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Framework.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/ac0310ff3ce480b675aacd5a66ee3484f720e9f5 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_PostList.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c  .generated_files/flags/default/a8d6fb8c2de19cf46fc5f94debf22f9650d58197 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_PostList.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Queue.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c  .generated_files/flags/default/5b140bb105caa0405378a196c8eb9ee82c472212 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Queue.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_TattleTale.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/84e71c563b265680f389c424c008dd1a3e5b19b7 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c  .generated_files/flags/default/2030c259a0a9056dae51d49437784049b0b43ccb .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/pwm.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c  .generated_files/flags/default/585b869dd13393b947b1302ce6d86a5066c8a85b .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/pwm.o.d" -o ${OBJECTDIR}/_ext/948890089/pwm.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/roach.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c  .generated_files/flags/default/7d44e6bd82d37b4b36f2d82d8a7ccd6c4222dc5d .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/roach.o.d" -o ${OBJECTDIR}/_ext/948890089/roach.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/serial.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c  .generated_files/flags/default/40489186b6b1bc55d28954db31a35abbb72c7b8e .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/serial.o.d" -o ${OBJECTDIR}/_ext/948890089/serial.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c  .generated_files/flags/default/c5f3c398ce7a919609780aa5d7dee43c792e65be .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/timers.o.d" -o ${OBJECTDIR}/_ext/948890089/timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1876732610/TemplateES_Main.o: C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateES_Main.c  .generated_files/flags/default/4f87eb670cf4ec40249d0a1eddae6265a54fc8ee .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1876732610" 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1876732610/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/1876732610/TemplateES_Main.o C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1876732610/TemplateEventChecker.o: C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateEventChecker.c  .generated_files/flags/default/3165806f9164aa4a529c21047b58898b7edadb39 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1876732610" 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1876732610/TemplateEventChecker.o.d" -o ${OBJECTDIR}/_ext/1876732610/TemplateEventChecker.o C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1876732610/TemplateHSM.o: C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateHSM.c  .generated_files/flags/default/3366b31d7fe19d0d79cb1a693bb935563d860692 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1876732610" 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1876732610/TemplateHSM.o.d" -o ${OBJECTDIR}/_ext/1876732610/TemplateHSM.o C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1876732610/TemplateSubHSM.o: C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateSubHSM.c  .generated_files/flags/default/21d66b44f8b9c6f510fc3fd33474e5cd44e7cd86 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1876732610" 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1876732610/TemplateSubHSM.o.d" -o ${OBJECTDIR}/_ext/1876732610/TemplateSubHSM.o C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/948890089/AD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c  .generated_files/flags/default/97d85a972c1d20768af6e6843069cbaac4c10ecc .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/AD.o.d" -o ${OBJECTDIR}/_ext/948890089/AD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/BOARD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c  .generated_files/flags/default/af0ba9f063bc04311214c4760732152c4f1c56f2 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/BOARD.o.d" -o ${OBJECTDIR}/_ext/948890089/BOARD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/4e3b714cfa0338520df819fc6639fd4e590af428 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Framework.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c  .generated_files/flags/default/42196cb3c8e534b1260b423b8eef00837e411f94 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Framework.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/95ff44f34648aaa14850e90a240fb1446f80e971 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_PostList.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c  .generated_files/flags/default/7de3d32fc0d06fca8a76e6ca79c2deb15f61607c .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_PostList.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Queue.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c  .generated_files/flags/default/e8dde2d7e486b646d1282d8016274aa47ade4063 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Queue.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_TattleTale.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/b73c733a99ffae568dabc12a4a304d6ff732ddf7 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c  .generated_files/flags/default/59a284263f85ddad86619f7a3f6ada2f10d17da1 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/pwm.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c  .generated_files/flags/default/b7ef0f815aa48d6a063bd72300ed7053eb8e15ef .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/pwm.o.d" -o ${OBJECTDIR}/_ext/948890089/pwm.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/roach.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c  .generated_files/flags/default/c81c93bfd80671d14f84473b04c735a724cf7855 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/roach.o.d" -o ${OBJECTDIR}/_ext/948890089/roach.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/serial.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c  .generated_files/flags/default/58f7b14c7e0ebf4869bff188b692dde5dc9cb256 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/serial.o.d" -o ${OBJECTDIR}/_ext/948890089/serial.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c  .generated_files/flags/default/16357d28fff8055e2eb31b5574ca454f4d91dd43 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/timers.o.d" -o ${OBJECTDIR}/_ext/948890089/timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1876732610/TemplateES_Main.o: C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateES_Main.c  .generated_files/flags/default/66171ee4b899d81c4028a958a847d9bde5a36cc3 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1876732610" 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1876732610/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/1876732610/TemplateES_Main.o C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1876732610/TemplateEventChecker.o: C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateEventChecker.c  .generated_files/flags/default/fd05d675ca2ab07dc723f8e8f3b67dd73795ec68 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1876732610" 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1876732610/TemplateEventChecker.o.d" -o ${OBJECTDIR}/_ext/1876732610/TemplateEventChecker.o C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1876732610/TemplateHSM.o: C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateHSM.c  .generated_files/flags/default/7fa228c7b1b6010123998ddf9515979c7bb25e69 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1876732610" 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1876732610/TemplateHSM.o.d" -o ${OBJECTDIR}/_ext/1876732610/TemplateHSM.o C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1876732610/TemplateSubHSM.o: C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateSubHSM.c  .generated_files/flags/default/d51a4a6bfb801cdfedd64724cc5433deadba4697 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1876732610" 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1876732610/TemplateSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1876732610/TemplateSubHSM.o.d" -o ${OBJECTDIR}/_ext/1876732610/TemplateSubHSM.o C:/Users/19722/Desktop/Mechatronics/Lab0Final/TemplateSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Lab0Final.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/Users/19722/Desktop/Mechatronics/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0Final.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=2000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Lab0Final.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/Users/19722/Desktop/Mechatronics/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0Final.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/Lab0Final.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
