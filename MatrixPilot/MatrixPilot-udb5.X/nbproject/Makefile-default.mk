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
FINAL_IMAGE=${DISTDIR}/MatrixPilot-udb5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/MatrixPilot-udb5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../libDCM/deadReckoning.c ../../libDCM/estAirspeed.c ../../libDCM/estAltitude.c ../../libDCM/estLocation.c ../../libDCM/estWind.c ../../libDCM/estYawDrift.c ../../libDCM/gpsData.c ../../libDCM/gpsParseCommon.c ../../libDCM/gpsParseMTEK.c ../../libDCM/gpsParseNMEA.c ../../libDCM/gpsParseSTD.c ../../libDCM/gpsParseUBX.c ../../libDCM/hilsim.c ../../libDCM/libDCM.c ../../libDCM/mag_drift.c ../../libDCM/mathlib.c ../../libDCM/mathlibNAV.c ../../libDCM/rmat.c ../../libFlashFS/AT45D.c ../../libFlashFS/AT45D_DMA.c ../../libFlashFS/AT45D_FS.c ../../libFlashFS/EEPROM.c ../../libFlashFS/EEPROM_FS.c ../../libFlashFS/filesys.c ../../libFlashFS/MDD_AT45D.c ../../libFlashFS/MDD_EEPROM.c ../../libFlashFS/usb.c ../../libFlashFS/usb_cdc.c ../../libFlashFS/usb_descriptors.c ../../libFlashFS/usb_msd.c ../../libUDB/24LC256.c ../../libUDB/ADchannel.c ../../libUDB/analog2digital_auav3.c ../../libUDB/analog2digital_udb4.c ../../libUDB/analog2digital_udb5.c ../../libUDB/analogs.c ../../libUDB/background.c ../../libUDB/barometer.c ../../libUDB/cll_io.c ../../libUDB/eeprom_udb4.c ../../libUDB/events.c ../../libUDB/fbcl.s ../../libUDB/heartbeat.c ../../libUDB/I2C1.c ../../libUDB/I2C2.c ../../libUDB/libUDB.c ../../libUDB/magnetometer.c ../../libUDB/mcu.c ../../libUDB/mpu6000.c ../../libUDB/mpu_spi.c ../../libUDB/osd.c ../../libUDB/osd_bit.c ../../libUDB/osd_spi.c ../../libUDB/radioIn.c ../../libUDB/read.c ../../libUDB/serialIO.c ../../libUDB/servoOut.c ../../libUDB/sonarIn.c ../../libUDB/traps.c ../../libUDB/traps_asm.s ../../libUDB/uart.c ../../libUDB/write.c ../../libUDB/Lidar.c ../../libVectorMatrix/madd.s ../../libVectorMatrix/mmul.s ../../libVectorMatrix/mscl.s ../../libVectorMatrix/msub.s ../../libVectorMatrix/mtrp.s ../../libVectorMatrix/vadd.s ../../libVectorMatrix/vcon.s ../../libVectorMatrix/vcopy.s ../../libVectorMatrix/vcor.s ../../libVectorMatrix/vdot.s ../../libVectorMatrix/vmax.s ../../libVectorMatrix/vmin.s ../../libVectorMatrix/vmul.s ../../libVectorMatrix/vneg.s ../../libVectorMatrix/vpow.s ../../libVectorMatrix/vscl.s ../../libVectorMatrix/vsub.s ../../libVectorMatrix/vzpad.s ../../MatrixPilot/airspeedCntrl.c ../../MatrixPilot/altitudeCntrl.c ../../MatrixPilot/altitudeCntrlVariable.c ../../MatrixPilot/behavior.c ../../MatrixPilot/cameraCntrl.c ../../MatrixPilot/config.c ../../MatrixPilot/config_tests.c ../../MatrixPilot/console.c ../../MatrixPilot/data_services.c ../../MatrixPilot/data_storage.c ../../MatrixPilot/euler_angles.c ../../MatrixPilot/flight_state.c ../../MatrixPilot/flightplan-logo.c ../../MatrixPilot/flightplan-waypoints.c ../../MatrixPilot/flightplan.c ../../MatrixPilot/fly_by_datalink.c ../../MatrixPilot/helicalTurnCntrl.c ../../MatrixPilot/main.c ../../MatrixPilot/MAVFlexiFunctions.c ../../MatrixPilot/MAVLink.c ../../MatrixPilot/MAVMission.c ../../MatrixPilot/MAVParams.c ../../MatrixPilot/MAVUDBExtra.c ../../MatrixPilot/minim_osd.c ../../MatrixPilot/minIni.c ../../MatrixPilot/mode_switch.c ../../MatrixPilot/mp_osd.c ../../MatrixPilot/navigate.c ../../MatrixPilot/nv_memory_table.c ../../MatrixPilot/parameter_table.c ../../MatrixPilot/parameter_table2.c ../../MatrixPilot/parameter_table_init.c ../../MatrixPilot/pitchCntrl.c ../../MatrixPilot/preflight.c ../../MatrixPilot/redef.c ../../MatrixPilot/remzibi_osd.c ../../MatrixPilot/ring_buffer.c ../../MatrixPilot/rollCntrl.c ../../MatrixPilot/servoMix.c ../../MatrixPilot/servoPrepare.c ../../MatrixPilot/sonarCntrl.c ../../MatrixPilot/stack.S ../../MatrixPilot/states.c ../../MatrixPilot/telemetry.c ../../MatrixPilot/telemetry_log.c ../../MatrixPilot/yawCntrl.c ../motorCntrl.c ../../MAVLink/include/bittest.c ../../MAVLink/MAVFTP.c ../../Microchip/MDD-File-System/FSIO.c ../../Microchip/MDD-File-System/SD-SPI.c ../../Microchip/USB/CDC-Device-Driver/usb_function_cdc.c ../../Microchip/USB/MSD-Device-Driver/usb_function_msd.c ../../Microchip/USB/usb_device.c ../../Microchip/USB/usb_hal_dspic33e.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1077471063/deadReckoning.o ${OBJECTDIR}/_ext/1077471063/estAirspeed.o ${OBJECTDIR}/_ext/1077471063/estAltitude.o ${OBJECTDIR}/_ext/1077471063/estLocation.o ${OBJECTDIR}/_ext/1077471063/estWind.o ${OBJECTDIR}/_ext/1077471063/estYawDrift.o ${OBJECTDIR}/_ext/1077471063/gpsData.o ${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o ${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o ${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o ${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o ${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o ${OBJECTDIR}/_ext/1077471063/hilsim.o ${OBJECTDIR}/_ext/1077471063/libDCM.o ${OBJECTDIR}/_ext/1077471063/mag_drift.o ${OBJECTDIR}/_ext/1077471063/mathlib.o ${OBJECTDIR}/_ext/1077471063/mathlibNAV.o ${OBJECTDIR}/_ext/1077471063/rmat.o ${OBJECTDIR}/_ext/1864667112/AT45D.o ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o ${OBJECTDIR}/_ext/1864667112/EEPROM.o ${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o ${OBJECTDIR}/_ext/1864667112/filesys.o ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o ${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o ${OBJECTDIR}/_ext/1864667112/usb.o ${OBJECTDIR}/_ext/1864667112/usb_cdc.o ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o ${OBJECTDIR}/_ext/1864667112/usb_msd.o ${OBJECTDIR}/_ext/1077454706/24LC256.o ${OBJECTDIR}/_ext/1077454706/ADchannel.o ${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o ${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o ${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o ${OBJECTDIR}/_ext/1077454706/analogs.o ${OBJECTDIR}/_ext/1077454706/background.o ${OBJECTDIR}/_ext/1077454706/barometer.o ${OBJECTDIR}/_ext/1077454706/cll_io.o ${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o ${OBJECTDIR}/_ext/1077454706/events.o ${OBJECTDIR}/_ext/1077454706/fbcl.o ${OBJECTDIR}/_ext/1077454706/heartbeat.o ${OBJECTDIR}/_ext/1077454706/I2C1.o ${OBJECTDIR}/_ext/1077454706/I2C2.o ${OBJECTDIR}/_ext/1077454706/libUDB.o ${OBJECTDIR}/_ext/1077454706/magnetometer.o ${OBJECTDIR}/_ext/1077454706/mcu.o ${OBJECTDIR}/_ext/1077454706/mpu6000.o ${OBJECTDIR}/_ext/1077454706/mpu_spi.o ${OBJECTDIR}/_ext/1077454706/osd.o ${OBJECTDIR}/_ext/1077454706/osd_bit.o ${OBJECTDIR}/_ext/1077454706/osd_spi.o ${OBJECTDIR}/_ext/1077454706/radioIn.o ${OBJECTDIR}/_ext/1077454706/read.o ${OBJECTDIR}/_ext/1077454706/serialIO.o ${OBJECTDIR}/_ext/1077454706/servoOut.o ${OBJECTDIR}/_ext/1077454706/sonarIn.o ${OBJECTDIR}/_ext/1077454706/traps.o ${OBJECTDIR}/_ext/1077454706/traps_asm.o ${OBJECTDIR}/_ext/1077454706/uart.o ${OBJECTDIR}/_ext/1077454706/write.o ${OBJECTDIR}/_ext/1077454706/Lidar.o ${OBJECTDIR}/_ext/679848855/madd.o ${OBJECTDIR}/_ext/679848855/mmul.o ${OBJECTDIR}/_ext/679848855/mscl.o ${OBJECTDIR}/_ext/679848855/msub.o ${OBJECTDIR}/_ext/679848855/mtrp.o ${OBJECTDIR}/_ext/679848855/vadd.o ${OBJECTDIR}/_ext/679848855/vcon.o ${OBJECTDIR}/_ext/679848855/vcopy.o ${OBJECTDIR}/_ext/679848855/vcor.o ${OBJECTDIR}/_ext/679848855/vdot.o ${OBJECTDIR}/_ext/679848855/vmax.o ${OBJECTDIR}/_ext/679848855/vmin.o ${OBJECTDIR}/_ext/679848855/vmul.o ${OBJECTDIR}/_ext/679848855/vneg.o ${OBJECTDIR}/_ext/679848855/vpow.o ${OBJECTDIR}/_ext/679848855/vscl.o ${OBJECTDIR}/_ext/679848855/vsub.o ${OBJECTDIR}/_ext/679848855/vzpad.o ${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o ${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o ${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o ${OBJECTDIR}/_ext/1363575369/behavior.o ${OBJECTDIR}/_ext/1363575369/cameraCntrl.o ${OBJECTDIR}/_ext/1363575369/config.o ${OBJECTDIR}/_ext/1363575369/config_tests.o ${OBJECTDIR}/_ext/1363575369/console.o ${OBJECTDIR}/_ext/1363575369/data_services.o ${OBJECTDIR}/_ext/1363575369/data_storage.o ${OBJECTDIR}/_ext/1363575369/euler_angles.o ${OBJECTDIR}/_ext/1363575369/flight_state.o ${OBJECTDIR}/_ext/1363575369/flightplan-logo.o ${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o ${OBJECTDIR}/_ext/1363575369/flightplan.o ${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o ${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o ${OBJECTDIR}/_ext/1363575369/main.o ${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o ${OBJECTDIR}/_ext/1363575369/MAVLink.o ${OBJECTDIR}/_ext/1363575369/MAVMission.o ${OBJECTDIR}/_ext/1363575369/MAVParams.o ${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o ${OBJECTDIR}/_ext/1363575369/minim_osd.o ${OBJECTDIR}/_ext/1363575369/minIni.o ${OBJECTDIR}/_ext/1363575369/mode_switch.o ${OBJECTDIR}/_ext/1363575369/mp_osd.o ${OBJECTDIR}/_ext/1363575369/navigate.o ${OBJECTDIR}/_ext/1363575369/nv_memory_table.o ${OBJECTDIR}/_ext/1363575369/parameter_table.o ${OBJECTDIR}/_ext/1363575369/parameter_table2.o ${OBJECTDIR}/_ext/1363575369/parameter_table_init.o ${OBJECTDIR}/_ext/1363575369/pitchCntrl.o ${OBJECTDIR}/_ext/1363575369/preflight.o ${OBJECTDIR}/_ext/1363575369/redef.o ${OBJECTDIR}/_ext/1363575369/remzibi_osd.o ${OBJECTDIR}/_ext/1363575369/ring_buffer.o ${OBJECTDIR}/_ext/1363575369/rollCntrl.o ${OBJECTDIR}/_ext/1363575369/servoMix.o ${OBJECTDIR}/_ext/1363575369/servoPrepare.o ${OBJECTDIR}/_ext/1363575369/sonarCntrl.o ${OBJECTDIR}/_ext/1363575369/stack.o ${OBJECTDIR}/_ext/1363575369/states.o ${OBJECTDIR}/_ext/1363575369/telemetry.o ${OBJECTDIR}/_ext/1363575369/telemetry_log.o ${OBJECTDIR}/_ext/1363575369/yawCntrl.o ${OBJECTDIR}/_ext/1472/motorCntrl.o ${OBJECTDIR}/_ext/813967445/bittest.o ${OBJECTDIR}/_ext/1940647236/MAVFTP.o ${OBJECTDIR}/_ext/264835745/FSIO.o ${OBJECTDIR}/_ext/264835745/SD-SPI.o ${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o ${OBJECTDIR}/_ext/629040614/usb_function_msd.o ${OBJECTDIR}/_ext/713068069/usb_device.o ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1077471063/deadReckoning.o.d ${OBJECTDIR}/_ext/1077471063/estAirspeed.o.d ${OBJECTDIR}/_ext/1077471063/estAltitude.o.d ${OBJECTDIR}/_ext/1077471063/estLocation.o.d ${OBJECTDIR}/_ext/1077471063/estWind.o.d ${OBJECTDIR}/_ext/1077471063/estYawDrift.o.d ${OBJECTDIR}/_ext/1077471063/gpsData.o.d ${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o.d ${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o.d ${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o.d ${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o.d ${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o.d ${OBJECTDIR}/_ext/1077471063/hilsim.o.d ${OBJECTDIR}/_ext/1077471063/libDCM.o.d ${OBJECTDIR}/_ext/1077471063/mag_drift.o.d ${OBJECTDIR}/_ext/1077471063/mathlib.o.d ${OBJECTDIR}/_ext/1077471063/mathlibNAV.o.d ${OBJECTDIR}/_ext/1077471063/rmat.o.d ${OBJECTDIR}/_ext/1864667112/AT45D.o.d ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d ${OBJECTDIR}/_ext/1864667112/EEPROM.o.d ${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o.d ${OBJECTDIR}/_ext/1864667112/filesys.o.d ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d ${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o.d ${OBJECTDIR}/_ext/1864667112/usb.o.d ${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d ${OBJECTDIR}/_ext/1864667112/usb_msd.o.d ${OBJECTDIR}/_ext/1077454706/24LC256.o.d ${OBJECTDIR}/_ext/1077454706/ADchannel.o.d ${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o.d ${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o.d ${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o.d ${OBJECTDIR}/_ext/1077454706/analogs.o.d ${OBJECTDIR}/_ext/1077454706/background.o.d ${OBJECTDIR}/_ext/1077454706/barometer.o.d ${OBJECTDIR}/_ext/1077454706/cll_io.o.d ${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o.d ${OBJECTDIR}/_ext/1077454706/events.o.d ${OBJECTDIR}/_ext/1077454706/fbcl.o.d ${OBJECTDIR}/_ext/1077454706/heartbeat.o.d ${OBJECTDIR}/_ext/1077454706/I2C1.o.d ${OBJECTDIR}/_ext/1077454706/I2C2.o.d ${OBJECTDIR}/_ext/1077454706/libUDB.o.d ${OBJECTDIR}/_ext/1077454706/magnetometer.o.d ${OBJECTDIR}/_ext/1077454706/mcu.o.d ${OBJECTDIR}/_ext/1077454706/mpu6000.o.d ${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d ${OBJECTDIR}/_ext/1077454706/osd.o.d ${OBJECTDIR}/_ext/1077454706/osd_bit.o.d ${OBJECTDIR}/_ext/1077454706/osd_spi.o.d ${OBJECTDIR}/_ext/1077454706/radioIn.o.d ${OBJECTDIR}/_ext/1077454706/read.o.d ${OBJECTDIR}/_ext/1077454706/serialIO.o.d ${OBJECTDIR}/_ext/1077454706/servoOut.o.d ${OBJECTDIR}/_ext/1077454706/sonarIn.o.d ${OBJECTDIR}/_ext/1077454706/traps.o.d ${OBJECTDIR}/_ext/1077454706/traps_asm.o.d ${OBJECTDIR}/_ext/1077454706/uart.o.d ${OBJECTDIR}/_ext/1077454706/write.o.d ${OBJECTDIR}/_ext/1077454706/Lidar.o.d ${OBJECTDIR}/_ext/679848855/madd.o.d ${OBJECTDIR}/_ext/679848855/mmul.o.d ${OBJECTDIR}/_ext/679848855/mscl.o.d ${OBJECTDIR}/_ext/679848855/msub.o.d ${OBJECTDIR}/_ext/679848855/mtrp.o.d ${OBJECTDIR}/_ext/679848855/vadd.o.d ${OBJECTDIR}/_ext/679848855/vcon.o.d ${OBJECTDIR}/_ext/679848855/vcopy.o.d ${OBJECTDIR}/_ext/679848855/vcor.o.d ${OBJECTDIR}/_ext/679848855/vdot.o.d ${OBJECTDIR}/_ext/679848855/vmax.o.d ${OBJECTDIR}/_ext/679848855/vmin.o.d ${OBJECTDIR}/_ext/679848855/vmul.o.d ${OBJECTDIR}/_ext/679848855/vneg.o.d ${OBJECTDIR}/_ext/679848855/vpow.o.d ${OBJECTDIR}/_ext/679848855/vscl.o.d ${OBJECTDIR}/_ext/679848855/vsub.o.d ${OBJECTDIR}/_ext/679848855/vzpad.o.d ${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o.d ${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o.d ${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o.d ${OBJECTDIR}/_ext/1363575369/behavior.o.d ${OBJECTDIR}/_ext/1363575369/cameraCntrl.o.d ${OBJECTDIR}/_ext/1363575369/config.o.d ${OBJECTDIR}/_ext/1363575369/config_tests.o.d ${OBJECTDIR}/_ext/1363575369/console.o.d ${OBJECTDIR}/_ext/1363575369/data_services.o.d ${OBJECTDIR}/_ext/1363575369/data_storage.o.d ${OBJECTDIR}/_ext/1363575369/euler_angles.o.d ${OBJECTDIR}/_ext/1363575369/flight_state.o.d ${OBJECTDIR}/_ext/1363575369/flightplan-logo.o.d ${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o.d ${OBJECTDIR}/_ext/1363575369/flightplan.o.d ${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o.d ${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o.d ${OBJECTDIR}/_ext/1363575369/main.o.d ${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o.d ${OBJECTDIR}/_ext/1363575369/MAVLink.o.d ${OBJECTDIR}/_ext/1363575369/MAVMission.o.d ${OBJECTDIR}/_ext/1363575369/MAVParams.o.d ${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o.d ${OBJECTDIR}/_ext/1363575369/minim_osd.o.d ${OBJECTDIR}/_ext/1363575369/minIni.o.d ${OBJECTDIR}/_ext/1363575369/mode_switch.o.d ${OBJECTDIR}/_ext/1363575369/mp_osd.o.d ${OBJECTDIR}/_ext/1363575369/navigate.o.d ${OBJECTDIR}/_ext/1363575369/nv_memory_table.o.d ${OBJECTDIR}/_ext/1363575369/parameter_table.o.d ${OBJECTDIR}/_ext/1363575369/parameter_table2.o.d ${OBJECTDIR}/_ext/1363575369/parameter_table_init.o.d ${OBJECTDIR}/_ext/1363575369/pitchCntrl.o.d ${OBJECTDIR}/_ext/1363575369/preflight.o.d ${OBJECTDIR}/_ext/1363575369/redef.o.d ${OBJECTDIR}/_ext/1363575369/remzibi_osd.o.d ${OBJECTDIR}/_ext/1363575369/ring_buffer.o.d ${OBJECTDIR}/_ext/1363575369/rollCntrl.o.d ${OBJECTDIR}/_ext/1363575369/servoMix.o.d ${OBJECTDIR}/_ext/1363575369/servoPrepare.o.d ${OBJECTDIR}/_ext/1363575369/sonarCntrl.o.d ${OBJECTDIR}/_ext/1363575369/stack.o.d ${OBJECTDIR}/_ext/1363575369/states.o.d ${OBJECTDIR}/_ext/1363575369/telemetry.o.d ${OBJECTDIR}/_ext/1363575369/telemetry_log.o.d ${OBJECTDIR}/_ext/1363575369/yawCntrl.o.d ${OBJECTDIR}/_ext/1472/motorCntrl.o.d ${OBJECTDIR}/_ext/813967445/bittest.o.d ${OBJECTDIR}/_ext/1940647236/MAVFTP.o.d ${OBJECTDIR}/_ext/264835745/FSIO.o.d ${OBJECTDIR}/_ext/264835745/SD-SPI.o.d ${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o.d ${OBJECTDIR}/_ext/629040614/usb_function_msd.o.d ${OBJECTDIR}/_ext/713068069/usb_device.o.d ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1077471063/deadReckoning.o ${OBJECTDIR}/_ext/1077471063/estAirspeed.o ${OBJECTDIR}/_ext/1077471063/estAltitude.o ${OBJECTDIR}/_ext/1077471063/estLocation.o ${OBJECTDIR}/_ext/1077471063/estWind.o ${OBJECTDIR}/_ext/1077471063/estYawDrift.o ${OBJECTDIR}/_ext/1077471063/gpsData.o ${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o ${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o ${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o ${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o ${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o ${OBJECTDIR}/_ext/1077471063/hilsim.o ${OBJECTDIR}/_ext/1077471063/libDCM.o ${OBJECTDIR}/_ext/1077471063/mag_drift.o ${OBJECTDIR}/_ext/1077471063/mathlib.o ${OBJECTDIR}/_ext/1077471063/mathlibNAV.o ${OBJECTDIR}/_ext/1077471063/rmat.o ${OBJECTDIR}/_ext/1864667112/AT45D.o ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o ${OBJECTDIR}/_ext/1864667112/EEPROM.o ${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o ${OBJECTDIR}/_ext/1864667112/filesys.o ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o ${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o ${OBJECTDIR}/_ext/1864667112/usb.o ${OBJECTDIR}/_ext/1864667112/usb_cdc.o ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o ${OBJECTDIR}/_ext/1864667112/usb_msd.o ${OBJECTDIR}/_ext/1077454706/24LC256.o ${OBJECTDIR}/_ext/1077454706/ADchannel.o ${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o ${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o ${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o ${OBJECTDIR}/_ext/1077454706/analogs.o ${OBJECTDIR}/_ext/1077454706/background.o ${OBJECTDIR}/_ext/1077454706/barometer.o ${OBJECTDIR}/_ext/1077454706/cll_io.o ${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o ${OBJECTDIR}/_ext/1077454706/events.o ${OBJECTDIR}/_ext/1077454706/fbcl.o ${OBJECTDIR}/_ext/1077454706/heartbeat.o ${OBJECTDIR}/_ext/1077454706/I2C1.o ${OBJECTDIR}/_ext/1077454706/I2C2.o ${OBJECTDIR}/_ext/1077454706/libUDB.o ${OBJECTDIR}/_ext/1077454706/magnetometer.o ${OBJECTDIR}/_ext/1077454706/mcu.o ${OBJECTDIR}/_ext/1077454706/mpu6000.o ${OBJECTDIR}/_ext/1077454706/mpu_spi.o ${OBJECTDIR}/_ext/1077454706/osd.o ${OBJECTDIR}/_ext/1077454706/osd_bit.o ${OBJECTDIR}/_ext/1077454706/osd_spi.o ${OBJECTDIR}/_ext/1077454706/radioIn.o ${OBJECTDIR}/_ext/1077454706/read.o ${OBJECTDIR}/_ext/1077454706/serialIO.o ${OBJECTDIR}/_ext/1077454706/servoOut.o ${OBJECTDIR}/_ext/1077454706/sonarIn.o ${OBJECTDIR}/_ext/1077454706/traps.o ${OBJECTDIR}/_ext/1077454706/traps_asm.o ${OBJECTDIR}/_ext/1077454706/uart.o ${OBJECTDIR}/_ext/1077454706/write.o ${OBJECTDIR}/_ext/1077454706/Lidar.o ${OBJECTDIR}/_ext/679848855/madd.o ${OBJECTDIR}/_ext/679848855/mmul.o ${OBJECTDIR}/_ext/679848855/mscl.o ${OBJECTDIR}/_ext/679848855/msub.o ${OBJECTDIR}/_ext/679848855/mtrp.o ${OBJECTDIR}/_ext/679848855/vadd.o ${OBJECTDIR}/_ext/679848855/vcon.o ${OBJECTDIR}/_ext/679848855/vcopy.o ${OBJECTDIR}/_ext/679848855/vcor.o ${OBJECTDIR}/_ext/679848855/vdot.o ${OBJECTDIR}/_ext/679848855/vmax.o ${OBJECTDIR}/_ext/679848855/vmin.o ${OBJECTDIR}/_ext/679848855/vmul.o ${OBJECTDIR}/_ext/679848855/vneg.o ${OBJECTDIR}/_ext/679848855/vpow.o ${OBJECTDIR}/_ext/679848855/vscl.o ${OBJECTDIR}/_ext/679848855/vsub.o ${OBJECTDIR}/_ext/679848855/vzpad.o ${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o ${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o ${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o ${OBJECTDIR}/_ext/1363575369/behavior.o ${OBJECTDIR}/_ext/1363575369/cameraCntrl.o ${OBJECTDIR}/_ext/1363575369/config.o ${OBJECTDIR}/_ext/1363575369/config_tests.o ${OBJECTDIR}/_ext/1363575369/console.o ${OBJECTDIR}/_ext/1363575369/data_services.o ${OBJECTDIR}/_ext/1363575369/data_storage.o ${OBJECTDIR}/_ext/1363575369/euler_angles.o ${OBJECTDIR}/_ext/1363575369/flight_state.o ${OBJECTDIR}/_ext/1363575369/flightplan-logo.o ${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o ${OBJECTDIR}/_ext/1363575369/flightplan.o ${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o ${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o ${OBJECTDIR}/_ext/1363575369/main.o ${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o ${OBJECTDIR}/_ext/1363575369/MAVLink.o ${OBJECTDIR}/_ext/1363575369/MAVMission.o ${OBJECTDIR}/_ext/1363575369/MAVParams.o ${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o ${OBJECTDIR}/_ext/1363575369/minim_osd.o ${OBJECTDIR}/_ext/1363575369/minIni.o ${OBJECTDIR}/_ext/1363575369/mode_switch.o ${OBJECTDIR}/_ext/1363575369/mp_osd.o ${OBJECTDIR}/_ext/1363575369/navigate.o ${OBJECTDIR}/_ext/1363575369/nv_memory_table.o ${OBJECTDIR}/_ext/1363575369/parameter_table.o ${OBJECTDIR}/_ext/1363575369/parameter_table2.o ${OBJECTDIR}/_ext/1363575369/parameter_table_init.o ${OBJECTDIR}/_ext/1363575369/pitchCntrl.o ${OBJECTDIR}/_ext/1363575369/preflight.o ${OBJECTDIR}/_ext/1363575369/redef.o ${OBJECTDIR}/_ext/1363575369/remzibi_osd.o ${OBJECTDIR}/_ext/1363575369/ring_buffer.o ${OBJECTDIR}/_ext/1363575369/rollCntrl.o ${OBJECTDIR}/_ext/1363575369/servoMix.o ${OBJECTDIR}/_ext/1363575369/servoPrepare.o ${OBJECTDIR}/_ext/1363575369/sonarCntrl.o ${OBJECTDIR}/_ext/1363575369/stack.o ${OBJECTDIR}/_ext/1363575369/states.o ${OBJECTDIR}/_ext/1363575369/telemetry.o ${OBJECTDIR}/_ext/1363575369/telemetry_log.o ${OBJECTDIR}/_ext/1363575369/yawCntrl.o ${OBJECTDIR}/_ext/1472/motorCntrl.o ${OBJECTDIR}/_ext/813967445/bittest.o ${OBJECTDIR}/_ext/1940647236/MAVFTP.o ${OBJECTDIR}/_ext/264835745/FSIO.o ${OBJECTDIR}/_ext/264835745/SD-SPI.o ${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o ${OBJECTDIR}/_ext/629040614/usb_function_msd.o ${OBJECTDIR}/_ext/713068069/usb_device.o ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o

# Source Files
SOURCEFILES=../../libDCM/deadReckoning.c ../../libDCM/estAirspeed.c ../../libDCM/estAltitude.c ../../libDCM/estLocation.c ../../libDCM/estWind.c ../../libDCM/estYawDrift.c ../../libDCM/gpsData.c ../../libDCM/gpsParseCommon.c ../../libDCM/gpsParseMTEK.c ../../libDCM/gpsParseNMEA.c ../../libDCM/gpsParseSTD.c ../../libDCM/gpsParseUBX.c ../../libDCM/hilsim.c ../../libDCM/libDCM.c ../../libDCM/mag_drift.c ../../libDCM/mathlib.c ../../libDCM/mathlibNAV.c ../../libDCM/rmat.c ../../libFlashFS/AT45D.c ../../libFlashFS/AT45D_DMA.c ../../libFlashFS/AT45D_FS.c ../../libFlashFS/EEPROM.c ../../libFlashFS/EEPROM_FS.c ../../libFlashFS/filesys.c ../../libFlashFS/MDD_AT45D.c ../../libFlashFS/MDD_EEPROM.c ../../libFlashFS/usb.c ../../libFlashFS/usb_cdc.c ../../libFlashFS/usb_descriptors.c ../../libFlashFS/usb_msd.c ../../libUDB/24LC256.c ../../libUDB/ADchannel.c ../../libUDB/analog2digital_auav3.c ../../libUDB/analog2digital_udb4.c ../../libUDB/analog2digital_udb5.c ../../libUDB/analogs.c ../../libUDB/background.c ../../libUDB/barometer.c ../../libUDB/cll_io.c ../../libUDB/eeprom_udb4.c ../../libUDB/events.c ../../libUDB/fbcl.s ../../libUDB/heartbeat.c ../../libUDB/I2C1.c ../../libUDB/I2C2.c ../../libUDB/libUDB.c ../../libUDB/magnetometer.c ../../libUDB/mcu.c ../../libUDB/mpu6000.c ../../libUDB/mpu_spi.c ../../libUDB/osd.c ../../libUDB/osd_bit.c ../../libUDB/osd_spi.c ../../libUDB/radioIn.c ../../libUDB/read.c ../../libUDB/serialIO.c ../../libUDB/servoOut.c ../../libUDB/sonarIn.c ../../libUDB/traps.c ../../libUDB/traps_asm.s ../../libUDB/uart.c ../../libUDB/write.c ../../libUDB/Lidar.c ../../libVectorMatrix/madd.s ../../libVectorMatrix/mmul.s ../../libVectorMatrix/mscl.s ../../libVectorMatrix/msub.s ../../libVectorMatrix/mtrp.s ../../libVectorMatrix/vadd.s ../../libVectorMatrix/vcon.s ../../libVectorMatrix/vcopy.s ../../libVectorMatrix/vcor.s ../../libVectorMatrix/vdot.s ../../libVectorMatrix/vmax.s ../../libVectorMatrix/vmin.s ../../libVectorMatrix/vmul.s ../../libVectorMatrix/vneg.s ../../libVectorMatrix/vpow.s ../../libVectorMatrix/vscl.s ../../libVectorMatrix/vsub.s ../../libVectorMatrix/vzpad.s ../../MatrixPilot/airspeedCntrl.c ../../MatrixPilot/altitudeCntrl.c ../../MatrixPilot/altitudeCntrlVariable.c ../../MatrixPilot/behavior.c ../../MatrixPilot/cameraCntrl.c ../../MatrixPilot/config.c ../../MatrixPilot/config_tests.c ../../MatrixPilot/console.c ../../MatrixPilot/data_services.c ../../MatrixPilot/data_storage.c ../../MatrixPilot/euler_angles.c ../../MatrixPilot/flight_state.c ../../MatrixPilot/flightplan-logo.c ../../MatrixPilot/flightplan-waypoints.c ../../MatrixPilot/flightplan.c ../../MatrixPilot/fly_by_datalink.c ../../MatrixPilot/helicalTurnCntrl.c ../../MatrixPilot/main.c ../../MatrixPilot/MAVFlexiFunctions.c ../../MatrixPilot/MAVLink.c ../../MatrixPilot/MAVMission.c ../../MatrixPilot/MAVParams.c ../../MatrixPilot/MAVUDBExtra.c ../../MatrixPilot/minim_osd.c ../../MatrixPilot/minIni.c ../../MatrixPilot/mode_switch.c ../../MatrixPilot/mp_osd.c ../../MatrixPilot/navigate.c ../../MatrixPilot/nv_memory_table.c ../../MatrixPilot/parameter_table.c ../../MatrixPilot/parameter_table2.c ../../MatrixPilot/parameter_table_init.c ../../MatrixPilot/pitchCntrl.c ../../MatrixPilot/preflight.c ../../MatrixPilot/redef.c ../../MatrixPilot/remzibi_osd.c ../../MatrixPilot/ring_buffer.c ../../MatrixPilot/rollCntrl.c ../../MatrixPilot/servoMix.c ../../MatrixPilot/servoPrepare.c ../../MatrixPilot/sonarCntrl.c ../../MatrixPilot/stack.S ../../MatrixPilot/states.c ../../MatrixPilot/telemetry.c ../../MatrixPilot/telemetry_log.c ../../MatrixPilot/yawCntrl.c ../motorCntrl.c ../../MAVLink/include/bittest.c ../../MAVLink/MAVFTP.c ../../Microchip/MDD-File-System/FSIO.c ../../Microchip/MDD-File-System/SD-SPI.c ../../Microchip/USB/CDC-Device-Driver/usb_function_cdc.c ../../Microchip/USB/MSD-Device-Driver/usb_function_msd.c ../../Microchip/USB/usb_device.c ../../Microchip/USB/usb_hal_dspic33e.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/MatrixPilot-udb5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ256GP710A
MP_LINKER_FILE_OPTION=,--script=p33FJ256GP710A.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1077471063/deadReckoning.o: ../../libDCM/deadReckoning.c  .generated_files/flags/default/123d00163ebe3c8d21f81094bb26bb197f720679 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/deadReckoning.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/deadReckoning.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/deadReckoning.c  -o ${OBJECTDIR}/_ext/1077471063/deadReckoning.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/deadReckoning.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estAirspeed.o: ../../libDCM/estAirspeed.c  .generated_files/flags/default/552681093846a53364db119c05ee3922bdbb8f62 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAirspeed.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAirspeed.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estAirspeed.c  -o ${OBJECTDIR}/_ext/1077471063/estAirspeed.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estAirspeed.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estAltitude.o: ../../libDCM/estAltitude.c  .generated_files/flags/default/c60c178a1ac8255ec3d2242ae45bb80bfa2dc945 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAltitude.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAltitude.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estAltitude.c  -o ${OBJECTDIR}/_ext/1077471063/estAltitude.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estAltitude.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estLocation.o: ../../libDCM/estLocation.c  .generated_files/flags/default/251ca70e999b205fffad732641d519964e07f2bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estLocation.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estLocation.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estLocation.c  -o ${OBJECTDIR}/_ext/1077471063/estLocation.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estLocation.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estWind.o: ../../libDCM/estWind.c  .generated_files/flags/default/2e78471920d18c523a3a8b7abf3953718af4a89f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estWind.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estWind.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estWind.c  -o ${OBJECTDIR}/_ext/1077471063/estWind.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estWind.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estYawDrift.o: ../../libDCM/estYawDrift.c  .generated_files/flags/default/f1253fe5183cdde70c7a785c5bfb885711e9d49c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estYawDrift.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estYawDrift.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estYawDrift.c  -o ${OBJECTDIR}/_ext/1077471063/estYawDrift.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estYawDrift.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsData.o: ../../libDCM/gpsData.c  .generated_files/flags/default/d0d818e1d5989005a4e2728669a5f0d440e4049 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsData.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsData.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsData.c  -o ${OBJECTDIR}/_ext/1077471063/gpsData.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsData.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o: ../../libDCM/gpsParseCommon.c  .generated_files/flags/default/24ea63a6982b39921c355cbdd88865a464e78c35 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseCommon.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o: ../../libDCM/gpsParseMTEK.c  .generated_files/flags/default/dcf98ecfe5e2043f29104c228002c321a37868a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseMTEK.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o: ../../libDCM/gpsParseNMEA.c  .generated_files/flags/default/a257dd986c5407fb67534979fa17df9c2b280f46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseNMEA.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o: ../../libDCM/gpsParseSTD.c  .generated_files/flags/default/e22832c4ce17d364db15a0ce32f37e334ef35cc6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseSTD.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o: ../../libDCM/gpsParseUBX.c  .generated_files/flags/default/57181593f3228e6fe7f0c3b635faecc49111e023 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseUBX.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/hilsim.o: ../../libDCM/hilsim.c  .generated_files/flags/default/479e922a627fa75385132136c8a6a81f8d977b8a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/hilsim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/hilsim.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/hilsim.c  -o ${OBJECTDIR}/_ext/1077471063/hilsim.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/hilsim.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/libDCM.o: ../../libDCM/libDCM.c  .generated_files/flags/default/c661c8174241f00dd9901df15a2e90de484a6808 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/libDCM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/libDCM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/libDCM.c  -o ${OBJECTDIR}/_ext/1077471063/libDCM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/libDCM.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/mag_drift.o: ../../libDCM/mag_drift.c  .generated_files/flags/default/bdbac1f3b077e81593a054d58d4c916cb16ab777 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mag_drift.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mag_drift.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/mag_drift.c  -o ${OBJECTDIR}/_ext/1077471063/mag_drift.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/mag_drift.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/mathlib.o: ../../libDCM/mathlib.c  .generated_files/flags/default/ed1e10a5b07c1146317bc08188941dcc46905f7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlib.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/mathlib.c  -o ${OBJECTDIR}/_ext/1077471063/mathlib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/mathlib.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/mathlibNAV.o: ../../libDCM/mathlibNAV.c  .generated_files/flags/default/5712a0f649bb02868c802370ea5727ba0ff4fd2a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlibNAV.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlibNAV.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/mathlibNAV.c  -o ${OBJECTDIR}/_ext/1077471063/mathlibNAV.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/mathlibNAV.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/rmat.o: ../../libDCM/rmat.c  .generated_files/flags/default/f676c8c9bd46a7b13631b67733438a0060b0ff4c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/rmat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/rmat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/rmat.c  -o ${OBJECTDIR}/_ext/1077471063/rmat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/rmat.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/AT45D.o: ../../libFlashFS/AT45D.c  .generated_files/flags/default/bf98079da91a23cef0c4ab836c8278c072389113 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o: ../../libFlashFS/AT45D_DMA.c  .generated_files/flags/default/26b9e2655a2852c050c1de7e299346242dd3f086 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D_DMA.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/AT45D_FS.o: ../../libFlashFS/AT45D_FS.c  .generated_files/flags/default/d33dfbf52bba0afbfea5aac07fa1c52bf794f6b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D_FS.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/EEPROM.o: ../../libFlashFS/EEPROM.c  .generated_files/flags/default/1f5c2445840d0ee1b01b6c80415b3cc03859b11d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/EEPROM.c  -o ${OBJECTDIR}/_ext/1864667112/EEPROM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/EEPROM.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o: ../../libFlashFS/EEPROM_FS.c  .generated_files/flags/default/6e438e274c876a63c4605254b3382f417e25d47f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/EEPROM_FS.c  -o ${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/filesys.o: ../../libFlashFS/filesys.c  .generated_files/flags/default/271db740076563f1053f8764a55e6c88d7941f8d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/filesys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/filesys.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/filesys.c  -o ${OBJECTDIR}/_ext/1864667112/filesys.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/filesys.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o: ../../libFlashFS/MDD_AT45D.c  .generated_files/flags/default/fdab73ea8731be4c123b2ed683b8ff262643c44 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/MDD_AT45D.c  -o ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o: ../../libFlashFS/MDD_EEPROM.c  .generated_files/flags/default/6feb0671840a246118db3f2b7075626dfbda3093 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/MDD_EEPROM.c  -o ${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb.o: ../../libFlashFS/usb.c  .generated_files/flags/default/24659afd8ffd604f5974a609c13bac38220b1923 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb.c  -o ${OBJECTDIR}/_ext/1864667112/usb.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb_cdc.o: ../../libFlashFS/usb_cdc.c  .generated_files/flags/default/9f82f87d26b9daaf9f7e7749dfe8e7252ab8a27c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_cdc.c  -o ${OBJECTDIR}/_ext/1864667112/usb_cdc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb_descriptors.o: ../../libFlashFS/usb_descriptors.c  .generated_files/flags/default/e2a9d1effaf7963ee3897d6888111ba3eb58f63c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_descriptors.c  -o ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb_msd.o: ../../libFlashFS/usb_msd.c  .generated_files/flags/default/d9c35e2d01a25f9f6268d037e297e0ec69fbb692 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_msd.c  -o ${OBJECTDIR}/_ext/1864667112/usb_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_msd.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/24LC256.o: ../../libUDB/24LC256.c  .generated_files/flags/default/1f1efd1a66a1c7e056855840ea58545440fb8456 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/24LC256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/24LC256.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/24LC256.c  -o ${OBJECTDIR}/_ext/1077454706/24LC256.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/24LC256.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/ADchannel.o: ../../libUDB/ADchannel.c  .generated_files/flags/default/77dd8c6d45dce7a3fa00c6f9e292a95cd0eb54a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/ADchannel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/ADchannel.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/ADchannel.c  -o ${OBJECTDIR}/_ext/1077454706/ADchannel.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/ADchannel.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o: ../../libUDB/analog2digital_auav3.c  .generated_files/flags/default/10a8cb1a5ab37de2e36d797e84a48d81bf113138 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analog2digital_auav3.c  -o ${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o: ../../libUDB/analog2digital_udb4.c  .generated_files/flags/default/a3fdf917d472d8fc916663cfd165e512bc53b336 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analog2digital_udb4.c  -o ${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o: ../../libUDB/analog2digital_udb5.c  .generated_files/flags/default/3c245bc60a6560a16d4b4617afc223f91ba6523c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analog2digital_udb5.c  -o ${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analogs.o: ../../libUDB/analogs.c  .generated_files/flags/default/69c10ba031f06341f85fa06cac76c6db0baa9029 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analogs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analogs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analogs.c  -o ${OBJECTDIR}/_ext/1077454706/analogs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analogs.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/background.o: ../../libUDB/background.c  .generated_files/flags/default/9f8c233468514f002967c012fe3ed65559733eeb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/background.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/background.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/background.c  -o ${OBJECTDIR}/_ext/1077454706/background.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/background.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/barometer.o: ../../libUDB/barometer.c  .generated_files/flags/default/a2f00b9df0c25d0d4f3560c91ddea9ceb9aedb95 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/barometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/barometer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/barometer.c  -o ${OBJECTDIR}/_ext/1077454706/barometer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/barometer.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/cll_io.o: ../../libUDB/cll_io.c  .generated_files/flags/default/e7488ec86c4e95a8cb61bd82320101e73f2a9793 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/cll_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/cll_io.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/cll_io.c  -o ${OBJECTDIR}/_ext/1077454706/cll_io.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/cll_io.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o: ../../libUDB/eeprom_udb4.c  .generated_files/flags/default/c87bee1be3ecae138ca4501add1f43ecb6f00b6d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/eeprom_udb4.c  -o ${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/events.o: ../../libUDB/events.c  .generated_files/flags/default/aba9d13604b63ed8754690382056a2b21c8614f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/events.c  -o ${OBJECTDIR}/_ext/1077454706/events.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/events.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/heartbeat.o: ../../libUDB/heartbeat.c  .generated_files/flags/default/f775ea064bc06fae666b5552e7152a42150fb6b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/heartbeat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/heartbeat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/heartbeat.c  -o ${OBJECTDIR}/_ext/1077454706/heartbeat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/heartbeat.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/I2C1.o: ../../libUDB/I2C1.c  .generated_files/flags/default/fd6b1c1bb63d0307c2663dff5bd8c665a90b57e2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/I2C1.c  -o ${OBJECTDIR}/_ext/1077454706/I2C1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/I2C1.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/I2C2.o: ../../libUDB/I2C2.c  .generated_files/flags/default/be3456413f0260dc76f06d86ffd6b27310674ee6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/I2C2.c  -o ${OBJECTDIR}/_ext/1077454706/I2C2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/I2C2.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/libUDB.o: ../../libUDB/libUDB.c  .generated_files/flags/default/cf001ba763009f7abd6efbd96899e45f335f00d6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/libUDB.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/libUDB.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/libUDB.c  -o ${OBJECTDIR}/_ext/1077454706/libUDB.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/libUDB.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/magnetometer.o: ../../libUDB/magnetometer.c  .generated_files/flags/default/f4349110bff091277fd95d6f421f03e4b2251d7a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/magnetometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/magnetometer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/magnetometer.c  -o ${OBJECTDIR}/_ext/1077454706/magnetometer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/magnetometer.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/mcu.o: ../../libUDB/mcu.c  .generated_files/flags/default/4a929bca9e3c627e2ee787cf0dc346714c1df6e6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mcu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mcu.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mcu.c  -o ${OBJECTDIR}/_ext/1077454706/mcu.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/mcu.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/mpu6000.o: ../../libUDB/mpu6000.c  .generated_files/flags/default/df6405fd2517f2079a07cf8ab82e2893e442d8f8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu6000.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu6000.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mpu6000.c  -o ${OBJECTDIR}/_ext/1077454706/mpu6000.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/mpu6000.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/mpu_spi.o: ../../libUDB/mpu_spi.c  .generated_files/flags/default/e754768c32d2f09222240468fb1a37a3a9e3076f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mpu_spi.c  -o ${OBJECTDIR}/_ext/1077454706/mpu_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/osd.o: ../../libUDB/osd.c  .generated_files/flags/default/a8f58b4178f632927f45edf67dde2932a0bedb8e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/osd.c  -o ${OBJECTDIR}/_ext/1077454706/osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/osd.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/osd_bit.o: ../../libUDB/osd_bit.c  .generated_files/flags/default/3f3350fabce936de6441f50b6965df5bba513dbd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_bit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_bit.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/osd_bit.c  -o ${OBJECTDIR}/_ext/1077454706/osd_bit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/osd_bit.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/osd_spi.o: ../../libUDB/osd_spi.c  .generated_files/flags/default/5e346d5a092e3d32e35c7c80c7a19a5da1f7c701 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/osd_spi.c  -o ${OBJECTDIR}/_ext/1077454706/osd_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/osd_spi.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/radioIn.o: ../../libUDB/radioIn.c  .generated_files/flags/default/c46e2ea5709d1013257a4bf48bf792c20b4da9ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/radioIn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/radioIn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/radioIn.c  -o ${OBJECTDIR}/_ext/1077454706/radioIn.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/radioIn.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/read.o: ../../libUDB/read.c  .generated_files/flags/default/a4e2cdae131668ed631fa9787985c9fdfdbf419b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/read.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/read.c  -o ${OBJECTDIR}/_ext/1077454706/read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/read.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/serialIO.o: ../../libUDB/serialIO.c  .generated_files/flags/default/7c6b75c373d5e396e0dbf368829938fa642f8726 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/serialIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/serialIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/serialIO.c  -o ${OBJECTDIR}/_ext/1077454706/serialIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/serialIO.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/servoOut.o: ../../libUDB/servoOut.c  .generated_files/flags/default/a8d0046f73f7fd696ed0f5f895807651840ad6ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/servoOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/servoOut.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/servoOut.c  -o ${OBJECTDIR}/_ext/1077454706/servoOut.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/servoOut.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/sonarIn.o: ../../libUDB/sonarIn.c  .generated_files/flags/default/1012aa8a7eefd2ad2ec4b1c0562764ed3da08142 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/sonarIn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/sonarIn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/sonarIn.c  -o ${OBJECTDIR}/_ext/1077454706/sonarIn.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/sonarIn.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/traps.o: ../../libUDB/traps.c  .generated_files/flags/default/87be125cf7da2a0d4c5432e0117a5f8be9fd1e9f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/traps.c  -o ${OBJECTDIR}/_ext/1077454706/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/traps.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/uart.o: ../../libUDB/uart.c  .generated_files/flags/default/72e56384e99e543166213986fa786f28917347ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/uart.c  -o ${OBJECTDIR}/_ext/1077454706/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/uart.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/write.o: ../../libUDB/write.c  .generated_files/flags/default/9873fbf121c57499bc8a6f98e4118c2b60ec1284 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/write.c  -o ${OBJECTDIR}/_ext/1077454706/write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/write.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/Lidar.o: ../../libUDB/Lidar.c  .generated_files/flags/default/2780e538360dd05f0e90d6c1d5f84615e0c860dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/Lidar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/Lidar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/Lidar.c  -o ${OBJECTDIR}/_ext/1077454706/Lidar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/Lidar.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o: ../../MatrixPilot/airspeedCntrl.c  .generated_files/flags/default/994dfddf8c986470ecdd5fe88d2ed9f179422f64 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/airspeedCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o: ../../MatrixPilot/altitudeCntrl.c  .generated_files/flags/default/61c6cbaabea040534033720288bf762b6a42b271 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/altitudeCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o: ../../MatrixPilot/altitudeCntrlVariable.c  .generated_files/flags/default/f0ad55591a2c1dff4b15a39b29fca2f7f6e798f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/altitudeCntrlVariable.c  -o ${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/behavior.o: ../../MatrixPilot/behavior.c  .generated_files/flags/default/bc5a3841e87f7b2643b71cf042a34e95b9978bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/behavior.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/behavior.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/behavior.c  -o ${OBJECTDIR}/_ext/1363575369/behavior.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/behavior.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/cameraCntrl.o: ../../MatrixPilot/cameraCntrl.c  .generated_files/flags/default/a4f36bf8ae637c3985266eaaf373fa3ac1b96489 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/cameraCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/cameraCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/cameraCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/cameraCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/cameraCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/config.o: ../../MatrixPilot/config.c  .generated_files/flags/default/28618529a39a926931d63d0ca1df7f159c2e8e2c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/config.c  -o ${OBJECTDIR}/_ext/1363575369/config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/config.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/config_tests.o: ../../MatrixPilot/config_tests.c  .generated_files/flags/default/76f46ac3a2348bd27ddc581e5ae9e06d5accd24 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config_tests.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config_tests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/config_tests.c  -o ${OBJECTDIR}/_ext/1363575369/config_tests.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/config_tests.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/console.o: ../../MatrixPilot/console.c  .generated_files/flags/default/d85cfdfbe53356dd70d734db021bda9c571b5e61 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/console.c  -o ${OBJECTDIR}/_ext/1363575369/console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/console.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/data_services.o: ../../MatrixPilot/data_services.c  .generated_files/flags/default/cdaaebe3beb853c180baff2bb9e005be1cf7cdee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_services.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_services.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/data_services.c  -o ${OBJECTDIR}/_ext/1363575369/data_services.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/data_services.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/data_storage.o: ../../MatrixPilot/data_storage.c  .generated_files/flags/default/2116c5a3e9a58f4c86f37f99bd826ecb337d1798 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_storage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/data_storage.c  -o ${OBJECTDIR}/_ext/1363575369/data_storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/data_storage.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/euler_angles.o: ../../MatrixPilot/euler_angles.c  .generated_files/flags/default/83a60d3629818503cfcc10af3c5eac65335707c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/euler_angles.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/euler_angles.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/euler_angles.c  -o ${OBJECTDIR}/_ext/1363575369/euler_angles.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/euler_angles.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flight_state.o: ../../MatrixPilot/flight_state.c  .generated_files/flags/default/6e8719c6449fbacc43a05bd1c394dbda651630eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flight_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flight_state.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flight_state.c  -o ${OBJECTDIR}/_ext/1363575369/flight_state.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flight_state.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flightplan-logo.o: ../../MatrixPilot/flightplan-logo.c  .generated_files/flags/default/3b113c7d8ba877d2e286571e5d6cf8b9f936c660 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-logo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-logo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flightplan-logo.c  -o ${OBJECTDIR}/_ext/1363575369/flightplan-logo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flightplan-logo.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o: ../../MatrixPilot/flightplan-waypoints.c  .generated_files/flags/default/86dcd42365c5e436dd8726ce6f77b235a3adaacf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flightplan-waypoints.c  -o ${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flightplan.o: ../../MatrixPilot/flightplan.c  .generated_files/flags/default/65855277cbde541963148cdd98441109adfe05dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flightplan.c  -o ${OBJECTDIR}/_ext/1363575369/flightplan.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flightplan.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o: ../../MatrixPilot/fly_by_datalink.c  .generated_files/flags/default/37c463421abc4e5bf9786bb295da380fca0f637d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/fly_by_datalink.c  -o ${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o: ../../MatrixPilot/helicalTurnCntrl.c  .generated_files/flags/default/40d8bddbe36247a540d1dfbf1fe65a4310943106 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/helicalTurnCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/main.o: ../../MatrixPilot/main.c  .generated_files/flags/default/352564433e2970b5df66e2b1161ae7a137630506 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/main.c  -o ${OBJECTDIR}/_ext/1363575369/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/main.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o: ../../MatrixPilot/MAVFlexiFunctions.c  .generated_files/flags/default/7e3db20ffdc270740efea791a763b58a84af0fa7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVFlexiFunctions.c  -o ${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVLink.o: ../../MatrixPilot/MAVLink.c  .generated_files/flags/default/65739da2a277afaa5210dc27b5780c6fac4d2397 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVLink.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVLink.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVLink.c  -o ${OBJECTDIR}/_ext/1363575369/MAVLink.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVLink.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVMission.o: ../../MatrixPilot/MAVMission.c  .generated_files/flags/default/7621d380db3f84feef575f274ecd0ef62d0b7bf0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVMission.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVMission.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVMission.c  -o ${OBJECTDIR}/_ext/1363575369/MAVMission.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVMission.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVParams.o: ../../MatrixPilot/MAVParams.c  .generated_files/flags/default/f8832c978afec0d682f0f90fd1f0af0435e181ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVParams.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVParams.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVParams.c  -o ${OBJECTDIR}/_ext/1363575369/MAVParams.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVParams.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o: ../../MatrixPilot/MAVUDBExtra.c  .generated_files/flags/default/fa2330669fba1151e2b25718c4d126e5d8bc763d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVUDBExtra.c  -o ${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/minim_osd.o: ../../MatrixPilot/minim_osd.c  .generated_files/flags/default/9643f91583206cce024fe82297a5cacb7afeff6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minim_osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minim_osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/minim_osd.c  -o ${OBJECTDIR}/_ext/1363575369/minim_osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/minim_osd.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/minIni.o: ../../MatrixPilot/minIni.c  .generated_files/flags/default/8b2be6a8ff7b106a6028c2dcdc8be125aa0effb8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minIni.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minIni.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/minIni.c  -o ${OBJECTDIR}/_ext/1363575369/minIni.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/minIni.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/mode_switch.o: ../../MatrixPilot/mode_switch.c  .generated_files/flags/default/e8efcc44ce6dd5d90333f24eea73a39830757127 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mode_switch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mode_switch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/mode_switch.c  -o ${OBJECTDIR}/_ext/1363575369/mode_switch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/mode_switch.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/mp_osd.o: ../../MatrixPilot/mp_osd.c  .generated_files/flags/default/e1a706a6f238d9dd3c6b9c3a59335cd291d99f45 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mp_osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mp_osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/mp_osd.c  -o ${OBJECTDIR}/_ext/1363575369/mp_osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/mp_osd.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/navigate.o: ../../MatrixPilot/navigate.c  .generated_files/flags/default/4043d1f8feb4dc3d282b75657d4e44840d21a195 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/navigate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/navigate.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/navigate.c  -o ${OBJECTDIR}/_ext/1363575369/navigate.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/navigate.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/nv_memory_table.o: ../../MatrixPilot/nv_memory_table.c  .generated_files/flags/default/801a2a2f9d5545baf2226fbef95a56d25ead1a74 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/nv_memory_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/nv_memory_table.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/nv_memory_table.c  -o ${OBJECTDIR}/_ext/1363575369/nv_memory_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/nv_memory_table.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/parameter_table.o: ../../MatrixPilot/parameter_table.c  .generated_files/flags/default/ab4353bbdb01125506567667d50695a6265420da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/parameter_table.c  -o ${OBJECTDIR}/_ext/1363575369/parameter_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/parameter_table.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/parameter_table2.o: ../../MatrixPilot/parameter_table2.c  .generated_files/flags/default/ffbccb146641038abb777b88c80b849a7b87cd22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/parameter_table2.c  -o ${OBJECTDIR}/_ext/1363575369/parameter_table2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/parameter_table2.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/parameter_table_init.o: ../../MatrixPilot/parameter_table_init.c  .generated_files/flags/default/c50eaa4d07236b92991b5a06600415df4a37e6bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/parameter_table_init.c  -o ${OBJECTDIR}/_ext/1363575369/parameter_table_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/parameter_table_init.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/pitchCntrl.o: ../../MatrixPilot/pitchCntrl.c  .generated_files/flags/default/eea3359fa083ce41ba1d52f215ef680d8a266215 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/pitchCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/pitchCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/pitchCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/pitchCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/pitchCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/preflight.o: ../../MatrixPilot/preflight.c  .generated_files/flags/default/a73a62a650492e2fdc2d85d3f550c7385de2c8eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/preflight.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/preflight.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/preflight.c  -o ${OBJECTDIR}/_ext/1363575369/preflight.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/preflight.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/redef.o: ../../MatrixPilot/redef.c  .generated_files/flags/default/7fc2bdcad9b857f9c1234abeba99a42b92695be3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/redef.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/redef.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/redef.c  -o ${OBJECTDIR}/_ext/1363575369/redef.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/redef.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/remzibi_osd.o: ../../MatrixPilot/remzibi_osd.c  .generated_files/flags/default/e44b752827301121192e826a296910a14855bab5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/remzibi_osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/remzibi_osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/remzibi_osd.c  -o ${OBJECTDIR}/_ext/1363575369/remzibi_osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/remzibi_osd.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/ring_buffer.o: ../../MatrixPilot/ring_buffer.c  .generated_files/flags/default/ffbe2f135b4f8d2d26f8e32310437ddc9bc565f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/ring_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/ring_buffer.c  -o ${OBJECTDIR}/_ext/1363575369/ring_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/ring_buffer.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/rollCntrl.o: ../../MatrixPilot/rollCntrl.c  .generated_files/flags/default/c308a6202f86899c099767b5bf17722b553a7ecb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/rollCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/rollCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/rollCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/rollCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/rollCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/servoMix.o: ../../MatrixPilot/servoMix.c  .generated_files/flags/default/df1094ff1909ff0d7fc86307ecad1187b67a9317 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoMix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoMix.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/servoMix.c  -o ${OBJECTDIR}/_ext/1363575369/servoMix.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/servoMix.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/servoPrepare.o: ../../MatrixPilot/servoPrepare.c  .generated_files/flags/default/3413b64467653d1e707a43ac96e44660b35c7fed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoPrepare.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoPrepare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/servoPrepare.c  -o ${OBJECTDIR}/_ext/1363575369/servoPrepare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/servoPrepare.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/sonarCntrl.o: ../../MatrixPilot/sonarCntrl.c  .generated_files/flags/default/da5d70644dd72ed77acd243ad8222d84cc391b2f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/sonarCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/sonarCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/sonarCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/sonarCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/sonarCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/states.o: ../../MatrixPilot/states.c  .generated_files/flags/default/4941325db760c6b03554d609cf87dcc293f4ef2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/states.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/states.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/states.c  -o ${OBJECTDIR}/_ext/1363575369/states.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/states.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/telemetry.o: ../../MatrixPilot/telemetry.c  .generated_files/flags/default/136c7c78af6ecb267dec573bb003bc04f4d4d98c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/telemetry.c  -o ${OBJECTDIR}/_ext/1363575369/telemetry.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/telemetry.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/telemetry_log.o: ../../MatrixPilot/telemetry_log.c  .generated_files/flags/default/2040e018c1d512a46a417de0e277abccfcc12dac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry_log.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/telemetry_log.c  -o ${OBJECTDIR}/_ext/1363575369/telemetry_log.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/telemetry_log.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/yawCntrl.o: ../../MatrixPilot/yawCntrl.c  .generated_files/flags/default/53d3589b66098846c9cc72286d4e06dc593cda9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/yawCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/yawCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/yawCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/yawCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/yawCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/motorCntrl.o: ../motorCntrl.c  .generated_files/flags/default/7aa8560f7c6fad91fce73efb309c338bd109200b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/motorCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/motorCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../motorCntrl.c  -o ${OBJECTDIR}/_ext/1472/motorCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/motorCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/813967445/bittest.o: ../../MAVLink/include/bittest.c  .generated_files/flags/default/67602f22ac43d07a81d76f222031bb64cf98ee75 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/813967445" 
	@${RM} ${OBJECTDIR}/_ext/813967445/bittest.o.d 
	@${RM} ${OBJECTDIR}/_ext/813967445/bittest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MAVLink/include/bittest.c  -o ${OBJECTDIR}/_ext/813967445/bittest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/813967445/bittest.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1940647236/MAVFTP.o: ../../MAVLink/MAVFTP.c  .generated_files/flags/default/4ef32c4b86b4635d9ff377b5bf611d2a6bb77584 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1940647236" 
	@${RM} ${OBJECTDIR}/_ext/1940647236/MAVFTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1940647236/MAVFTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MAVLink/MAVFTP.c  -o ${OBJECTDIR}/_ext/1940647236/MAVFTP.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1940647236/MAVFTP.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/264835745/FSIO.o: ../../Microchip/MDD-File-System/FSIO.c  .generated_files/flags/default/a78a19f762d7f0b436f8050c70fcc3701e304a9b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/264835745" 
	@${RM} ${OBJECTDIR}/_ext/264835745/FSIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/264835745/FSIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/MDD-File-System/FSIO.c  -o ${OBJECTDIR}/_ext/264835745/FSIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/264835745/FSIO.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/264835745/SD-SPI.o: ../../Microchip/MDD-File-System/SD-SPI.c  .generated_files/flags/default/8310382a73d986686a43ba75ac11ba3b1b9e9594 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/264835745" 
	@${RM} ${OBJECTDIR}/_ext/264835745/SD-SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/264835745/SD-SPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/MDD-File-System/SD-SPI.c  -o ${OBJECTDIR}/_ext/264835745/SD-SPI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/264835745/SD-SPI.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o: ../../Microchip/USB/CDC-Device-Driver/usb_function_cdc.c  .generated_files/flags/default/842195a22b86cc545bddca5574c9b912fc188983 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1836339082" 
	@${RM} ${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/CDC-Device-Driver/usb_function_cdc.c  -o ${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/629040614/usb_function_msd.o: ../../Microchip/USB/MSD-Device-Driver/usb_function_msd.c  .generated_files/flags/default/c5b665e42c32c1c9c298c2968c157fe19256eb7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/629040614" 
	@${RM} ${OBJECTDIR}/_ext/629040614/usb_function_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/629040614/usb_function_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/MSD-Device-Driver/usb_function_msd.c  -o ${OBJECTDIR}/_ext/629040614/usb_function_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/629040614/usb_function_msd.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/713068069/usb_device.o: ../../Microchip/USB/usb_device.c  .generated_files/flags/default/82d24dd644ab325e26b3551d90217e34979b250c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/713068069" 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/usb_device.c  -o ${OBJECTDIR}/_ext/713068069/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/713068069/usb_device.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o: ../../Microchip/USB/usb_hal_dspic33e.c  .generated_files/flags/default/6974f68e84827f9112e2a67d78224f790fb18997 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/713068069" 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/usb_hal_dspic33e.c  -o ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1077471063/deadReckoning.o: ../../libDCM/deadReckoning.c  .generated_files/flags/default/f602ea5ece55d62dbfe2b6ffcd1cee4af93e8616 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/deadReckoning.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/deadReckoning.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/deadReckoning.c  -o ${OBJECTDIR}/_ext/1077471063/deadReckoning.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/deadReckoning.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estAirspeed.o: ../../libDCM/estAirspeed.c  .generated_files/flags/default/cd78ba1e8a48e0d2bcab71cfe659d004993fd062 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAirspeed.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAirspeed.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estAirspeed.c  -o ${OBJECTDIR}/_ext/1077471063/estAirspeed.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estAirspeed.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estAltitude.o: ../../libDCM/estAltitude.c  .generated_files/flags/default/cb3bfe141c508aecfe51de9fee88be26d6e2d61c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAltitude.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAltitude.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estAltitude.c  -o ${OBJECTDIR}/_ext/1077471063/estAltitude.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estAltitude.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estLocation.o: ../../libDCM/estLocation.c  .generated_files/flags/default/dddd858284a7a75c47f608a36aa1e61e3bf2b380 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estLocation.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estLocation.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estLocation.c  -o ${OBJECTDIR}/_ext/1077471063/estLocation.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estLocation.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estWind.o: ../../libDCM/estWind.c  .generated_files/flags/default/fbd54af33378cc522324531b3b6217cef8b24ce8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estWind.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estWind.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estWind.c  -o ${OBJECTDIR}/_ext/1077471063/estWind.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estWind.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estYawDrift.o: ../../libDCM/estYawDrift.c  .generated_files/flags/default/da4d5df7df49d6367a826e95aee6abc5ee29eb49 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estYawDrift.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estYawDrift.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estYawDrift.c  -o ${OBJECTDIR}/_ext/1077471063/estYawDrift.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estYawDrift.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsData.o: ../../libDCM/gpsData.c  .generated_files/flags/default/36463fb75e50367fdb3c2a0f11749f44ea4ca5d3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsData.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsData.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsData.c  -o ${OBJECTDIR}/_ext/1077471063/gpsData.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsData.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o: ../../libDCM/gpsParseCommon.c  .generated_files/flags/default/1e8d65668e5d6f4e7d77f8d00f948e6775f07c1f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseCommon.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o: ../../libDCM/gpsParseMTEK.c  .generated_files/flags/default/9c5abc63baf4df4ec804dec729c85dc1602535a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseMTEK.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o: ../../libDCM/gpsParseNMEA.c  .generated_files/flags/default/bd576deb89e1bc83ec5062cee1c6f1cebc64f50d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseNMEA.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o: ../../libDCM/gpsParseSTD.c  .generated_files/flags/default/f8da7cc165cd2cd9279d892b7443c420487e8009 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseSTD.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o: ../../libDCM/gpsParseUBX.c  .generated_files/flags/default/617ae0e7208777938f742a081425013224d85be2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseUBX.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/hilsim.o: ../../libDCM/hilsim.c  .generated_files/flags/default/225f1c62770bb6621fa82d7718cafa7779d72e36 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/hilsim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/hilsim.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/hilsim.c  -o ${OBJECTDIR}/_ext/1077471063/hilsim.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/hilsim.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/libDCM.o: ../../libDCM/libDCM.c  .generated_files/flags/default/b5985c8463656139550035c9b991b67d2826d375 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/libDCM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/libDCM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/libDCM.c  -o ${OBJECTDIR}/_ext/1077471063/libDCM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/libDCM.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/mag_drift.o: ../../libDCM/mag_drift.c  .generated_files/flags/default/33ad9cb1487ef0e78722ba145ea93db7faf41b34 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mag_drift.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mag_drift.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/mag_drift.c  -o ${OBJECTDIR}/_ext/1077471063/mag_drift.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/mag_drift.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/mathlib.o: ../../libDCM/mathlib.c  .generated_files/flags/default/91ebcbf3ddba56ba1c40a2a98769cc1f78908a34 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlib.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/mathlib.c  -o ${OBJECTDIR}/_ext/1077471063/mathlib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/mathlib.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/mathlibNAV.o: ../../libDCM/mathlibNAV.c  .generated_files/flags/default/14fa72c931e1204eca2ad3d83c5cbbe714b02d88 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlibNAV.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlibNAV.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/mathlibNAV.c  -o ${OBJECTDIR}/_ext/1077471063/mathlibNAV.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/mathlibNAV.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/rmat.o: ../../libDCM/rmat.c  .generated_files/flags/default/fc325122aab2f784d4ff8c9b81a430db8e09303c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/rmat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/rmat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/rmat.c  -o ${OBJECTDIR}/_ext/1077471063/rmat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/rmat.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/AT45D.o: ../../libFlashFS/AT45D.c  .generated_files/flags/default/1d552dbf0027622b434bc035d8a91484b510f155 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o: ../../libFlashFS/AT45D_DMA.c  .generated_files/flags/default/a58fe6de1dcfaee7fc7051a08bb5809501190f90 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D_DMA.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/AT45D_FS.o: ../../libFlashFS/AT45D_FS.c  .generated_files/flags/default/d78d2018cea5b215c2f012b6fab9622ca7c0ac53 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D_FS.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/EEPROM.o: ../../libFlashFS/EEPROM.c  .generated_files/flags/default/3e04bb949e59ae06ed30435e4c4c04027c7fbd3e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/EEPROM.c  -o ${OBJECTDIR}/_ext/1864667112/EEPROM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/EEPROM.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o: ../../libFlashFS/EEPROM_FS.c  .generated_files/flags/default/7777fbd54f49b9a959a8abc5649e4cfbb1ddc0dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/EEPROM_FS.c  -o ${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/filesys.o: ../../libFlashFS/filesys.c  .generated_files/flags/default/3a3e87504956d8ca4f9d4218cdbb57944ea17fa7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/filesys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/filesys.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/filesys.c  -o ${OBJECTDIR}/_ext/1864667112/filesys.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/filesys.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o: ../../libFlashFS/MDD_AT45D.c  .generated_files/flags/default/1fd8502a9c77261639bfe18f204ed1c560ab8a17 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/MDD_AT45D.c  -o ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o: ../../libFlashFS/MDD_EEPROM.c  .generated_files/flags/default/25176fddef0cc1a9108412b236627ea54bf4c715 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/MDD_EEPROM.c  -o ${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb.o: ../../libFlashFS/usb.c  .generated_files/flags/default/88316a20f91eb9cd65f7cd7e0a64dd435d64771b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb.c  -o ${OBJECTDIR}/_ext/1864667112/usb.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb_cdc.o: ../../libFlashFS/usb_cdc.c  .generated_files/flags/default/c05274ca88807d0a0be1abbdfb764ce0ebe8349b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_cdc.c  -o ${OBJECTDIR}/_ext/1864667112/usb_cdc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb_descriptors.o: ../../libFlashFS/usb_descriptors.c  .generated_files/flags/default/ee5314b63b468e0c8ec692c013a6f0a6b1877f6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_descriptors.c  -o ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb_msd.o: ../../libFlashFS/usb_msd.c  .generated_files/flags/default/7e72785b3e09e7178a489291cb7e51d15ce40ecf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_msd.c  -o ${OBJECTDIR}/_ext/1864667112/usb_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_msd.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/24LC256.o: ../../libUDB/24LC256.c  .generated_files/flags/default/ac8330c87d3688dcef7db2b39decada0b876ae2b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/24LC256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/24LC256.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/24LC256.c  -o ${OBJECTDIR}/_ext/1077454706/24LC256.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/24LC256.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/ADchannel.o: ../../libUDB/ADchannel.c  .generated_files/flags/default/71caf0fbdd04d4bd50ee133ce4b6bf3a2ab9412f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/ADchannel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/ADchannel.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/ADchannel.c  -o ${OBJECTDIR}/_ext/1077454706/ADchannel.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/ADchannel.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o: ../../libUDB/analog2digital_auav3.c  .generated_files/flags/default/761f2430af84906aed8f1d53a5cf081e49cab59c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analog2digital_auav3.c  -o ${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o: ../../libUDB/analog2digital_udb4.c  .generated_files/flags/default/7e6702909fb10ab07401600eee92e7cf83326bde .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analog2digital_udb4.c  -o ${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o: ../../libUDB/analog2digital_udb5.c  .generated_files/flags/default/57eec9798e99af1dd1107b316aab15625ca1078d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analog2digital_udb5.c  -o ${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analogs.o: ../../libUDB/analogs.c  .generated_files/flags/default/191ff04c623feb4fde4899164d207bd390b64235 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analogs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analogs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analogs.c  -o ${OBJECTDIR}/_ext/1077454706/analogs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analogs.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/background.o: ../../libUDB/background.c  .generated_files/flags/default/8830e708353c6d4cf848f853a8e363e49d5ec3c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/background.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/background.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/background.c  -o ${OBJECTDIR}/_ext/1077454706/background.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/background.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/barometer.o: ../../libUDB/barometer.c  .generated_files/flags/default/34815ef57129e054ec75fc710cb67d55be4de3b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/barometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/barometer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/barometer.c  -o ${OBJECTDIR}/_ext/1077454706/barometer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/barometer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/cll_io.o: ../../libUDB/cll_io.c  .generated_files/flags/default/e751d4fa0d39726a5f3cbede05912fce60421fbf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/cll_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/cll_io.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/cll_io.c  -o ${OBJECTDIR}/_ext/1077454706/cll_io.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/cll_io.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o: ../../libUDB/eeprom_udb4.c  .generated_files/flags/default/a51de8d20dba62dbae07078dc54965f73ecb4d26 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/eeprom_udb4.c  -o ${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/events.o: ../../libUDB/events.c  .generated_files/flags/default/9234ee201180f05f111fac3a20c41abad733e1c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/events.c  -o ${OBJECTDIR}/_ext/1077454706/events.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/events.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/heartbeat.o: ../../libUDB/heartbeat.c  .generated_files/flags/default/588225b84060dbfc78b98c31fd5049333b17fd10 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/heartbeat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/heartbeat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/heartbeat.c  -o ${OBJECTDIR}/_ext/1077454706/heartbeat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/heartbeat.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/I2C1.o: ../../libUDB/I2C1.c  .generated_files/flags/default/814d091b25d812361402774b824a78032f71c608 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/I2C1.c  -o ${OBJECTDIR}/_ext/1077454706/I2C1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/I2C1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/I2C2.o: ../../libUDB/I2C2.c  .generated_files/flags/default/ff92074615ac84e7ec912c061efe233fdee52c03 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/I2C2.c  -o ${OBJECTDIR}/_ext/1077454706/I2C2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/I2C2.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/libUDB.o: ../../libUDB/libUDB.c  .generated_files/flags/default/449b098a7758552c1cbadbea8c6ede559cecfabe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/libUDB.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/libUDB.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/libUDB.c  -o ${OBJECTDIR}/_ext/1077454706/libUDB.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/libUDB.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/magnetometer.o: ../../libUDB/magnetometer.c  .generated_files/flags/default/dad651fb6683dc65578a72a39160783b7319855e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/magnetometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/magnetometer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/magnetometer.c  -o ${OBJECTDIR}/_ext/1077454706/magnetometer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/magnetometer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/mcu.o: ../../libUDB/mcu.c  .generated_files/flags/default/c1bf67dc48860c890f5e29cd7b7f47d445d35f58 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mcu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mcu.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mcu.c  -o ${OBJECTDIR}/_ext/1077454706/mcu.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/mcu.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/mpu6000.o: ../../libUDB/mpu6000.c  .generated_files/flags/default/d0e723f4488654b92a29ba49293e55f797eeef4e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu6000.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu6000.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mpu6000.c  -o ${OBJECTDIR}/_ext/1077454706/mpu6000.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/mpu6000.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/mpu_spi.o: ../../libUDB/mpu_spi.c  .generated_files/flags/default/5b8c61ded9fd4ac4097cd471be52600c44f8872f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mpu_spi.c  -o ${OBJECTDIR}/_ext/1077454706/mpu_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/osd.o: ../../libUDB/osd.c  .generated_files/flags/default/b7b35690be0a49d968f29f72f644ea2de275b9ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/osd.c  -o ${OBJECTDIR}/_ext/1077454706/osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/osd.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/osd_bit.o: ../../libUDB/osd_bit.c  .generated_files/flags/default/d3024cf077de2014b30c2e5bce5833dc3e4b4afd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_bit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_bit.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/osd_bit.c  -o ${OBJECTDIR}/_ext/1077454706/osd_bit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/osd_bit.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/osd_spi.o: ../../libUDB/osd_spi.c  .generated_files/flags/default/df9a14969dbb89afc21cf4ec23deef0a10957ec2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/osd_spi.c  -o ${OBJECTDIR}/_ext/1077454706/osd_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/osd_spi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/radioIn.o: ../../libUDB/radioIn.c  .generated_files/flags/default/b307523c799f60bea8cbce5ad94364698444fbd0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/radioIn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/radioIn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/radioIn.c  -o ${OBJECTDIR}/_ext/1077454706/radioIn.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/radioIn.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/read.o: ../../libUDB/read.c  .generated_files/flags/default/41cd40473d2e7cb0d675cf71cdf2cae16e6bace .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/read.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/read.c  -o ${OBJECTDIR}/_ext/1077454706/read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/read.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/serialIO.o: ../../libUDB/serialIO.c  .generated_files/flags/default/9e050d6b4fe392cabe24226c137130a44bf8f4dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/serialIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/serialIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/serialIO.c  -o ${OBJECTDIR}/_ext/1077454706/serialIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/serialIO.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/servoOut.o: ../../libUDB/servoOut.c  .generated_files/flags/default/7bc2ec3961374363ca2e5254432511a3f1e189e8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/servoOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/servoOut.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/servoOut.c  -o ${OBJECTDIR}/_ext/1077454706/servoOut.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/servoOut.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/sonarIn.o: ../../libUDB/sonarIn.c  .generated_files/flags/default/396a4a7f69a327af0a19da6b05f157d4d5b7b4dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/sonarIn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/sonarIn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/sonarIn.c  -o ${OBJECTDIR}/_ext/1077454706/sonarIn.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/sonarIn.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/traps.o: ../../libUDB/traps.c  .generated_files/flags/default/6b5afc291d88e9d6e1307166cff727fbb0222536 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/traps.c  -o ${OBJECTDIR}/_ext/1077454706/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/traps.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/uart.o: ../../libUDB/uart.c  .generated_files/flags/default/8852bbcda6eafb7ecacf7684bda6ddafb75690bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/uart.c  -o ${OBJECTDIR}/_ext/1077454706/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/uart.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/write.o: ../../libUDB/write.c  .generated_files/flags/default/cd909c213e491107606fa9c77500a94c682da630 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/write.c  -o ${OBJECTDIR}/_ext/1077454706/write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/write.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/Lidar.o: ../../libUDB/Lidar.c  .generated_files/flags/default/fb88c7e47b90edde8a1d85d7c97be5ae31f0e8ff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/Lidar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/Lidar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/Lidar.c  -o ${OBJECTDIR}/_ext/1077454706/Lidar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/Lidar.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o: ../../MatrixPilot/airspeedCntrl.c  .generated_files/flags/default/c37315df3602fe1aefafa561f04ea80b07c38331 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/airspeedCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o: ../../MatrixPilot/altitudeCntrl.c  .generated_files/flags/default/fd893b09848fdce1e827360746102f1545f206b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/altitudeCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o: ../../MatrixPilot/altitudeCntrlVariable.c  .generated_files/flags/default/8c9d7c9f2a57116c2d31fe85c344693eae0f826f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/altitudeCntrlVariable.c  -o ${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/behavior.o: ../../MatrixPilot/behavior.c  .generated_files/flags/default/39a6d47af7faded17eff3b21c419f7386285286e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/behavior.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/behavior.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/behavior.c  -o ${OBJECTDIR}/_ext/1363575369/behavior.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/behavior.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/cameraCntrl.o: ../../MatrixPilot/cameraCntrl.c  .generated_files/flags/default/a0ab1540ca1d88360c9e3145b50e48e0dfe358a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/cameraCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/cameraCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/cameraCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/cameraCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/cameraCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/config.o: ../../MatrixPilot/config.c  .generated_files/flags/default/d839e32ec8c10ae0f23b60ea7a73a3b690ceb3ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/config.c  -o ${OBJECTDIR}/_ext/1363575369/config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/config.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/config_tests.o: ../../MatrixPilot/config_tests.c  .generated_files/flags/default/63e2aa15d29f3a8cc38ab016e861f9174a2e3541 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config_tests.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config_tests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/config_tests.c  -o ${OBJECTDIR}/_ext/1363575369/config_tests.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/config_tests.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/console.o: ../../MatrixPilot/console.c  .generated_files/flags/default/a26fd7d952dcb20dce8603c22a842c46bb4832e3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/console.c  -o ${OBJECTDIR}/_ext/1363575369/console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/console.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/data_services.o: ../../MatrixPilot/data_services.c  .generated_files/flags/default/71de47f24159ee7ba43d9d14e374ba99c173c921 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_services.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_services.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/data_services.c  -o ${OBJECTDIR}/_ext/1363575369/data_services.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/data_services.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/data_storage.o: ../../MatrixPilot/data_storage.c  .generated_files/flags/default/1463629ad96b2f87c7c2cfacf60764657ee0aea7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_storage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/data_storage.c  -o ${OBJECTDIR}/_ext/1363575369/data_storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/data_storage.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/euler_angles.o: ../../MatrixPilot/euler_angles.c  .generated_files/flags/default/f87ef14bec895d6e4f7c7c823ddf98807845f1ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/euler_angles.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/euler_angles.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/euler_angles.c  -o ${OBJECTDIR}/_ext/1363575369/euler_angles.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/euler_angles.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flight_state.o: ../../MatrixPilot/flight_state.c  .generated_files/flags/default/31aa30851f617855d8b8a6d1d5f678ec860cef15 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flight_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flight_state.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flight_state.c  -o ${OBJECTDIR}/_ext/1363575369/flight_state.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flight_state.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flightplan-logo.o: ../../MatrixPilot/flightplan-logo.c  .generated_files/flags/default/305a927716dbb68919e23c3bf15c5c831c454dd5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-logo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-logo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flightplan-logo.c  -o ${OBJECTDIR}/_ext/1363575369/flightplan-logo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flightplan-logo.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o: ../../MatrixPilot/flightplan-waypoints.c  .generated_files/flags/default/d3ecb03cba71bcfb48e41f76c4e313496d0b7b10 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flightplan-waypoints.c  -o ${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flightplan.o: ../../MatrixPilot/flightplan.c  .generated_files/flags/default/d75e5d15e886d2ed1e58d14a76b4d5e8966d8b54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flightplan.c  -o ${OBJECTDIR}/_ext/1363575369/flightplan.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flightplan.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o: ../../MatrixPilot/fly_by_datalink.c  .generated_files/flags/default/4c11ecfa520934f3d87106c0d95354227ba6b764 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/fly_by_datalink.c  -o ${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o: ../../MatrixPilot/helicalTurnCntrl.c  .generated_files/flags/default/4bef35f8b47690df22014576192c98d855877d0f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/helicalTurnCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/main.o: ../../MatrixPilot/main.c  .generated_files/flags/default/2d060ea12d9399c0a155bb5a57b9721b73e2a5d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/main.c  -o ${OBJECTDIR}/_ext/1363575369/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o: ../../MatrixPilot/MAVFlexiFunctions.c  .generated_files/flags/default/d8e27e60255e37911b39b84e6128f30dddea534e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVFlexiFunctions.c  -o ${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVLink.o: ../../MatrixPilot/MAVLink.c  .generated_files/flags/default/eef31d6a52e0992c8da5dd1df9108907ff49a4c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVLink.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVLink.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVLink.c  -o ${OBJECTDIR}/_ext/1363575369/MAVLink.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVLink.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVMission.o: ../../MatrixPilot/MAVMission.c  .generated_files/flags/default/b14fe0e32622ada3fb1810271965f569edcf8500 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVMission.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVMission.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVMission.c  -o ${OBJECTDIR}/_ext/1363575369/MAVMission.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVMission.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVParams.o: ../../MatrixPilot/MAVParams.c  .generated_files/flags/default/40b187c639db012356f6a282465177c8ecc0df27 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVParams.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVParams.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVParams.c  -o ${OBJECTDIR}/_ext/1363575369/MAVParams.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVParams.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o: ../../MatrixPilot/MAVUDBExtra.c  .generated_files/flags/default/caf6d4732b133e062208e8b8f517aa9731e6a5c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVUDBExtra.c  -o ${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/minim_osd.o: ../../MatrixPilot/minim_osd.c  .generated_files/flags/default/8fb0b8a749efc63a8bbb26ef0af1e99227ac9d4b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minim_osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minim_osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/minim_osd.c  -o ${OBJECTDIR}/_ext/1363575369/minim_osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/minim_osd.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/minIni.o: ../../MatrixPilot/minIni.c  .generated_files/flags/default/fd0cb93b8378b4860c1459c530625b3ccd6ea63c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minIni.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minIni.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/minIni.c  -o ${OBJECTDIR}/_ext/1363575369/minIni.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/minIni.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/mode_switch.o: ../../MatrixPilot/mode_switch.c  .generated_files/flags/default/391530b801ea29dc56d3ad0fbf8be735219dcdc2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mode_switch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mode_switch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/mode_switch.c  -o ${OBJECTDIR}/_ext/1363575369/mode_switch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/mode_switch.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/mp_osd.o: ../../MatrixPilot/mp_osd.c  .generated_files/flags/default/f8ffc653a9e83fe5fb74b66b7f466bf59fdfad99 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mp_osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mp_osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/mp_osd.c  -o ${OBJECTDIR}/_ext/1363575369/mp_osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/mp_osd.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/navigate.o: ../../MatrixPilot/navigate.c  .generated_files/flags/default/e50af556335169a293d00c228e81f7de09c0e3cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/navigate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/navigate.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/navigate.c  -o ${OBJECTDIR}/_ext/1363575369/navigate.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/navigate.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/nv_memory_table.o: ../../MatrixPilot/nv_memory_table.c  .generated_files/flags/default/64506739479fcd51a9afa276472854e0d1d52cca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/nv_memory_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/nv_memory_table.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/nv_memory_table.c  -o ${OBJECTDIR}/_ext/1363575369/nv_memory_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/nv_memory_table.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/parameter_table.o: ../../MatrixPilot/parameter_table.c  .generated_files/flags/default/1ad9baa577eb4bca1da1fcfa9b9ebab48f1dd5c5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/parameter_table.c  -o ${OBJECTDIR}/_ext/1363575369/parameter_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/parameter_table.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/parameter_table2.o: ../../MatrixPilot/parameter_table2.c  .generated_files/flags/default/f625702e7ee890cfda92eb0bb5133987e82c4598 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/parameter_table2.c  -o ${OBJECTDIR}/_ext/1363575369/parameter_table2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/parameter_table2.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/parameter_table_init.o: ../../MatrixPilot/parameter_table_init.c  .generated_files/flags/default/64aaeedf418f1cd75c2f6355c1371b0da7e5484d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/parameter_table_init.c  -o ${OBJECTDIR}/_ext/1363575369/parameter_table_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/parameter_table_init.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/pitchCntrl.o: ../../MatrixPilot/pitchCntrl.c  .generated_files/flags/default/ca349be0693a9e3978b829789c1749d7ce126587 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/pitchCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/pitchCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/pitchCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/pitchCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/pitchCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/preflight.o: ../../MatrixPilot/preflight.c  .generated_files/flags/default/ba7109363c0d8a464ebfba3c99f01acea36ac764 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/preflight.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/preflight.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/preflight.c  -o ${OBJECTDIR}/_ext/1363575369/preflight.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/preflight.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/redef.o: ../../MatrixPilot/redef.c  .generated_files/flags/default/7f52851a73163e4871af74f1c3d5869bb9dade13 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/redef.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/redef.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/redef.c  -o ${OBJECTDIR}/_ext/1363575369/redef.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/redef.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/remzibi_osd.o: ../../MatrixPilot/remzibi_osd.c  .generated_files/flags/default/cfe88d7d8a0e77952b37b361a715f385d56bbc30 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/remzibi_osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/remzibi_osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/remzibi_osd.c  -o ${OBJECTDIR}/_ext/1363575369/remzibi_osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/remzibi_osd.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/ring_buffer.o: ../../MatrixPilot/ring_buffer.c  .generated_files/flags/default/53efa484496ef8caf5e9c0acf8b3867b6be89a9c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/ring_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/ring_buffer.c  -o ${OBJECTDIR}/_ext/1363575369/ring_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/ring_buffer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/rollCntrl.o: ../../MatrixPilot/rollCntrl.c  .generated_files/flags/default/d2c5492fb7a1981d965885faf7c9f9c285225574 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/rollCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/rollCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/rollCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/rollCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/rollCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/servoMix.o: ../../MatrixPilot/servoMix.c  .generated_files/flags/default/ca3776543d57ab81a768700e41abbe6372f93bb9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoMix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoMix.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/servoMix.c  -o ${OBJECTDIR}/_ext/1363575369/servoMix.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/servoMix.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/servoPrepare.o: ../../MatrixPilot/servoPrepare.c  .generated_files/flags/default/d8e07afa6d789b965292c6abba57901043f4b898 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoPrepare.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoPrepare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/servoPrepare.c  -o ${OBJECTDIR}/_ext/1363575369/servoPrepare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/servoPrepare.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/sonarCntrl.o: ../../MatrixPilot/sonarCntrl.c  .generated_files/flags/default/e54619fb2ac0abf4357da73e02281b1e0c1623ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/sonarCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/sonarCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/sonarCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/sonarCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/sonarCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/states.o: ../../MatrixPilot/states.c  .generated_files/flags/default/6604f012314a8a10cdbb3ee077d50fb775536f04 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/states.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/states.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/states.c  -o ${OBJECTDIR}/_ext/1363575369/states.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/states.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/telemetry.o: ../../MatrixPilot/telemetry.c  .generated_files/flags/default/1c2fb07c5d78761bfbaa95dd4344be2bd10e8961 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/telemetry.c  -o ${OBJECTDIR}/_ext/1363575369/telemetry.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/telemetry.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/telemetry_log.o: ../../MatrixPilot/telemetry_log.c  .generated_files/flags/default/2b31fcb5718b51dd8f3cdcbef24dfe34b80169ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry_log.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/telemetry_log.c  -o ${OBJECTDIR}/_ext/1363575369/telemetry_log.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/telemetry_log.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/yawCntrl.o: ../../MatrixPilot/yawCntrl.c  .generated_files/flags/default/f55e28b5bab9ed32b83e20ff99baf84f86bc6ba0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/yawCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/yawCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/yawCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/yawCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/yawCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/motorCntrl.o: ../motorCntrl.c  .generated_files/flags/default/46e17bb71d7a7d1e66651d2c2f589d11e4fb20bf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/motorCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/motorCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../motorCntrl.c  -o ${OBJECTDIR}/_ext/1472/motorCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/motorCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/813967445/bittest.o: ../../MAVLink/include/bittest.c  .generated_files/flags/default/b9af4d0ee32e767343ec442e6f04111ef1137fc5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/813967445" 
	@${RM} ${OBJECTDIR}/_ext/813967445/bittest.o.d 
	@${RM} ${OBJECTDIR}/_ext/813967445/bittest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MAVLink/include/bittest.c  -o ${OBJECTDIR}/_ext/813967445/bittest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/813967445/bittest.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1940647236/MAVFTP.o: ../../MAVLink/MAVFTP.c  .generated_files/flags/default/54d09c77025d19f62c9473b17c77442d0afbc06b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1940647236" 
	@${RM} ${OBJECTDIR}/_ext/1940647236/MAVFTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1940647236/MAVFTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MAVLink/MAVFTP.c  -o ${OBJECTDIR}/_ext/1940647236/MAVFTP.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1940647236/MAVFTP.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/264835745/FSIO.o: ../../Microchip/MDD-File-System/FSIO.c  .generated_files/flags/default/78d8381df31c9354822f8d74b895188f98024692 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/264835745" 
	@${RM} ${OBJECTDIR}/_ext/264835745/FSIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/264835745/FSIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/MDD-File-System/FSIO.c  -o ${OBJECTDIR}/_ext/264835745/FSIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/264835745/FSIO.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/264835745/SD-SPI.o: ../../Microchip/MDD-File-System/SD-SPI.c  .generated_files/flags/default/d4dbea6b91f2cf7ac415434798a00215f86a01b9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/264835745" 
	@${RM} ${OBJECTDIR}/_ext/264835745/SD-SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/264835745/SD-SPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/MDD-File-System/SD-SPI.c  -o ${OBJECTDIR}/_ext/264835745/SD-SPI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/264835745/SD-SPI.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o: ../../Microchip/USB/CDC-Device-Driver/usb_function_cdc.c  .generated_files/flags/default/e5b909ec2791131fda104f5db7395ea42279ace3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1836339082" 
	@${RM} ${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/CDC-Device-Driver/usb_function_cdc.c  -o ${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/629040614/usb_function_msd.o: ../../Microchip/USB/MSD-Device-Driver/usb_function_msd.c  .generated_files/flags/default/511bb214a9ad000562b3085e30c5675cec5bf6cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/629040614" 
	@${RM} ${OBJECTDIR}/_ext/629040614/usb_function_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/629040614/usb_function_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/MSD-Device-Driver/usb_function_msd.c  -o ${OBJECTDIR}/_ext/629040614/usb_function_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/629040614/usb_function_msd.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/713068069/usb_device.o: ../../Microchip/USB/usb_device.c  .generated_files/flags/default/e92fd5af1d771a054d54bf190d7eef7339d562f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/713068069" 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/usb_device.c  -o ${OBJECTDIR}/_ext/713068069/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/713068069/usb_device.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o: ../../Microchip/USB/usb_hal_dspic33e.c  .generated_files/flags/default/5049708f7a60683328d009f1d214c671080ff203 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/713068069" 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/usb_hal_dspic33e.c  -o ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1077454706/fbcl.o: ../../libUDB/fbcl.s  .generated_files/flags/default/eca6d440492d17eb8fc86d673ff2f578c1709fc4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/fbcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/fbcl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libUDB/fbcl.s  -o ${OBJECTDIR}/_ext/1077454706/fbcl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/1077454706/fbcl.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/traps_asm.o: ../../libUDB/traps_asm.s  .generated_files/flags/default/f6ef6581e65c46956ec6d61702e24a566181a1bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libUDB/traps_asm.s  -o ${OBJECTDIR}/_ext/1077454706/traps_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/1077454706/traps_asm.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/madd.o: ../../libVectorMatrix/madd.s  .generated_files/flags/default/2e83c8e26a0fab4b7ad8088c441b595891f1b770 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/madd.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/madd.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/madd.s  -o ${OBJECTDIR}/_ext/679848855/madd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/madd.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/mmul.o: ../../libVectorMatrix/mmul.s  .generated_files/flags/default/3ef4406e0740e8752f3de3e657a37841d16d2a2a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/mmul.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mmul.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mmul.s  -o ${OBJECTDIR}/_ext/679848855/mmul.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mmul.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/mscl.o: ../../libVectorMatrix/mscl.s  .generated_files/flags/default/6ebc33ef935cdf58a78748098f9c76d8f492945c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/mscl.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mscl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mscl.s  -o ${OBJECTDIR}/_ext/679848855/mscl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mscl.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/msub.o: ../../libVectorMatrix/msub.s  .generated_files/flags/default/54fd7a6b959c41ce3b01c1a315e87179cec9c4d0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/msub.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/msub.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/msub.s  -o ${OBJECTDIR}/_ext/679848855/msub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/msub.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/mtrp.o: ../../libVectorMatrix/mtrp.s  .generated_files/flags/default/c3370f723d66394a1f7640ffc55c3aa1cf908b99 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/mtrp.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mtrp.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mtrp.s  -o ${OBJECTDIR}/_ext/679848855/mtrp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mtrp.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vadd.o: ../../libVectorMatrix/vadd.s  .generated_files/flags/default/69edebc778c391b30c820a37752fcdbc7b881c24 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vadd.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vadd.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vadd.s  -o ${OBJECTDIR}/_ext/679848855/vadd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vadd.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vcon.o: ../../libVectorMatrix/vcon.s  .generated_files/flags/default/8ef7b3f02be830260f2199b1e41e35c1c55cccad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcon.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcon.s  -o ${OBJECTDIR}/_ext/679848855/vcon.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcon.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vcopy.o: ../../libVectorMatrix/vcopy.s  .generated_files/flags/default/61da94fe174c86ff2fa0faaae6aa9ff199705595 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcopy.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcopy.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcopy.s  -o ${OBJECTDIR}/_ext/679848855/vcopy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcopy.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vcor.o: ../../libVectorMatrix/vcor.s  .generated_files/flags/default/e3479c593d80fc456c68e5bf46a23646ab225491 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcor.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcor.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcor.s  -o ${OBJECTDIR}/_ext/679848855/vcor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcor.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vdot.o: ../../libVectorMatrix/vdot.s  .generated_files/flags/default/22d59998462bf9796bd288927374faecab92844a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vdot.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vdot.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vdot.s  -o ${OBJECTDIR}/_ext/679848855/vdot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vdot.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vmax.o: ../../libVectorMatrix/vmax.s  .generated_files/flags/default/38682946e99ae97a54be18d2b6e677d549eff8d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmax.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmax.s  -o ${OBJECTDIR}/_ext/679848855/vmax.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmax.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vmin.o: ../../libVectorMatrix/vmin.s  .generated_files/flags/default/c21ff21a0e47fb662a91f07b35b09f7d32f9186b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmin.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmin.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmin.s  -o ${OBJECTDIR}/_ext/679848855/vmin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmin.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vmul.o: ../../libVectorMatrix/vmul.s  .generated_files/flags/default/6d2dc70f11efb527b43043fd11fa9f194dec779f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmul.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmul.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmul.s  -o ${OBJECTDIR}/_ext/679848855/vmul.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmul.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vneg.o: ../../libVectorMatrix/vneg.s  .generated_files/flags/default/66ca56d065052224880f00cf7e51a2a865057602 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vneg.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vneg.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vneg.s  -o ${OBJECTDIR}/_ext/679848855/vneg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vneg.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vpow.o: ../../libVectorMatrix/vpow.s  .generated_files/flags/default/c1d429ca07abe30a0e8d89a1236789ed98b62f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vpow.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vpow.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vpow.s  -o ${OBJECTDIR}/_ext/679848855/vpow.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vpow.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vscl.o: ../../libVectorMatrix/vscl.s  .generated_files/flags/default/4e44bd48374576632651b9cadd11b40d19343c07 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vscl.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vscl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vscl.s  -o ${OBJECTDIR}/_ext/679848855/vscl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vscl.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vsub.o: ../../libVectorMatrix/vsub.s  .generated_files/flags/default/80a9d694d64b2a28437118df85b687b56299ea3c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vsub.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vsub.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vsub.s  -o ${OBJECTDIR}/_ext/679848855/vsub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vsub.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vzpad.o: ../../libVectorMatrix/vzpad.s  .generated_files/flags/default/19dff01f208368271075295ff2b1014e1b26e9a2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vzpad.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vzpad.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vzpad.s  -o ${OBJECTDIR}/_ext/679848855/vzpad.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vzpad.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1077454706/fbcl.o: ../../libUDB/fbcl.s  .generated_files/flags/default/e29cfe0b6db2b0858ecb5ed3d75846fa46f7bf29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/fbcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/fbcl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libUDB/fbcl.s  -o ${OBJECTDIR}/_ext/1077454706/fbcl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/1077454706/fbcl.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/traps_asm.o: ../../libUDB/traps_asm.s  .generated_files/flags/default/a622e578503fdc37f703d1ec1f5c8c22a8e2d063 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libUDB/traps_asm.s  -o ${OBJECTDIR}/_ext/1077454706/traps_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/1077454706/traps_asm.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/madd.o: ../../libVectorMatrix/madd.s  .generated_files/flags/default/40419bf894904f6cc3d2135cbe19f1b6f15f3795 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/madd.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/madd.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/madd.s  -o ${OBJECTDIR}/_ext/679848855/madd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/madd.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/mmul.o: ../../libVectorMatrix/mmul.s  .generated_files/flags/default/c5c1f454f68f570d95290498a9158df418a20ccd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/mmul.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mmul.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mmul.s  -o ${OBJECTDIR}/_ext/679848855/mmul.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mmul.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/mscl.o: ../../libVectorMatrix/mscl.s  .generated_files/flags/default/cee20883903e6cfa47865280c5dbf5c9a084c0d0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/mscl.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mscl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mscl.s  -o ${OBJECTDIR}/_ext/679848855/mscl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mscl.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/msub.o: ../../libVectorMatrix/msub.s  .generated_files/flags/default/1cdb44b39b1ec64e9a961397b60aefffdcd6afa5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/msub.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/msub.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/msub.s  -o ${OBJECTDIR}/_ext/679848855/msub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/msub.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/mtrp.o: ../../libVectorMatrix/mtrp.s  .generated_files/flags/default/f77626a1fa2869687fbb904aafa8c6bb56d23d45 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/mtrp.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mtrp.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mtrp.s  -o ${OBJECTDIR}/_ext/679848855/mtrp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mtrp.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vadd.o: ../../libVectorMatrix/vadd.s  .generated_files/flags/default/df81937fb95cf08283813a2097af69451f63256e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vadd.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vadd.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vadd.s  -o ${OBJECTDIR}/_ext/679848855/vadd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vadd.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vcon.o: ../../libVectorMatrix/vcon.s  .generated_files/flags/default/1b849723da8e03b6d3b6a04ddbb00176f78073d0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcon.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcon.s  -o ${OBJECTDIR}/_ext/679848855/vcon.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcon.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vcopy.o: ../../libVectorMatrix/vcopy.s  .generated_files/flags/default/96a457a4a5b301872bb910bb9a303b461272650f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcopy.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcopy.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcopy.s  -o ${OBJECTDIR}/_ext/679848855/vcopy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcopy.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vcor.o: ../../libVectorMatrix/vcor.s  .generated_files/flags/default/b05f8420ef4da901a317884b40fd512a121eea72 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcor.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcor.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcor.s  -o ${OBJECTDIR}/_ext/679848855/vcor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcor.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vdot.o: ../../libVectorMatrix/vdot.s  .generated_files/flags/default/978ef678b98f7024229514113201c2c86ea3e9db .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vdot.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vdot.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vdot.s  -o ${OBJECTDIR}/_ext/679848855/vdot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vdot.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vmax.o: ../../libVectorMatrix/vmax.s  .generated_files/flags/default/95d046e54a51fd5122543e68d1811b5afcdaf97a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmax.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmax.s  -o ${OBJECTDIR}/_ext/679848855/vmax.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmax.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vmin.o: ../../libVectorMatrix/vmin.s  .generated_files/flags/default/9922d7c5f666689f12c6b797ede1042080fa166a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmin.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmin.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmin.s  -o ${OBJECTDIR}/_ext/679848855/vmin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmin.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vmul.o: ../../libVectorMatrix/vmul.s  .generated_files/flags/default/82e606ef35c13451e96e75aa0e000d7232a75ce4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmul.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmul.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmul.s  -o ${OBJECTDIR}/_ext/679848855/vmul.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmul.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vneg.o: ../../libVectorMatrix/vneg.s  .generated_files/flags/default/ae0dd7cc54bbb6423e62b5985ebc27123fa27bf2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vneg.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vneg.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vneg.s  -o ${OBJECTDIR}/_ext/679848855/vneg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vneg.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vpow.o: ../../libVectorMatrix/vpow.s  .generated_files/flags/default/c684fcc10f120daa37bbb424ae041525d1159cf0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vpow.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vpow.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vpow.s  -o ${OBJECTDIR}/_ext/679848855/vpow.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vpow.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vscl.o: ../../libVectorMatrix/vscl.s  .generated_files/flags/default/3a0383dfa383ec6f25ef5bbc22296d6d38523a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vscl.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vscl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vscl.s  -o ${OBJECTDIR}/_ext/679848855/vscl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vscl.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vsub.o: ../../libVectorMatrix/vsub.s  .generated_files/flags/default/1956f5a8796ea8142fd4ced152dfb861ae482a9d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vsub.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vsub.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vsub.s  -o ${OBJECTDIR}/_ext/679848855/vsub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vsub.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vzpad.o: ../../libVectorMatrix/vzpad.s  .generated_files/flags/default/882ac3c98b77242d1d29afa01f203280f4e6e5aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vzpad.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vzpad.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vzpad.s  -o ${OBJECTDIR}/_ext/679848855/vzpad.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vzpad.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1363575369/stack.o: ../../MatrixPilot/stack.S  .generated_files/flags/default/eb35f956528cd6f616a07519dabdf345af967c59 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/stack.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/stack.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../MatrixPilot/stack.S  -o ${OBJECTDIR}/_ext/1363575369/stack.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/stack.o.d"  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/1363575369/stack.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1363575369/stack.o: ../../MatrixPilot/stack.S  .generated_files/flags/default/b12ea00c5a17e14f749f1768b034d0f0c3b2c865 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/stack.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/stack.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../MatrixPilot/stack.S  -o ${OBJECTDIR}/_ext/1363575369/stack.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/stack.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/1363575369/stack.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/MatrixPilot-udb5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/MatrixPilot-udb5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--heap=256,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/MatrixPilot-UDB5.X.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/MatrixPilot-udb5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/MatrixPilot-udb5.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=256,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/MatrixPilot-UDB5.X.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/MatrixPilot-udb5.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
