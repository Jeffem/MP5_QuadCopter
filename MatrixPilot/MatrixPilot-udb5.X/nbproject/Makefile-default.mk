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
${OBJECTDIR}/_ext/1077471063/deadReckoning.o: ../../libDCM/deadReckoning.c  .generated_files/flags/default/4dde58be0e83b9b3e2c7aa500946759d3e62e75a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/deadReckoning.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/deadReckoning.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/deadReckoning.c  -o ${OBJECTDIR}/_ext/1077471063/deadReckoning.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/deadReckoning.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estAirspeed.o: ../../libDCM/estAirspeed.c  .generated_files/flags/default/e24e08717d53d2917c16cf091474a2ac7304c243 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAirspeed.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAirspeed.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estAirspeed.c  -o ${OBJECTDIR}/_ext/1077471063/estAirspeed.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estAirspeed.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estAltitude.o: ../../libDCM/estAltitude.c  .generated_files/flags/default/d55ddcc5b0bb1eff11214cb71909062c3ad310cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAltitude.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAltitude.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estAltitude.c  -o ${OBJECTDIR}/_ext/1077471063/estAltitude.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estAltitude.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estLocation.o: ../../libDCM/estLocation.c  .generated_files/flags/default/f8ce42164dec09f6f4be2ab5c5dfdf8af938ece8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estLocation.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estLocation.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estLocation.c  -o ${OBJECTDIR}/_ext/1077471063/estLocation.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estLocation.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estWind.o: ../../libDCM/estWind.c  .generated_files/flags/default/f508d5ca2a526a3ece027abecfe1be7fc93331e2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estWind.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estWind.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estWind.c  -o ${OBJECTDIR}/_ext/1077471063/estWind.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estWind.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estYawDrift.o: ../../libDCM/estYawDrift.c  .generated_files/flags/default/70bb4e19ad9ef78abccce98b931b9305518e4537 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estYawDrift.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estYawDrift.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estYawDrift.c  -o ${OBJECTDIR}/_ext/1077471063/estYawDrift.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estYawDrift.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsData.o: ../../libDCM/gpsData.c  .generated_files/flags/default/bba15d2d2971f73f0fd66408e53f3a5c5b0ad43f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsData.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsData.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsData.c  -o ${OBJECTDIR}/_ext/1077471063/gpsData.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsData.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o: ../../libDCM/gpsParseCommon.c  .generated_files/flags/default/7c1215e8bff6caaad6231ee14e8f1c0b7472a5ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseCommon.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o: ../../libDCM/gpsParseMTEK.c  .generated_files/flags/default/57f188c67e3b951ac797466cebc01e4df5e7a4bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseMTEK.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o: ../../libDCM/gpsParseNMEA.c  .generated_files/flags/default/c4f622dde68227ed8b0a78635bb0734e7136afdc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseNMEA.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o: ../../libDCM/gpsParseSTD.c  .generated_files/flags/default/30d78ab33e912f8e445500bcaf58b4b19b47f3ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseSTD.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o: ../../libDCM/gpsParseUBX.c  .generated_files/flags/default/c8ee195f0828f059856679c25112f2a9f78c22f8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseUBX.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/hilsim.o: ../../libDCM/hilsim.c  .generated_files/flags/default/c793e34cb2dc000c2432035225bdc6f9f86bfc4d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/hilsim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/hilsim.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/hilsim.c  -o ${OBJECTDIR}/_ext/1077471063/hilsim.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/hilsim.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/libDCM.o: ../../libDCM/libDCM.c  .generated_files/flags/default/6c0523902ab8ceab79c620b415aaf30860998716 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/libDCM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/libDCM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/libDCM.c  -o ${OBJECTDIR}/_ext/1077471063/libDCM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/libDCM.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/mag_drift.o: ../../libDCM/mag_drift.c  .generated_files/flags/default/eab60b4b7b0df24ece8526655a03346f31d21ec7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mag_drift.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mag_drift.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/mag_drift.c  -o ${OBJECTDIR}/_ext/1077471063/mag_drift.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/mag_drift.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/mathlib.o: ../../libDCM/mathlib.c  .generated_files/flags/default/71b19d6b221a51f142e08f9c567a10926d346378 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlib.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/mathlib.c  -o ${OBJECTDIR}/_ext/1077471063/mathlib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/mathlib.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/mathlibNAV.o: ../../libDCM/mathlibNAV.c  .generated_files/flags/default/f37febb45d0db6d17c54db139cb507228ce1ef03 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlibNAV.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlibNAV.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/mathlibNAV.c  -o ${OBJECTDIR}/_ext/1077471063/mathlibNAV.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/mathlibNAV.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/rmat.o: ../../libDCM/rmat.c  .generated_files/flags/default/7d23836102ed8c4d44df849ff61f9015b3ce9900 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/rmat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/rmat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/rmat.c  -o ${OBJECTDIR}/_ext/1077471063/rmat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/rmat.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/AT45D.o: ../../libFlashFS/AT45D.c  .generated_files/flags/default/6615b618252d19c5119fbde1325f4b0ddb28c0aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o: ../../libFlashFS/AT45D_DMA.c  .generated_files/flags/default/3caf11b5dede59ddc724cf70de409019620ecc4c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D_DMA.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/AT45D_FS.o: ../../libFlashFS/AT45D_FS.c  .generated_files/flags/default/7839c17347272b4f189812dc8e4058d638448a24 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D_FS.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/EEPROM.o: ../../libFlashFS/EEPROM.c  .generated_files/flags/default/bffd26da32b6975481d317c30cbf9dea144ff581 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/EEPROM.c  -o ${OBJECTDIR}/_ext/1864667112/EEPROM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/EEPROM.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o: ../../libFlashFS/EEPROM_FS.c  .generated_files/flags/default/f2124ac4f6a0e259eccfd8b23cb9b4aa1a2d9df2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/EEPROM_FS.c  -o ${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/filesys.o: ../../libFlashFS/filesys.c  .generated_files/flags/default/b705df557a2abb4f6c65fcec900a666c2e3c573a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/filesys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/filesys.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/filesys.c  -o ${OBJECTDIR}/_ext/1864667112/filesys.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/filesys.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o: ../../libFlashFS/MDD_AT45D.c  .generated_files/flags/default/41de61c971867e6f148c3f1f6be481b571db0461 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/MDD_AT45D.c  -o ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o: ../../libFlashFS/MDD_EEPROM.c  .generated_files/flags/default/75e61a2841c413fdaab925b86e4051184b0b5d54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/MDD_EEPROM.c  -o ${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb.o: ../../libFlashFS/usb.c  .generated_files/flags/default/994f45af8dca6c99bd7e39ccda80dc98ad22b274 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb.c  -o ${OBJECTDIR}/_ext/1864667112/usb.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb_cdc.o: ../../libFlashFS/usb_cdc.c  .generated_files/flags/default/3fe77f982a1d163f425ff2ead0c171252915b9eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_cdc.c  -o ${OBJECTDIR}/_ext/1864667112/usb_cdc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb_descriptors.o: ../../libFlashFS/usb_descriptors.c  .generated_files/flags/default/d7503655cf6f33ab07e77ef4a341740e475760d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_descriptors.c  -o ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb_msd.o: ../../libFlashFS/usb_msd.c  .generated_files/flags/default/9c8a758f3ee8a2bf3e1aff581717deac65832f38 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_msd.c  -o ${OBJECTDIR}/_ext/1864667112/usb_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_msd.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/24LC256.o: ../../libUDB/24LC256.c  .generated_files/flags/default/7987ddb1772262b36d61807c1f4949089f3aef35 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/24LC256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/24LC256.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/24LC256.c  -o ${OBJECTDIR}/_ext/1077454706/24LC256.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/24LC256.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/ADchannel.o: ../../libUDB/ADchannel.c  .generated_files/flags/default/a185468d777f51da7fb0f1ed289680ad1ea689fc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/ADchannel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/ADchannel.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/ADchannel.c  -o ${OBJECTDIR}/_ext/1077454706/ADchannel.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/ADchannel.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o: ../../libUDB/analog2digital_auav3.c  .generated_files/flags/default/a5cbe46b8f668800ec322f7e30a5bc0dfc0568ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analog2digital_auav3.c  -o ${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o: ../../libUDB/analog2digital_udb4.c  .generated_files/flags/default/9a3bc16278d6d942d76d4c49e66b00195567099c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analog2digital_udb4.c  -o ${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o: ../../libUDB/analog2digital_udb5.c  .generated_files/flags/default/a2ed9d098572b1e1498359b0a2ebc95e40c134b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analog2digital_udb5.c  -o ${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analogs.o: ../../libUDB/analogs.c  .generated_files/flags/default/f45b10d4396a3b5d3bac701d6e6ee616d110c933 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analogs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analogs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analogs.c  -o ${OBJECTDIR}/_ext/1077454706/analogs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analogs.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/background.o: ../../libUDB/background.c  .generated_files/flags/default/717fabee997c1526c4c410cef25be3daeda5e1b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/background.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/background.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/background.c  -o ${OBJECTDIR}/_ext/1077454706/background.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/background.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/barometer.o: ../../libUDB/barometer.c  .generated_files/flags/default/a0f800432ab66d15a709d024346a085b24c1c41c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/barometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/barometer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/barometer.c  -o ${OBJECTDIR}/_ext/1077454706/barometer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/barometer.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/cll_io.o: ../../libUDB/cll_io.c  .generated_files/flags/default/19c0d55cb268686247b6ca9f08099de5162d38ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/cll_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/cll_io.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/cll_io.c  -o ${OBJECTDIR}/_ext/1077454706/cll_io.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/cll_io.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o: ../../libUDB/eeprom_udb4.c  .generated_files/flags/default/1c106dcdf6ba12636169a3ce311368b6869693fc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/eeprom_udb4.c  -o ${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/events.o: ../../libUDB/events.c  .generated_files/flags/default/9a5c5c5b1936e48791e71b7f1469b1e76b0aedf6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/events.c  -o ${OBJECTDIR}/_ext/1077454706/events.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/events.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/heartbeat.o: ../../libUDB/heartbeat.c  .generated_files/flags/default/4ec404a484284e334ca51c3ebfd841e1d7b81070 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/heartbeat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/heartbeat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/heartbeat.c  -o ${OBJECTDIR}/_ext/1077454706/heartbeat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/heartbeat.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/I2C1.o: ../../libUDB/I2C1.c  .generated_files/flags/default/df963ee03222ca73029975be5802820c784cd43a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/I2C1.c  -o ${OBJECTDIR}/_ext/1077454706/I2C1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/I2C1.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/I2C2.o: ../../libUDB/I2C2.c  .generated_files/flags/default/a616443064ee0da6c6e6b1f58446cc99ef9eed05 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/I2C2.c  -o ${OBJECTDIR}/_ext/1077454706/I2C2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/I2C2.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/libUDB.o: ../../libUDB/libUDB.c  .generated_files/flags/default/e3d3e3abd9fc17be6e18c8372695d77c273f0510 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/libUDB.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/libUDB.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/libUDB.c  -o ${OBJECTDIR}/_ext/1077454706/libUDB.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/libUDB.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/magnetometer.o: ../../libUDB/magnetometer.c  .generated_files/flags/default/c928abf476bc87ca5ebaeb21dde4719314a21e52 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/magnetometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/magnetometer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/magnetometer.c  -o ${OBJECTDIR}/_ext/1077454706/magnetometer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/magnetometer.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/mcu.o: ../../libUDB/mcu.c  .generated_files/flags/default/7087a682f8370c2062f5147820ff4753c59c8721 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mcu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mcu.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mcu.c  -o ${OBJECTDIR}/_ext/1077454706/mcu.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/mcu.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/mpu6000.o: ../../libUDB/mpu6000.c  .generated_files/flags/default/65f9889a31dd5cd4e6c6b9f07f50cdf5a93f46c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu6000.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu6000.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mpu6000.c  -o ${OBJECTDIR}/_ext/1077454706/mpu6000.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/mpu6000.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/mpu_spi.o: ../../libUDB/mpu_spi.c  .generated_files/flags/default/d43eef8f2d7361c59c2ac64c4ff74c2e03f5ccb7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mpu_spi.c  -o ${OBJECTDIR}/_ext/1077454706/mpu_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/osd.o: ../../libUDB/osd.c  .generated_files/flags/default/f5996de75172ce5cd9528d4538ac95dd6e2da98e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/osd.c  -o ${OBJECTDIR}/_ext/1077454706/osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/osd.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/osd_bit.o: ../../libUDB/osd_bit.c  .generated_files/flags/default/be8d7c65bfbe7ce3014678c353e9173db9e844bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_bit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_bit.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/osd_bit.c  -o ${OBJECTDIR}/_ext/1077454706/osd_bit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/osd_bit.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/osd_spi.o: ../../libUDB/osd_spi.c  .generated_files/flags/default/bdfb8d90df6a5fdbad5e4da66d04798e8534cb68 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/osd_spi.c  -o ${OBJECTDIR}/_ext/1077454706/osd_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/osd_spi.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/radioIn.o: ../../libUDB/radioIn.c  .generated_files/flags/default/bc517ca8ef5958a70667aa7fbd1a24c3d037664a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/radioIn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/radioIn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/radioIn.c  -o ${OBJECTDIR}/_ext/1077454706/radioIn.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/radioIn.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/read.o: ../../libUDB/read.c  .generated_files/flags/default/829dc54d1e4f706636635cc7391711a1390846fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/read.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/read.c  -o ${OBJECTDIR}/_ext/1077454706/read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/read.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/serialIO.o: ../../libUDB/serialIO.c  .generated_files/flags/default/40bf270df1d07c6e7e838ee3cb341ef2745a9874 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/serialIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/serialIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/serialIO.c  -o ${OBJECTDIR}/_ext/1077454706/serialIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/serialIO.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/servoOut.o: ../../libUDB/servoOut.c  .generated_files/flags/default/7e8c664b543195531f07d00fccd3004ca71d49bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/servoOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/servoOut.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/servoOut.c  -o ${OBJECTDIR}/_ext/1077454706/servoOut.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/servoOut.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/sonarIn.o: ../../libUDB/sonarIn.c  .generated_files/flags/default/4aab4eb7368a4663a83544d81548356c1492b252 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/sonarIn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/sonarIn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/sonarIn.c  -o ${OBJECTDIR}/_ext/1077454706/sonarIn.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/sonarIn.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/traps.o: ../../libUDB/traps.c  .generated_files/flags/default/ed89d64e341bce42f749350938d23bf3d2758f54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/traps.c  -o ${OBJECTDIR}/_ext/1077454706/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/traps.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/uart.o: ../../libUDB/uart.c  .generated_files/flags/default/330c9306b59db67e0d400074ea0aea73dbe57ea9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/uart.c  -o ${OBJECTDIR}/_ext/1077454706/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/uart.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/write.o: ../../libUDB/write.c  .generated_files/flags/default/fc9c3b6a67f5c09105bdc655a8e033b6e7370e59 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/write.c  -o ${OBJECTDIR}/_ext/1077454706/write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/write.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/Lidar.o: ../../libUDB/Lidar.c  .generated_files/flags/default/59897c9e02c88da093f24c8dbd43affa82830b0d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/Lidar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/Lidar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/Lidar.c  -o ${OBJECTDIR}/_ext/1077454706/Lidar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/Lidar.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o: ../../MatrixPilot/airspeedCntrl.c  .generated_files/flags/default/7f95051f4587b05c9487f156bb010b919f1cc61b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/airspeedCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o: ../../MatrixPilot/altitudeCntrl.c  .generated_files/flags/default/e2c8352ca6a43788894340e48cb8318a04df5452 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/altitudeCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o: ../../MatrixPilot/altitudeCntrlVariable.c  .generated_files/flags/default/b0a48c30e22f044e9e4db64c8ce5a6e630ddce93 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/altitudeCntrlVariable.c  -o ${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/behavior.o: ../../MatrixPilot/behavior.c  .generated_files/flags/default/bbff10e5c59ed48826d68c95ee22a90f0cda0d49 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/behavior.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/behavior.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/behavior.c  -o ${OBJECTDIR}/_ext/1363575369/behavior.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/behavior.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/cameraCntrl.o: ../../MatrixPilot/cameraCntrl.c  .generated_files/flags/default/4efe3ac24c02afe17a7a8c3ae6bd5cd875e6caaa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/cameraCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/cameraCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/cameraCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/cameraCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/cameraCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/config.o: ../../MatrixPilot/config.c  .generated_files/flags/default/326a8a4b32f0e5097ad5c0b64158f6c5a91e5630 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/config.c  -o ${OBJECTDIR}/_ext/1363575369/config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/config.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/config_tests.o: ../../MatrixPilot/config_tests.c  .generated_files/flags/default/99f34302972522a87699adf78d62d70abdfa4a51 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config_tests.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config_tests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/config_tests.c  -o ${OBJECTDIR}/_ext/1363575369/config_tests.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/config_tests.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/console.o: ../../MatrixPilot/console.c  .generated_files/flags/default/4c2b7730ffbf51b6da76d3db64c8c83f6e2ce6a7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/console.c  -o ${OBJECTDIR}/_ext/1363575369/console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/console.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/data_services.o: ../../MatrixPilot/data_services.c  .generated_files/flags/default/ebd9dd76dcdea4d5bd9daa48137135dd3f2a14cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_services.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_services.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/data_services.c  -o ${OBJECTDIR}/_ext/1363575369/data_services.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/data_services.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/data_storage.o: ../../MatrixPilot/data_storage.c  .generated_files/flags/default/9fbc33767223c8009fe7803a50aac25e83c8c0fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_storage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/data_storage.c  -o ${OBJECTDIR}/_ext/1363575369/data_storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/data_storage.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/euler_angles.o: ../../MatrixPilot/euler_angles.c  .generated_files/flags/default/e75cb463dc7ccd72cfbf396add2bfd14b906b624 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/euler_angles.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/euler_angles.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/euler_angles.c  -o ${OBJECTDIR}/_ext/1363575369/euler_angles.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/euler_angles.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flight_state.o: ../../MatrixPilot/flight_state.c  .generated_files/flags/default/9cecde8e055596101e3e4645b8ac445233946f11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flight_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flight_state.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flight_state.c  -o ${OBJECTDIR}/_ext/1363575369/flight_state.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flight_state.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flightplan-logo.o: ../../MatrixPilot/flightplan-logo.c  .generated_files/flags/default/dff46121b512c9ec70f723c9d93e6b778ec22b16 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-logo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-logo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flightplan-logo.c  -o ${OBJECTDIR}/_ext/1363575369/flightplan-logo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flightplan-logo.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o: ../../MatrixPilot/flightplan-waypoints.c  .generated_files/flags/default/62151fd44dc36afaf5e462178b10bb3e9b8622ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flightplan-waypoints.c  -o ${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flightplan.o: ../../MatrixPilot/flightplan.c  .generated_files/flags/default/99f9a708b64fecb5343aa3bf161a14074e576396 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flightplan.c  -o ${OBJECTDIR}/_ext/1363575369/flightplan.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flightplan.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o: ../../MatrixPilot/fly_by_datalink.c  .generated_files/flags/default/8d7b08a99dfd1f4a0940d179be4d675db18f6c7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/fly_by_datalink.c  -o ${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o: ../../MatrixPilot/helicalTurnCntrl.c  .generated_files/flags/default/297ffb8c55967efed32f0cb75dcaa717b6602732 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/helicalTurnCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/main.o: ../../MatrixPilot/main.c  .generated_files/flags/default/2dce8235f5f8aaffd7a31fc2a0b3d22faeeb6b8e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/main.c  -o ${OBJECTDIR}/_ext/1363575369/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/main.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o: ../../MatrixPilot/MAVFlexiFunctions.c  .generated_files/flags/default/5091b67c1aafd13a7158de5d7e3f2129c2a7781e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVFlexiFunctions.c  -o ${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVLink.o: ../../MatrixPilot/MAVLink.c  .generated_files/flags/default/4e93ef361674826443ec3e16bffae843e1734fe8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVLink.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVLink.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVLink.c  -o ${OBJECTDIR}/_ext/1363575369/MAVLink.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVLink.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVMission.o: ../../MatrixPilot/MAVMission.c  .generated_files/flags/default/55f148575e4f05dd57016a2e62fac17c2e88ea28 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVMission.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVMission.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVMission.c  -o ${OBJECTDIR}/_ext/1363575369/MAVMission.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVMission.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVParams.o: ../../MatrixPilot/MAVParams.c  .generated_files/flags/default/356c34c0b660d27c0d9e794dedc74919d9bf451c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVParams.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVParams.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVParams.c  -o ${OBJECTDIR}/_ext/1363575369/MAVParams.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVParams.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o: ../../MatrixPilot/MAVUDBExtra.c  .generated_files/flags/default/742112e70ef201580b381b05dde713926d7a03c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVUDBExtra.c  -o ${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/minim_osd.o: ../../MatrixPilot/minim_osd.c  .generated_files/flags/default/225ebfaa624cb22a824cf82158819610ae702ea1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minim_osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minim_osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/minim_osd.c  -o ${OBJECTDIR}/_ext/1363575369/minim_osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/minim_osd.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/minIni.o: ../../MatrixPilot/minIni.c  .generated_files/flags/default/e9ac9d99f2d8b3f5f41faf6027ad8311d6b3c35f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minIni.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minIni.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/minIni.c  -o ${OBJECTDIR}/_ext/1363575369/minIni.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/minIni.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/mode_switch.o: ../../MatrixPilot/mode_switch.c  .generated_files/flags/default/947da89dd2e91b14279f13d832dc9e24156ca847 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mode_switch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mode_switch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/mode_switch.c  -o ${OBJECTDIR}/_ext/1363575369/mode_switch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/mode_switch.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/mp_osd.o: ../../MatrixPilot/mp_osd.c  .generated_files/flags/default/3211f44b116787614241c5bd4a09488a67f96fcf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mp_osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mp_osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/mp_osd.c  -o ${OBJECTDIR}/_ext/1363575369/mp_osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/mp_osd.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/navigate.o: ../../MatrixPilot/navigate.c  .generated_files/flags/default/6e24b5304eefa3f68b6905f2a7ef2261ab13284e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/navigate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/navigate.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/navigate.c  -o ${OBJECTDIR}/_ext/1363575369/navigate.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/navigate.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/nv_memory_table.o: ../../MatrixPilot/nv_memory_table.c  .generated_files/flags/default/75db7c07d334274fcb3b517b028ad281a382492c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/nv_memory_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/nv_memory_table.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/nv_memory_table.c  -o ${OBJECTDIR}/_ext/1363575369/nv_memory_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/nv_memory_table.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/parameter_table.o: ../../MatrixPilot/parameter_table.c  .generated_files/flags/default/196d3a38412cbff10386f6e116a3f7cfb7c524fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/parameter_table.c  -o ${OBJECTDIR}/_ext/1363575369/parameter_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/parameter_table.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/parameter_table2.o: ../../MatrixPilot/parameter_table2.c  .generated_files/flags/default/5368a1183f567898b65665cac03a64538df4a052 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/parameter_table2.c  -o ${OBJECTDIR}/_ext/1363575369/parameter_table2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/parameter_table2.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/parameter_table_init.o: ../../MatrixPilot/parameter_table_init.c  .generated_files/flags/default/9731f7723e05c71197c5b40bdcc0ddcabdfab30c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/parameter_table_init.c  -o ${OBJECTDIR}/_ext/1363575369/parameter_table_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/parameter_table_init.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/pitchCntrl.o: ../../MatrixPilot/pitchCntrl.c  .generated_files/flags/default/59a48d5537fd8252278827e654ba0589c35c4044 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/pitchCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/pitchCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/pitchCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/pitchCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/pitchCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/preflight.o: ../../MatrixPilot/preflight.c  .generated_files/flags/default/b25db390bc1a1716442442cd4eb38375a7f4afcf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/preflight.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/preflight.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/preflight.c  -o ${OBJECTDIR}/_ext/1363575369/preflight.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/preflight.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/redef.o: ../../MatrixPilot/redef.c  .generated_files/flags/default/5ef0f0d1ff97a0b888207b017899394e798b5292 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/redef.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/redef.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/redef.c  -o ${OBJECTDIR}/_ext/1363575369/redef.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/redef.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/remzibi_osd.o: ../../MatrixPilot/remzibi_osd.c  .generated_files/flags/default/bf76eb9acf5399afa4d9fb9147eb2fa867507f0b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/remzibi_osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/remzibi_osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/remzibi_osd.c  -o ${OBJECTDIR}/_ext/1363575369/remzibi_osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/remzibi_osd.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/ring_buffer.o: ../../MatrixPilot/ring_buffer.c  .generated_files/flags/default/64dedefc7e0d3f0a0e513465c04ee3a8c40bdce4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/ring_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/ring_buffer.c  -o ${OBJECTDIR}/_ext/1363575369/ring_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/ring_buffer.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/rollCntrl.o: ../../MatrixPilot/rollCntrl.c  .generated_files/flags/default/5b6e5b607e8d03033a3efd5d484babafaed1899f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/rollCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/rollCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/rollCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/rollCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/rollCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/servoMix.o: ../../MatrixPilot/servoMix.c  .generated_files/flags/default/3301ef026618f195a4868465b68c5e08a4b8235d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoMix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoMix.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/servoMix.c  -o ${OBJECTDIR}/_ext/1363575369/servoMix.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/servoMix.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/servoPrepare.o: ../../MatrixPilot/servoPrepare.c  .generated_files/flags/default/fac875bf45b7480547b278af54070351544321ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoPrepare.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoPrepare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/servoPrepare.c  -o ${OBJECTDIR}/_ext/1363575369/servoPrepare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/servoPrepare.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/sonarCntrl.o: ../../MatrixPilot/sonarCntrl.c  .generated_files/flags/default/7eb69667347d7ea766227ff463c5ee797b2edb4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/sonarCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/sonarCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/sonarCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/sonarCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/sonarCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/states.o: ../../MatrixPilot/states.c  .generated_files/flags/default/6aa637411efdffcb4bd49d46707479685e8c0393 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/states.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/states.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/states.c  -o ${OBJECTDIR}/_ext/1363575369/states.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/states.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/telemetry.o: ../../MatrixPilot/telemetry.c  .generated_files/flags/default/bf63d7b316e62a8737515cde7fa3baf2de703b24 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/telemetry.c  -o ${OBJECTDIR}/_ext/1363575369/telemetry.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/telemetry.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/telemetry_log.o: ../../MatrixPilot/telemetry_log.c  .generated_files/flags/default/f87e64c1d6ee549e91d44b1abcd22035d6765481 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry_log.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/telemetry_log.c  -o ${OBJECTDIR}/_ext/1363575369/telemetry_log.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/telemetry_log.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/yawCntrl.o: ../../MatrixPilot/yawCntrl.c  .generated_files/flags/default/386e94d0d156e63ccb7304f0fe38645c9b23aa4c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/yawCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/yawCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/yawCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/yawCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/yawCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/motorCntrl.o: ../motorCntrl.c  .generated_files/flags/default/59f93ee08fdb51d984019c34c17e52b2b6040186 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/motorCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/motorCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../motorCntrl.c  -o ${OBJECTDIR}/_ext/1472/motorCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/motorCntrl.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/813967445/bittest.o: ../../MAVLink/include/bittest.c  .generated_files/flags/default/586c23a8b8810ce890ec747984b0c7e37387f5ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/813967445" 
	@${RM} ${OBJECTDIR}/_ext/813967445/bittest.o.d 
	@${RM} ${OBJECTDIR}/_ext/813967445/bittest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MAVLink/include/bittest.c  -o ${OBJECTDIR}/_ext/813967445/bittest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/813967445/bittest.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1940647236/MAVFTP.o: ../../MAVLink/MAVFTP.c  .generated_files/flags/default/675aedc61be12d9b80e053ed2f0568bfb5b8e61c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1940647236" 
	@${RM} ${OBJECTDIR}/_ext/1940647236/MAVFTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1940647236/MAVFTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MAVLink/MAVFTP.c  -o ${OBJECTDIR}/_ext/1940647236/MAVFTP.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1940647236/MAVFTP.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/264835745/FSIO.o: ../../Microchip/MDD-File-System/FSIO.c  .generated_files/flags/default/ebabbe083b21ace4ec43f4a5acff5478319bcd33 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/264835745" 
	@${RM} ${OBJECTDIR}/_ext/264835745/FSIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/264835745/FSIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/MDD-File-System/FSIO.c  -o ${OBJECTDIR}/_ext/264835745/FSIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/264835745/FSIO.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/264835745/SD-SPI.o: ../../Microchip/MDD-File-System/SD-SPI.c  .generated_files/flags/default/43b98c03c13295955948ac0f01eef78f0687f8cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/264835745" 
	@${RM} ${OBJECTDIR}/_ext/264835745/SD-SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/264835745/SD-SPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/MDD-File-System/SD-SPI.c  -o ${OBJECTDIR}/_ext/264835745/SD-SPI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/264835745/SD-SPI.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o: ../../Microchip/USB/CDC-Device-Driver/usb_function_cdc.c  .generated_files/flags/default/b6b29e875d090cab054e5979538d839b05357 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1836339082" 
	@${RM} ${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/CDC-Device-Driver/usb_function_cdc.c  -o ${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/629040614/usb_function_msd.o: ../../Microchip/USB/MSD-Device-Driver/usb_function_msd.c  .generated_files/flags/default/ca4870cd7d60860a84fa6d3d8c612a009c559ed6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/629040614" 
	@${RM} ${OBJECTDIR}/_ext/629040614/usb_function_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/629040614/usb_function_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/MSD-Device-Driver/usb_function_msd.c  -o ${OBJECTDIR}/_ext/629040614/usb_function_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/629040614/usb_function_msd.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/713068069/usb_device.o: ../../Microchip/USB/usb_device.c  .generated_files/flags/default/97264d627ba570726c7de9eb855e9216bc3384df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/713068069" 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/usb_device.c  -o ${OBJECTDIR}/_ext/713068069/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/713068069/usb_device.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o: ../../Microchip/USB/usb_hal_dspic33e.c  .generated_files/flags/default/e2772df9c9f3c38494adfe651b9db4cfba5aa742 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/713068069" 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/usb_hal_dspic33e.c  -o ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1077471063/deadReckoning.o: ../../libDCM/deadReckoning.c  .generated_files/flags/default/c5ef932b3e34678aefdba026e8855dc992c54c4b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/deadReckoning.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/deadReckoning.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/deadReckoning.c  -o ${OBJECTDIR}/_ext/1077471063/deadReckoning.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/deadReckoning.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estAirspeed.o: ../../libDCM/estAirspeed.c  .generated_files/flags/default/60f3d6833a5d733181ee1490ff85e29154fac4ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAirspeed.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAirspeed.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estAirspeed.c  -o ${OBJECTDIR}/_ext/1077471063/estAirspeed.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estAirspeed.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estAltitude.o: ../../libDCM/estAltitude.c  .generated_files/flags/default/2745f5e1b2da588faa6bcc40bdc59fc038ca70cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAltitude.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estAltitude.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estAltitude.c  -o ${OBJECTDIR}/_ext/1077471063/estAltitude.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estAltitude.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estLocation.o: ../../libDCM/estLocation.c  .generated_files/flags/default/22f2dccc610ae3eb4f2426d3a779cdecd007da33 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estLocation.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estLocation.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estLocation.c  -o ${OBJECTDIR}/_ext/1077471063/estLocation.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estLocation.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estWind.o: ../../libDCM/estWind.c  .generated_files/flags/default/92d9785692fd2a5ef650b11f83183cf72abee66 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estWind.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estWind.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estWind.c  -o ${OBJECTDIR}/_ext/1077471063/estWind.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estWind.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/estYawDrift.o: ../../libDCM/estYawDrift.c  .generated_files/flags/default/22a6d03e177d27e02927cdc462b586b61dd378e2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estYawDrift.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/estYawDrift.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/estYawDrift.c  -o ${OBJECTDIR}/_ext/1077471063/estYawDrift.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/estYawDrift.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsData.o: ../../libDCM/gpsData.c  .generated_files/flags/default/f56495a6b9a0db0ab51485611c6b474a5c05ae17 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsData.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsData.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsData.c  -o ${OBJECTDIR}/_ext/1077471063/gpsData.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsData.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o: ../../libDCM/gpsParseCommon.c  .generated_files/flags/default/e14a9dad48083c069555c5bef598c3c9100c2b45 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseCommon.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseCommon.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o: ../../libDCM/gpsParseMTEK.c  .generated_files/flags/default/daba60b8a9f04c8a115ddbbfd1ab476b751d4d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseMTEK.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseMTEK.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o: ../../libDCM/gpsParseNMEA.c  .generated_files/flags/default/4168a6f4306a7f5e87d57252973936aac01a5452 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseNMEA.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseNMEA.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o: ../../libDCM/gpsParseSTD.c  .generated_files/flags/default/f777ace8dc09e32e59f89ef0c9f5b3389d4f7e54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseSTD.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseSTD.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o: ../../libDCM/gpsParseUBX.c  .generated_files/flags/default/6a98029b058a16c66ed5ed65f0cdb151035ffd89 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/gpsParseUBX.c  -o ${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/gpsParseUBX.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/hilsim.o: ../../libDCM/hilsim.c  .generated_files/flags/default/6717d0df66dc6bc8b80106bcd4fae654aa8edd7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/hilsim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/hilsim.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/hilsim.c  -o ${OBJECTDIR}/_ext/1077471063/hilsim.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/hilsim.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/libDCM.o: ../../libDCM/libDCM.c  .generated_files/flags/default/dd4c997efd1237c69c250eba919aaa3a3c16166b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/libDCM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/libDCM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/libDCM.c  -o ${OBJECTDIR}/_ext/1077471063/libDCM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/libDCM.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/mag_drift.o: ../../libDCM/mag_drift.c  .generated_files/flags/default/e9468c5503f41ab0e0194b257c466d8d7feec670 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mag_drift.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mag_drift.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/mag_drift.c  -o ${OBJECTDIR}/_ext/1077471063/mag_drift.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/mag_drift.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/mathlib.o: ../../libDCM/mathlib.c  .generated_files/flags/default/d9c797dec249183cf9a930a995254c2ac2056a9e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlib.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/mathlib.c  -o ${OBJECTDIR}/_ext/1077471063/mathlib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/mathlib.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/mathlibNAV.o: ../../libDCM/mathlibNAV.c  .generated_files/flags/default/afea414e3597fbeba73c1e6b0d4aa56d4399b18c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlibNAV.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/mathlibNAV.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/mathlibNAV.c  -o ${OBJECTDIR}/_ext/1077471063/mathlibNAV.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/mathlibNAV.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077471063/rmat.o: ../../libDCM/rmat.c  .generated_files/flags/default/ed24072a528373d61824aa5377e0953821331a83 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077471063" 
	@${RM} ${OBJECTDIR}/_ext/1077471063/rmat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077471063/rmat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libDCM/rmat.c  -o ${OBJECTDIR}/_ext/1077471063/rmat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077471063/rmat.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/AT45D.o: ../../libFlashFS/AT45D.c  .generated_files/flags/default/7c24ec7ca176dfb3acdac6ac828daef32f8c4df4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o: ../../libFlashFS/AT45D_DMA.c  .generated_files/flags/default/a2b6c065ea90efef045b0480b7c9a38dff2d94c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D_DMA.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/AT45D_FS.o: ../../libFlashFS/AT45D_FS.c  .generated_files/flags/default/fb894510f0bec9e698403b56203859d8a043f95f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D_FS.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/EEPROM.o: ../../libFlashFS/EEPROM.c  .generated_files/flags/default/2c1637a7d4041c2328150fac83ab35b4722e39e8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/EEPROM.c  -o ${OBJECTDIR}/_ext/1864667112/EEPROM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/EEPROM.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o: ../../libFlashFS/EEPROM_FS.c  .generated_files/flags/default/8bdbfab86bd7f2e6ec9850d97efb34d53c8b52a7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/EEPROM_FS.c  -o ${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/EEPROM_FS.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/filesys.o: ../../libFlashFS/filesys.c  .generated_files/flags/default/a6be73cb5162c9cd730f9344b98b0f51f625ed41 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/filesys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/filesys.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/filesys.c  -o ${OBJECTDIR}/_ext/1864667112/filesys.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/filesys.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o: ../../libFlashFS/MDD_AT45D.c  .generated_files/flags/default/b0920092b58bd3525b63bf1f4cb731048e78940d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/MDD_AT45D.c  -o ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o: ../../libFlashFS/MDD_EEPROM.c  .generated_files/flags/default/dcd92be04f8538351130ed22942946b7dcefc5af .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/MDD_EEPROM.c  -o ${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/MDD_EEPROM.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb.o: ../../libFlashFS/usb.c  .generated_files/flags/default/f4c6d54e47b17481782556aa6475fee208e0d49d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb.c  -o ${OBJECTDIR}/_ext/1864667112/usb.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb_cdc.o: ../../libFlashFS/usb_cdc.c  .generated_files/flags/default/a785ade38c17255c68e9581d1b55c8a6904d49f1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_cdc.c  -o ${OBJECTDIR}/_ext/1864667112/usb_cdc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb_descriptors.o: ../../libFlashFS/usb_descriptors.c  .generated_files/flags/default/c08200e70118941bf58033f9ffc048bb17133a16 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_descriptors.c  -o ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1864667112/usb_msd.o: ../../libFlashFS/usb_msd.c  .generated_files/flags/default/ef6e2f6c7034cf83bfc32d329e7eb6241fb6d2a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1864667112" 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_msd.c  -o ${OBJECTDIR}/_ext/1864667112/usb_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_msd.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/24LC256.o: ../../libUDB/24LC256.c  .generated_files/flags/default/c4d80e7a2c729768b1716b5c2cd324f3fbe4f67d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/24LC256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/24LC256.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/24LC256.c  -o ${OBJECTDIR}/_ext/1077454706/24LC256.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/24LC256.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/ADchannel.o: ../../libUDB/ADchannel.c  .generated_files/flags/default/ef5967ca6e288c33bb845cf64fed237e84fb4fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/ADchannel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/ADchannel.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/ADchannel.c  -o ${OBJECTDIR}/_ext/1077454706/ADchannel.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/ADchannel.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o: ../../libUDB/analog2digital_auav3.c  .generated_files/flags/default/c49ba4d3ce2009d1c503b905c528b8c028f45a2b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analog2digital_auav3.c  -o ${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analog2digital_auav3.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o: ../../libUDB/analog2digital_udb4.c  .generated_files/flags/default/12223d62f98583fd336f2d315eb346f38c9c516 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analog2digital_udb4.c  -o ${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analog2digital_udb4.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o: ../../libUDB/analog2digital_udb5.c  .generated_files/flags/default/206202302f7fb7eb982377ee51551c127b963441 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analog2digital_udb5.c  -o ${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analog2digital_udb5.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/analogs.o: ../../libUDB/analogs.c  .generated_files/flags/default/c7d78877356b64371899298fbbb1c620146099a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analogs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/analogs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/analogs.c  -o ${OBJECTDIR}/_ext/1077454706/analogs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/analogs.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/background.o: ../../libUDB/background.c  .generated_files/flags/default/d397432381af9c51a28070339ebd8e9fd7b8f3aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/background.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/background.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/background.c  -o ${OBJECTDIR}/_ext/1077454706/background.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/background.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/barometer.o: ../../libUDB/barometer.c  .generated_files/flags/default/39ddeb3bb33e4ee3cc6f7f91be170359871a3237 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/barometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/barometer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/barometer.c  -o ${OBJECTDIR}/_ext/1077454706/barometer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/barometer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/cll_io.o: ../../libUDB/cll_io.c  .generated_files/flags/default/1c1d6a1f422481ccf13f199d67fa8e7d1a3e71a1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/cll_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/cll_io.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/cll_io.c  -o ${OBJECTDIR}/_ext/1077454706/cll_io.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/cll_io.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o: ../../libUDB/eeprom_udb4.c  .generated_files/flags/default/c39430a6b0929070bb327cffc4d0ac213a957cd3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/eeprom_udb4.c  -o ${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/eeprom_udb4.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/events.o: ../../libUDB/events.c  .generated_files/flags/default/10b044b626c9ba8d647200ec2b66f8fbe3a3ddbb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/events.c  -o ${OBJECTDIR}/_ext/1077454706/events.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/events.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/heartbeat.o: ../../libUDB/heartbeat.c  .generated_files/flags/default/e6195fe812570c875270e316ca66026905a8c8de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/heartbeat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/heartbeat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/heartbeat.c  -o ${OBJECTDIR}/_ext/1077454706/heartbeat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/heartbeat.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/I2C1.o: ../../libUDB/I2C1.c  .generated_files/flags/default/49f3cd4a02a56ed6dae54c91a304f5d3968fa8ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/I2C1.c  -o ${OBJECTDIR}/_ext/1077454706/I2C1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/I2C1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/I2C2.o: ../../libUDB/I2C2.c  .generated_files/flags/default/8561c006b07d3b5f76bbf631a1e11c7b54d91b59 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/I2C2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/I2C2.c  -o ${OBJECTDIR}/_ext/1077454706/I2C2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/I2C2.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/libUDB.o: ../../libUDB/libUDB.c  .generated_files/flags/default/e8aa66a369463a33b4f044e02dc353b088b7939b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/libUDB.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/libUDB.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/libUDB.c  -o ${OBJECTDIR}/_ext/1077454706/libUDB.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/libUDB.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/magnetometer.o: ../../libUDB/magnetometer.c  .generated_files/flags/default/78fa880cd088f2d94fb3b7b9aad28c59e76a47fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/magnetometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/magnetometer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/magnetometer.c  -o ${OBJECTDIR}/_ext/1077454706/magnetometer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/magnetometer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/mcu.o: ../../libUDB/mcu.c  .generated_files/flags/default/3ccc6c896da4e83d5d9341aaef5cbc9a4b397b55 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mcu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mcu.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mcu.c  -o ${OBJECTDIR}/_ext/1077454706/mcu.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/mcu.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/mpu6000.o: ../../libUDB/mpu6000.c  .generated_files/flags/default/2320c065607f4d7dda7e2b00e7ba58eaac2d46ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu6000.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu6000.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mpu6000.c  -o ${OBJECTDIR}/_ext/1077454706/mpu6000.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/mpu6000.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/mpu_spi.o: ../../libUDB/mpu_spi.c  .generated_files/flags/default/fbd7374169c3920a69fb121617d6e98703e54bb3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mpu_spi.c  -o ${OBJECTDIR}/_ext/1077454706/mpu_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/osd.o: ../../libUDB/osd.c  .generated_files/flags/default/63a96a6030965c1ef5e96fd5540061e9d34b0375 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/osd.c  -o ${OBJECTDIR}/_ext/1077454706/osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/osd.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/osd_bit.o: ../../libUDB/osd_bit.c  .generated_files/flags/default/3718c36c1d7f267d105e2a754b19cd4362194e90 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_bit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_bit.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/osd_bit.c  -o ${OBJECTDIR}/_ext/1077454706/osd_bit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/osd_bit.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/osd_spi.o: ../../libUDB/osd_spi.c  .generated_files/flags/default/5aee0319821b3f574796c61efd825f3f916f2f5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/osd_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/osd_spi.c  -o ${OBJECTDIR}/_ext/1077454706/osd_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/osd_spi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/radioIn.o: ../../libUDB/radioIn.c  .generated_files/flags/default/586dae2cb10f171f8e16e7158e352ce17f5fb8f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/radioIn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/radioIn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/radioIn.c  -o ${OBJECTDIR}/_ext/1077454706/radioIn.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/radioIn.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/read.o: ../../libUDB/read.c  .generated_files/flags/default/8db65573dcc3315f6d02981c687eff1db17a7e7a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/read.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/read.c  -o ${OBJECTDIR}/_ext/1077454706/read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/read.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/serialIO.o: ../../libUDB/serialIO.c  .generated_files/flags/default/697489915ae0e1e61bd0d71d15891a90a0ce67dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/serialIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/serialIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/serialIO.c  -o ${OBJECTDIR}/_ext/1077454706/serialIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/serialIO.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/servoOut.o: ../../libUDB/servoOut.c  .generated_files/flags/default/d5d8bda7d2f4909471e07b160b9ba2cd6196c56 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/servoOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/servoOut.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/servoOut.c  -o ${OBJECTDIR}/_ext/1077454706/servoOut.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/servoOut.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/sonarIn.o: ../../libUDB/sonarIn.c  .generated_files/flags/default/3c11d7b0fb6e8d63dac0157b1126f7684bb79226 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/sonarIn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/sonarIn.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/sonarIn.c  -o ${OBJECTDIR}/_ext/1077454706/sonarIn.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/sonarIn.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/traps.o: ../../libUDB/traps.c  .generated_files/flags/default/db68f8d6eb173c59fc44ff090d8598ce4f124452 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/traps.c  -o ${OBJECTDIR}/_ext/1077454706/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/traps.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/uart.o: ../../libUDB/uart.c  .generated_files/flags/default/85a8503aaa75c07f3bf7a147962913906c6638cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/uart.c  -o ${OBJECTDIR}/_ext/1077454706/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/uart.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/write.o: ../../libUDB/write.c  .generated_files/flags/default/1558b67ac35b97b572ba059e6f69b5ed3c6017c6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/write.c  -o ${OBJECTDIR}/_ext/1077454706/write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/write.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/Lidar.o: ../../libUDB/Lidar.c  .generated_files/flags/default/9d27811b1bbed9225c14743534e2fe385e1bd903 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/Lidar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/Lidar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/Lidar.c  -o ${OBJECTDIR}/_ext/1077454706/Lidar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1077454706/Lidar.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o: ../../MatrixPilot/airspeedCntrl.c  .generated_files/flags/default/bf1a6b6bbbfbd8ffc8d75b39b0cc43a2ce4cb4d7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/airspeedCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/airspeedCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o: ../../MatrixPilot/altitudeCntrl.c  .generated_files/flags/default/134566f2e5bb8fd878542c07a4ce03fc6f25cf3e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/altitudeCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/altitudeCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o: ../../MatrixPilot/altitudeCntrlVariable.c  .generated_files/flags/default/cf0da1adecd2fc32e27036615c2cf2262b66ce9f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/altitudeCntrlVariable.c  -o ${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/altitudeCntrlVariable.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/behavior.o: ../../MatrixPilot/behavior.c  .generated_files/flags/default/37229aa8dda7ffbf124324babcbf3c54c75da2f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/behavior.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/behavior.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/behavior.c  -o ${OBJECTDIR}/_ext/1363575369/behavior.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/behavior.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/cameraCntrl.o: ../../MatrixPilot/cameraCntrl.c  .generated_files/flags/default/5777a72ee911c47762d0202757fabf718e0bd312 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/cameraCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/cameraCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/cameraCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/cameraCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/cameraCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/config.o: ../../MatrixPilot/config.c  .generated_files/flags/default/104f0cc9b703f6dfdc697dffdefe5376e5daff82 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/config.c  -o ${OBJECTDIR}/_ext/1363575369/config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/config.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/config_tests.o: ../../MatrixPilot/config_tests.c  .generated_files/flags/default/8f130f4dce7a821907351c45fea4f802aea6eba2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config_tests.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/config_tests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/config_tests.c  -o ${OBJECTDIR}/_ext/1363575369/config_tests.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/config_tests.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/console.o: ../../MatrixPilot/console.c  .generated_files/flags/default/3934e1cf42e4448c8f6f72d8d5fbbd7d8bb5cb48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/console.c  -o ${OBJECTDIR}/_ext/1363575369/console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/console.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/data_services.o: ../../MatrixPilot/data_services.c  .generated_files/flags/default/107be109816ea3fc053a8df56fddc9cd3f9717f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_services.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_services.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/data_services.c  -o ${OBJECTDIR}/_ext/1363575369/data_services.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/data_services.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/data_storage.o: ../../MatrixPilot/data_storage.c  .generated_files/flags/default/b4024aaa7f15fd2c2bfe81cab5f83d274281efed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_storage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/data_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/data_storage.c  -o ${OBJECTDIR}/_ext/1363575369/data_storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/data_storage.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/euler_angles.o: ../../MatrixPilot/euler_angles.c  .generated_files/flags/default/69b5a85eef3147e6999f419dcc82fd6aac652ad6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/euler_angles.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/euler_angles.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/euler_angles.c  -o ${OBJECTDIR}/_ext/1363575369/euler_angles.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/euler_angles.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flight_state.o: ../../MatrixPilot/flight_state.c  .generated_files/flags/default/42fa86aaae2f6fe8d2c9e581a105e569bd71fad8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flight_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flight_state.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flight_state.c  -o ${OBJECTDIR}/_ext/1363575369/flight_state.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flight_state.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flightplan-logo.o: ../../MatrixPilot/flightplan-logo.c  .generated_files/flags/default/9fe2b9b48334765201acdf77fb504bbf7dc4bd6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-logo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-logo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flightplan-logo.c  -o ${OBJECTDIR}/_ext/1363575369/flightplan-logo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flightplan-logo.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o: ../../MatrixPilot/flightplan-waypoints.c  .generated_files/flags/default/8f0bcaac1b90ade1a19708d10f3ffe90d2863a98 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flightplan-waypoints.c  -o ${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flightplan-waypoints.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/flightplan.o: ../../MatrixPilot/flightplan.c  .generated_files/flags/default/47c4bcec1d257502d7501422326a865a720e5b69 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/flightplan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/flightplan.c  -o ${OBJECTDIR}/_ext/1363575369/flightplan.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/flightplan.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o: ../../MatrixPilot/fly_by_datalink.c  .generated_files/flags/default/4c84022012d7c3c0f9f8edfb4512217398f2b490 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/fly_by_datalink.c  -o ${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/fly_by_datalink.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o: ../../MatrixPilot/helicalTurnCntrl.c  .generated_files/flags/default/b52acd5dde534603356e5f577d621f7e234dbb5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/helicalTurnCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/helicalTurnCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/main.o: ../../MatrixPilot/main.c  .generated_files/flags/default/1f4fee086c5001d25e0f6c8e61e33e39db936c29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/main.c  -o ${OBJECTDIR}/_ext/1363575369/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o: ../../MatrixPilot/MAVFlexiFunctions.c  .generated_files/flags/default/a64d3eadbcbc202397b5872b77811e971e6a1d98 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVFlexiFunctions.c  -o ${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVFlexiFunctions.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVLink.o: ../../MatrixPilot/MAVLink.c  .generated_files/flags/default/7794250cb21c8165d506e139112b3b0b311f715d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVLink.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVLink.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVLink.c  -o ${OBJECTDIR}/_ext/1363575369/MAVLink.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVLink.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVMission.o: ../../MatrixPilot/MAVMission.c  .generated_files/flags/default/f9a45b3cf97bb4cb19ac68d0628ac18436ef9c46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVMission.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVMission.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVMission.c  -o ${OBJECTDIR}/_ext/1363575369/MAVMission.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVMission.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVParams.o: ../../MatrixPilot/MAVParams.c  .generated_files/flags/default/af06637d4505dbeb0fbb87437f75db38c7d9372 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVParams.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVParams.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVParams.c  -o ${OBJECTDIR}/_ext/1363575369/MAVParams.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVParams.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o: ../../MatrixPilot/MAVUDBExtra.c  .generated_files/flags/default/f3f371d06bf0e0f1277ad211f6e20b35db611ac1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/MAVUDBExtra.c  -o ${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/MAVUDBExtra.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/minim_osd.o: ../../MatrixPilot/minim_osd.c  .generated_files/flags/default/248bebfce7464fe00ea0ba24fb560131401da49d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minim_osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minim_osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/minim_osd.c  -o ${OBJECTDIR}/_ext/1363575369/minim_osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/minim_osd.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/minIni.o: ../../MatrixPilot/minIni.c  .generated_files/flags/default/b46bfc8a9d04e53c1330c8a425739d38b3a06e75 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minIni.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/minIni.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/minIni.c  -o ${OBJECTDIR}/_ext/1363575369/minIni.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/minIni.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/mode_switch.o: ../../MatrixPilot/mode_switch.c  .generated_files/flags/default/f0d8d2eb27a3fdb19f0c2b7cda9142653ea18737 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mode_switch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mode_switch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/mode_switch.c  -o ${OBJECTDIR}/_ext/1363575369/mode_switch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/mode_switch.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/mp_osd.o: ../../MatrixPilot/mp_osd.c  .generated_files/flags/default/41ea7e0c16398405ac3c449c6b0ca77d6994d044 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mp_osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/mp_osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/mp_osd.c  -o ${OBJECTDIR}/_ext/1363575369/mp_osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/mp_osd.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/navigate.o: ../../MatrixPilot/navigate.c  .generated_files/flags/default/b648a9cd6139b313876ab00c8defcdecfb0a66e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/navigate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/navigate.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/navigate.c  -o ${OBJECTDIR}/_ext/1363575369/navigate.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/navigate.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/nv_memory_table.o: ../../MatrixPilot/nv_memory_table.c  .generated_files/flags/default/e426848d29f62d327603ee590f32a47da798967a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/nv_memory_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/nv_memory_table.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/nv_memory_table.c  -o ${OBJECTDIR}/_ext/1363575369/nv_memory_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/nv_memory_table.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/parameter_table.o: ../../MatrixPilot/parameter_table.c  .generated_files/flags/default/69dd53d6398376f6906f01a3a4325d2e008c4ef6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/parameter_table.c  -o ${OBJECTDIR}/_ext/1363575369/parameter_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/parameter_table.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/parameter_table2.o: ../../MatrixPilot/parameter_table2.c  .generated_files/flags/default/b56878d64354f88022646ed0caa3fd81bb45058c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/parameter_table2.c  -o ${OBJECTDIR}/_ext/1363575369/parameter_table2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/parameter_table2.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/parameter_table_init.o: ../../MatrixPilot/parameter_table_init.c  .generated_files/flags/default/fab0a0471e65f0fc07f5e890ccffc9f8a1e5b6e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/parameter_table_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/parameter_table_init.c  -o ${OBJECTDIR}/_ext/1363575369/parameter_table_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/parameter_table_init.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/pitchCntrl.o: ../../MatrixPilot/pitchCntrl.c  .generated_files/flags/default/a93f55ade6251b3614304d1d242f35140600c683 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/pitchCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/pitchCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/pitchCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/pitchCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/pitchCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/preflight.o: ../../MatrixPilot/preflight.c  .generated_files/flags/default/d7e97c54cb359b64fdd2fd2517a55819de273402 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/preflight.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/preflight.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/preflight.c  -o ${OBJECTDIR}/_ext/1363575369/preflight.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/preflight.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/redef.o: ../../MatrixPilot/redef.c  .generated_files/flags/default/9779f6c80c55e010044ecf1b6ddb594e1101eb87 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/redef.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/redef.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/redef.c  -o ${OBJECTDIR}/_ext/1363575369/redef.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/redef.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/remzibi_osd.o: ../../MatrixPilot/remzibi_osd.c  .generated_files/flags/default/600ca022d82b205584e76247655e76a658a0b3bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/remzibi_osd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/remzibi_osd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/remzibi_osd.c  -o ${OBJECTDIR}/_ext/1363575369/remzibi_osd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/remzibi_osd.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/ring_buffer.o: ../../MatrixPilot/ring_buffer.c  .generated_files/flags/default/5b948bb4cd6d2e4a56c1916aad53321a5f09313c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/ring_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/ring_buffer.c  -o ${OBJECTDIR}/_ext/1363575369/ring_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/ring_buffer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/rollCntrl.o: ../../MatrixPilot/rollCntrl.c  .generated_files/flags/default/b0c453fcad832014a5e5633a3cc2c2d4d4208ff1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/rollCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/rollCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/rollCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/rollCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/rollCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/servoMix.o: ../../MatrixPilot/servoMix.c  .generated_files/flags/default/6452620740059bd33cce4146b9e646d7cf5ee5fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoMix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoMix.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/servoMix.c  -o ${OBJECTDIR}/_ext/1363575369/servoMix.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/servoMix.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/servoPrepare.o: ../../MatrixPilot/servoPrepare.c  .generated_files/flags/default/94cce170368b272eded497343e81244bae31dd2f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoPrepare.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/servoPrepare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/servoPrepare.c  -o ${OBJECTDIR}/_ext/1363575369/servoPrepare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/servoPrepare.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/sonarCntrl.o: ../../MatrixPilot/sonarCntrl.c  .generated_files/flags/default/84bb902bc38fe1cc7ec305c8d07fc52002f35669 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/sonarCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/sonarCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/sonarCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/sonarCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/sonarCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/states.o: ../../MatrixPilot/states.c  .generated_files/flags/default/a9fdd13b8b41d7df8000c1348f2cb2982fb4c35d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/states.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/states.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/states.c  -o ${OBJECTDIR}/_ext/1363575369/states.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/states.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/telemetry.o: ../../MatrixPilot/telemetry.c  .generated_files/flags/default/aac9c3e817bad894cfb94cdda1122f64c8836c1c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/telemetry.c  -o ${OBJECTDIR}/_ext/1363575369/telemetry.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/telemetry.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/telemetry_log.o: ../../MatrixPilot/telemetry_log.c  .generated_files/flags/default/d88e4e641a30e2464b2f8812f4fd3375d7eb9809 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/telemetry_log.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/telemetry_log.c  -o ${OBJECTDIR}/_ext/1363575369/telemetry_log.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/telemetry_log.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1363575369/yawCntrl.o: ../../MatrixPilot/yawCntrl.c  .generated_files/flags/default/1c11c700b297486a522aee4f6488a256d5b4f330 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/yawCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/yawCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MatrixPilot/yawCntrl.c  -o ${OBJECTDIR}/_ext/1363575369/yawCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/yawCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/motorCntrl.o: ../motorCntrl.c  .generated_files/flags/default/c0aac2d9c8337db3553020e6ef24ffda7e618939 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/motorCntrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/motorCntrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../motorCntrl.c  -o ${OBJECTDIR}/_ext/1472/motorCntrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/motorCntrl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/813967445/bittest.o: ../../MAVLink/include/bittest.c  .generated_files/flags/default/db12cdcee5fb647ad86cda7239d7c2b5b96f0ae1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/813967445" 
	@${RM} ${OBJECTDIR}/_ext/813967445/bittest.o.d 
	@${RM} ${OBJECTDIR}/_ext/813967445/bittest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MAVLink/include/bittest.c  -o ${OBJECTDIR}/_ext/813967445/bittest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/813967445/bittest.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1940647236/MAVFTP.o: ../../MAVLink/MAVFTP.c  .generated_files/flags/default/e0f596f5d2b5f082c363f3320607797d34ed9e9b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1940647236" 
	@${RM} ${OBJECTDIR}/_ext/1940647236/MAVFTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1940647236/MAVFTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../MAVLink/MAVFTP.c  -o ${OBJECTDIR}/_ext/1940647236/MAVFTP.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1940647236/MAVFTP.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/264835745/FSIO.o: ../../Microchip/MDD-File-System/FSIO.c  .generated_files/flags/default/4180f978997180553239f82d5027dab0ad13e185 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/264835745" 
	@${RM} ${OBJECTDIR}/_ext/264835745/FSIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/264835745/FSIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/MDD-File-System/FSIO.c  -o ${OBJECTDIR}/_ext/264835745/FSIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/264835745/FSIO.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/264835745/SD-SPI.o: ../../Microchip/MDD-File-System/SD-SPI.c  .generated_files/flags/default/53d23cf2f090ac9a0339f9e7e3decf134c7bf2cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/264835745" 
	@${RM} ${OBJECTDIR}/_ext/264835745/SD-SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/264835745/SD-SPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/MDD-File-System/SD-SPI.c  -o ${OBJECTDIR}/_ext/264835745/SD-SPI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/264835745/SD-SPI.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o: ../../Microchip/USB/CDC-Device-Driver/usb_function_cdc.c  .generated_files/flags/default/291eab295a7108a06aab3acbc2c3e906b9d66a9d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1836339082" 
	@${RM} ${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/CDC-Device-Driver/usb_function_cdc.c  -o ${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1836339082/usb_function_cdc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/629040614/usb_function_msd.o: ../../Microchip/USB/MSD-Device-Driver/usb_function_msd.c  .generated_files/flags/default/8cb67cca1cfbef2c884125ef2f7557c7395facb3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/629040614" 
	@${RM} ${OBJECTDIR}/_ext/629040614/usb_function_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/629040614/usb_function_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/MSD-Device-Driver/usb_function_msd.c  -o ${OBJECTDIR}/_ext/629040614/usb_function_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/629040614/usb_function_msd.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/713068069/usb_device.o: ../../Microchip/USB/usb_device.c  .generated_files/flags/default/d46cc351364996cb3f713f3bc89f42ae63bb3720 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/713068069" 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/usb_device.c  -o ${OBJECTDIR}/_ext/713068069/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/713068069/usb_device.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o: ../../Microchip/USB/usb_hal_dspic33e.c  .generated_files/flags/default/f712e6aaf5ee0e75bce16eb71feb86763bb2cd41 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/713068069" 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/usb_hal_dspic33e.c  -o ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -I"../../Config" -I"../../MAVLink/include" -I"../../Microchip" -I"../../Microchip/Include" -I"../../libVectorMatrix" -DUDB5=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1077454706/fbcl.o: ../../libUDB/fbcl.s  .generated_files/flags/default/4afbf7dca448ab454939e056c9e5a252c0fc26b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/fbcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/fbcl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libUDB/fbcl.s  -o ${OBJECTDIR}/_ext/1077454706/fbcl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/1077454706/fbcl.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/traps_asm.o: ../../libUDB/traps_asm.s  .generated_files/flags/default/443294a10fa8e4e7c2a8495b3a0c78841ec2c052 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libUDB/traps_asm.s  -o ${OBJECTDIR}/_ext/1077454706/traps_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/1077454706/traps_asm.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/madd.o: ../../libVectorMatrix/madd.s  .generated_files/flags/default/8e8406ce76ba193abd32c25d2643aa3131abbb80 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/madd.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/madd.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/madd.s  -o ${OBJECTDIR}/_ext/679848855/madd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/madd.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/mmul.o: ../../libVectorMatrix/mmul.s  .generated_files/flags/default/fef578fa7a987f2fc57a56d7769bafa4976a57fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/mmul.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mmul.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mmul.s  -o ${OBJECTDIR}/_ext/679848855/mmul.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mmul.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/mscl.o: ../../libVectorMatrix/mscl.s  .generated_files/flags/default/d9f58e5267d0a90defb136e7ba9cbc7e5fc7e8c9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/mscl.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mscl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mscl.s  -o ${OBJECTDIR}/_ext/679848855/mscl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mscl.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/msub.o: ../../libVectorMatrix/msub.s  .generated_files/flags/default/48454d9dc8736d99d91abbe338a1240e0feb073b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/msub.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/msub.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/msub.s  -o ${OBJECTDIR}/_ext/679848855/msub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/msub.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/mtrp.o: ../../libVectorMatrix/mtrp.s  .generated_files/flags/default/8d53a44a0834bf88da7708e45aeb8e22db5f8f90 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/mtrp.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mtrp.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mtrp.s  -o ${OBJECTDIR}/_ext/679848855/mtrp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mtrp.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vadd.o: ../../libVectorMatrix/vadd.s  .generated_files/flags/default/4f65d71bda6cce20aa3ce9ae310e486ca92a23a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vadd.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vadd.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vadd.s  -o ${OBJECTDIR}/_ext/679848855/vadd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vadd.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vcon.o: ../../libVectorMatrix/vcon.s  .generated_files/flags/default/c855014242af87c5b18f60e4e3709b4288f55e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcon.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcon.s  -o ${OBJECTDIR}/_ext/679848855/vcon.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcon.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vcopy.o: ../../libVectorMatrix/vcopy.s  .generated_files/flags/default/e9c6a2bbf944ef2fecd6fbae3b843010a7fd1572 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcopy.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcopy.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcopy.s  -o ${OBJECTDIR}/_ext/679848855/vcopy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcopy.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vcor.o: ../../libVectorMatrix/vcor.s  .generated_files/flags/default/9ea09f71c06ae434b308729e6bc5008f3ba9579a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcor.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcor.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcor.s  -o ${OBJECTDIR}/_ext/679848855/vcor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcor.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vdot.o: ../../libVectorMatrix/vdot.s  .generated_files/flags/default/8fa89b05f76d4f0ef63e017fb86aab56af94fe00 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vdot.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vdot.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vdot.s  -o ${OBJECTDIR}/_ext/679848855/vdot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vdot.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vmax.o: ../../libVectorMatrix/vmax.s  .generated_files/flags/default/4e46999f9dbfeaea3ebbf774ee5c677c0bbbd5f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmax.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmax.s  -o ${OBJECTDIR}/_ext/679848855/vmax.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmax.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vmin.o: ../../libVectorMatrix/vmin.s  .generated_files/flags/default/22e42a1c68040d8258a723f73dfa4a18a7392f56 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmin.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmin.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmin.s  -o ${OBJECTDIR}/_ext/679848855/vmin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmin.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vmul.o: ../../libVectorMatrix/vmul.s  .generated_files/flags/default/9737df30c04a715ff92a8e033bd309112ae996f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmul.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmul.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmul.s  -o ${OBJECTDIR}/_ext/679848855/vmul.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmul.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vneg.o: ../../libVectorMatrix/vneg.s  .generated_files/flags/default/284c4ca0d834deb4bb6eb80485d2ce7fdcd993cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vneg.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vneg.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vneg.s  -o ${OBJECTDIR}/_ext/679848855/vneg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vneg.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vpow.o: ../../libVectorMatrix/vpow.s  .generated_files/flags/default/4d0a4c95673ef771d00a6390a9ab5fed95665ae5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vpow.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vpow.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vpow.s  -o ${OBJECTDIR}/_ext/679848855/vpow.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vpow.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vscl.o: ../../libVectorMatrix/vscl.s  .generated_files/flags/default/9a4a08141534f9f0ce542e5252356e9571895c61 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vscl.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vscl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vscl.s  -o ${OBJECTDIR}/_ext/679848855/vscl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vscl.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vsub.o: ../../libVectorMatrix/vsub.s  .generated_files/flags/default/39a32d16197f33e97b0bb7bea9839b6136408e84 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vsub.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vsub.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vsub.s  -o ${OBJECTDIR}/_ext/679848855/vsub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vsub.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vzpad.o: ../../libVectorMatrix/vzpad.s  .generated_files/flags/default/d608e9072efd3ee908e7b631040022d24052e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vzpad.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vzpad.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vzpad.s  -o ${OBJECTDIR}/_ext/679848855/vzpad.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vzpad.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1077454706/fbcl.o: ../../libUDB/fbcl.s  .generated_files/flags/default/eddd2e66761484ae59fc2f06bdb411066d98a4a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/fbcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/fbcl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libUDB/fbcl.s  -o ${OBJECTDIR}/_ext/1077454706/fbcl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/1077454706/fbcl.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1077454706/traps_asm.o: ../../libUDB/traps_asm.s  .generated_files/flags/default/4d0f00e10f53d1ab72568646db42408ea59670df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1077454706" 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libUDB/traps_asm.s  -o ${OBJECTDIR}/_ext/1077454706/traps_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/1077454706/traps_asm.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/madd.o: ../../libVectorMatrix/madd.s  .generated_files/flags/default/676df62f34646f93ac4f3522433becaf579eee66 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/madd.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/madd.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/madd.s  -o ${OBJECTDIR}/_ext/679848855/madd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/madd.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/mmul.o: ../../libVectorMatrix/mmul.s  .generated_files/flags/default/1d40dff08b1976c49cae9542a4a6843ed56b22cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/mmul.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mmul.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mmul.s  -o ${OBJECTDIR}/_ext/679848855/mmul.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mmul.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/mscl.o: ../../libVectorMatrix/mscl.s  .generated_files/flags/default/b54f2c982458ee1a5b7dfa223dab619ad947aebf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/mscl.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mscl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mscl.s  -o ${OBJECTDIR}/_ext/679848855/mscl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mscl.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/msub.o: ../../libVectorMatrix/msub.s  .generated_files/flags/default/c0d6ae0dbb2cbd652c3bcc300e42d098aa0b1389 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/msub.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/msub.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/msub.s  -o ${OBJECTDIR}/_ext/679848855/msub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/msub.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/mtrp.o: ../../libVectorMatrix/mtrp.s  .generated_files/flags/default/ec5f27127c1365951a9a7da7d9ebbb8ca09d1768 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/mtrp.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mtrp.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mtrp.s  -o ${OBJECTDIR}/_ext/679848855/mtrp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mtrp.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vadd.o: ../../libVectorMatrix/vadd.s  .generated_files/flags/default/a833ecb9f036c6c0f8d2cfe58ba649ffde031353 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vadd.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vadd.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vadd.s  -o ${OBJECTDIR}/_ext/679848855/vadd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vadd.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vcon.o: ../../libVectorMatrix/vcon.s  .generated_files/flags/default/d3bbd453880da8f3295481e79de40d7c4ed23449 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcon.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcon.s  -o ${OBJECTDIR}/_ext/679848855/vcon.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcon.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vcopy.o: ../../libVectorMatrix/vcopy.s  .generated_files/flags/default/660a75ddf1845a0f6d97ddb2eb94e6cbaedcff1b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcopy.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcopy.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcopy.s  -o ${OBJECTDIR}/_ext/679848855/vcopy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcopy.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vcor.o: ../../libVectorMatrix/vcor.s  .generated_files/flags/default/2f9a9987bfa99cf7a808dc7e1b7cda995c4dfdc5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcor.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcor.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcor.s  -o ${OBJECTDIR}/_ext/679848855/vcor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcor.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vdot.o: ../../libVectorMatrix/vdot.s  .generated_files/flags/default/b272ed13e7963631ebadd5eb936585eb7c2fbebb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vdot.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vdot.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vdot.s  -o ${OBJECTDIR}/_ext/679848855/vdot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vdot.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vmax.o: ../../libVectorMatrix/vmax.s  .generated_files/flags/default/c3e2aadbe2a0d1a17806e670c3b64842f2627562 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmax.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmax.s  -o ${OBJECTDIR}/_ext/679848855/vmax.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmax.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vmin.o: ../../libVectorMatrix/vmin.s  .generated_files/flags/default/844249079913893cddd39be759562aa1c909f2c7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmin.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmin.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmin.s  -o ${OBJECTDIR}/_ext/679848855/vmin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmin.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vmul.o: ../../libVectorMatrix/vmul.s  .generated_files/flags/default/b192d5950ac162448feab4eb803bb5979a73b09 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmul.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmul.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmul.s  -o ${OBJECTDIR}/_ext/679848855/vmul.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmul.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vneg.o: ../../libVectorMatrix/vneg.s  .generated_files/flags/default/3df716c92b7322eb59187bfc7a2ab57d164a531 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vneg.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vneg.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vneg.s  -o ${OBJECTDIR}/_ext/679848855/vneg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vneg.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vpow.o: ../../libVectorMatrix/vpow.s  .generated_files/flags/default/7875573a97fa7427843de09d88cd7829326f374b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vpow.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vpow.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vpow.s  -o ${OBJECTDIR}/_ext/679848855/vpow.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vpow.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vscl.o: ../../libVectorMatrix/vscl.s  .generated_files/flags/default/5c0b9fe792789f511553920c11bcba4dc8087a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vscl.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vscl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vscl.s  -o ${OBJECTDIR}/_ext/679848855/vscl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vscl.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vsub.o: ../../libVectorMatrix/vsub.s  .generated_files/flags/default/ee18f637568eec752a911bf60384bbb8b3718bc3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vsub.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vsub.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vsub.s  -o ${OBJECTDIR}/_ext/679848855/vsub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vsub.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/679848855/vzpad.o: ../../libVectorMatrix/vzpad.s  .generated_files/flags/default/d3ed8646037d918f57f10c03f84ad5fafe980ce2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/679848855" 
	@${RM} ${OBJECTDIR}/_ext/679848855/vzpad.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vzpad.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vzpad.s  -o ${OBJECTDIR}/_ext/679848855/vzpad.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vzpad.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1363575369/stack.o: ../../MatrixPilot/stack.S  .generated_files/flags/default/ba408b47de3c7b9732a1badc868b691ae69b7763 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1363575369" 
	@${RM} ${OBJECTDIR}/_ext/1363575369/stack.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363575369/stack.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../MatrixPilot/stack.S  -o ${OBJECTDIR}/_ext/1363575369/stack.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1363575369/stack.o.d"  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/1363575369/stack.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1363575369/stack.o: ../../MatrixPilot/stack.S  .generated_files/flags/default/719b90925b9a97ff411ce870763163dbb8ebd88b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
