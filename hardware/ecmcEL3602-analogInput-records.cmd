${SCRIPTEXEC} ${ECMC_CONFIG_ROOT}${HW_DESC}

ecmcAsynPortDriverAddParameter(${ECMC_ASYN_PORT},"ec${ECMC_EC_MASTER_ID}.s${ECMC_EC_SLAVE_NUM}.CH1_STATUS","asynUInt32Digital",${ECMC_ASYN_SKIP_CYCLES})
ecmcAsynPortDriverAddParameter(${ECMC_ASYN_PORT},"ec${ECMC_EC_MASTER_ID}.s${ECMC_EC_SLAVE_NUM}.CH1_VALUE","asynInt32",${ECMC_ASYN_SKIP_CYCLES})
ecmcAsynPortDriverAddParameter(${ECMC_ASYN_PORT},"ec${ECMC_EC_MASTER_ID}.s${ECMC_EC_SLAVE_NUM}.CH2_STATUS","asynUInt32Digital",${ECMC_ASYN_SKIP_CYCLES})
ecmcAsynPortDriverAddParameter(${ECMC_ASYN_PORT},"ec${ECMC_EC_MASTER_ID}.s${ECMC_EC_SLAVE_NUM}.CH2_VALUE","asynInt32",${ECMC_ASYN_SKIP_CYCLES})

dbLoadTemplate("ecmcEL3602.substitutions","P=${ECMC_PREFIX}, PORT=${ECMC_ASYN_PORT}, ADDR=${ECMC_ASYN_ADDR}, TIMEOUT=${ECMC_ASYN_TIMEOUT}, MASTER_ID=${ECMC_EC_MASTER_ID}, SLAVE_POS=${ECMC_EC_SLAVE_NUM}, HWTYPE=${ECMC_EC_HWTYPE}")

${SCRIPTEXEC} ${ECMC_CONFIG_ROOT}ecmcEL36XX-Sensor-common
