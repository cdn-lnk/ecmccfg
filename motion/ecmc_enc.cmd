#==============================================================================
# ecmc_enc.cmd
#- Arguments: n/a

#-d /**
#-d   \brief Script for adding an extra encoder
#-d   \details Configures a encoder object in ECMC, based on previously set environment variables.
#-d   \author Anders Sandstroem
#-d   \file
#-d   \note This script is typically called by \b addEncoder.cmd
#-d   \pre An axis definition for a physical axis has to be added/configured immediately before the call of this script.
#-d */

ecmcConfigOrDie "Cfg.AddAxisEnc(${ECMC_AXIS_NO})"

#- Get current encoder index beeing configured (index of encoder added), needed for PV names
ecmcConfig "GetAxisEncConfigIndex($(ECMC_AXIS_NO))"
# Current encoder index beeing configured
epicsEnvShow(ECMC_CONFIG_RETURN_VAL)
epicsEnvSet(ECMC_ENC_CFG_ID,${ECMC_CONFIG_RETURN_VAL})

ecmcConfigOrDie "Cfg.LinkEcEntryToObject(${ECMC_EC_ENC_ACTPOS},"ax${ECMC_AXIS_NO}.enc.actpos")"
ecmcConfigOrDie "Cfg.SetAxisEncScaleDenom(${ECMC_AXIS_NO},${ECMC_ENC_SCALE_DENOM})"
ecmcConfigOrDie "Cfg.SetAxisEncScaleNum(${ECMC_AXIS_NO},${ECMC_ENC_SCALE_NUM})"
ecmcConfigOrDie "Cfg.SetAxisEncType(${ECMC_AXIS_NO},${ECMC_ENC_TYPE})"
ecmcConfigOrDie "Cfg.SetAxisEncBits(${ECMC_AXIS_NO},${ECMC_ENC_BITS})"
ecmcConfigOrDie "Cfg.SetAxisEncAbsBits($(ECMC_AXIS_NO),${ECMC_ENC_ABS_BITS})"
ecmcConfigOrDie "Cfg.SetAxisEncOffset($(ECMC_AXIS_NO),${ECMC_ENC_ABS_OFFSET})"
ecmcConfigOrDie "Cfg.SetAxisEncVelFilterSize($(ECMC_AXIS_NO),${ECMC_ENC_VEL_FILTER_SIZE=100})"
ecmcConfigOrDie "Cfg.SetAxisEncPosFilterSize($(ECMC_AXIS_NO),${ECMC_ENC_POS_FILTER_SIZE=1})"
ecmcConfigOrDie "Cfg.SetAxisEncPosFilterEnable($(ECMC_AXIS_NO),${ECMC_ENC_POS_FILTER_ENABLE=0})"

ecmcConfigOrDie "Cfg.LinkEcEntryToObject(${ECMC_EC_ENC_RESET=""},"ax${ECMC_AXIS_NO}.enc.reset")"
ecmcConfigOrDie "Cfg.LinkEcEntryToObject(${ECMC_EC_ENC_ALARM_0=""},"ax${ECMC_AXIS_NO}.enc.alarm0")"
ecmcConfigOrDie "Cfg.LinkEcEntryToObject(${ECMC_EC_ENC_ALARM_1=""},"ax${ECMC_AXIS_NO}.enc.alarm1")"
ecmcConfigOrDie "Cfg.LinkEcEntryToObject(${ECMC_EC_ENC_ALARM_2=""},"ax${ECMC_AXIS_NO}.enc.alarm2")"
ecmcConfigOrDie "Cfg.LinkEcEntryToObject(${ECMC_EC_ENC_WARNING=""},"ax${ECMC_AXIS_NO}.enc.warning")"

ecmcConfigOrDie "Cfg.LinkEcEntryToObject(${ECMC_EC_ENC_READY=""},"ax${ECMC_AXIS_NO}.enc.ready")"

#- Encoder latching
ecmcConfigOrDie "Cfg.LinkEcEntryToObject(${ECMC_EC_ENC_LATCHPOS=""},"ax${ECMC_AXIS_NO}.enc.latchpos")"
ecmcConfigOrDie "Cfg.LinkEcEntryToObject(${ECMC_EC_ENC_LATCH_CONTROL=""},"ax${ECMC_AXIS_NO}.enc.latchcontrol")"
ecmcConfigOrDie "Cfg.LinkEcEntryToObject(${ECMC_EC_ENC_LATCH_STATUS=""},"ax${ECMC_AXIS_NO}.enc.latchstatus")"
ecmcConfigOrDie "Cfg.SetAxisEncHomeLatchCountOffset(${ECMC_AXIS_NO},${ECMC_HOME_LATCH_COUNT_OFFSET=0.0})"

#- MULTI ENCODER SPECIFICS
ecmcConfigOrDie "Cfg.SetAxisEncRefToOtherEncAtStartup($(ECMC_AXIS_NO),${ECMC_ENC_REF_TO_ENC_AT_STARTUP_ID=-1})"
ecmcConfigOrDie "Cfg.SelectAxisEncPrimary($(ECMC_AXIS_NO),${ECMC_ENC_PRIMARY_ID=-1})"
ecmcConfigOrDie "Cfg.SetAxisEncEnableRefAtHome($(ECMC_AXIS_NO),${ECMC_ENC_REF_AT_HOME=-1})"
ecmcConfigOrDie "Cfg.SetAxisEncMaxDiffToPrimEnc($(ECMC_AXIS_NO),${ECMC_ENC_MAX_DIFF_TO_PRIM_ENC=0})"
