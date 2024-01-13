# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "MD_CMD_START" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MD_SIM_ABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_BCK_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_ORDE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL10" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL100" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL101" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL102" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL103" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL104" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL105" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL106" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL107" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL108" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL109" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL11" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL110" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL111" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL112" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL113" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL114" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL115" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL116" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL117" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL118" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL119" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL12" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL120" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL121" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL122" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL123" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL124" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL125" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL126" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL127" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL13" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL14" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL15" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL16" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL17" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL18" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL19" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL20" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL21" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL22" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL23" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL24" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL25" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL26" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL27" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL28" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL29" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL30" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL31" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL32" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL33" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL34" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL35" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL36" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL37" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL38" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL39" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL40" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL41" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL42" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL43" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL44" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL45" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL46" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL47" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL48" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL49" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL50" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL51" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL52" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL53" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL54" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL55" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL56" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL57" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL58" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL59" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL6" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL60" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL61" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL62" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL63" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL64" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL65" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL66" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL67" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL68" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL69" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL7" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL70" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL71" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL72" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL73" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL74" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL75" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL76" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL77" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL78" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL79" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL8" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL80" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL81" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL82" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL83" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL84" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL85" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL86" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL87" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL88" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL89" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL9" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL90" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL91" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL92" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL93" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL94" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL95" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL96" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL97" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL98" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_VAL99" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_PKG_HEAD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_PKG_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SR_BCK_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_BCK_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_BCK_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_BYTE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_CMD_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_ERR_INFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SHK_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SHK_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SLEEP_SPAN" -parent ${Page_0}


}

proc update_PARAM_VALUE.MD_CMD_START { PARAM_VALUE.MD_CMD_START } {
	# Procedure called to update MD_CMD_START when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MD_CMD_START { PARAM_VALUE.MD_CMD_START } {
	# Procedure called to validate MD_CMD_START
	return true
}

proc update_PARAM_VALUE.MD_SIM_ABLE { PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to update MD_SIM_ABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MD_SIM_ABLE { PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to validate MD_SIM_ABLE
	return true
}

proc update_PARAM_VALUE.NB_BCK_DATA { PARAM_VALUE.NB_BCK_DATA } {
	# Procedure called to update NB_BCK_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_BCK_DATA { PARAM_VALUE.NB_BCK_DATA } {
	# Procedure called to validate NB_BCK_DATA
	return true
}

proc update_PARAM_VALUE.NB_CMD_ORDE { PARAM_VALUE.NB_CMD_ORDE } {
	# Procedure called to update NB_CMD_ORDE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_ORDE { PARAM_VALUE.NB_CMD_ORDE } {
	# Procedure called to validate NB_CMD_ORDE
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL0 { PARAM_VALUE.NB_CMD_VAL0 } {
	# Procedure called to update NB_CMD_VAL0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL0 { PARAM_VALUE.NB_CMD_VAL0 } {
	# Procedure called to validate NB_CMD_VAL0
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL1 { PARAM_VALUE.NB_CMD_VAL1 } {
	# Procedure called to update NB_CMD_VAL1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL1 { PARAM_VALUE.NB_CMD_VAL1 } {
	# Procedure called to validate NB_CMD_VAL1
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL10 { PARAM_VALUE.NB_CMD_VAL10 } {
	# Procedure called to update NB_CMD_VAL10 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL10 { PARAM_VALUE.NB_CMD_VAL10 } {
	# Procedure called to validate NB_CMD_VAL10
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL100 { PARAM_VALUE.NB_CMD_VAL100 } {
	# Procedure called to update NB_CMD_VAL100 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL100 { PARAM_VALUE.NB_CMD_VAL100 } {
	# Procedure called to validate NB_CMD_VAL100
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL101 { PARAM_VALUE.NB_CMD_VAL101 } {
	# Procedure called to update NB_CMD_VAL101 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL101 { PARAM_VALUE.NB_CMD_VAL101 } {
	# Procedure called to validate NB_CMD_VAL101
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL102 { PARAM_VALUE.NB_CMD_VAL102 } {
	# Procedure called to update NB_CMD_VAL102 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL102 { PARAM_VALUE.NB_CMD_VAL102 } {
	# Procedure called to validate NB_CMD_VAL102
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL103 { PARAM_VALUE.NB_CMD_VAL103 } {
	# Procedure called to update NB_CMD_VAL103 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL103 { PARAM_VALUE.NB_CMD_VAL103 } {
	# Procedure called to validate NB_CMD_VAL103
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL104 { PARAM_VALUE.NB_CMD_VAL104 } {
	# Procedure called to update NB_CMD_VAL104 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL104 { PARAM_VALUE.NB_CMD_VAL104 } {
	# Procedure called to validate NB_CMD_VAL104
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL105 { PARAM_VALUE.NB_CMD_VAL105 } {
	# Procedure called to update NB_CMD_VAL105 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL105 { PARAM_VALUE.NB_CMD_VAL105 } {
	# Procedure called to validate NB_CMD_VAL105
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL106 { PARAM_VALUE.NB_CMD_VAL106 } {
	# Procedure called to update NB_CMD_VAL106 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL106 { PARAM_VALUE.NB_CMD_VAL106 } {
	# Procedure called to validate NB_CMD_VAL106
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL107 { PARAM_VALUE.NB_CMD_VAL107 } {
	# Procedure called to update NB_CMD_VAL107 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL107 { PARAM_VALUE.NB_CMD_VAL107 } {
	# Procedure called to validate NB_CMD_VAL107
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL108 { PARAM_VALUE.NB_CMD_VAL108 } {
	# Procedure called to update NB_CMD_VAL108 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL108 { PARAM_VALUE.NB_CMD_VAL108 } {
	# Procedure called to validate NB_CMD_VAL108
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL109 { PARAM_VALUE.NB_CMD_VAL109 } {
	# Procedure called to update NB_CMD_VAL109 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL109 { PARAM_VALUE.NB_CMD_VAL109 } {
	# Procedure called to validate NB_CMD_VAL109
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL11 { PARAM_VALUE.NB_CMD_VAL11 } {
	# Procedure called to update NB_CMD_VAL11 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL11 { PARAM_VALUE.NB_CMD_VAL11 } {
	# Procedure called to validate NB_CMD_VAL11
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL110 { PARAM_VALUE.NB_CMD_VAL110 } {
	# Procedure called to update NB_CMD_VAL110 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL110 { PARAM_VALUE.NB_CMD_VAL110 } {
	# Procedure called to validate NB_CMD_VAL110
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL111 { PARAM_VALUE.NB_CMD_VAL111 } {
	# Procedure called to update NB_CMD_VAL111 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL111 { PARAM_VALUE.NB_CMD_VAL111 } {
	# Procedure called to validate NB_CMD_VAL111
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL112 { PARAM_VALUE.NB_CMD_VAL112 } {
	# Procedure called to update NB_CMD_VAL112 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL112 { PARAM_VALUE.NB_CMD_VAL112 } {
	# Procedure called to validate NB_CMD_VAL112
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL113 { PARAM_VALUE.NB_CMD_VAL113 } {
	# Procedure called to update NB_CMD_VAL113 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL113 { PARAM_VALUE.NB_CMD_VAL113 } {
	# Procedure called to validate NB_CMD_VAL113
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL114 { PARAM_VALUE.NB_CMD_VAL114 } {
	# Procedure called to update NB_CMD_VAL114 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL114 { PARAM_VALUE.NB_CMD_VAL114 } {
	# Procedure called to validate NB_CMD_VAL114
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL115 { PARAM_VALUE.NB_CMD_VAL115 } {
	# Procedure called to update NB_CMD_VAL115 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL115 { PARAM_VALUE.NB_CMD_VAL115 } {
	# Procedure called to validate NB_CMD_VAL115
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL116 { PARAM_VALUE.NB_CMD_VAL116 } {
	# Procedure called to update NB_CMD_VAL116 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL116 { PARAM_VALUE.NB_CMD_VAL116 } {
	# Procedure called to validate NB_CMD_VAL116
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL117 { PARAM_VALUE.NB_CMD_VAL117 } {
	# Procedure called to update NB_CMD_VAL117 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL117 { PARAM_VALUE.NB_CMD_VAL117 } {
	# Procedure called to validate NB_CMD_VAL117
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL118 { PARAM_VALUE.NB_CMD_VAL118 } {
	# Procedure called to update NB_CMD_VAL118 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL118 { PARAM_VALUE.NB_CMD_VAL118 } {
	# Procedure called to validate NB_CMD_VAL118
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL119 { PARAM_VALUE.NB_CMD_VAL119 } {
	# Procedure called to update NB_CMD_VAL119 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL119 { PARAM_VALUE.NB_CMD_VAL119 } {
	# Procedure called to validate NB_CMD_VAL119
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL12 { PARAM_VALUE.NB_CMD_VAL12 } {
	# Procedure called to update NB_CMD_VAL12 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL12 { PARAM_VALUE.NB_CMD_VAL12 } {
	# Procedure called to validate NB_CMD_VAL12
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL120 { PARAM_VALUE.NB_CMD_VAL120 } {
	# Procedure called to update NB_CMD_VAL120 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL120 { PARAM_VALUE.NB_CMD_VAL120 } {
	# Procedure called to validate NB_CMD_VAL120
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL121 { PARAM_VALUE.NB_CMD_VAL121 } {
	# Procedure called to update NB_CMD_VAL121 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL121 { PARAM_VALUE.NB_CMD_VAL121 } {
	# Procedure called to validate NB_CMD_VAL121
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL122 { PARAM_VALUE.NB_CMD_VAL122 } {
	# Procedure called to update NB_CMD_VAL122 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL122 { PARAM_VALUE.NB_CMD_VAL122 } {
	# Procedure called to validate NB_CMD_VAL122
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL123 { PARAM_VALUE.NB_CMD_VAL123 } {
	# Procedure called to update NB_CMD_VAL123 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL123 { PARAM_VALUE.NB_CMD_VAL123 } {
	# Procedure called to validate NB_CMD_VAL123
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL124 { PARAM_VALUE.NB_CMD_VAL124 } {
	# Procedure called to update NB_CMD_VAL124 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL124 { PARAM_VALUE.NB_CMD_VAL124 } {
	# Procedure called to validate NB_CMD_VAL124
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL125 { PARAM_VALUE.NB_CMD_VAL125 } {
	# Procedure called to update NB_CMD_VAL125 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL125 { PARAM_VALUE.NB_CMD_VAL125 } {
	# Procedure called to validate NB_CMD_VAL125
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL126 { PARAM_VALUE.NB_CMD_VAL126 } {
	# Procedure called to update NB_CMD_VAL126 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL126 { PARAM_VALUE.NB_CMD_VAL126 } {
	# Procedure called to validate NB_CMD_VAL126
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL127 { PARAM_VALUE.NB_CMD_VAL127 } {
	# Procedure called to update NB_CMD_VAL127 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL127 { PARAM_VALUE.NB_CMD_VAL127 } {
	# Procedure called to validate NB_CMD_VAL127
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL13 { PARAM_VALUE.NB_CMD_VAL13 } {
	# Procedure called to update NB_CMD_VAL13 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL13 { PARAM_VALUE.NB_CMD_VAL13 } {
	# Procedure called to validate NB_CMD_VAL13
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL14 { PARAM_VALUE.NB_CMD_VAL14 } {
	# Procedure called to update NB_CMD_VAL14 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL14 { PARAM_VALUE.NB_CMD_VAL14 } {
	# Procedure called to validate NB_CMD_VAL14
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL15 { PARAM_VALUE.NB_CMD_VAL15 } {
	# Procedure called to update NB_CMD_VAL15 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL15 { PARAM_VALUE.NB_CMD_VAL15 } {
	# Procedure called to validate NB_CMD_VAL15
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL16 { PARAM_VALUE.NB_CMD_VAL16 } {
	# Procedure called to update NB_CMD_VAL16 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL16 { PARAM_VALUE.NB_CMD_VAL16 } {
	# Procedure called to validate NB_CMD_VAL16
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL17 { PARAM_VALUE.NB_CMD_VAL17 } {
	# Procedure called to update NB_CMD_VAL17 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL17 { PARAM_VALUE.NB_CMD_VAL17 } {
	# Procedure called to validate NB_CMD_VAL17
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL18 { PARAM_VALUE.NB_CMD_VAL18 } {
	# Procedure called to update NB_CMD_VAL18 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL18 { PARAM_VALUE.NB_CMD_VAL18 } {
	# Procedure called to validate NB_CMD_VAL18
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL19 { PARAM_VALUE.NB_CMD_VAL19 } {
	# Procedure called to update NB_CMD_VAL19 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL19 { PARAM_VALUE.NB_CMD_VAL19 } {
	# Procedure called to validate NB_CMD_VAL19
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL2 { PARAM_VALUE.NB_CMD_VAL2 } {
	# Procedure called to update NB_CMD_VAL2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL2 { PARAM_VALUE.NB_CMD_VAL2 } {
	# Procedure called to validate NB_CMD_VAL2
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL20 { PARAM_VALUE.NB_CMD_VAL20 } {
	# Procedure called to update NB_CMD_VAL20 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL20 { PARAM_VALUE.NB_CMD_VAL20 } {
	# Procedure called to validate NB_CMD_VAL20
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL21 { PARAM_VALUE.NB_CMD_VAL21 } {
	# Procedure called to update NB_CMD_VAL21 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL21 { PARAM_VALUE.NB_CMD_VAL21 } {
	# Procedure called to validate NB_CMD_VAL21
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL22 { PARAM_VALUE.NB_CMD_VAL22 } {
	# Procedure called to update NB_CMD_VAL22 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL22 { PARAM_VALUE.NB_CMD_VAL22 } {
	# Procedure called to validate NB_CMD_VAL22
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL23 { PARAM_VALUE.NB_CMD_VAL23 } {
	# Procedure called to update NB_CMD_VAL23 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL23 { PARAM_VALUE.NB_CMD_VAL23 } {
	# Procedure called to validate NB_CMD_VAL23
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL24 { PARAM_VALUE.NB_CMD_VAL24 } {
	# Procedure called to update NB_CMD_VAL24 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL24 { PARAM_VALUE.NB_CMD_VAL24 } {
	# Procedure called to validate NB_CMD_VAL24
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL25 { PARAM_VALUE.NB_CMD_VAL25 } {
	# Procedure called to update NB_CMD_VAL25 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL25 { PARAM_VALUE.NB_CMD_VAL25 } {
	# Procedure called to validate NB_CMD_VAL25
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL26 { PARAM_VALUE.NB_CMD_VAL26 } {
	# Procedure called to update NB_CMD_VAL26 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL26 { PARAM_VALUE.NB_CMD_VAL26 } {
	# Procedure called to validate NB_CMD_VAL26
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL27 { PARAM_VALUE.NB_CMD_VAL27 } {
	# Procedure called to update NB_CMD_VAL27 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL27 { PARAM_VALUE.NB_CMD_VAL27 } {
	# Procedure called to validate NB_CMD_VAL27
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL28 { PARAM_VALUE.NB_CMD_VAL28 } {
	# Procedure called to update NB_CMD_VAL28 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL28 { PARAM_VALUE.NB_CMD_VAL28 } {
	# Procedure called to validate NB_CMD_VAL28
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL29 { PARAM_VALUE.NB_CMD_VAL29 } {
	# Procedure called to update NB_CMD_VAL29 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL29 { PARAM_VALUE.NB_CMD_VAL29 } {
	# Procedure called to validate NB_CMD_VAL29
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL3 { PARAM_VALUE.NB_CMD_VAL3 } {
	# Procedure called to update NB_CMD_VAL3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL3 { PARAM_VALUE.NB_CMD_VAL3 } {
	# Procedure called to validate NB_CMD_VAL3
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL30 { PARAM_VALUE.NB_CMD_VAL30 } {
	# Procedure called to update NB_CMD_VAL30 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL30 { PARAM_VALUE.NB_CMD_VAL30 } {
	# Procedure called to validate NB_CMD_VAL30
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL31 { PARAM_VALUE.NB_CMD_VAL31 } {
	# Procedure called to update NB_CMD_VAL31 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL31 { PARAM_VALUE.NB_CMD_VAL31 } {
	# Procedure called to validate NB_CMD_VAL31
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL32 { PARAM_VALUE.NB_CMD_VAL32 } {
	# Procedure called to update NB_CMD_VAL32 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL32 { PARAM_VALUE.NB_CMD_VAL32 } {
	# Procedure called to validate NB_CMD_VAL32
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL33 { PARAM_VALUE.NB_CMD_VAL33 } {
	# Procedure called to update NB_CMD_VAL33 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL33 { PARAM_VALUE.NB_CMD_VAL33 } {
	# Procedure called to validate NB_CMD_VAL33
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL34 { PARAM_VALUE.NB_CMD_VAL34 } {
	# Procedure called to update NB_CMD_VAL34 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL34 { PARAM_VALUE.NB_CMD_VAL34 } {
	# Procedure called to validate NB_CMD_VAL34
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL35 { PARAM_VALUE.NB_CMD_VAL35 } {
	# Procedure called to update NB_CMD_VAL35 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL35 { PARAM_VALUE.NB_CMD_VAL35 } {
	# Procedure called to validate NB_CMD_VAL35
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL36 { PARAM_VALUE.NB_CMD_VAL36 } {
	# Procedure called to update NB_CMD_VAL36 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL36 { PARAM_VALUE.NB_CMD_VAL36 } {
	# Procedure called to validate NB_CMD_VAL36
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL37 { PARAM_VALUE.NB_CMD_VAL37 } {
	# Procedure called to update NB_CMD_VAL37 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL37 { PARAM_VALUE.NB_CMD_VAL37 } {
	# Procedure called to validate NB_CMD_VAL37
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL38 { PARAM_VALUE.NB_CMD_VAL38 } {
	# Procedure called to update NB_CMD_VAL38 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL38 { PARAM_VALUE.NB_CMD_VAL38 } {
	# Procedure called to validate NB_CMD_VAL38
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL39 { PARAM_VALUE.NB_CMD_VAL39 } {
	# Procedure called to update NB_CMD_VAL39 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL39 { PARAM_VALUE.NB_CMD_VAL39 } {
	# Procedure called to validate NB_CMD_VAL39
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL4 { PARAM_VALUE.NB_CMD_VAL4 } {
	# Procedure called to update NB_CMD_VAL4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL4 { PARAM_VALUE.NB_CMD_VAL4 } {
	# Procedure called to validate NB_CMD_VAL4
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL40 { PARAM_VALUE.NB_CMD_VAL40 } {
	# Procedure called to update NB_CMD_VAL40 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL40 { PARAM_VALUE.NB_CMD_VAL40 } {
	# Procedure called to validate NB_CMD_VAL40
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL41 { PARAM_VALUE.NB_CMD_VAL41 } {
	# Procedure called to update NB_CMD_VAL41 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL41 { PARAM_VALUE.NB_CMD_VAL41 } {
	# Procedure called to validate NB_CMD_VAL41
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL42 { PARAM_VALUE.NB_CMD_VAL42 } {
	# Procedure called to update NB_CMD_VAL42 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL42 { PARAM_VALUE.NB_CMD_VAL42 } {
	# Procedure called to validate NB_CMD_VAL42
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL43 { PARAM_VALUE.NB_CMD_VAL43 } {
	# Procedure called to update NB_CMD_VAL43 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL43 { PARAM_VALUE.NB_CMD_VAL43 } {
	# Procedure called to validate NB_CMD_VAL43
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL44 { PARAM_VALUE.NB_CMD_VAL44 } {
	# Procedure called to update NB_CMD_VAL44 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL44 { PARAM_VALUE.NB_CMD_VAL44 } {
	# Procedure called to validate NB_CMD_VAL44
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL45 { PARAM_VALUE.NB_CMD_VAL45 } {
	# Procedure called to update NB_CMD_VAL45 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL45 { PARAM_VALUE.NB_CMD_VAL45 } {
	# Procedure called to validate NB_CMD_VAL45
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL46 { PARAM_VALUE.NB_CMD_VAL46 } {
	# Procedure called to update NB_CMD_VAL46 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL46 { PARAM_VALUE.NB_CMD_VAL46 } {
	# Procedure called to validate NB_CMD_VAL46
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL47 { PARAM_VALUE.NB_CMD_VAL47 } {
	# Procedure called to update NB_CMD_VAL47 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL47 { PARAM_VALUE.NB_CMD_VAL47 } {
	# Procedure called to validate NB_CMD_VAL47
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL48 { PARAM_VALUE.NB_CMD_VAL48 } {
	# Procedure called to update NB_CMD_VAL48 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL48 { PARAM_VALUE.NB_CMD_VAL48 } {
	# Procedure called to validate NB_CMD_VAL48
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL49 { PARAM_VALUE.NB_CMD_VAL49 } {
	# Procedure called to update NB_CMD_VAL49 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL49 { PARAM_VALUE.NB_CMD_VAL49 } {
	# Procedure called to validate NB_CMD_VAL49
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL5 { PARAM_VALUE.NB_CMD_VAL5 } {
	# Procedure called to update NB_CMD_VAL5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL5 { PARAM_VALUE.NB_CMD_VAL5 } {
	# Procedure called to validate NB_CMD_VAL5
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL50 { PARAM_VALUE.NB_CMD_VAL50 } {
	# Procedure called to update NB_CMD_VAL50 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL50 { PARAM_VALUE.NB_CMD_VAL50 } {
	# Procedure called to validate NB_CMD_VAL50
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL51 { PARAM_VALUE.NB_CMD_VAL51 } {
	# Procedure called to update NB_CMD_VAL51 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL51 { PARAM_VALUE.NB_CMD_VAL51 } {
	# Procedure called to validate NB_CMD_VAL51
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL52 { PARAM_VALUE.NB_CMD_VAL52 } {
	# Procedure called to update NB_CMD_VAL52 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL52 { PARAM_VALUE.NB_CMD_VAL52 } {
	# Procedure called to validate NB_CMD_VAL52
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL53 { PARAM_VALUE.NB_CMD_VAL53 } {
	# Procedure called to update NB_CMD_VAL53 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL53 { PARAM_VALUE.NB_CMD_VAL53 } {
	# Procedure called to validate NB_CMD_VAL53
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL54 { PARAM_VALUE.NB_CMD_VAL54 } {
	# Procedure called to update NB_CMD_VAL54 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL54 { PARAM_VALUE.NB_CMD_VAL54 } {
	# Procedure called to validate NB_CMD_VAL54
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL55 { PARAM_VALUE.NB_CMD_VAL55 } {
	# Procedure called to update NB_CMD_VAL55 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL55 { PARAM_VALUE.NB_CMD_VAL55 } {
	# Procedure called to validate NB_CMD_VAL55
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL56 { PARAM_VALUE.NB_CMD_VAL56 } {
	# Procedure called to update NB_CMD_VAL56 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL56 { PARAM_VALUE.NB_CMD_VAL56 } {
	# Procedure called to validate NB_CMD_VAL56
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL57 { PARAM_VALUE.NB_CMD_VAL57 } {
	# Procedure called to update NB_CMD_VAL57 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL57 { PARAM_VALUE.NB_CMD_VAL57 } {
	# Procedure called to validate NB_CMD_VAL57
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL58 { PARAM_VALUE.NB_CMD_VAL58 } {
	# Procedure called to update NB_CMD_VAL58 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL58 { PARAM_VALUE.NB_CMD_VAL58 } {
	# Procedure called to validate NB_CMD_VAL58
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL59 { PARAM_VALUE.NB_CMD_VAL59 } {
	# Procedure called to update NB_CMD_VAL59 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL59 { PARAM_VALUE.NB_CMD_VAL59 } {
	# Procedure called to validate NB_CMD_VAL59
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL6 { PARAM_VALUE.NB_CMD_VAL6 } {
	# Procedure called to update NB_CMD_VAL6 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL6 { PARAM_VALUE.NB_CMD_VAL6 } {
	# Procedure called to validate NB_CMD_VAL6
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL60 { PARAM_VALUE.NB_CMD_VAL60 } {
	# Procedure called to update NB_CMD_VAL60 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL60 { PARAM_VALUE.NB_CMD_VAL60 } {
	# Procedure called to validate NB_CMD_VAL60
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL61 { PARAM_VALUE.NB_CMD_VAL61 } {
	# Procedure called to update NB_CMD_VAL61 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL61 { PARAM_VALUE.NB_CMD_VAL61 } {
	# Procedure called to validate NB_CMD_VAL61
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL62 { PARAM_VALUE.NB_CMD_VAL62 } {
	# Procedure called to update NB_CMD_VAL62 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL62 { PARAM_VALUE.NB_CMD_VAL62 } {
	# Procedure called to validate NB_CMD_VAL62
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL63 { PARAM_VALUE.NB_CMD_VAL63 } {
	# Procedure called to update NB_CMD_VAL63 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL63 { PARAM_VALUE.NB_CMD_VAL63 } {
	# Procedure called to validate NB_CMD_VAL63
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL64 { PARAM_VALUE.NB_CMD_VAL64 } {
	# Procedure called to update NB_CMD_VAL64 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL64 { PARAM_VALUE.NB_CMD_VAL64 } {
	# Procedure called to validate NB_CMD_VAL64
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL65 { PARAM_VALUE.NB_CMD_VAL65 } {
	# Procedure called to update NB_CMD_VAL65 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL65 { PARAM_VALUE.NB_CMD_VAL65 } {
	# Procedure called to validate NB_CMD_VAL65
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL66 { PARAM_VALUE.NB_CMD_VAL66 } {
	# Procedure called to update NB_CMD_VAL66 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL66 { PARAM_VALUE.NB_CMD_VAL66 } {
	# Procedure called to validate NB_CMD_VAL66
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL67 { PARAM_VALUE.NB_CMD_VAL67 } {
	# Procedure called to update NB_CMD_VAL67 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL67 { PARAM_VALUE.NB_CMD_VAL67 } {
	# Procedure called to validate NB_CMD_VAL67
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL68 { PARAM_VALUE.NB_CMD_VAL68 } {
	# Procedure called to update NB_CMD_VAL68 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL68 { PARAM_VALUE.NB_CMD_VAL68 } {
	# Procedure called to validate NB_CMD_VAL68
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL69 { PARAM_VALUE.NB_CMD_VAL69 } {
	# Procedure called to update NB_CMD_VAL69 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL69 { PARAM_VALUE.NB_CMD_VAL69 } {
	# Procedure called to validate NB_CMD_VAL69
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL7 { PARAM_VALUE.NB_CMD_VAL7 } {
	# Procedure called to update NB_CMD_VAL7 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL7 { PARAM_VALUE.NB_CMD_VAL7 } {
	# Procedure called to validate NB_CMD_VAL7
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL70 { PARAM_VALUE.NB_CMD_VAL70 } {
	# Procedure called to update NB_CMD_VAL70 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL70 { PARAM_VALUE.NB_CMD_VAL70 } {
	# Procedure called to validate NB_CMD_VAL70
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL71 { PARAM_VALUE.NB_CMD_VAL71 } {
	# Procedure called to update NB_CMD_VAL71 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL71 { PARAM_VALUE.NB_CMD_VAL71 } {
	# Procedure called to validate NB_CMD_VAL71
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL72 { PARAM_VALUE.NB_CMD_VAL72 } {
	# Procedure called to update NB_CMD_VAL72 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL72 { PARAM_VALUE.NB_CMD_VAL72 } {
	# Procedure called to validate NB_CMD_VAL72
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL73 { PARAM_VALUE.NB_CMD_VAL73 } {
	# Procedure called to update NB_CMD_VAL73 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL73 { PARAM_VALUE.NB_CMD_VAL73 } {
	# Procedure called to validate NB_CMD_VAL73
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL74 { PARAM_VALUE.NB_CMD_VAL74 } {
	# Procedure called to update NB_CMD_VAL74 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL74 { PARAM_VALUE.NB_CMD_VAL74 } {
	# Procedure called to validate NB_CMD_VAL74
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL75 { PARAM_VALUE.NB_CMD_VAL75 } {
	# Procedure called to update NB_CMD_VAL75 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL75 { PARAM_VALUE.NB_CMD_VAL75 } {
	# Procedure called to validate NB_CMD_VAL75
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL76 { PARAM_VALUE.NB_CMD_VAL76 } {
	# Procedure called to update NB_CMD_VAL76 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL76 { PARAM_VALUE.NB_CMD_VAL76 } {
	# Procedure called to validate NB_CMD_VAL76
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL77 { PARAM_VALUE.NB_CMD_VAL77 } {
	# Procedure called to update NB_CMD_VAL77 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL77 { PARAM_VALUE.NB_CMD_VAL77 } {
	# Procedure called to validate NB_CMD_VAL77
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL78 { PARAM_VALUE.NB_CMD_VAL78 } {
	# Procedure called to update NB_CMD_VAL78 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL78 { PARAM_VALUE.NB_CMD_VAL78 } {
	# Procedure called to validate NB_CMD_VAL78
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL79 { PARAM_VALUE.NB_CMD_VAL79 } {
	# Procedure called to update NB_CMD_VAL79 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL79 { PARAM_VALUE.NB_CMD_VAL79 } {
	# Procedure called to validate NB_CMD_VAL79
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL8 { PARAM_VALUE.NB_CMD_VAL8 } {
	# Procedure called to update NB_CMD_VAL8 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL8 { PARAM_VALUE.NB_CMD_VAL8 } {
	# Procedure called to validate NB_CMD_VAL8
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL80 { PARAM_VALUE.NB_CMD_VAL80 } {
	# Procedure called to update NB_CMD_VAL80 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL80 { PARAM_VALUE.NB_CMD_VAL80 } {
	# Procedure called to validate NB_CMD_VAL80
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL81 { PARAM_VALUE.NB_CMD_VAL81 } {
	# Procedure called to update NB_CMD_VAL81 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL81 { PARAM_VALUE.NB_CMD_VAL81 } {
	# Procedure called to validate NB_CMD_VAL81
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL82 { PARAM_VALUE.NB_CMD_VAL82 } {
	# Procedure called to update NB_CMD_VAL82 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL82 { PARAM_VALUE.NB_CMD_VAL82 } {
	# Procedure called to validate NB_CMD_VAL82
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL83 { PARAM_VALUE.NB_CMD_VAL83 } {
	# Procedure called to update NB_CMD_VAL83 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL83 { PARAM_VALUE.NB_CMD_VAL83 } {
	# Procedure called to validate NB_CMD_VAL83
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL84 { PARAM_VALUE.NB_CMD_VAL84 } {
	# Procedure called to update NB_CMD_VAL84 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL84 { PARAM_VALUE.NB_CMD_VAL84 } {
	# Procedure called to validate NB_CMD_VAL84
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL85 { PARAM_VALUE.NB_CMD_VAL85 } {
	# Procedure called to update NB_CMD_VAL85 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL85 { PARAM_VALUE.NB_CMD_VAL85 } {
	# Procedure called to validate NB_CMD_VAL85
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL86 { PARAM_VALUE.NB_CMD_VAL86 } {
	# Procedure called to update NB_CMD_VAL86 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL86 { PARAM_VALUE.NB_CMD_VAL86 } {
	# Procedure called to validate NB_CMD_VAL86
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL87 { PARAM_VALUE.NB_CMD_VAL87 } {
	# Procedure called to update NB_CMD_VAL87 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL87 { PARAM_VALUE.NB_CMD_VAL87 } {
	# Procedure called to validate NB_CMD_VAL87
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL88 { PARAM_VALUE.NB_CMD_VAL88 } {
	# Procedure called to update NB_CMD_VAL88 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL88 { PARAM_VALUE.NB_CMD_VAL88 } {
	# Procedure called to validate NB_CMD_VAL88
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL89 { PARAM_VALUE.NB_CMD_VAL89 } {
	# Procedure called to update NB_CMD_VAL89 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL89 { PARAM_VALUE.NB_CMD_VAL89 } {
	# Procedure called to validate NB_CMD_VAL89
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL9 { PARAM_VALUE.NB_CMD_VAL9 } {
	# Procedure called to update NB_CMD_VAL9 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL9 { PARAM_VALUE.NB_CMD_VAL9 } {
	# Procedure called to validate NB_CMD_VAL9
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL90 { PARAM_VALUE.NB_CMD_VAL90 } {
	# Procedure called to update NB_CMD_VAL90 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL90 { PARAM_VALUE.NB_CMD_VAL90 } {
	# Procedure called to validate NB_CMD_VAL90
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL91 { PARAM_VALUE.NB_CMD_VAL91 } {
	# Procedure called to update NB_CMD_VAL91 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL91 { PARAM_VALUE.NB_CMD_VAL91 } {
	# Procedure called to validate NB_CMD_VAL91
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL92 { PARAM_VALUE.NB_CMD_VAL92 } {
	# Procedure called to update NB_CMD_VAL92 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL92 { PARAM_VALUE.NB_CMD_VAL92 } {
	# Procedure called to validate NB_CMD_VAL92
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL93 { PARAM_VALUE.NB_CMD_VAL93 } {
	# Procedure called to update NB_CMD_VAL93 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL93 { PARAM_VALUE.NB_CMD_VAL93 } {
	# Procedure called to validate NB_CMD_VAL93
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL94 { PARAM_VALUE.NB_CMD_VAL94 } {
	# Procedure called to update NB_CMD_VAL94 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL94 { PARAM_VALUE.NB_CMD_VAL94 } {
	# Procedure called to validate NB_CMD_VAL94
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL95 { PARAM_VALUE.NB_CMD_VAL95 } {
	# Procedure called to update NB_CMD_VAL95 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL95 { PARAM_VALUE.NB_CMD_VAL95 } {
	# Procedure called to validate NB_CMD_VAL95
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL96 { PARAM_VALUE.NB_CMD_VAL96 } {
	# Procedure called to update NB_CMD_VAL96 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL96 { PARAM_VALUE.NB_CMD_VAL96 } {
	# Procedure called to validate NB_CMD_VAL96
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL97 { PARAM_VALUE.NB_CMD_VAL97 } {
	# Procedure called to update NB_CMD_VAL97 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL97 { PARAM_VALUE.NB_CMD_VAL97 } {
	# Procedure called to validate NB_CMD_VAL97
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL98 { PARAM_VALUE.NB_CMD_VAL98 } {
	# Procedure called to update NB_CMD_VAL98 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL98 { PARAM_VALUE.NB_CMD_VAL98 } {
	# Procedure called to validate NB_CMD_VAL98
	return true
}

proc update_PARAM_VALUE.NB_CMD_VAL99 { PARAM_VALUE.NB_CMD_VAL99 } {
	# Procedure called to update NB_CMD_VAL99 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_VAL99 { PARAM_VALUE.NB_CMD_VAL99 } {
	# Procedure called to validate NB_CMD_VAL99
	return true
}

proc update_PARAM_VALUE.NB_PKG_HEAD { PARAM_VALUE.NB_PKG_HEAD } {
	# Procedure called to update NB_PKG_HEAD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_PKG_HEAD { PARAM_VALUE.NB_PKG_HEAD } {
	# Procedure called to validate NB_PKG_HEAD
	return true
}

proc update_PARAM_VALUE.NB_PKG_SIZE { PARAM_VALUE.NB_PKG_SIZE } {
	# Procedure called to update NB_PKG_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_PKG_SIZE { PARAM_VALUE.NB_PKG_SIZE } {
	# Procedure called to validate NB_PKG_SIZE
	return true
}

proc update_PARAM_VALUE.SR_BCK_DATA { PARAM_VALUE.SR_BCK_DATA } {
	# Procedure called to update SR_BCK_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SR_BCK_DATA { PARAM_VALUE.SR_BCK_DATA } {
	# Procedure called to validate SR_BCK_DATA
	return true
}

proc update_PARAM_VALUE.WD_BCK_ADDR { PARAM_VALUE.WD_BCK_ADDR } {
	# Procedure called to update WD_BCK_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_BCK_ADDR { PARAM_VALUE.WD_BCK_ADDR } {
	# Procedure called to validate WD_BCK_ADDR
	return true
}

proc update_PARAM_VALUE.WD_BCK_DATA { PARAM_VALUE.WD_BCK_DATA } {
	# Procedure called to update WD_BCK_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_BCK_DATA { PARAM_VALUE.WD_BCK_DATA } {
	# Procedure called to validate WD_BCK_DATA
	return true
}

proc update_PARAM_VALUE.WD_BYTE { PARAM_VALUE.WD_BYTE } {
	# Procedure called to update WD_BYTE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_BYTE { PARAM_VALUE.WD_BYTE } {
	# Procedure called to validate WD_BYTE
	return true
}

proc update_PARAM_VALUE.WD_CMD_DATA { PARAM_VALUE.WD_CMD_DATA } {
	# Procedure called to update WD_CMD_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_CMD_DATA { PARAM_VALUE.WD_CMD_DATA } {
	# Procedure called to validate WD_CMD_DATA
	return true
}

proc update_PARAM_VALUE.WD_ERR_INFO { PARAM_VALUE.WD_ERR_INFO } {
	# Procedure called to update WD_ERR_INFO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_ERR_INFO { PARAM_VALUE.WD_ERR_INFO } {
	# Procedure called to validate WD_ERR_INFO
	return true
}

proc update_PARAM_VALUE.WD_SHK_ADDR { PARAM_VALUE.WD_SHK_ADDR } {
	# Procedure called to update WD_SHK_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_SHK_ADDR { PARAM_VALUE.WD_SHK_ADDR } {
	# Procedure called to validate WD_SHK_ADDR
	return true
}

proc update_PARAM_VALUE.WD_SHK_DATA { PARAM_VALUE.WD_SHK_DATA } {
	# Procedure called to update WD_SHK_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_SHK_DATA { PARAM_VALUE.WD_SHK_DATA } {
	# Procedure called to validate WD_SHK_DATA
	return true
}

proc update_PARAM_VALUE.WD_SLEEP_SPAN { PARAM_VALUE.WD_SLEEP_SPAN } {
	# Procedure called to update WD_SLEEP_SPAN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_SLEEP_SPAN { PARAM_VALUE.WD_SLEEP_SPAN } {
	# Procedure called to validate WD_SLEEP_SPAN
	return true
}


proc update_MODELPARAM_VALUE.MD_SIM_ABLE { MODELPARAM_VALUE.MD_SIM_ABLE PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MD_SIM_ABLE}] ${MODELPARAM_VALUE.MD_SIM_ABLE}
}

proc update_MODELPARAM_VALUE.MD_CMD_START { MODELPARAM_VALUE.MD_CMD_START PARAM_VALUE.MD_CMD_START } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MD_CMD_START}] ${MODELPARAM_VALUE.MD_CMD_START}
}

proc update_MODELPARAM_VALUE.NB_PKG_SIZE { MODELPARAM_VALUE.NB_PKG_SIZE PARAM_VALUE.NB_PKG_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_PKG_SIZE}] ${MODELPARAM_VALUE.NB_PKG_SIZE}
}

proc update_MODELPARAM_VALUE.NB_PKG_HEAD { MODELPARAM_VALUE.NB_PKG_HEAD PARAM_VALUE.NB_PKG_HEAD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_PKG_HEAD}] ${MODELPARAM_VALUE.NB_PKG_HEAD}
}

proc update_MODELPARAM_VALUE.WD_SLEEP_SPAN { MODELPARAM_VALUE.WD_SLEEP_SPAN PARAM_VALUE.WD_SLEEP_SPAN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SLEEP_SPAN}] ${MODELPARAM_VALUE.WD_SLEEP_SPAN}
}

proc update_MODELPARAM_VALUE.WD_SHK_DATA { MODELPARAM_VALUE.WD_SHK_DATA PARAM_VALUE.WD_SHK_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SHK_DATA}] ${MODELPARAM_VALUE.WD_SHK_DATA}
}

proc update_MODELPARAM_VALUE.WD_SHK_ADDR { MODELPARAM_VALUE.WD_SHK_ADDR PARAM_VALUE.WD_SHK_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SHK_ADDR}] ${MODELPARAM_VALUE.WD_SHK_ADDR}
}

proc update_MODELPARAM_VALUE.WD_BCK_DATA { MODELPARAM_VALUE.WD_BCK_DATA PARAM_VALUE.WD_BCK_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_BCK_DATA}] ${MODELPARAM_VALUE.WD_BCK_DATA}
}

proc update_MODELPARAM_VALUE.WD_BCK_ADDR { MODELPARAM_VALUE.WD_BCK_ADDR PARAM_VALUE.WD_BCK_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_BCK_ADDR}] ${MODELPARAM_VALUE.WD_BCK_ADDR}
}

proc update_MODELPARAM_VALUE.SR_BCK_DATA { MODELPARAM_VALUE.SR_BCK_DATA PARAM_VALUE.SR_BCK_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SR_BCK_DATA}] ${MODELPARAM_VALUE.SR_BCK_DATA}
}

proc update_MODELPARAM_VALUE.NB_BCK_DATA { MODELPARAM_VALUE.NB_BCK_DATA PARAM_VALUE.NB_BCK_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_BCK_DATA}] ${MODELPARAM_VALUE.NB_BCK_DATA}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL0 { MODELPARAM_VALUE.NB_CMD_VAL0 PARAM_VALUE.NB_CMD_VAL0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL0}] ${MODELPARAM_VALUE.NB_CMD_VAL0}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL1 { MODELPARAM_VALUE.NB_CMD_VAL1 PARAM_VALUE.NB_CMD_VAL1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL1}] ${MODELPARAM_VALUE.NB_CMD_VAL1}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL2 { MODELPARAM_VALUE.NB_CMD_VAL2 PARAM_VALUE.NB_CMD_VAL2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL2}] ${MODELPARAM_VALUE.NB_CMD_VAL2}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL3 { MODELPARAM_VALUE.NB_CMD_VAL3 PARAM_VALUE.NB_CMD_VAL3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL3}] ${MODELPARAM_VALUE.NB_CMD_VAL3}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL4 { MODELPARAM_VALUE.NB_CMD_VAL4 PARAM_VALUE.NB_CMD_VAL4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL4}] ${MODELPARAM_VALUE.NB_CMD_VAL4}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL5 { MODELPARAM_VALUE.NB_CMD_VAL5 PARAM_VALUE.NB_CMD_VAL5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL5}] ${MODELPARAM_VALUE.NB_CMD_VAL5}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL6 { MODELPARAM_VALUE.NB_CMD_VAL6 PARAM_VALUE.NB_CMD_VAL6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL6}] ${MODELPARAM_VALUE.NB_CMD_VAL6}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL7 { MODELPARAM_VALUE.NB_CMD_VAL7 PARAM_VALUE.NB_CMD_VAL7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL7}] ${MODELPARAM_VALUE.NB_CMD_VAL7}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL8 { MODELPARAM_VALUE.NB_CMD_VAL8 PARAM_VALUE.NB_CMD_VAL8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL8}] ${MODELPARAM_VALUE.NB_CMD_VAL8}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL9 { MODELPARAM_VALUE.NB_CMD_VAL9 PARAM_VALUE.NB_CMD_VAL9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL9}] ${MODELPARAM_VALUE.NB_CMD_VAL9}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL10 { MODELPARAM_VALUE.NB_CMD_VAL10 PARAM_VALUE.NB_CMD_VAL10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL10}] ${MODELPARAM_VALUE.NB_CMD_VAL10}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL11 { MODELPARAM_VALUE.NB_CMD_VAL11 PARAM_VALUE.NB_CMD_VAL11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL11}] ${MODELPARAM_VALUE.NB_CMD_VAL11}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL12 { MODELPARAM_VALUE.NB_CMD_VAL12 PARAM_VALUE.NB_CMD_VAL12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL12}] ${MODELPARAM_VALUE.NB_CMD_VAL12}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL13 { MODELPARAM_VALUE.NB_CMD_VAL13 PARAM_VALUE.NB_CMD_VAL13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL13}] ${MODELPARAM_VALUE.NB_CMD_VAL13}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL14 { MODELPARAM_VALUE.NB_CMD_VAL14 PARAM_VALUE.NB_CMD_VAL14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL14}] ${MODELPARAM_VALUE.NB_CMD_VAL14}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL15 { MODELPARAM_VALUE.NB_CMD_VAL15 PARAM_VALUE.NB_CMD_VAL15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL15}] ${MODELPARAM_VALUE.NB_CMD_VAL15}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL16 { MODELPARAM_VALUE.NB_CMD_VAL16 PARAM_VALUE.NB_CMD_VAL16 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL16}] ${MODELPARAM_VALUE.NB_CMD_VAL16}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL17 { MODELPARAM_VALUE.NB_CMD_VAL17 PARAM_VALUE.NB_CMD_VAL17 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL17}] ${MODELPARAM_VALUE.NB_CMD_VAL17}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL18 { MODELPARAM_VALUE.NB_CMD_VAL18 PARAM_VALUE.NB_CMD_VAL18 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL18}] ${MODELPARAM_VALUE.NB_CMD_VAL18}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL19 { MODELPARAM_VALUE.NB_CMD_VAL19 PARAM_VALUE.NB_CMD_VAL19 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL19}] ${MODELPARAM_VALUE.NB_CMD_VAL19}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL20 { MODELPARAM_VALUE.NB_CMD_VAL20 PARAM_VALUE.NB_CMD_VAL20 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL20}] ${MODELPARAM_VALUE.NB_CMD_VAL20}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL21 { MODELPARAM_VALUE.NB_CMD_VAL21 PARAM_VALUE.NB_CMD_VAL21 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL21}] ${MODELPARAM_VALUE.NB_CMD_VAL21}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL22 { MODELPARAM_VALUE.NB_CMD_VAL22 PARAM_VALUE.NB_CMD_VAL22 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL22}] ${MODELPARAM_VALUE.NB_CMD_VAL22}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL23 { MODELPARAM_VALUE.NB_CMD_VAL23 PARAM_VALUE.NB_CMD_VAL23 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL23}] ${MODELPARAM_VALUE.NB_CMD_VAL23}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL24 { MODELPARAM_VALUE.NB_CMD_VAL24 PARAM_VALUE.NB_CMD_VAL24 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL24}] ${MODELPARAM_VALUE.NB_CMD_VAL24}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL25 { MODELPARAM_VALUE.NB_CMD_VAL25 PARAM_VALUE.NB_CMD_VAL25 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL25}] ${MODELPARAM_VALUE.NB_CMD_VAL25}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL26 { MODELPARAM_VALUE.NB_CMD_VAL26 PARAM_VALUE.NB_CMD_VAL26 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL26}] ${MODELPARAM_VALUE.NB_CMD_VAL26}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL27 { MODELPARAM_VALUE.NB_CMD_VAL27 PARAM_VALUE.NB_CMD_VAL27 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL27}] ${MODELPARAM_VALUE.NB_CMD_VAL27}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL28 { MODELPARAM_VALUE.NB_CMD_VAL28 PARAM_VALUE.NB_CMD_VAL28 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL28}] ${MODELPARAM_VALUE.NB_CMD_VAL28}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL29 { MODELPARAM_VALUE.NB_CMD_VAL29 PARAM_VALUE.NB_CMD_VAL29 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL29}] ${MODELPARAM_VALUE.NB_CMD_VAL29}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL30 { MODELPARAM_VALUE.NB_CMD_VAL30 PARAM_VALUE.NB_CMD_VAL30 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL30}] ${MODELPARAM_VALUE.NB_CMD_VAL30}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL31 { MODELPARAM_VALUE.NB_CMD_VAL31 PARAM_VALUE.NB_CMD_VAL31 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL31}] ${MODELPARAM_VALUE.NB_CMD_VAL31}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL32 { MODELPARAM_VALUE.NB_CMD_VAL32 PARAM_VALUE.NB_CMD_VAL32 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL32}] ${MODELPARAM_VALUE.NB_CMD_VAL32}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL33 { MODELPARAM_VALUE.NB_CMD_VAL33 PARAM_VALUE.NB_CMD_VAL33 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL33}] ${MODELPARAM_VALUE.NB_CMD_VAL33}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL34 { MODELPARAM_VALUE.NB_CMD_VAL34 PARAM_VALUE.NB_CMD_VAL34 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL34}] ${MODELPARAM_VALUE.NB_CMD_VAL34}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL35 { MODELPARAM_VALUE.NB_CMD_VAL35 PARAM_VALUE.NB_CMD_VAL35 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL35}] ${MODELPARAM_VALUE.NB_CMD_VAL35}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL36 { MODELPARAM_VALUE.NB_CMD_VAL36 PARAM_VALUE.NB_CMD_VAL36 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL36}] ${MODELPARAM_VALUE.NB_CMD_VAL36}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL37 { MODELPARAM_VALUE.NB_CMD_VAL37 PARAM_VALUE.NB_CMD_VAL37 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL37}] ${MODELPARAM_VALUE.NB_CMD_VAL37}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL38 { MODELPARAM_VALUE.NB_CMD_VAL38 PARAM_VALUE.NB_CMD_VAL38 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL38}] ${MODELPARAM_VALUE.NB_CMD_VAL38}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL39 { MODELPARAM_VALUE.NB_CMD_VAL39 PARAM_VALUE.NB_CMD_VAL39 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL39}] ${MODELPARAM_VALUE.NB_CMD_VAL39}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL40 { MODELPARAM_VALUE.NB_CMD_VAL40 PARAM_VALUE.NB_CMD_VAL40 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL40}] ${MODELPARAM_VALUE.NB_CMD_VAL40}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL41 { MODELPARAM_VALUE.NB_CMD_VAL41 PARAM_VALUE.NB_CMD_VAL41 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL41}] ${MODELPARAM_VALUE.NB_CMD_VAL41}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL42 { MODELPARAM_VALUE.NB_CMD_VAL42 PARAM_VALUE.NB_CMD_VAL42 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL42}] ${MODELPARAM_VALUE.NB_CMD_VAL42}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL43 { MODELPARAM_VALUE.NB_CMD_VAL43 PARAM_VALUE.NB_CMD_VAL43 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL43}] ${MODELPARAM_VALUE.NB_CMD_VAL43}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL44 { MODELPARAM_VALUE.NB_CMD_VAL44 PARAM_VALUE.NB_CMD_VAL44 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL44}] ${MODELPARAM_VALUE.NB_CMD_VAL44}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL45 { MODELPARAM_VALUE.NB_CMD_VAL45 PARAM_VALUE.NB_CMD_VAL45 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL45}] ${MODELPARAM_VALUE.NB_CMD_VAL45}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL46 { MODELPARAM_VALUE.NB_CMD_VAL46 PARAM_VALUE.NB_CMD_VAL46 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL46}] ${MODELPARAM_VALUE.NB_CMD_VAL46}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL47 { MODELPARAM_VALUE.NB_CMD_VAL47 PARAM_VALUE.NB_CMD_VAL47 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL47}] ${MODELPARAM_VALUE.NB_CMD_VAL47}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL48 { MODELPARAM_VALUE.NB_CMD_VAL48 PARAM_VALUE.NB_CMD_VAL48 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL48}] ${MODELPARAM_VALUE.NB_CMD_VAL48}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL49 { MODELPARAM_VALUE.NB_CMD_VAL49 PARAM_VALUE.NB_CMD_VAL49 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL49}] ${MODELPARAM_VALUE.NB_CMD_VAL49}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL50 { MODELPARAM_VALUE.NB_CMD_VAL50 PARAM_VALUE.NB_CMD_VAL50 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL50}] ${MODELPARAM_VALUE.NB_CMD_VAL50}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL51 { MODELPARAM_VALUE.NB_CMD_VAL51 PARAM_VALUE.NB_CMD_VAL51 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL51}] ${MODELPARAM_VALUE.NB_CMD_VAL51}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL52 { MODELPARAM_VALUE.NB_CMD_VAL52 PARAM_VALUE.NB_CMD_VAL52 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL52}] ${MODELPARAM_VALUE.NB_CMD_VAL52}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL53 { MODELPARAM_VALUE.NB_CMD_VAL53 PARAM_VALUE.NB_CMD_VAL53 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL53}] ${MODELPARAM_VALUE.NB_CMD_VAL53}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL54 { MODELPARAM_VALUE.NB_CMD_VAL54 PARAM_VALUE.NB_CMD_VAL54 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL54}] ${MODELPARAM_VALUE.NB_CMD_VAL54}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL55 { MODELPARAM_VALUE.NB_CMD_VAL55 PARAM_VALUE.NB_CMD_VAL55 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL55}] ${MODELPARAM_VALUE.NB_CMD_VAL55}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL56 { MODELPARAM_VALUE.NB_CMD_VAL56 PARAM_VALUE.NB_CMD_VAL56 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL56}] ${MODELPARAM_VALUE.NB_CMD_VAL56}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL57 { MODELPARAM_VALUE.NB_CMD_VAL57 PARAM_VALUE.NB_CMD_VAL57 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL57}] ${MODELPARAM_VALUE.NB_CMD_VAL57}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL58 { MODELPARAM_VALUE.NB_CMD_VAL58 PARAM_VALUE.NB_CMD_VAL58 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL58}] ${MODELPARAM_VALUE.NB_CMD_VAL58}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL59 { MODELPARAM_VALUE.NB_CMD_VAL59 PARAM_VALUE.NB_CMD_VAL59 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL59}] ${MODELPARAM_VALUE.NB_CMD_VAL59}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL60 { MODELPARAM_VALUE.NB_CMD_VAL60 PARAM_VALUE.NB_CMD_VAL60 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL60}] ${MODELPARAM_VALUE.NB_CMD_VAL60}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL61 { MODELPARAM_VALUE.NB_CMD_VAL61 PARAM_VALUE.NB_CMD_VAL61 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL61}] ${MODELPARAM_VALUE.NB_CMD_VAL61}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL62 { MODELPARAM_VALUE.NB_CMD_VAL62 PARAM_VALUE.NB_CMD_VAL62 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL62}] ${MODELPARAM_VALUE.NB_CMD_VAL62}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL63 { MODELPARAM_VALUE.NB_CMD_VAL63 PARAM_VALUE.NB_CMD_VAL63 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL63}] ${MODELPARAM_VALUE.NB_CMD_VAL63}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL64 { MODELPARAM_VALUE.NB_CMD_VAL64 PARAM_VALUE.NB_CMD_VAL64 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL64}] ${MODELPARAM_VALUE.NB_CMD_VAL64}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL65 { MODELPARAM_VALUE.NB_CMD_VAL65 PARAM_VALUE.NB_CMD_VAL65 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL65}] ${MODELPARAM_VALUE.NB_CMD_VAL65}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL66 { MODELPARAM_VALUE.NB_CMD_VAL66 PARAM_VALUE.NB_CMD_VAL66 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL66}] ${MODELPARAM_VALUE.NB_CMD_VAL66}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL67 { MODELPARAM_VALUE.NB_CMD_VAL67 PARAM_VALUE.NB_CMD_VAL67 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL67}] ${MODELPARAM_VALUE.NB_CMD_VAL67}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL68 { MODELPARAM_VALUE.NB_CMD_VAL68 PARAM_VALUE.NB_CMD_VAL68 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL68}] ${MODELPARAM_VALUE.NB_CMD_VAL68}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL69 { MODELPARAM_VALUE.NB_CMD_VAL69 PARAM_VALUE.NB_CMD_VAL69 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL69}] ${MODELPARAM_VALUE.NB_CMD_VAL69}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL70 { MODELPARAM_VALUE.NB_CMD_VAL70 PARAM_VALUE.NB_CMD_VAL70 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL70}] ${MODELPARAM_VALUE.NB_CMD_VAL70}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL71 { MODELPARAM_VALUE.NB_CMD_VAL71 PARAM_VALUE.NB_CMD_VAL71 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL71}] ${MODELPARAM_VALUE.NB_CMD_VAL71}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL72 { MODELPARAM_VALUE.NB_CMD_VAL72 PARAM_VALUE.NB_CMD_VAL72 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL72}] ${MODELPARAM_VALUE.NB_CMD_VAL72}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL73 { MODELPARAM_VALUE.NB_CMD_VAL73 PARAM_VALUE.NB_CMD_VAL73 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL73}] ${MODELPARAM_VALUE.NB_CMD_VAL73}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL74 { MODELPARAM_VALUE.NB_CMD_VAL74 PARAM_VALUE.NB_CMD_VAL74 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL74}] ${MODELPARAM_VALUE.NB_CMD_VAL74}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL75 { MODELPARAM_VALUE.NB_CMD_VAL75 PARAM_VALUE.NB_CMD_VAL75 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL75}] ${MODELPARAM_VALUE.NB_CMD_VAL75}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL76 { MODELPARAM_VALUE.NB_CMD_VAL76 PARAM_VALUE.NB_CMD_VAL76 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL76}] ${MODELPARAM_VALUE.NB_CMD_VAL76}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL77 { MODELPARAM_VALUE.NB_CMD_VAL77 PARAM_VALUE.NB_CMD_VAL77 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL77}] ${MODELPARAM_VALUE.NB_CMD_VAL77}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL78 { MODELPARAM_VALUE.NB_CMD_VAL78 PARAM_VALUE.NB_CMD_VAL78 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL78}] ${MODELPARAM_VALUE.NB_CMD_VAL78}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL79 { MODELPARAM_VALUE.NB_CMD_VAL79 PARAM_VALUE.NB_CMD_VAL79 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL79}] ${MODELPARAM_VALUE.NB_CMD_VAL79}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL80 { MODELPARAM_VALUE.NB_CMD_VAL80 PARAM_VALUE.NB_CMD_VAL80 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL80}] ${MODELPARAM_VALUE.NB_CMD_VAL80}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL81 { MODELPARAM_VALUE.NB_CMD_VAL81 PARAM_VALUE.NB_CMD_VAL81 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL81}] ${MODELPARAM_VALUE.NB_CMD_VAL81}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL82 { MODELPARAM_VALUE.NB_CMD_VAL82 PARAM_VALUE.NB_CMD_VAL82 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL82}] ${MODELPARAM_VALUE.NB_CMD_VAL82}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL83 { MODELPARAM_VALUE.NB_CMD_VAL83 PARAM_VALUE.NB_CMD_VAL83 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL83}] ${MODELPARAM_VALUE.NB_CMD_VAL83}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL84 { MODELPARAM_VALUE.NB_CMD_VAL84 PARAM_VALUE.NB_CMD_VAL84 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL84}] ${MODELPARAM_VALUE.NB_CMD_VAL84}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL85 { MODELPARAM_VALUE.NB_CMD_VAL85 PARAM_VALUE.NB_CMD_VAL85 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL85}] ${MODELPARAM_VALUE.NB_CMD_VAL85}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL86 { MODELPARAM_VALUE.NB_CMD_VAL86 PARAM_VALUE.NB_CMD_VAL86 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL86}] ${MODELPARAM_VALUE.NB_CMD_VAL86}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL87 { MODELPARAM_VALUE.NB_CMD_VAL87 PARAM_VALUE.NB_CMD_VAL87 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL87}] ${MODELPARAM_VALUE.NB_CMD_VAL87}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL88 { MODELPARAM_VALUE.NB_CMD_VAL88 PARAM_VALUE.NB_CMD_VAL88 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL88}] ${MODELPARAM_VALUE.NB_CMD_VAL88}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL89 { MODELPARAM_VALUE.NB_CMD_VAL89 PARAM_VALUE.NB_CMD_VAL89 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL89}] ${MODELPARAM_VALUE.NB_CMD_VAL89}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL90 { MODELPARAM_VALUE.NB_CMD_VAL90 PARAM_VALUE.NB_CMD_VAL90 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL90}] ${MODELPARAM_VALUE.NB_CMD_VAL90}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL91 { MODELPARAM_VALUE.NB_CMD_VAL91 PARAM_VALUE.NB_CMD_VAL91 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL91}] ${MODELPARAM_VALUE.NB_CMD_VAL91}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL92 { MODELPARAM_VALUE.NB_CMD_VAL92 PARAM_VALUE.NB_CMD_VAL92 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL92}] ${MODELPARAM_VALUE.NB_CMD_VAL92}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL93 { MODELPARAM_VALUE.NB_CMD_VAL93 PARAM_VALUE.NB_CMD_VAL93 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL93}] ${MODELPARAM_VALUE.NB_CMD_VAL93}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL94 { MODELPARAM_VALUE.NB_CMD_VAL94 PARAM_VALUE.NB_CMD_VAL94 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL94}] ${MODELPARAM_VALUE.NB_CMD_VAL94}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL95 { MODELPARAM_VALUE.NB_CMD_VAL95 PARAM_VALUE.NB_CMD_VAL95 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL95}] ${MODELPARAM_VALUE.NB_CMD_VAL95}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL96 { MODELPARAM_VALUE.NB_CMD_VAL96 PARAM_VALUE.NB_CMD_VAL96 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL96}] ${MODELPARAM_VALUE.NB_CMD_VAL96}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL97 { MODELPARAM_VALUE.NB_CMD_VAL97 PARAM_VALUE.NB_CMD_VAL97 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL97}] ${MODELPARAM_VALUE.NB_CMD_VAL97}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL98 { MODELPARAM_VALUE.NB_CMD_VAL98 PARAM_VALUE.NB_CMD_VAL98 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL98}] ${MODELPARAM_VALUE.NB_CMD_VAL98}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL99 { MODELPARAM_VALUE.NB_CMD_VAL99 PARAM_VALUE.NB_CMD_VAL99 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL99}] ${MODELPARAM_VALUE.NB_CMD_VAL99}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL100 { MODELPARAM_VALUE.NB_CMD_VAL100 PARAM_VALUE.NB_CMD_VAL100 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL100}] ${MODELPARAM_VALUE.NB_CMD_VAL100}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL101 { MODELPARAM_VALUE.NB_CMD_VAL101 PARAM_VALUE.NB_CMD_VAL101 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL101}] ${MODELPARAM_VALUE.NB_CMD_VAL101}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL102 { MODELPARAM_VALUE.NB_CMD_VAL102 PARAM_VALUE.NB_CMD_VAL102 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL102}] ${MODELPARAM_VALUE.NB_CMD_VAL102}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL103 { MODELPARAM_VALUE.NB_CMD_VAL103 PARAM_VALUE.NB_CMD_VAL103 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL103}] ${MODELPARAM_VALUE.NB_CMD_VAL103}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL104 { MODELPARAM_VALUE.NB_CMD_VAL104 PARAM_VALUE.NB_CMD_VAL104 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL104}] ${MODELPARAM_VALUE.NB_CMD_VAL104}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL105 { MODELPARAM_VALUE.NB_CMD_VAL105 PARAM_VALUE.NB_CMD_VAL105 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL105}] ${MODELPARAM_VALUE.NB_CMD_VAL105}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL106 { MODELPARAM_VALUE.NB_CMD_VAL106 PARAM_VALUE.NB_CMD_VAL106 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL106}] ${MODELPARAM_VALUE.NB_CMD_VAL106}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL107 { MODELPARAM_VALUE.NB_CMD_VAL107 PARAM_VALUE.NB_CMD_VAL107 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL107}] ${MODELPARAM_VALUE.NB_CMD_VAL107}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL108 { MODELPARAM_VALUE.NB_CMD_VAL108 PARAM_VALUE.NB_CMD_VAL108 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL108}] ${MODELPARAM_VALUE.NB_CMD_VAL108}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL109 { MODELPARAM_VALUE.NB_CMD_VAL109 PARAM_VALUE.NB_CMD_VAL109 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL109}] ${MODELPARAM_VALUE.NB_CMD_VAL109}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL110 { MODELPARAM_VALUE.NB_CMD_VAL110 PARAM_VALUE.NB_CMD_VAL110 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL110}] ${MODELPARAM_VALUE.NB_CMD_VAL110}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL111 { MODELPARAM_VALUE.NB_CMD_VAL111 PARAM_VALUE.NB_CMD_VAL111 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL111}] ${MODELPARAM_VALUE.NB_CMD_VAL111}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL112 { MODELPARAM_VALUE.NB_CMD_VAL112 PARAM_VALUE.NB_CMD_VAL112 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL112}] ${MODELPARAM_VALUE.NB_CMD_VAL112}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL113 { MODELPARAM_VALUE.NB_CMD_VAL113 PARAM_VALUE.NB_CMD_VAL113 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL113}] ${MODELPARAM_VALUE.NB_CMD_VAL113}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL114 { MODELPARAM_VALUE.NB_CMD_VAL114 PARAM_VALUE.NB_CMD_VAL114 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL114}] ${MODELPARAM_VALUE.NB_CMD_VAL114}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL115 { MODELPARAM_VALUE.NB_CMD_VAL115 PARAM_VALUE.NB_CMD_VAL115 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL115}] ${MODELPARAM_VALUE.NB_CMD_VAL115}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL116 { MODELPARAM_VALUE.NB_CMD_VAL116 PARAM_VALUE.NB_CMD_VAL116 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL116}] ${MODELPARAM_VALUE.NB_CMD_VAL116}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL117 { MODELPARAM_VALUE.NB_CMD_VAL117 PARAM_VALUE.NB_CMD_VAL117 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL117}] ${MODELPARAM_VALUE.NB_CMD_VAL117}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL118 { MODELPARAM_VALUE.NB_CMD_VAL118 PARAM_VALUE.NB_CMD_VAL118 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL118}] ${MODELPARAM_VALUE.NB_CMD_VAL118}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL119 { MODELPARAM_VALUE.NB_CMD_VAL119 PARAM_VALUE.NB_CMD_VAL119 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL119}] ${MODELPARAM_VALUE.NB_CMD_VAL119}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL120 { MODELPARAM_VALUE.NB_CMD_VAL120 PARAM_VALUE.NB_CMD_VAL120 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL120}] ${MODELPARAM_VALUE.NB_CMD_VAL120}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL121 { MODELPARAM_VALUE.NB_CMD_VAL121 PARAM_VALUE.NB_CMD_VAL121 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL121}] ${MODELPARAM_VALUE.NB_CMD_VAL121}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL122 { MODELPARAM_VALUE.NB_CMD_VAL122 PARAM_VALUE.NB_CMD_VAL122 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL122}] ${MODELPARAM_VALUE.NB_CMD_VAL122}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL123 { MODELPARAM_VALUE.NB_CMD_VAL123 PARAM_VALUE.NB_CMD_VAL123 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL123}] ${MODELPARAM_VALUE.NB_CMD_VAL123}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL124 { MODELPARAM_VALUE.NB_CMD_VAL124 PARAM_VALUE.NB_CMD_VAL124 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL124}] ${MODELPARAM_VALUE.NB_CMD_VAL124}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL125 { MODELPARAM_VALUE.NB_CMD_VAL125 PARAM_VALUE.NB_CMD_VAL125 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL125}] ${MODELPARAM_VALUE.NB_CMD_VAL125}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL126 { MODELPARAM_VALUE.NB_CMD_VAL126 PARAM_VALUE.NB_CMD_VAL126 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL126}] ${MODELPARAM_VALUE.NB_CMD_VAL126}
}

proc update_MODELPARAM_VALUE.NB_CMD_VAL127 { MODELPARAM_VALUE.NB_CMD_VAL127 PARAM_VALUE.NB_CMD_VAL127 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_VAL127}] ${MODELPARAM_VALUE.NB_CMD_VAL127}
}

proc update_MODELPARAM_VALUE.NB_CMD_ORDE { MODELPARAM_VALUE.NB_CMD_ORDE PARAM_VALUE.NB_CMD_ORDE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_ORDE}] ${MODELPARAM_VALUE.NB_CMD_ORDE}
}

proc update_MODELPARAM_VALUE.WD_CMD_DATA { MODELPARAM_VALUE.WD_CMD_DATA PARAM_VALUE.WD_CMD_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_CMD_DATA}] ${MODELPARAM_VALUE.WD_CMD_DATA}
}

proc update_MODELPARAM_VALUE.WD_BYTE { MODELPARAM_VALUE.WD_BYTE PARAM_VALUE.WD_BYTE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_BYTE}] ${MODELPARAM_VALUE.WD_BYTE}
}

proc update_MODELPARAM_VALUE.WD_ERR_INFO { MODELPARAM_VALUE.WD_ERR_INFO PARAM_VALUE.WD_ERR_INFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_ERR_INFO}] ${MODELPARAM_VALUE.WD_ERR_INFO}
}

