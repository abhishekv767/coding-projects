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
FINAL_IMAGE=${DISTDIR}/Lab0HelloWorld_Part2_.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab0HelloWorld_Part2_.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c C:/Users/19722/Desktop/Mechatronics/Lab0HelloWorld/Lab0HelloWorld.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/948890089/AD.o ${OBJECTDIR}/_ext/948890089/BOARD.o ${OBJECTDIR}/_ext/1807102956/Lab0HelloWorld.o ${OBJECTDIR}/_ext/948890089/serial.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/948890089/AD.o.d ${OBJECTDIR}/_ext/948890089/BOARD.o.d ${OBJECTDIR}/_ext/1807102956/Lab0HelloWorld.o.d ${OBJECTDIR}/_ext/948890089/serial.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/948890089/AD.o ${OBJECTDIR}/_ext/948890089/BOARD.o ${OBJECTDIR}/_ext/1807102956/Lab0HelloWorld.o ${OBJECTDIR}/_ext/948890089/serial.o

# Source Files
SOURCEFILES=C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c C:/Users/19722/Desktop/Mechatronics/Lab0HelloWorld/Lab0HelloWorld.c C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Lab0HelloWorld_Part2_.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/948890089/AD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c  .generated_files/flags/default/3650a8465eadfe492598ecb0278926f43124e5fa .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/AD.o.d" -o ${OBJECTDIR}/_ext/948890089/AD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/BOARD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c  .generated_files/flags/default/19f7c77bc83e1c0f73960b40de8041aee0b9cc9c .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/BOARD.o.d" -o ${OBJECTDIR}/_ext/948890089/BOARD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1807102956/Lab0HelloWorld.o: C:/Users/19722/Desktop/Mechatronics/Lab0HelloWorld/Lab0HelloWorld.c  .generated_files/flags/default/439f46c9746483cd2b355d3e19f1d30b3be421f8 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1807102956" 
	@${RM} ${OBJECTDIR}/_ext/1807102956/Lab0HelloWorld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1807102956/Lab0HelloWorld.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1807102956/Lab0HelloWorld.o.d" -o ${OBJECTDIR}/_ext/1807102956/Lab0HelloWorld.o C:/Users/19722/Desktop/Mechatronics/Lab0HelloWorld/Lab0HelloWorld.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/serial.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c  .generated_files/flags/default/60a21f0adda9b5ece7077c65c465d2ff1342dc5e .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/serial.o.d" -o ${OBJECTDIR}/_ext/948890089/serial.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/948890089/AD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c  .generated_files/flags/default/1152630ff288bad8686254df406aafe0fc1a3933 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/AD.o.d" -o ${OBJECTDIR}/_ext/948890089/AD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/BOARD.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c  .generated_files/flags/default/c5d85d2377e00dc273258d4213575c4bb9f1c114 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/BOARD.o.d" -o ${OBJECTDIR}/_ext/948890089/BOARD.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1807102956/Lab0HelloWorld.o: C:/Users/19722/Desktop/Mechatronics/Lab0HelloWorld/Lab0HelloWorld.c  .generated_files/flags/default/3ca7ffa0a1d50b96638c215a3b70f7d57c74cb25 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/1807102956" 
	@${RM} ${OBJECTDIR}/_ext/1807102956/Lab0HelloWorld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1807102956/Lab0HelloWorld.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1807102956/Lab0HelloWorld.o.d" -o ${OBJECTDIR}/_ext/1807102956/Lab0HelloWorld.o C:/Users/19722/Desktop/Mechatronics/Lab0HelloWorld/Lab0HelloWorld.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/948890089/serial.o: C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c  .generated_files/flags/default/1c90b6ae18dabf6da211beb86ef10d2aa47db0da .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/948890089" 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/948890089/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/948890089/serial.o.d" -o ${OBJECTDIR}/_ext/948890089/serial.o C:/Users/19722/Desktop/Mechatronics/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Lab0HelloWorld_Part2_.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/Users/19722/Desktop/Mechatronics/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0HelloWorld_Part2_.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Lab0HelloWorld_Part2_.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/Users/19722/Desktop/Mechatronics/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0HelloWorld_Part2_.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/Lab0HelloWorld_Part2_.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


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
