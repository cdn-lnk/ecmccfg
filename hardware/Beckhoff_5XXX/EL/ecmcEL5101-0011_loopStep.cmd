#- ecmcForLoop file for EL5101-0011 oversampling PDOS
#-
#-  Loop macro:
#-    ECMC_LOOP_IDX    : Loop variable 1..OVERSAMPLING_FACTOR
#-
#-  Static macros (same for entire for loop):
#-  PDO       : PDO Index (like 0x1A10)

#- Convert to hex value with zero padding
#-ecmcEpicsEnvSetCalc("PDO_ENTRY_OFFSET",${ECMC_LOOP_IDX},"%02x")
#-ecmcConfigOrDie "Cfg.EcAddEntryDT(${ECMC_EC_SLAVE_NUM},${ECMC_EC_VENDOR_ID},${ECMC_EC_PRODUCT_ID},2,3,${PDO},0x6000,0x${PDO_ENTRY_OFFSET},U32,positionActual01_${ECMC_LOOP_IDX},0)"
#-epicsEnvUnset(PDO_ENTRY_OFFSET)
ecmcConfigOrDie "Cfg.EcAddEntryDT(${ECMC_EC_SLAVE_NUM},${ECMC_EC_VENDOR_ID},${ECMC_EC_PRODUCT_ID},2,3,${PDO},0x6000,0x11,U32,positionActual01_${ECMC_LOOP_IDX},0)"
