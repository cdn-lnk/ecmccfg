#==============================================================================
# ecmc_axis_unset.cmd
#- Arguments: n/a
#-d /**
#-d   \brief Unsets all varaiables set by ecmc_axis.cmd configuration snippet
#-d   \author Anders Sandstroem
#-d */

#- epicsEnvUnset(ECMC_AXIS_NO)
epicsEnvUnset(ECMC_AXISCONFIG)
epicsEnvUnset(ECMC_AXISFIELDINIT)
epicsEnvUnset(ECMC_PREC)
epicsEnvUnset(ECMC_EGU)
epicsEnvUnset(ECMC_DESC)
epicsEnvUnset(ECMC_R)
#-epicsEnvUnset(ECMC_MOTOR_NAME)
epicsEnvUnset(ECMC_EC_AXIS_HEALTH)
epicsEnvUnset(ECMC_MOD_RANGE)
epicsEnvUnset(ECMC_MOD_TYPE)
epicsEnvUnset(ECMC_EMERG_DECEL)
epicsEnvUnset(ECMC_VELO)
epicsEnvUnset(ECMC_ACCL)
epicsEnvUnset(ECMC_ACCS_EGU_PER_S2)
epicsEnvUnset(ECMC_HOME_VEL_TO)
epicsEnvUnset(ECMC_HOME_VEL_FRM)
epicsEnvUnset(ECMC_CNTRL_KP)
epicsEnvUnset(ECMC_CNTRL_KI)
epicsEnvUnset(ECMC_CNTRL_KD)
epicsEnvUnset(ECMC_CNTRL_KFF)
epicsEnvUnset(ECMC_EC_ENC_ACTPOS)
epicsEnvUnset(ECMC_EC_ENC_LATCHPOS)
epicsEnvUnset(ECMC_EC_ENC_LATCH_CONTROL)
epicsEnvUnset(ECMC_EC_ENC_LATCH_STATUS)
epicsEnvUnset(ECMC_HOME_LATCH_COUNT_OFFSET)
epicsEnvUnset(ECMC_ENC_SCALE_DENOM)
epicsEnvUnset(ECMC_ENC_SCALE_NUM)
epicsEnvUnset(ECMC_ENC_TYPE)
epicsEnvUnset(ECMC_ENC_BITS)
epicsEnvUnset(ECMC_ENC_ABS_BITS)
epicsEnvUnset(ECMC_ENC_ABS_OFFSET)
epicsEnvUnset(ECMC_ENC_VEL_FILTER_SIZE)
epicsEnvUnset(ECMC_ENC_POS_FILTER_SIZE)
epicsEnvUnset(ECMC_ENC_POS_FILTER_ENABLE)
epicsEnvUnset(ECMC_ENC_REF_TO_ENC_AT_STARTUP_ID)
epicsEnvUnset(ECMC_ENC_HOME_ID)
epicsEnvUnset(ECMC_ENC_PRIMARY_ID)
epicsEnvUnset(ECMC_ENC_CFG_ID)
epicsEnvUnset(ECMC_ENC_MAX_DIFF_TO_PRIM_ENC)
epicsEnvUnset(ECMC_EC_ENC_RESET)
epicsEnvUnset(ECMC_EC_ENC_ALARM_0)
epicsEnvUnset(ECMC_EC_ENC_ALARM_1)
epicsEnvUnset(ECMC_EC_ENC_ALARM_2)
epicsEnvUnset(ECMC_EC_ENC_WARNING)
epicsEnvUnset(ECMC_EC_DRV_CONTROL)
epicsEnvUnset(ECMC_EC_DRV_STATUS)
epicsEnvUnset(ECMC_EC_DRV_VELOCITY)
epicsEnvUnset(ECMC_EC_DRV_BRAKE)
epicsEnvUnset(ECMC_EC_DRV_REDUCE_TORQUE)
epicsEnvUnset(ECMC_EC_DRV_RESET)
epicsEnvUnset(ECMC_EC_DRV_ALARM_0)
epicsEnvUnset(ECMC_EC_DRV_ALARM_1)
epicsEnvUnset(ECMC_EC_DRV_ALARM_2)
epicsEnvUnset(ECMC_EC_DRV_WARNING)
epicsEnvUnset(ECMC_EC_ENC_READY)
epicsEnvUnset(ECMC_DRV_SCALE_DENOM)
epicsEnvUnset(ECMC_DRV_SCALE_NUM)
epicsEnvUnset(ECMC_DRV_BRAKE_OPEN_DLY_TIME)
epicsEnvUnset(ECMC_DRV_BRAKE_CLOSE_AHEAD_TIME)
epicsEnvUnset(ECMC_DXLM_ENABLE)
epicsEnvUnset(ECMC_EC_MON_LOWLIM)
epicsEnvUnset(ECMC_EC_MON_HIGHLIM)
epicsEnvUnset(ECMC_EC_MON_HOME_SWITCH)
epicsEnvUnset(ECMC_EC_MON_EXT_INTERLOCK)
epicsEnvUnset(ECMC_MON_AT_TARGET_TOL)
epicsEnvUnset(ECMC_MON_AT_TARGET_TIME)
epicsEnvUnset(ECMC_MON_AT_TARGET_ENA)
epicsEnvUnset(ECMC_MON_LAG_MON_TOL)
epicsEnvUnset(ECMC_MON_LAG_MON_TIME)
epicsEnvUnset(ECMC_MON_LAG_MON_ENA)
epicsEnvUnset(ECMC_MON_VELO_MAX)
epicsEnvUnset(ECMC_MON_VELO_MAX_ENA)
epicsEnvUnset(ECMC_MON_VELO_MAX_DRV_TIME)
epicsEnvUnset(ECMC_MON_VELO_MAX_TRAJ_TIME)
epicsEnvUnset(ECMC_JOG_VEL)
epicsEnvUnset(ECMC_JAR)
epicsEnvUnset(ECMC_HOME_PROC)
epicsEnvUnset(ECMC_HOME_POS)
epicsEnvUnset(ECMC_HOME_ACC)
epicsEnvUnset(ECMC_DRV_TYPE)
epicsEnvUnset(ECMC_SOFT_LOW_LIM)
epicsEnvUnset(ECMC_SOFT_HIGH_LIM)
epicsEnvUnset(ECMC_HOME_POS_MOVE_ENA)
epicsEnvUnset(ECMC_HOME_POS_MOVE_TARG_POS)
epicsEnvUnset(ECMC_TRAJ_TYPE)
epicsEnvUnset(ECMC_JERK)
