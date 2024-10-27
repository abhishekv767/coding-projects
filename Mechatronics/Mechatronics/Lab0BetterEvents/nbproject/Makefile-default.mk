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
FINAL_IMAGE=${DISTDIR}/Lab0BetterEvents.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab0BetterEvents.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/IO_Ports.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c C:/Users/19722/Desktop/Mechatronics/Lab0BetterEvents/TemplateES_Main.c C:/Users/19722/Desktop/Mechatronics/Lab0BetterEvents/TemplateEventChecker.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/948890089/AD.o ${OBJECTDIR}/_ext/948890089/BOARD.o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o ${OBJECTDIR}/_ext/948890089/ES_Framework.o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o ${OBJECTDIR}/_ext/948890089/ES_PostList.o ${OBJECTDIR}/_ext/948890089/ES_Queue.o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o ${OBJECTDIR}/_ext/948890089/ES_Timers.o ${OBJECTDIR}/_ext/948890089/IO_Ports.o ${OBJECTDIR}/_ext/948890089/LED.o ${OBJECTDIR}/_ext/948890089/RC_Servo.o ${OBJECTDIR}/_ext/948890089/pwm.o ${OBJECTDIR}/_ext/948890089/roach.o ${OBJECTDIR}/_ext/948890089/serial.o ${OBJECTDIR}/_ext/948890089/timers.o ${OBJECTDIR}/_ext/44920739/TemplateES_Main.o ${OBJECTDIR}/_ext/44920739/TemplateEventChecker.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/948890089/AD.o.d ${OBJECTDIR}/_ext/948890089/BOARD.o.d ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/948890089/ES_Framework.o.d ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/948890089/ES_PostList.o.d ${OBJECTDIR}/_ext/948890089/ES_Queue.o.d ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d ${OBJECTDIR}/_ext/948890089/ES_Timers.o.d ${OBJECTDIR}/_ext/948890089/IO_Ports.o.d ${OBJECTDIR}/_ext/948890089/LED.o.d ${OBJECTDIR}/_ext/948890089/RC_Servo.o.d ${OBJECTDIR}/_ext/948890089/pwm.o.d ${OBJECTDIR}/_ext/948890089/roach.o.d ${OBJECTDIR}/_ext/948890089/serial.o.d ${OBJECTDIR}/_ext/948890089/timers.o.d ${OBJECTDIR}/_ext/44920739/TemplateES_Main.o.d ${OBJECTDIR}/_ext/44920739/TemplateEventChecker.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/948890089/AD.o ${OBJECTDIR}/_ext/948890089/BOARD.o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o ${OBJECTDIR}/_ext/948890089/ES_Framework.o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o ${OBJECTDIR}/_ext/948890089/ES_PostList.o ${OBJECTDIR}/_ext/948890089/ES_Queue.o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o ${OBJECTDIR}/_ext/948890089/ES_Timers.o ${OBJECTDIR}/_ext/948890089/IO_Ports.o ${OBJECTDIR}/_ext/948890089/LED.o ${OBJECTDIR}/_ext/948890089/RC_Servo.o ${OBJECTDIR}/_ext/948890089/pwm.o ${OBJECTDIR}/_ext/948890089/roach.o ${OBJECTDIR}/_ext/948890089/serial.o ${OBJECTDIR}/_ext/948890089/timers.o ${OBJECTDIR}/_ext/44920739/TemplateES_Main.o ${OBJECTDIR}/_ext/44920739/TemplateEventChecker.o

# Source Files
SOURCEFILES=C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/IO_Ports.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c C:/Users/19722/Desktop/Mechatronics/Lab0BetterEvents/TemplateES_Main.c C:/Users/19722/Desktop/Mechatronics/Lab0BetterEvents/TemplateEventChecker.c



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
ProjectDir="C:\Users\19722\Desktop\Mechatronics\Lab0BetterEvents"
ProjectName=Lab0_BetterEvents
ConfName=default
ImagePath="${DISTDIR}\Lab0BetterEvents.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
ImageName="Lab0BetterEvents.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  .pre ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Lab0BetterEvents.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="C:\Users\19722\Desktop\Mechatronics\Lab0BetterEvents\bootloader320.ld"
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
${OBJECTDIR}/_ext/948890089/AD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c  .generated_files/flags/default/6527e8459a6519cb34413fc44cd9378f209aefe7 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/AD.o.d" -o ${OBJECTDIR}/_ext/948890089/AD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/BOARD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c  .generated_files/flags/default/1f53e5aed56a19ddddb422c492ad442010a55448 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/BOARD.o.d" -o ${OBJECTDIR}/_ext/948890089/BOARD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/a6b6bd3f500955571345660f223321b4d9a07e83 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Framework.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c  .generated_files/flags/default/5f731e517200e2464c6770aa8759e1e32fdcff70 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Framework.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/d0bf1dc37444b50c20e1eaacb4c9f41f13cf99f8 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_PostList.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c  .generated_files/flags/default/495f16f2f26e79b8a8b7507268ffc6a9039aaca1 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_PostList.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Queue.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c  .generated_files/flags/default/b854065e0ffdc9a23fd070433d9b32d17130f9b0 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Queue.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_TattleTale.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/e746884edcb599f0930808d89ed3e6e49b48cfb2 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c  .generated_files/flags/default/54ce6a01447104d9bf35d76d1908275249dc1da .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/IO_Ports.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/IO_Ports.c  .generated_files/flags/default/fbf6db45c22de32af13ea11866ec971aea579b07 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/948890089/IO_Ports.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/LED.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c  .generated_files/flags/default/ea13295f801e34ec9d22223565535c134cddb44b .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/LED.o.d" -o ${OBJECTDIR}/_ext/948890089/LED.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/RC_Servo.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c  .generated_files/flags/default/5c61c13942da0c26c64f9e66dd6984bfaef335c3 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/948890089/RC_Servo.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/pwm.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c  .generated_files/flags/default/11442565d904c648e424c5fd54c0f61cf4e05fe1 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/pwm.o.d" -o ${OBJECTDIR}/_ext/948890089/pwm.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/roach.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c  .generated_files/flags/default/710d84ce86061d55d7b20ca9d0a671b8b77c2820 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/roach.o.d" -o ${OBJECTDIR}/_ext/948890089/roach.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/serial.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c  .generated_files/flags/default/27eb7216d49c9702a6099d2a7c4eef6f8294c6c5 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/serial.o.d" -o ${OBJECTDIR}/_ext/948890089/serial.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c  .generated_files/flags/default/ee38b4e84f9863b89f334a2775e1ad7573bcac4d .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/timers.o.d" -o ${OBJECTDIR}/_ext/948890089/timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/44920739/TemplateES_Main.o: C:/Users/19722/Desktop/Mechatronics/Lab0BetterEvents/TemplateES_Main.c  .generated_files/flags/default/9ae8a17f6c30fb59fe68020c65e3476c2d0699b7 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/44920739" 
	@${RM} ${OBJECTDIR}/_ext/44920739/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/44920739/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/44920739/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/44920739/TemplateES_Main.o C:/Users/19722/Desktop/Mechatronics/Lab0BetterEvents/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/44920739/TemplateEventChecker.o: C:/Users/19722/Desktop/Mechatronics/Lab0BetterEvents/TemplateEventChecker.c  .generated_files/flags/default/1b577b50971a9251b82fe2008d900bdc076b6d0 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/44920739" 
	@${RM} ${OBJECTDIR}/_ext/44920739/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/44920739/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/44920739/TemplateEventChecker.o.d" -o ${OBJECTDIR}/_ext/44920739/TemplateEventChecker.o C:/Users/19722/Desktop/Mechatronics/Lab0BetterEvents/TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/948890089/AD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c  .generated_files/flags/default/83b6301da09fbc080fa92a11d8a9919934db686a .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/AD.o.d" -o ${OBJECTDIR}/_ext/948890089/AD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/BOARD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c  .generated_files/flags/default/cc81590de5a599cc858a36a0c51aebc4af5a94db .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/BOARD.o.d" -o ${OBJECTDIR}/_ext/948890089/BOARD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/b67a003d5f719b0223e4ce34b1c714045482eec4 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_CheckEvents.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Framework.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c  .generated_files/flags/default/bc0ea3b5a98dee2aae20a0cb2c1d0839a893a883 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Framework.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/4c305cd12a420db08e44ec813d899cea2fd1ea37 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_KeyboardInput.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_PostList.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c  .generated_files/flags/default/aaa7bb1fc2ab0cc1e1ce824eed2de8bd544a34d8 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_PostList.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Queue.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c  .generated_files/flags/default/8c8d86f9e5af23d9aa5fe968c34c4639da95d837 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Queue.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_TattleTale.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/dc4d5ed9ae7e0d1ea456641f10449ff8640e3977 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_TattleTale.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/ES_Timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c  .generated_files/flags/default/6646704e239c39635352f68822417fcb5cf492c9 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/948890089/ES_Timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/IO_Ports.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/IO_Ports.c  .generated_files/flags/default/86106feaef73018978058e677b2ac77e439900ac .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/948890089/IO_Ports.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/LED.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c  .generated_files/flags/default/fb7927e06214db7e89aa0d92cfa6b246659fd954 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/LED.o.d" -o ${OBJECTDIR}/_ext/948890089/LED.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/RC_Servo.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c  .generated_files/flags/default/119b9c98401332cebe70bbe37ea07e0b91a7310d .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/948890089/RC_Servo.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/pwm.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c  .generated_files/flags/default/201f98314366861fe9e9bf2d77c2a9970d6965b9 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/pwm.o.d" -o ${OBJECTDIR}/_ext/948890089/pwm.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/roach.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c  .generated_files/flags/default/3a812d60c3f92aa0a4ad89e183a74c46f41ee7cc .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/roach.o.d" -o ${OBJECTDIR}/_ext/948890089/roach.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/serial.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c  .generated_files/flags/default/7c7c2e591e61f9b6e3e36049af8c789d428e8cd .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/serial.o.d" -o ${OBJECTDIR}/_ext/948890089/serial.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/timers.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c  .generated_files/flags/default/19fcc16a9d629edc001eb71636cfc3e181227579 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/timers.o.d" -o ${OBJECTDIR}/_ext/948890089/timers.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/44920739/TemplateES_Main.o: C:/Users/19722/Desktop/Mechatronics/Lab0BetterEvents/TemplateES_Main.c  .generated_files/flags/default/985f70db3d78f066eb1f7924168b97d1829eeebf .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/44920739" 
	@${RM} ${OBJECTDIR}/_ext/44920739/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/44920739/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/44920739/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/44920739/TemplateES_Main.o C:/Users/19722/Desktop/Mechatronics/Lab0BetterEvents/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/44920739/TemplateEventChecker.o: C:/Users/19722/Desktop/Mechatronics/Lab0BetterEvents/TemplateEventChecker.c  .generated_files/flags/default/9f3b5a032b7bfeb479c12a97c7d23a4eaea6db79 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/44920739" 
	@${RM} ${OBJECTDIR}/_ext/44920739/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/44920739/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DSIMPLESERVICE_TEST -I"C:/Users/19722/Desktop/Mechatronics/ECE118/include" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/44920739/TemplateEventChecker.o.d" -o ${OBJECTDIR}/_ext/44920739/TemplateEventChecker.o C:/Users/19722/Desktop/Mechatronics/Lab0BetterEvents/TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Lab0BetterEvents.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/Users/19722/Desktop/Mechatronics/Lab0BetterEvents/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0BetterEvents.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=2000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Lab0BetterEvents.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/Users/19722/Desktop/Mechatronics/Lab0BetterEvents/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0BetterEvents.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/Lab0BetterEvents.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
