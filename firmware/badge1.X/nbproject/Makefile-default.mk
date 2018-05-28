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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/badge1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/badge1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=src/Z80/hwz.c src/disp.c src/hw.c src/vt100.c src/main.c src/badge.c src/nofrendo/log.c src/nofrendo/vid_drv.c src/nofrendo/gui.c src/nofrendo/intro.c src/nofrendo/nes/nes_mmc.c src/nofrendo/nes/nesinput.c src/nofrendo/nes/mmclist.c src/nofrendo/nes/nes_rom.c src/nofrendo/nes/nes_ppu.c src/nofrendo/nes/nesstate.c src/nofrendo/nes/nes.c src/nofrendo/nes/nes_pal.c src/nofrendo/pcx.c src/nofrendo/cpu/nes6502.c src/nofrendo/cpu/dis6502.c src/nofrendo/bitmap.c src/nofrendo/sndhrdw/vrcvisnd.c src/nofrendo/sndhrdw/nes_apu.c src/nofrendo/sndhrdw/fds_snd.c src/nofrendo/sndhrdw/mmc5_snd.c src/nofrendo/gui_elem.c src/nofrendo/event.c src/nofrendo/config.c src/nofrendo/mappers/map231.c src/nofrendo/mappers/map075.c src/nofrendo/mappers/map050.c src/nofrendo/mappers/map004.c src/nofrendo/mappers/map065.c src/nofrendo/mappers/map040.c src/nofrendo/mappers/map000.c src/nofrendo/mappers/map019.c src/nofrendo/mappers/map078.c src/nofrendo/mappers/map032.c src/nofrendo/mappers/map007.c src/nofrendo/mappers/map066.c src/nofrendo/mappers/map085.c src/nofrendo/mappers/map009.c src/nofrendo/mappers/map003.c src/nofrendo/mappers/map079.c src/nofrendo/mappers/map073.c src/nofrendo/mappers/map018.c src/nofrendo/mappers/map094.c src/nofrendo/mappers/map033.c src/nofrendo/mappers/map016.c src/nofrendo/mappers/map042.c src/nofrendo/mappers/map002.c src/nofrendo/mappers/map008.c src/nofrendo/mappers/map229.c src/nofrendo/mappers/map046.c src/nofrendo/mappers/map034.c src/nofrendo/mappers/map011.c src/nofrendo/mappers/map070.c src/nofrendo/mappers/mapvrc.c src/nofrendo/mappers/map093.c src/nofrendo/mappers/map015.c src/nofrendo/mappers/map099.c src/nofrendo/mappers/map064.c src/nofrendo/mappers/map005.c src/nofrendo/mappers/map041.c src/nofrendo/mappers/map160.c src/nofrendo/mappers/map024.c src/nofrendo/mappers/map001.c src/nofrendo/mappers/map087.c src/nofrendo/nofrendo.c src/nofrendo/memguard.c src/nofrendo/libsnss/libsnss.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/Z80/hwz.o ${OBJECTDIR}/src/disp.o ${OBJECTDIR}/src/hw.o ${OBJECTDIR}/src/vt100.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/badge.o ${OBJECTDIR}/src/nofrendo/log.o ${OBJECTDIR}/src/nofrendo/vid_drv.o ${OBJECTDIR}/src/nofrendo/gui.o ${OBJECTDIR}/src/nofrendo/intro.o ${OBJECTDIR}/src/nofrendo/nes/nes_mmc.o ${OBJECTDIR}/src/nofrendo/nes/nesinput.o ${OBJECTDIR}/src/nofrendo/nes/mmclist.o ${OBJECTDIR}/src/nofrendo/nes/nes_rom.o ${OBJECTDIR}/src/nofrendo/nes/nes_ppu.o ${OBJECTDIR}/src/nofrendo/nes/nesstate.o ${OBJECTDIR}/src/nofrendo/nes/nes.o ${OBJECTDIR}/src/nofrendo/nes/nes_pal.o ${OBJECTDIR}/src/nofrendo/pcx.o ${OBJECTDIR}/src/nofrendo/cpu/nes6502.o ${OBJECTDIR}/src/nofrendo/cpu/dis6502.o ${OBJECTDIR}/src/nofrendo/bitmap.o ${OBJECTDIR}/src/nofrendo/sndhrdw/vrcvisnd.o ${OBJECTDIR}/src/nofrendo/sndhrdw/nes_apu.o ${OBJECTDIR}/src/nofrendo/sndhrdw/fds_snd.o ${OBJECTDIR}/src/nofrendo/sndhrdw/mmc5_snd.o ${OBJECTDIR}/src/nofrendo/gui_elem.o ${OBJECTDIR}/src/nofrendo/event.o ${OBJECTDIR}/src/nofrendo/config.o ${OBJECTDIR}/src/nofrendo/mappers/map231.o ${OBJECTDIR}/src/nofrendo/mappers/map075.o ${OBJECTDIR}/src/nofrendo/mappers/map050.o ${OBJECTDIR}/src/nofrendo/mappers/map004.o ${OBJECTDIR}/src/nofrendo/mappers/map065.o ${OBJECTDIR}/src/nofrendo/mappers/map040.o ${OBJECTDIR}/src/nofrendo/mappers/map000.o ${OBJECTDIR}/src/nofrendo/mappers/map019.o ${OBJECTDIR}/src/nofrendo/mappers/map078.o ${OBJECTDIR}/src/nofrendo/mappers/map032.o ${OBJECTDIR}/src/nofrendo/mappers/map007.o ${OBJECTDIR}/src/nofrendo/mappers/map066.o ${OBJECTDIR}/src/nofrendo/mappers/map085.o ${OBJECTDIR}/src/nofrendo/mappers/map009.o ${OBJECTDIR}/src/nofrendo/mappers/map003.o ${OBJECTDIR}/src/nofrendo/mappers/map079.o ${OBJECTDIR}/src/nofrendo/mappers/map073.o ${OBJECTDIR}/src/nofrendo/mappers/map018.o ${OBJECTDIR}/src/nofrendo/mappers/map094.o ${OBJECTDIR}/src/nofrendo/mappers/map033.o ${OBJECTDIR}/src/nofrendo/mappers/map016.o ${OBJECTDIR}/src/nofrendo/mappers/map042.o ${OBJECTDIR}/src/nofrendo/mappers/map002.o ${OBJECTDIR}/src/nofrendo/mappers/map008.o ${OBJECTDIR}/src/nofrendo/mappers/map229.o ${OBJECTDIR}/src/nofrendo/mappers/map046.o ${OBJECTDIR}/src/nofrendo/mappers/map034.o ${OBJECTDIR}/src/nofrendo/mappers/map011.o ${OBJECTDIR}/src/nofrendo/mappers/map070.o ${OBJECTDIR}/src/nofrendo/mappers/mapvrc.o ${OBJECTDIR}/src/nofrendo/mappers/map093.o ${OBJECTDIR}/src/nofrendo/mappers/map015.o ${OBJECTDIR}/src/nofrendo/mappers/map099.o ${OBJECTDIR}/src/nofrendo/mappers/map064.o ${OBJECTDIR}/src/nofrendo/mappers/map005.o ${OBJECTDIR}/src/nofrendo/mappers/map041.o ${OBJECTDIR}/src/nofrendo/mappers/map160.o ${OBJECTDIR}/src/nofrendo/mappers/map024.o ${OBJECTDIR}/src/nofrendo/mappers/map001.o ${OBJECTDIR}/src/nofrendo/mappers/map087.o ${OBJECTDIR}/src/nofrendo/nofrendo.o ${OBJECTDIR}/src/nofrendo/memguard.o ${OBJECTDIR}/src/nofrendo/libsnss/libsnss.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/Z80/hwz.o.d ${OBJECTDIR}/src/disp.o.d ${OBJECTDIR}/src/hw.o.d ${OBJECTDIR}/src/vt100.o.d ${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/src/badge.o.d ${OBJECTDIR}/src/nofrendo/log.o.d ${OBJECTDIR}/src/nofrendo/vid_drv.o.d ${OBJECTDIR}/src/nofrendo/gui.o.d ${OBJECTDIR}/src/nofrendo/intro.o.d ${OBJECTDIR}/src/nofrendo/nes/nes_mmc.o.d ${OBJECTDIR}/src/nofrendo/nes/nesinput.o.d ${OBJECTDIR}/src/nofrendo/nes/mmclist.o.d ${OBJECTDIR}/src/nofrendo/nes/nes_rom.o.d ${OBJECTDIR}/src/nofrendo/nes/nes_ppu.o.d ${OBJECTDIR}/src/nofrendo/nes/nesstate.o.d ${OBJECTDIR}/src/nofrendo/nes/nes.o.d ${OBJECTDIR}/src/nofrendo/nes/nes_pal.o.d ${OBJECTDIR}/src/nofrendo/pcx.o.d ${OBJECTDIR}/src/nofrendo/cpu/nes6502.o.d ${OBJECTDIR}/src/nofrendo/cpu/dis6502.o.d ${OBJECTDIR}/src/nofrendo/bitmap.o.d ${OBJECTDIR}/src/nofrendo/sndhrdw/vrcvisnd.o.d ${OBJECTDIR}/src/nofrendo/sndhrdw/nes_apu.o.d ${OBJECTDIR}/src/nofrendo/sndhrdw/fds_snd.o.d ${OBJECTDIR}/src/nofrendo/sndhrdw/mmc5_snd.o.d ${OBJECTDIR}/src/nofrendo/gui_elem.o.d ${OBJECTDIR}/src/nofrendo/event.o.d ${OBJECTDIR}/src/nofrendo/config.o.d ${OBJECTDIR}/src/nofrendo/mappers/map231.o.d ${OBJECTDIR}/src/nofrendo/mappers/map075.o.d ${OBJECTDIR}/src/nofrendo/mappers/map050.o.d ${OBJECTDIR}/src/nofrendo/mappers/map004.o.d ${OBJECTDIR}/src/nofrendo/mappers/map065.o.d ${OBJECTDIR}/src/nofrendo/mappers/map040.o.d ${OBJECTDIR}/src/nofrendo/mappers/map000.o.d ${OBJECTDIR}/src/nofrendo/mappers/map019.o.d ${OBJECTDIR}/src/nofrendo/mappers/map078.o.d ${OBJECTDIR}/src/nofrendo/mappers/map032.o.d ${OBJECTDIR}/src/nofrendo/mappers/map007.o.d ${OBJECTDIR}/src/nofrendo/mappers/map066.o.d ${OBJECTDIR}/src/nofrendo/mappers/map085.o.d ${OBJECTDIR}/src/nofrendo/mappers/map009.o.d ${OBJECTDIR}/src/nofrendo/mappers/map003.o.d ${OBJECTDIR}/src/nofrendo/mappers/map079.o.d ${OBJECTDIR}/src/nofrendo/mappers/map073.o.d ${OBJECTDIR}/src/nofrendo/mappers/map018.o.d ${OBJECTDIR}/src/nofrendo/mappers/map094.o.d ${OBJECTDIR}/src/nofrendo/mappers/map033.o.d ${OBJECTDIR}/src/nofrendo/mappers/map016.o.d ${OBJECTDIR}/src/nofrendo/mappers/map042.o.d ${OBJECTDIR}/src/nofrendo/mappers/map002.o.d ${OBJECTDIR}/src/nofrendo/mappers/map008.o.d ${OBJECTDIR}/src/nofrendo/mappers/map229.o.d ${OBJECTDIR}/src/nofrendo/mappers/map046.o.d ${OBJECTDIR}/src/nofrendo/mappers/map034.o.d ${OBJECTDIR}/src/nofrendo/mappers/map011.o.d ${OBJECTDIR}/src/nofrendo/mappers/map070.o.d ${OBJECTDIR}/src/nofrendo/mappers/mapvrc.o.d ${OBJECTDIR}/src/nofrendo/mappers/map093.o.d ${OBJECTDIR}/src/nofrendo/mappers/map015.o.d ${OBJECTDIR}/src/nofrendo/mappers/map099.o.d ${OBJECTDIR}/src/nofrendo/mappers/map064.o.d ${OBJECTDIR}/src/nofrendo/mappers/map005.o.d ${OBJECTDIR}/src/nofrendo/mappers/map041.o.d ${OBJECTDIR}/src/nofrendo/mappers/map160.o.d ${OBJECTDIR}/src/nofrendo/mappers/map024.o.d ${OBJECTDIR}/src/nofrendo/mappers/map001.o.d ${OBJECTDIR}/src/nofrendo/mappers/map087.o.d ${OBJECTDIR}/src/nofrendo/nofrendo.o.d ${OBJECTDIR}/src/nofrendo/memguard.o.d ${OBJECTDIR}/src/nofrendo/libsnss/libsnss.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/Z80/hwz.o ${OBJECTDIR}/src/disp.o ${OBJECTDIR}/src/hw.o ${OBJECTDIR}/src/vt100.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/badge.o ${OBJECTDIR}/src/nofrendo/log.o ${OBJECTDIR}/src/nofrendo/vid_drv.o ${OBJECTDIR}/src/nofrendo/gui.o ${OBJECTDIR}/src/nofrendo/intro.o ${OBJECTDIR}/src/nofrendo/nes/nes_mmc.o ${OBJECTDIR}/src/nofrendo/nes/nesinput.o ${OBJECTDIR}/src/nofrendo/nes/mmclist.o ${OBJECTDIR}/src/nofrendo/nes/nes_rom.o ${OBJECTDIR}/src/nofrendo/nes/nes_ppu.o ${OBJECTDIR}/src/nofrendo/nes/nesstate.o ${OBJECTDIR}/src/nofrendo/nes/nes.o ${OBJECTDIR}/src/nofrendo/nes/nes_pal.o ${OBJECTDIR}/src/nofrendo/pcx.o ${OBJECTDIR}/src/nofrendo/cpu/nes6502.o ${OBJECTDIR}/src/nofrendo/cpu/dis6502.o ${OBJECTDIR}/src/nofrendo/bitmap.o ${OBJECTDIR}/src/nofrendo/sndhrdw/vrcvisnd.o ${OBJECTDIR}/src/nofrendo/sndhrdw/nes_apu.o ${OBJECTDIR}/src/nofrendo/sndhrdw/fds_snd.o ${OBJECTDIR}/src/nofrendo/sndhrdw/mmc5_snd.o ${OBJECTDIR}/src/nofrendo/gui_elem.o ${OBJECTDIR}/src/nofrendo/event.o ${OBJECTDIR}/src/nofrendo/config.o ${OBJECTDIR}/src/nofrendo/mappers/map231.o ${OBJECTDIR}/src/nofrendo/mappers/map075.o ${OBJECTDIR}/src/nofrendo/mappers/map050.o ${OBJECTDIR}/src/nofrendo/mappers/map004.o ${OBJECTDIR}/src/nofrendo/mappers/map065.o ${OBJECTDIR}/src/nofrendo/mappers/map040.o ${OBJECTDIR}/src/nofrendo/mappers/map000.o ${OBJECTDIR}/src/nofrendo/mappers/map019.o ${OBJECTDIR}/src/nofrendo/mappers/map078.o ${OBJECTDIR}/src/nofrendo/mappers/map032.o ${OBJECTDIR}/src/nofrendo/mappers/map007.o ${OBJECTDIR}/src/nofrendo/mappers/map066.o ${OBJECTDIR}/src/nofrendo/mappers/map085.o ${OBJECTDIR}/src/nofrendo/mappers/map009.o ${OBJECTDIR}/src/nofrendo/mappers/map003.o ${OBJECTDIR}/src/nofrendo/mappers/map079.o ${OBJECTDIR}/src/nofrendo/mappers/map073.o ${OBJECTDIR}/src/nofrendo/mappers/map018.o ${OBJECTDIR}/src/nofrendo/mappers/map094.o ${OBJECTDIR}/src/nofrendo/mappers/map033.o ${OBJECTDIR}/src/nofrendo/mappers/map016.o ${OBJECTDIR}/src/nofrendo/mappers/map042.o ${OBJECTDIR}/src/nofrendo/mappers/map002.o ${OBJECTDIR}/src/nofrendo/mappers/map008.o ${OBJECTDIR}/src/nofrendo/mappers/map229.o ${OBJECTDIR}/src/nofrendo/mappers/map046.o ${OBJECTDIR}/src/nofrendo/mappers/map034.o ${OBJECTDIR}/src/nofrendo/mappers/map011.o ${OBJECTDIR}/src/nofrendo/mappers/map070.o ${OBJECTDIR}/src/nofrendo/mappers/mapvrc.o ${OBJECTDIR}/src/nofrendo/mappers/map093.o ${OBJECTDIR}/src/nofrendo/mappers/map015.o ${OBJECTDIR}/src/nofrendo/mappers/map099.o ${OBJECTDIR}/src/nofrendo/mappers/map064.o ${OBJECTDIR}/src/nofrendo/mappers/map005.o ${OBJECTDIR}/src/nofrendo/mappers/map041.o ${OBJECTDIR}/src/nofrendo/mappers/map160.o ${OBJECTDIR}/src/nofrendo/mappers/map024.o ${OBJECTDIR}/src/nofrendo/mappers/map001.o ${OBJECTDIR}/src/nofrendo/mappers/map087.o ${OBJECTDIR}/src/nofrendo/nofrendo.o ${OBJECTDIR}/src/nofrendo/memguard.o ${OBJECTDIR}/src/nofrendo/libsnss/libsnss.o

# Source Files
SOURCEFILES=src/Z80/hwz.c src/disp.c src/hw.c src/vt100.c src/main.c src/badge.c src/nofrendo/log.c src/nofrendo/vid_drv.c src/nofrendo/gui.c src/nofrendo/intro.c src/nofrendo/nes/nes_mmc.c src/nofrendo/nes/nesinput.c src/nofrendo/nes/mmclist.c src/nofrendo/nes/nes_rom.c src/nofrendo/nes/nes_ppu.c src/nofrendo/nes/nesstate.c src/nofrendo/nes/nes.c src/nofrendo/nes/nes_pal.c src/nofrendo/pcx.c src/nofrendo/cpu/nes6502.c src/nofrendo/cpu/dis6502.c src/nofrendo/bitmap.c src/nofrendo/sndhrdw/vrcvisnd.c src/nofrendo/sndhrdw/nes_apu.c src/nofrendo/sndhrdw/fds_snd.c src/nofrendo/sndhrdw/mmc5_snd.c src/nofrendo/gui_elem.c src/nofrendo/event.c src/nofrendo/config.c src/nofrendo/mappers/map231.c src/nofrendo/mappers/map075.c src/nofrendo/mappers/map050.c src/nofrendo/mappers/map004.c src/nofrendo/mappers/map065.c src/nofrendo/mappers/map040.c src/nofrendo/mappers/map000.c src/nofrendo/mappers/map019.c src/nofrendo/mappers/map078.c src/nofrendo/mappers/map032.c src/nofrendo/mappers/map007.c src/nofrendo/mappers/map066.c src/nofrendo/mappers/map085.c src/nofrendo/mappers/map009.c src/nofrendo/mappers/map003.c src/nofrendo/mappers/map079.c src/nofrendo/mappers/map073.c src/nofrendo/mappers/map018.c src/nofrendo/mappers/map094.c src/nofrendo/mappers/map033.c src/nofrendo/mappers/map016.c src/nofrendo/mappers/map042.c src/nofrendo/mappers/map002.c src/nofrendo/mappers/map008.c src/nofrendo/mappers/map229.c src/nofrendo/mappers/map046.c src/nofrendo/mappers/map034.c src/nofrendo/mappers/map011.c src/nofrendo/mappers/map070.c src/nofrendo/mappers/mapvrc.c src/nofrendo/mappers/map093.c src/nofrendo/mappers/map015.c src/nofrendo/mappers/map099.c src/nofrendo/mappers/map064.c src/nofrendo/mappers/map005.c src/nofrendo/mappers/map041.c src/nofrendo/mappers/map160.c src/nofrendo/mappers/map024.c src/nofrendo/mappers/map001.c src/nofrendo/mappers/map087.c src/nofrendo/nofrendo.c src/nofrendo/memguard.c src/nofrendo/libsnss/libsnss.c


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
Device=PIC32MX370F512H
ProjectDir=/Users/nitro/basic-badge/firmware/badge1.X
ConfName=default
ImagePath=dist/default/${IMAGE_TYPE}/badge1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
ImageDir=dist/default/${IMAGE_TYPE}
ImageName=badge1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  .pre ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/badge1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX370F512H
MP_LINKER_FILE_OPTION=
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
${OBJECTDIR}/src/Z80/hwz.o: src/Z80/hwz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/Z80" 
	@${RM} ${OBJECTDIR}/src/Z80/hwz.o.d 
	@${RM} ${OBJECTDIR}/src/Z80/hwz.o 
	@${FIXDEPS} "${OBJECTDIR}/src/Z80/hwz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/Z80/hwz.o.d" -o ${OBJECTDIR}/src/Z80/hwz.o src/Z80/hwz.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/disp.o: src/disp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/disp.o.d 
	@${RM} ${OBJECTDIR}/src/disp.o 
	@${FIXDEPS} "${OBJECTDIR}/src/disp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/disp.o.d" -o ${OBJECTDIR}/src/disp.o src/disp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/hw.o: src/hw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/hw.o.d 
	@${RM} ${OBJECTDIR}/src/hw.o 
	@${FIXDEPS} "${OBJECTDIR}/src/hw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/hw.o.d" -o ${OBJECTDIR}/src/hw.o src/hw.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/vt100.o: src/vt100.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/vt100.o.d 
	@${RM} ${OBJECTDIR}/src/vt100.o 
	@${FIXDEPS} "${OBJECTDIR}/src/vt100.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/vt100.o.d" -o ${OBJECTDIR}/src/vt100.o src/vt100.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/main.o.d" -o ${OBJECTDIR}/src/main.o src/main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/badge.o: src/badge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/badge.o.d 
	@${RM} ${OBJECTDIR}/src/badge.o 
	@${FIXDEPS} "${OBJECTDIR}/src/badge.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/badge.o.d" -o ${OBJECTDIR}/src/badge.o src/badge.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/log.o: src/nofrendo/log.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/log.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/log.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/log.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/log.o.d" -o ${OBJECTDIR}/src/nofrendo/log.o src/nofrendo/log.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/vid_drv.o: src/nofrendo/vid_drv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/vid_drv.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/vid_drv.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/vid_drv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/vid_drv.o.d" -o ${OBJECTDIR}/src/nofrendo/vid_drv.o src/nofrendo/vid_drv.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/gui.o: src/nofrendo/gui.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/gui.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/gui.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/gui.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/gui.o.d" -o ${OBJECTDIR}/src/nofrendo/gui.o src/nofrendo/gui.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/intro.o: src/nofrendo/intro.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/intro.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/intro.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/intro.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/intro.o.d" -o ${OBJECTDIR}/src/nofrendo/intro.o src/nofrendo/intro.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/nes_mmc.o: src/nofrendo/nes/nes_mmc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_mmc.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_mmc.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/nes_mmc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/nes_mmc.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/nes_mmc.o src/nofrendo/nes/nes_mmc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/nesinput.o: src/nofrendo/nes/nesinput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nesinput.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nesinput.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/nesinput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/nesinput.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/nesinput.o src/nofrendo/nes/nesinput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/mmclist.o: src/nofrendo/nes/mmclist.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/mmclist.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/mmclist.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/mmclist.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/mmclist.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/mmclist.o src/nofrendo/nes/mmclist.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/nes_rom.o: src/nofrendo/nes/nes_rom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_rom.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_rom.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/nes_rom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/nes_rom.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/nes_rom.o src/nofrendo/nes/nes_rom.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/nes_ppu.o: src/nofrendo/nes/nes_ppu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_ppu.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_ppu.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/nes_ppu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/nes_ppu.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/nes_ppu.o src/nofrendo/nes/nes_ppu.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/nesstate.o: src/nofrendo/nes/nesstate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nesstate.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nesstate.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/nesstate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/nesstate.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/nesstate.o src/nofrendo/nes/nesstate.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/nes.o: src/nofrendo/nes/nes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/nes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/nes.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/nes.o src/nofrendo/nes/nes.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/nes_pal.o: src/nofrendo/nes/nes_pal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_pal.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_pal.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/nes_pal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/nes_pal.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/nes_pal.o src/nofrendo/nes/nes_pal.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/pcx.o: src/nofrendo/pcx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/pcx.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/pcx.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/pcx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/pcx.o.d" -o ${OBJECTDIR}/src/nofrendo/pcx.o src/nofrendo/pcx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/cpu/nes6502.o: src/nofrendo/cpu/nes6502.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/cpu" 
	@${RM} ${OBJECTDIR}/src/nofrendo/cpu/nes6502.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/cpu/nes6502.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/cpu/nes6502.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/cpu/nes6502.o.d" -o ${OBJECTDIR}/src/nofrendo/cpu/nes6502.o src/nofrendo/cpu/nes6502.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/cpu/dis6502.o: src/nofrendo/cpu/dis6502.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/cpu" 
	@${RM} ${OBJECTDIR}/src/nofrendo/cpu/dis6502.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/cpu/dis6502.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/cpu/dis6502.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/cpu/dis6502.o.d" -o ${OBJECTDIR}/src/nofrendo/cpu/dis6502.o src/nofrendo/cpu/dis6502.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/bitmap.o: src/nofrendo/bitmap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/bitmap.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/bitmap.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/bitmap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/bitmap.o.d" -o ${OBJECTDIR}/src/nofrendo/bitmap.o src/nofrendo/bitmap.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/sndhrdw/vrcvisnd.o: src/nofrendo/sndhrdw/vrcvisnd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/sndhrdw" 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/vrcvisnd.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/vrcvisnd.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/sndhrdw/vrcvisnd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/sndhrdw/vrcvisnd.o.d" -o ${OBJECTDIR}/src/nofrendo/sndhrdw/vrcvisnd.o src/nofrendo/sndhrdw/vrcvisnd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/sndhrdw/nes_apu.o: src/nofrendo/sndhrdw/nes_apu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/sndhrdw" 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/nes_apu.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/nes_apu.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/sndhrdw/nes_apu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/sndhrdw/nes_apu.o.d" -o ${OBJECTDIR}/src/nofrendo/sndhrdw/nes_apu.o src/nofrendo/sndhrdw/nes_apu.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/sndhrdw/fds_snd.o: src/nofrendo/sndhrdw/fds_snd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/sndhrdw" 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/fds_snd.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/fds_snd.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/sndhrdw/fds_snd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/sndhrdw/fds_snd.o.d" -o ${OBJECTDIR}/src/nofrendo/sndhrdw/fds_snd.o src/nofrendo/sndhrdw/fds_snd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/sndhrdw/mmc5_snd.o: src/nofrendo/sndhrdw/mmc5_snd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/sndhrdw" 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/mmc5_snd.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/mmc5_snd.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/sndhrdw/mmc5_snd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/sndhrdw/mmc5_snd.o.d" -o ${OBJECTDIR}/src/nofrendo/sndhrdw/mmc5_snd.o src/nofrendo/sndhrdw/mmc5_snd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/gui_elem.o: src/nofrendo/gui_elem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/gui_elem.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/gui_elem.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/gui_elem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/gui_elem.o.d" -o ${OBJECTDIR}/src/nofrendo/gui_elem.o src/nofrendo/gui_elem.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/event.o: src/nofrendo/event.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/event.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/event.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/event.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/event.o.d" -o ${OBJECTDIR}/src/nofrendo/event.o src/nofrendo/event.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/config.o: src/nofrendo/config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/config.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/config.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/config.o.d" -o ${OBJECTDIR}/src/nofrendo/config.o src/nofrendo/config.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map231.o: src/nofrendo/mappers/map231.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map231.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map231.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map231.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map231.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map231.o src/nofrendo/mappers/map231.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map075.o: src/nofrendo/mappers/map075.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map075.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map075.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map075.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map075.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map075.o src/nofrendo/mappers/map075.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map050.o: src/nofrendo/mappers/map050.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map050.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map050.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map050.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map050.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map050.o src/nofrendo/mappers/map050.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map004.o: src/nofrendo/mappers/map004.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map004.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map004.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map004.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map004.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map004.o src/nofrendo/mappers/map004.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map065.o: src/nofrendo/mappers/map065.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map065.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map065.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map065.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map065.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map065.o src/nofrendo/mappers/map065.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map040.o: src/nofrendo/mappers/map040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map040.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map040.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map040.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map040.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map040.o src/nofrendo/mappers/map040.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map000.o: src/nofrendo/mappers/map000.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map000.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map000.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map000.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map000.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map000.o src/nofrendo/mappers/map000.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map019.o: src/nofrendo/mappers/map019.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map019.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map019.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map019.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map019.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map019.o src/nofrendo/mappers/map019.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map078.o: src/nofrendo/mappers/map078.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map078.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map078.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map078.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map078.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map078.o src/nofrendo/mappers/map078.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map032.o: src/nofrendo/mappers/map032.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map032.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map032.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map032.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map032.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map032.o src/nofrendo/mappers/map032.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map007.o: src/nofrendo/mappers/map007.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map007.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map007.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map007.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map007.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map007.o src/nofrendo/mappers/map007.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map066.o: src/nofrendo/mappers/map066.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map066.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map066.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map066.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map066.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map066.o src/nofrendo/mappers/map066.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map085.o: src/nofrendo/mappers/map085.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map085.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map085.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map085.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map085.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map085.o src/nofrendo/mappers/map085.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map009.o: src/nofrendo/mappers/map009.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map009.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map009.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map009.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map009.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map009.o src/nofrendo/mappers/map009.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map003.o: src/nofrendo/mappers/map003.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map003.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map003.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map003.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map003.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map003.o src/nofrendo/mappers/map003.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map079.o: src/nofrendo/mappers/map079.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map079.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map079.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map079.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map079.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map079.o src/nofrendo/mappers/map079.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map073.o: src/nofrendo/mappers/map073.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map073.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map073.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map073.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map073.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map073.o src/nofrendo/mappers/map073.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map018.o: src/nofrendo/mappers/map018.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map018.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map018.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map018.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map018.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map018.o src/nofrendo/mappers/map018.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map094.o: src/nofrendo/mappers/map094.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map094.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map094.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map094.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map094.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map094.o src/nofrendo/mappers/map094.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map033.o: src/nofrendo/mappers/map033.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map033.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map033.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map033.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map033.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map033.o src/nofrendo/mappers/map033.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map016.o: src/nofrendo/mappers/map016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map016.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map016.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map016.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map016.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map016.o src/nofrendo/mappers/map016.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map042.o: src/nofrendo/mappers/map042.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map042.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map042.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map042.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map042.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map042.o src/nofrendo/mappers/map042.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map002.o: src/nofrendo/mappers/map002.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map002.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map002.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map002.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map002.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map002.o src/nofrendo/mappers/map002.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map008.o: src/nofrendo/mappers/map008.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map008.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map008.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map008.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map008.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map008.o src/nofrendo/mappers/map008.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map229.o: src/nofrendo/mappers/map229.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map229.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map229.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map229.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map229.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map229.o src/nofrendo/mappers/map229.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map046.o: src/nofrendo/mappers/map046.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map046.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map046.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map046.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map046.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map046.o src/nofrendo/mappers/map046.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map034.o: src/nofrendo/mappers/map034.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map034.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map034.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map034.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map034.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map034.o src/nofrendo/mappers/map034.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map011.o: src/nofrendo/mappers/map011.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map011.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map011.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map011.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map011.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map011.o src/nofrendo/mappers/map011.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map070.o: src/nofrendo/mappers/map070.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map070.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map070.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map070.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map070.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map070.o src/nofrendo/mappers/map070.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/mapvrc.o: src/nofrendo/mappers/mapvrc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/mapvrc.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/mapvrc.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/mapvrc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/mapvrc.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/mapvrc.o src/nofrendo/mappers/mapvrc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map093.o: src/nofrendo/mappers/map093.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map093.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map093.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map093.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map093.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map093.o src/nofrendo/mappers/map093.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map015.o: src/nofrendo/mappers/map015.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map015.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map015.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map015.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map015.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map015.o src/nofrendo/mappers/map015.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map099.o: src/nofrendo/mappers/map099.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map099.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map099.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map099.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map099.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map099.o src/nofrendo/mappers/map099.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map064.o: src/nofrendo/mappers/map064.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map064.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map064.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map064.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map064.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map064.o src/nofrendo/mappers/map064.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map005.o: src/nofrendo/mappers/map005.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map005.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map005.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map005.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map005.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map005.o src/nofrendo/mappers/map005.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map041.o: src/nofrendo/mappers/map041.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map041.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map041.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map041.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map041.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map041.o src/nofrendo/mappers/map041.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map160.o: src/nofrendo/mappers/map160.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map160.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map160.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map160.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map160.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map160.o src/nofrendo/mappers/map160.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map024.o: src/nofrendo/mappers/map024.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map024.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map024.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map024.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map024.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map024.o src/nofrendo/mappers/map024.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map001.o: src/nofrendo/mappers/map001.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map001.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map001.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map001.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map001.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map001.o src/nofrendo/mappers/map001.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map087.o: src/nofrendo/mappers/map087.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map087.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map087.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map087.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map087.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map087.o src/nofrendo/mappers/map087.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nofrendo.o: src/nofrendo/nofrendo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nofrendo.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nofrendo.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nofrendo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nofrendo.o.d" -o ${OBJECTDIR}/src/nofrendo/nofrendo.o src/nofrendo/nofrendo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/memguard.o: src/nofrendo/memguard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/memguard.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/memguard.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/memguard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/memguard.o.d" -o ${OBJECTDIR}/src/nofrendo/memguard.o src/nofrendo/memguard.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/libsnss/libsnss.o: src/nofrendo/libsnss/libsnss.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/libsnss" 
	@${RM} ${OBJECTDIR}/src/nofrendo/libsnss/libsnss.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/libsnss/libsnss.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/libsnss/libsnss.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DSimulator=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/libsnss/libsnss.o.d" -o ${OBJECTDIR}/src/nofrendo/libsnss/libsnss.o src/nofrendo/libsnss/libsnss.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/src/Z80/hwz.o: src/Z80/hwz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/Z80" 
	@${RM} ${OBJECTDIR}/src/Z80/hwz.o.d 
	@${RM} ${OBJECTDIR}/src/Z80/hwz.o 
	@${FIXDEPS} "${OBJECTDIR}/src/Z80/hwz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/Z80/hwz.o.d" -o ${OBJECTDIR}/src/Z80/hwz.o src/Z80/hwz.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/disp.o: src/disp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/disp.o.d 
	@${RM} ${OBJECTDIR}/src/disp.o 
	@${FIXDEPS} "${OBJECTDIR}/src/disp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/disp.o.d" -o ${OBJECTDIR}/src/disp.o src/disp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/hw.o: src/hw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/hw.o.d 
	@${RM} ${OBJECTDIR}/src/hw.o 
	@${FIXDEPS} "${OBJECTDIR}/src/hw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/hw.o.d" -o ${OBJECTDIR}/src/hw.o src/hw.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/vt100.o: src/vt100.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/vt100.o.d 
	@${RM} ${OBJECTDIR}/src/vt100.o 
	@${FIXDEPS} "${OBJECTDIR}/src/vt100.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/vt100.o.d" -o ${OBJECTDIR}/src/vt100.o src/vt100.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/main.o.d" -o ${OBJECTDIR}/src/main.o src/main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/badge.o: src/badge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/badge.o.d 
	@${RM} ${OBJECTDIR}/src/badge.o 
	@${FIXDEPS} "${OBJECTDIR}/src/badge.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/badge.o.d" -o ${OBJECTDIR}/src/badge.o src/badge.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/log.o: src/nofrendo/log.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/log.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/log.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/log.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/log.o.d" -o ${OBJECTDIR}/src/nofrendo/log.o src/nofrendo/log.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/vid_drv.o: src/nofrendo/vid_drv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/vid_drv.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/vid_drv.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/vid_drv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/vid_drv.o.d" -o ${OBJECTDIR}/src/nofrendo/vid_drv.o src/nofrendo/vid_drv.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/gui.o: src/nofrendo/gui.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/gui.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/gui.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/gui.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/gui.o.d" -o ${OBJECTDIR}/src/nofrendo/gui.o src/nofrendo/gui.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/intro.o: src/nofrendo/intro.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/intro.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/intro.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/intro.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/intro.o.d" -o ${OBJECTDIR}/src/nofrendo/intro.o src/nofrendo/intro.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/nes_mmc.o: src/nofrendo/nes/nes_mmc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_mmc.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_mmc.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/nes_mmc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/nes_mmc.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/nes_mmc.o src/nofrendo/nes/nes_mmc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/nesinput.o: src/nofrendo/nes/nesinput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nesinput.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nesinput.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/nesinput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/nesinput.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/nesinput.o src/nofrendo/nes/nesinput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/mmclist.o: src/nofrendo/nes/mmclist.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/mmclist.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/mmclist.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/mmclist.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/mmclist.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/mmclist.o src/nofrendo/nes/mmclist.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/nes_rom.o: src/nofrendo/nes/nes_rom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_rom.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_rom.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/nes_rom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/nes_rom.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/nes_rom.o src/nofrendo/nes/nes_rom.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/nes_ppu.o: src/nofrendo/nes/nes_ppu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_ppu.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_ppu.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/nes_ppu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/nes_ppu.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/nes_ppu.o src/nofrendo/nes/nes_ppu.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/nesstate.o: src/nofrendo/nes/nesstate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nesstate.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nesstate.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/nesstate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/nesstate.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/nesstate.o src/nofrendo/nes/nesstate.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/nes.o: src/nofrendo/nes/nes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/nes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/nes.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/nes.o src/nofrendo/nes/nes.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nes/nes_pal.o: src/nofrendo/nes/nes_pal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/nes" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_pal.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nes/nes_pal.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nes/nes_pal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nes/nes_pal.o.d" -o ${OBJECTDIR}/src/nofrendo/nes/nes_pal.o src/nofrendo/nes/nes_pal.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/pcx.o: src/nofrendo/pcx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/pcx.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/pcx.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/pcx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/pcx.o.d" -o ${OBJECTDIR}/src/nofrendo/pcx.o src/nofrendo/pcx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/cpu/nes6502.o: src/nofrendo/cpu/nes6502.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/cpu" 
	@${RM} ${OBJECTDIR}/src/nofrendo/cpu/nes6502.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/cpu/nes6502.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/cpu/nes6502.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/cpu/nes6502.o.d" -o ${OBJECTDIR}/src/nofrendo/cpu/nes6502.o src/nofrendo/cpu/nes6502.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/cpu/dis6502.o: src/nofrendo/cpu/dis6502.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/cpu" 
	@${RM} ${OBJECTDIR}/src/nofrendo/cpu/dis6502.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/cpu/dis6502.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/cpu/dis6502.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/cpu/dis6502.o.d" -o ${OBJECTDIR}/src/nofrendo/cpu/dis6502.o src/nofrendo/cpu/dis6502.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/bitmap.o: src/nofrendo/bitmap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/bitmap.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/bitmap.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/bitmap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/bitmap.o.d" -o ${OBJECTDIR}/src/nofrendo/bitmap.o src/nofrendo/bitmap.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/sndhrdw/vrcvisnd.o: src/nofrendo/sndhrdw/vrcvisnd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/sndhrdw" 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/vrcvisnd.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/vrcvisnd.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/sndhrdw/vrcvisnd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/sndhrdw/vrcvisnd.o.d" -o ${OBJECTDIR}/src/nofrendo/sndhrdw/vrcvisnd.o src/nofrendo/sndhrdw/vrcvisnd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/sndhrdw/nes_apu.o: src/nofrendo/sndhrdw/nes_apu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/sndhrdw" 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/nes_apu.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/nes_apu.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/sndhrdw/nes_apu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/sndhrdw/nes_apu.o.d" -o ${OBJECTDIR}/src/nofrendo/sndhrdw/nes_apu.o src/nofrendo/sndhrdw/nes_apu.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/sndhrdw/fds_snd.o: src/nofrendo/sndhrdw/fds_snd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/sndhrdw" 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/fds_snd.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/fds_snd.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/sndhrdw/fds_snd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/sndhrdw/fds_snd.o.d" -o ${OBJECTDIR}/src/nofrendo/sndhrdw/fds_snd.o src/nofrendo/sndhrdw/fds_snd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/sndhrdw/mmc5_snd.o: src/nofrendo/sndhrdw/mmc5_snd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/sndhrdw" 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/mmc5_snd.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/sndhrdw/mmc5_snd.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/sndhrdw/mmc5_snd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/sndhrdw/mmc5_snd.o.d" -o ${OBJECTDIR}/src/nofrendo/sndhrdw/mmc5_snd.o src/nofrendo/sndhrdw/mmc5_snd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/gui_elem.o: src/nofrendo/gui_elem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/gui_elem.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/gui_elem.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/gui_elem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/gui_elem.o.d" -o ${OBJECTDIR}/src/nofrendo/gui_elem.o src/nofrendo/gui_elem.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/event.o: src/nofrendo/event.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/event.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/event.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/event.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/event.o.d" -o ${OBJECTDIR}/src/nofrendo/event.o src/nofrendo/event.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/config.o: src/nofrendo/config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/config.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/config.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/config.o.d" -o ${OBJECTDIR}/src/nofrendo/config.o src/nofrendo/config.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map231.o: src/nofrendo/mappers/map231.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map231.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map231.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map231.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map231.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map231.o src/nofrendo/mappers/map231.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map075.o: src/nofrendo/mappers/map075.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map075.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map075.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map075.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map075.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map075.o src/nofrendo/mappers/map075.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map050.o: src/nofrendo/mappers/map050.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map050.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map050.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map050.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map050.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map050.o src/nofrendo/mappers/map050.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map004.o: src/nofrendo/mappers/map004.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map004.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map004.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map004.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map004.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map004.o src/nofrendo/mappers/map004.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map065.o: src/nofrendo/mappers/map065.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map065.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map065.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map065.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map065.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map065.o src/nofrendo/mappers/map065.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map040.o: src/nofrendo/mappers/map040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map040.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map040.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map040.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map040.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map040.o src/nofrendo/mappers/map040.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map000.o: src/nofrendo/mappers/map000.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map000.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map000.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map000.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map000.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map000.o src/nofrendo/mappers/map000.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map019.o: src/nofrendo/mappers/map019.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map019.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map019.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map019.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map019.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map019.o src/nofrendo/mappers/map019.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map078.o: src/nofrendo/mappers/map078.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map078.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map078.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map078.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map078.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map078.o src/nofrendo/mappers/map078.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map032.o: src/nofrendo/mappers/map032.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map032.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map032.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map032.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map032.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map032.o src/nofrendo/mappers/map032.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map007.o: src/nofrendo/mappers/map007.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map007.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map007.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map007.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map007.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map007.o src/nofrendo/mappers/map007.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map066.o: src/nofrendo/mappers/map066.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map066.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map066.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map066.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map066.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map066.o src/nofrendo/mappers/map066.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map085.o: src/nofrendo/mappers/map085.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map085.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map085.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map085.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map085.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map085.o src/nofrendo/mappers/map085.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map009.o: src/nofrendo/mappers/map009.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map009.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map009.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map009.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map009.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map009.o src/nofrendo/mappers/map009.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map003.o: src/nofrendo/mappers/map003.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map003.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map003.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map003.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map003.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map003.o src/nofrendo/mappers/map003.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map079.o: src/nofrendo/mappers/map079.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map079.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map079.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map079.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map079.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map079.o src/nofrendo/mappers/map079.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map073.o: src/nofrendo/mappers/map073.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map073.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map073.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map073.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map073.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map073.o src/nofrendo/mappers/map073.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map018.o: src/nofrendo/mappers/map018.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map018.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map018.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map018.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map018.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map018.o src/nofrendo/mappers/map018.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map094.o: src/nofrendo/mappers/map094.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map094.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map094.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map094.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map094.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map094.o src/nofrendo/mappers/map094.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map033.o: src/nofrendo/mappers/map033.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map033.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map033.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map033.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map033.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map033.o src/nofrendo/mappers/map033.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map016.o: src/nofrendo/mappers/map016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map016.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map016.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map016.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map016.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map016.o src/nofrendo/mappers/map016.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map042.o: src/nofrendo/mappers/map042.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map042.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map042.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map042.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map042.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map042.o src/nofrendo/mappers/map042.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map002.o: src/nofrendo/mappers/map002.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map002.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map002.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map002.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map002.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map002.o src/nofrendo/mappers/map002.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map008.o: src/nofrendo/mappers/map008.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map008.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map008.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map008.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map008.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map008.o src/nofrendo/mappers/map008.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map229.o: src/nofrendo/mappers/map229.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map229.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map229.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map229.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map229.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map229.o src/nofrendo/mappers/map229.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map046.o: src/nofrendo/mappers/map046.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map046.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map046.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map046.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map046.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map046.o src/nofrendo/mappers/map046.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map034.o: src/nofrendo/mappers/map034.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map034.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map034.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map034.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map034.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map034.o src/nofrendo/mappers/map034.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map011.o: src/nofrendo/mappers/map011.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map011.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map011.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map011.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map011.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map011.o src/nofrendo/mappers/map011.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map070.o: src/nofrendo/mappers/map070.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map070.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map070.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map070.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map070.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map070.o src/nofrendo/mappers/map070.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/mapvrc.o: src/nofrendo/mappers/mapvrc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/mapvrc.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/mapvrc.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/mapvrc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/mapvrc.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/mapvrc.o src/nofrendo/mappers/mapvrc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map093.o: src/nofrendo/mappers/map093.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map093.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map093.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map093.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map093.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map093.o src/nofrendo/mappers/map093.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map015.o: src/nofrendo/mappers/map015.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map015.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map015.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map015.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map015.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map015.o src/nofrendo/mappers/map015.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map099.o: src/nofrendo/mappers/map099.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map099.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map099.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map099.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map099.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map099.o src/nofrendo/mappers/map099.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map064.o: src/nofrendo/mappers/map064.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map064.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map064.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map064.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map064.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map064.o src/nofrendo/mappers/map064.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map005.o: src/nofrendo/mappers/map005.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map005.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map005.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map005.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map005.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map005.o src/nofrendo/mappers/map005.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map041.o: src/nofrendo/mappers/map041.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map041.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map041.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map041.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map041.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map041.o src/nofrendo/mappers/map041.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map160.o: src/nofrendo/mappers/map160.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map160.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map160.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map160.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map160.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map160.o src/nofrendo/mappers/map160.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map024.o: src/nofrendo/mappers/map024.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map024.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map024.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map024.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map024.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map024.o src/nofrendo/mappers/map024.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map001.o: src/nofrendo/mappers/map001.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map001.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map001.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map001.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map001.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map001.o src/nofrendo/mappers/map001.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/mappers/map087.o: src/nofrendo/mappers/map087.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/mappers" 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map087.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/mappers/map087.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/mappers/map087.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/mappers/map087.o.d" -o ${OBJECTDIR}/src/nofrendo/mappers/map087.o src/nofrendo/mappers/map087.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/nofrendo.o: src/nofrendo/nofrendo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/nofrendo.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/nofrendo.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/nofrendo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/nofrendo.o.d" -o ${OBJECTDIR}/src/nofrendo/nofrendo.o src/nofrendo/nofrendo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/memguard.o: src/nofrendo/memguard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo" 
	@${RM} ${OBJECTDIR}/src/nofrendo/memguard.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/memguard.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/memguard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/memguard.o.d" -o ${OBJECTDIR}/src/nofrendo/memguard.o src/nofrendo/memguard.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/src/nofrendo/libsnss/libsnss.o: src/nofrendo/libsnss/libsnss.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/nofrendo/libsnss" 
	@${RM} ${OBJECTDIR}/src/nofrendo/libsnss/libsnss.o.d 
	@${RM} ${OBJECTDIR}/src/nofrendo/libsnss/libsnss.o 
	@${FIXDEPS} "${OBJECTDIR}/src/nofrendo/libsnss/libsnss.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -funroll-loops -D_SUPPRESS_PLIB_WARNING -I"src/nofrendo" -I"src/nofrendo/nes" -I"src/nofrendo/cpu" -I"src/nofrendo/libsnss" -I"src/nofrendo/mappers" -I"src/nofrendo/sndhrdw" -MMD -MF "${OBJECTDIR}/src/nofrendo/libsnss/libsnss.o.d" -o ${OBJECTDIR}/src/nofrendo/libsnss/libsnss.o src/nofrendo/libsnss/libsnss.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/badge1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -DSimulator=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/badge1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=Simulator=1,--defsym=_min_heap_size=82000,--defsym=_min_stack_size=128,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,../../games/nesgame.o
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/badge1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/badge1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=82000,--defsym=_min_stack_size=128,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,../../games/nesgame.o
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/badge1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif

.pre:
	@echo "--------------------------------------"
	@echo "User defined pre-build step: [./prepare.sh]"
	@./prepare.sh
	@echo "--------------------------------------"

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
