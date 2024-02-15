############################################################
############# PRL TCB 0
# 0  0:0   PREOP  +  EK1100 EtherCAT Coupler (2A E-Bus)
# 1  0:1   PREOP  +  EL2502 2Ch. PWM output, 24V
# 2  0:2   PREOP  +  EL2502 2Ch. PWM output, 24V
# 3  0:3   PREOP  +  EL2502 2Ch. PWM output, 24V
# 4  0:4   PREOP  +  EL2502 2Ch. PWM output, 24V
# 5  0:5   PREOP  +  EL2502 2Ch. PWM output, 24V
# 6  0:6   PREOP  +  EL2502 2Ch. PWM output, 24V
# 7  0:7   PREOP  +  EL9410 E-Bus Netzteilklemme (Diagnose)
# 8  0:8   PREOP  +  EL3202-0010 2K. Ana. Eingang PT100 (RTD), hochgenau
# 9  0:9   PREOP  +  EL3202-0010 2K. Ana. Eingang PT100 (RTD), hochgenau
#10  0:10  PREOP  +  EL3202-0010 2K. Ana. Eingang PT100 (RTD), hochgenau
#11  0:11  PREOP  +  EL3202-0010 2K. Ana. Eingang PT100 (RTD), hochgenau
#12  0:12  PREOP  +  EL3202-0010 2K. Ana. Eingang PT100 (RTD), hochgenau
#13  0:13  PREOP  +  EL3202-0010 2K. Ana. Eingang PT100 (RTD), hochgenau
#14  0:14  PREOP  +  EL3202-0010 2K. Ana. Eingang PT100 (RTD), hochgenau
#15  0:15  PREOP  +  EL3202-0010 2K. Ana. Eingang PT100 (RTD), hochgenau



#Configure EK1100 EtherCAT coupler
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=0, HW_DESC=EK1100"

#Configure EL2502 PWM output
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=1, HW_DESC=EL2502"

# Configure channel 1 of EL2502
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8000")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL2502-settings-chX-PRL.cmd

# Configure channel 2 of EL2502
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8010")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL2502-settings-chX-PRL.cmd

#Configure EL2502 PWM output
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=2, HW_DESC=EL2502"

# Configure channel 1 of EL2502
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8000")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL2502-settings-chX-PRL.cmd

# Configure channel 2 of EL2502
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8010")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL2502-settings-chX-PRL.cmd

#Configure EL2502 PWM output
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=3, HW_DESC=EL2502"

# Configure channel 1 of EL2502
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8000")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL2502-settings-chX-PRL.cmd

# Configure channel 2 of EL2502
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8010")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL2502-settings-chX-PRL.cmd

#Configure EL2502 PWM output
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=4, HW_DESC=EL2502"

# Configure channel 1 of EL2502
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8000")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL2502-settings-chX-PRL.cmd

# Configure channel 2 of EL2502
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8010")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL2502-settings-chX-PRL.cmd

#Configure EL2502 PWM output
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=5, HW_DESC=EL2502"

# Configure channel 1 of EL2502
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8000")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL2502-settings-chX-PRL.cmd

# Configure channel 2 of EL2502
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8010")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL2502-settings-chX-PRL.cmd

#Configure EL2502 PWM output
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=6, HW_DESC=EL2502"

# Configure channel 1 of EL2502
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8000")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL2502-settings-chX-PRL.cmd

# Configure channel 2 of EL2502
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8010")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL2502-settings-chX-PRL.cmd

# Configure EL9410 Power supply with refresh of E-Bus.
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=7, HW_DESC=EL9410"

# Configure EL3202-0010 PT100
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=8, HW_DESC=EL3202-0010"

# Configure channel 1 EL3202-0010 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8000")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd

# Configure channel 2 EL3202-0010 HFT50 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8010")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd

# Configure EL3202-0010 PT100
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=9, HW_DESC=EL3202-0010"

# Configure channel 1 EL3202-0010 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8000")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd

# Configure channel 2 EL3202-0010 HFT50 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8010")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd

# Configure EL3202-0010 PT100
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=10, HW_DESC=EL3202-0010"

# Configure channel 1 EL3202-0010 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8000")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd

# Configure channel 2 EL3202-0010 HFT50 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8010")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd

# Configure EL3202-0010 PT100
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=11, HW_DESC=EL3202-0010"

# Configure channel 1 EL3202-0010 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8000")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd

# Configure channel 2 EL3202-0010 HFT50 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8010")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd

# Configure EL3202-0010 PT100
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=12, HW_DESC=EL3202-0010"

# Configure channel 1 EL3202-0010 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8000")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd

# Configure channel 2 EL3202-0010 HFT50 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8010")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd

# Configure EL3202-0010 PT100
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=13, HW_DESC=EL3202-0010"

# Configure channel 1 EL3202-0010 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8000")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd

# Configure channel 2 EL3202-0010 HFT50 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8010")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd

# Configure EL3202-0010 PT100
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=14, HW_DESC=EL3202-0010"

# Configure channel 1 EL3202-0010 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8000")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd

# Configure channel 2 EL3202-0010 HFT50 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8010")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd

# Configure EL3202-0010 PT100
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "SLAVE_ID=15, HW_DESC=EL3202-0010"

# Configure channel 1 EL3202-0010 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8000")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd

# Configure channel 2 EL3202-0010 HFT50 PT100
epicsEnvSet("ECMC_EC_SDO_INDEX",         "0x8010")
${SCRIPTEXEC} ${ecmccfg_DIR}ecmcEL3202-0010-Sensor-chX_S+S_RegelTechnik_HTF50_PT100.cmd


#Apply hardware configuration
ecmcConfigOrDie "Cfg.EcApplyConfig(1)"
