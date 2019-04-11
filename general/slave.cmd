# Default records for slave
ecmcAsynPortDriverAddParameter(${ECMC_ASYN_PORT},"ec${ECMC_EC_MASTER_ID}.s${ECMC_EC_SLAVE_NUM}.default","asynInt32",${ECMC_ASYN_SKIP_CYCLES})
dbLoadRecords("${ECMC_CONFIG_DB}/ecmcDefaultAsynParamsEcSlave.db","P=${ECMC_PREFIX},PORT=${ECMC_ASYN_PORT},ADDR=0,TIMEOUT=1,MASTER_ID=${ECMC_EC_MASTER_ID},SLAVE_POS=${ECMC_EC_SLAVE_NUM},HWTYPE=${ECMC_EC_HWTYPE}")
#-------------------------------------------------------------------------------
