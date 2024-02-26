#-d /**
#-d   \brief map data items for the resulting data buffer  
#-d   \details Needs to be executed LAST in order to see the final results of the buffers
#-d   \details Also loads AI records for dataitems
#-d   \author Anders Sandstroem
#-d   \file
#-d */

epicsEnvSet("ECMC_SIZE"     "${NELM=64}")

ecmcEpicsEnvSetCalc(FOR_LAST_IDX,"${ECMC_SIZE=64}-1")


#- The records will only be INPUTS to view the current status of teh buffer
epicsEnvSet("ECMC_EC_KEY"   "byteOutput")
epicsEnvSet("ECMC_PARAM"    "sm2.p0.e")
ecmcFileExist(${ecmccfg_DIR}ecmcILK_v2_generic_loopStep_dataitem.cmd,1)
ecmcForLoop(${ecmccfg_DIR}ecmcILK_v2_generic_loopStep_dataitem.cmd,"KEY=${ECMC_EC_KEY},PARAM=${ECMC_PARAM}",IDX,0,${FOR_LAST_IDX},1)

epicsEnvSet("ECMC_EC_KEY"   "byteInput")
epicsEnvSet("ECMC_PARAM"    "sm3.p0.e")
ecmcFileExist(${ecmccfg_DIR}ecmcILK_v2_generic_loopStep_dataitem.cmd,1)
ecmcForLoop(${ecmccfg_DIR}ecmcILK_v2_generic_loopStep_dataitem.cmd,"KEY=${ECMC_EC_KEY},PARAM=${ECMC_PARAM}",IDX,0,${FOR_LAST_IDX},1)
