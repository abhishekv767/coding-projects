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
FINAL_IMAGE=${DISTDIR}/Lab0RoachBetterEventDetection.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab0RoachBetterEventDetection.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/EventChecker.c C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/TemplateService.c C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/TemplateES_Main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/948890089/AD.o ${OBJECTDIR}/_ext/948890089/BOARD.o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o ${OBJECTDIR}/_ext/948890089/ES_Framework.o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o ${OBJECTDIR}/_ext/948890089/ES_PostList.o ${OBJECTDIR}/_ext/948890089/ES_Queue.o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o ${OBJECTDIR}/_ext/948890089/ES_Timers.o ${OBJECTDIR}/_ext/948890089/LED.o ${OBJECTDIR}/_ext/948890089/pwm.o ${OBJECTDIR}/_ext/948890089/roach.o ${OBJECTDIR}/_ext/948890089/serial.o ${OBJECTDIR}/_ext/1152176432/EventChecker.o ${OBJECTDIR}/_ext/1152176432/TemplateService.o ${OBJECTDIR}/_ext/1152176432/TemplateES_Main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/948890089/AD.o.d ${OBJECTDIR}/_ext/948890089/BOARD.o.d ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/948890089/ES_Framework.o.d ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/948890089/ES_PostList.o.d ${OBJECTDIR}/_ext/948890089/ES_Queue.o.d ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d ${OBJECTDIR}/_ext/948890089/ES_Timers.o.d ${OBJECTDIR}/_ext/948890089/LED.o.d ${OBJECTDIR}/_ext/948890089/pwm.o.d ${OBJECTDIR}/_ext/948890089/roach.o.d ${OBJECTDIR}/_ext/948890089/serial.o.d ${OBJECTDIR}/_ext/1152176432/EventChecker.o.d ${OBJECTDIR}/_ext/1152176432/TemplateService.o.d ${OBJECTDIR}/_ext/1152176432/TemplateES_Main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/948890089/AD.o ${OBJECTDIR}/_ext/948890089/BOARD.o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o ${OBJECTDIR}/_ext/948890089/ES_Framework.o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o ${OBJECTDIR}/_ext/948890089/ES_PostList.o ${OBJECTDIR}/_ext/948890089/ES_Queue.o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o ${OBJECTDIR}/_ext/948890089/ES_Timers.o ${OBJECTDIR}/_ext/948890089/LED.o ${OBJECTDIR}/_ext/948890089/pwm.o ${OBJECTDIR}/_ext/948890089/roach.o ${OBJECTDIR}/_ext/948890089/serial.o ${OBJECTDIR}/_ext/1152176432/EventChecker.o ${OBJECTDIR}/_ext/1152176432/TemplateService.o ${OBJECTDIR}/_ext/1152176432/TemplateES_Main.o

# Source Files
SOURCEFILES=C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/EventChecker.c C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/TemplateService.c C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/TemplateES_Main.c



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
ProjectDir="C:\Users\19722\Desktop\Mech 2023\Mechatronics\Lab0RoachBetterEventDetection"
ProjectName=Lab0_BetterEventDetection
ConfName=default
ImagePath="${DISTDIR}\Lab0RoachBetterEventDetection.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
ImageName="Lab0RoachBetterEventDetection.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  .pre ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Lab0RoachBetterEventDetection.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/948890089/AD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c  .generated_files/flags/default/135c3d5fe7e2e4e18e29a17cd14ec98a1d1b99d8 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/AD.o.d" -o ${OBJECTDIR}/_ext/948890089/AD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/BOARD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c  .generated_files/flags/default/c24e8cb968049ad2102a7b9889a66178752e4122 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/BOARD.o.d" -o ${OBJECTDIR}/_ext/948890089/BOARD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/2ad87fc23531acfdb8d63c43ce271589a20b53c2 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Framework.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c  .generated_files/flags/default/f8f9f6f0b1b0da0afd721440149b7b01cf3d7883 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Framework.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/27f35827f7e5264c31df3e527079d1f5bcd6f34e .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_PostList.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c  .generated_files/flags/default/799185c18cf26864fd0b91a19e08c97ce15d0725 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_PostList.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Queue.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c  .generated_files/flags/default/339733ece3703a2ddb191b562b55a4f97cb571b4 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Queue.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_TattleTale.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/ecbf64edc86214bc6b7efd53fa0004b9adcddca3 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c  .generated_files/flags/default/b19b508b4eb427b47900e4c53c396919b8d191a3 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/LED.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c  .generated_files/flags/default/578f2edc6a4de5dc0117c651f2a89d9bb36d0fe6 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/LED.o.d" -o ${OBJECTDIR}/_ext/948890089/LED.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/pwm.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c  .generated_files/flags/default/3253aafa6b6a137afaa9a73f5dd769c5663e9759 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/pwm.o.d" -o ${OBJECTDIR}/_ext/948890089/pwm.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/roach.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c  .generated_files/flags/default/19e4561b084c993621962f40eb790a7002bc8888 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/roach.o.d" -o ${OBJECTDIR}/_ext/948890089/roach.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/serial.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c  .generated_files/flags/default/9a2cc52071d43c886424ea73ea2cadbdf76e74b2 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/serial.o.d" -o ${OBJECTDIR}/_ext/948890089/serial.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152176432/EventChecker.o: C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/EventChecker.c  .generated_files/flags/default/d97f48a7e394cb334cc5f9106ac4dee9ed030888 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1152176432" 
	@${RM} ${OBJECTDIR}/_ext/1152176432/EventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152176432/EventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1152176432/EventChecker.o.d" -o ${OBJECTDIR}/_ext/1152176432/EventChecker.o C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/EventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152176432/TemplateService.o: C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/TemplateService.c  .generated_files/flags/default/445938b1ad370e70d780680357ae38a0fbf51dce .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1152176432" 
	@${RM} ${OBJECTDIR}/_ext/1152176432/TemplateService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152176432/TemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1152176432/TemplateService.o.d" -o ${OBJECTDIR}/_ext/1152176432/TemplateService.o C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/TemplateService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152176432/TemplateES_Main.o: C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/TemplateES_Main.c  .generated_files/flags/default/3bb91f6298f20626e21e0d6255352158ddf9e3d1 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1152176432" 
	@${RM} ${OBJECTDIR}/_ext/1152176432/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152176432/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1152176432/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/1152176432/TemplateES_Main.o C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/948890089/AD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c  .generated_files/flags/default/6b6d95384aa3db68c19426c91555cc94fcfa74ac .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/AD.o.d" -o ${OBJECTDIR}/_ext/948890089/AD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/BOARD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c  .generated_files/flags/default/a5b69e2f89eb283915e4d2002588359a67fe91b8 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/BOARD.o.d" -o ${OBJECTDIR}/_ext/948890089/BOARD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/91bee10c9d336117c8900cbe0ec3bc2f302c4235 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Framework.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c  .generated_files/flags/default/6808a5445b1d271c3dca4ce702930dc5c7ba9931 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Framework.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/c7b8b770e144798f4f80bcff61b3649a88212d29 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_PostList.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c  .generated_files/flags/default/e3f5f130953dab4bf6244b3861b6f43abd1b4c95 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_PostList.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Queue.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c  .generated_files/flags/default/77563968a45c501a1881b4f40cc5238802e24300 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Queue.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_TattleTale.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/5399c0071b892733400a12baf19a6f7fd7225291 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c  .generated_files/flags/default/e3965c5aedb2e4e05a765a5c97c40246b33b8763 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/LED.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c  .generated_files/flags/default/b63ac15ed285cd6ff46912a09c6ef78366b6cf93 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/LED.o.d" -o ${OBJECTDIR}/_ext/948890089/LED.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/pwm.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c  .generated_files/flags/default/99951592370b6c788e3943cf4b7eaccdaf511963 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/pwm.o.d" -o ${OBJECTDIR}/_ext/948890089/pwm.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/roach.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c  .generated_files/flags/default/c68e2c3548af0d591c420987a1c40a558d7fecfa .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/roach.o.d" -o ${OBJECTDIR}/_ext/948890089/roach.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/serial.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c  .generated_files/flags/default/318a462a9118fc8629ef6495f8581b7a414bf34a .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/serial.o.d" -o ${OBJECTDIR}/_ext/948890089/serial.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152176432/EventChecker.o: C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/EventChecker.c  .generated_files/flags/default/c9d73f3b6aca87597d997e0f51df79c88301493c .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1152176432" 
	@${RM} ${OBJECTDIR}/_ext/1152176432/EventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152176432/EventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1152176432/EventChecker.o.d" -o ${OBJECTDIR}/_ext/1152176432/EventChecker.o C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/EventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152176432/TemplateService.o: C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/TemplateService.c  .generated_files/flags/default/d868d5e5492661674869661e8358b4e36c375f72 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1152176432" 
	@${RM} ${OBJECTDIR}/_ext/1152176432/TemplateService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152176432/TemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1152176432/TemplateService.o.d" -o ${OBJECTDIR}/_ext/1152176432/TemplateService.o C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/TemplateService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152176432/TemplateES_Main.o: C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/TemplateES_Main.c  .generated_files/flags/default/4491c720796e87eefc1bc47218e0a93fa6ff494a .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1152176432" 
	@${RM} ${OBJECTDIR}/_ext/1152176432/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152176432/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/templates" -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1152176432/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/1152176432/TemplateES_Main.o C:/Users/19722/Desktop/Mechatronics/Lab0RoachBetterEventDetection/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Lab0RoachBetterEventDetection.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/Users/19722/Desktop/Mechatronics/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0RoachBetterEventDetection.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=2000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Lab0RoachBetterEventDetection.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/Users/19722/Desktop/Mechatronics/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0RoachBetterEventDetection.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/Lab0RoachBetterEventDetection.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
