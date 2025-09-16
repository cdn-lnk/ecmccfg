#-d /**
#-d   \brief hardware script for EL7037-Motor-Nanotec-SCA5618X2804
#-d   \details Parametrization of EL7037 for motor Nanotec SCA5618X2804
#-d   \file
#-d */

#- Load common config from EL7047
${SCRIPTEXEC} ${ECMC_CONFIG_ROOT}ecmcEL7047-Motor-Nanotec-SCA5618X2804.cmd

#- Set max current to 1.5A (unit 1mA)
ecmcConfigOrDie "Cfg.EcAddSdo(${ECMC_EC_SLAVE_NUM},0x8010,0x1,1500,2)"

