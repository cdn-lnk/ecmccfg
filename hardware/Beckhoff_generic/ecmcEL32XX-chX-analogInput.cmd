#-d /**
#-d   \brief hardware script for EL32XX-chX-analogInput
#-d   \details
#-d   \author Anders Sandstroem
#-d   \file
#-d */

ecmcConfigOrDie "Cfg.EcAddEntryComplete(${ECMC_EC_SLAVE_NUM},${ECMC_EC_VENDOR_ID},${ECMC_EC_PRODUCT_ID},2,3,$(ECMC_EC_PDO),$(ECMC_EC_PDO_ENTRY),0x1,16,CH$(ECMC_EC_CHANNEL_ID)_STATUS)"
ecmcConfigOrDie "Cfg.EcAddEntryComplete(${ECMC_EC_SLAVE_NUM},${ECMC_EC_VENDOR_ID},${ECMC_EC_PRODUCT_ID},2,3,$(ECMC_EC_PDO),$(ECMC_EC_PDO_ENTRY),0x11,16,1,CH$(ECMC_EC_CHANNEL_ID)_VALUE)"
