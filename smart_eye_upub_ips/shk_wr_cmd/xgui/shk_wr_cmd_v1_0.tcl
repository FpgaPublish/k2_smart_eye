# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "MD_SIM_ABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_READ_LAT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_DST_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_DST_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_ERR_INFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_READ_ADR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SHK_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SHK_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SYNC_ADR" -parent ${Page_0}


}

proc update_PARAM_VALUE.MD_SIM_ABLE { PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to update MD_SIM_ABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MD_SIM_ABLE { PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to validate MD_SIM_ABLE
	return true
}

proc update_PARAM_VALUE.NB_READ_LAT { PARAM_VALUE.NB_READ_LAT } {
	# Procedure called to update NB_READ_LAT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_READ_LAT { PARAM_VALUE.NB_READ_LAT } {
	# Procedure called to validate NB_READ_LAT
	return true
}

proc update_PARAM_VALUE.WD_DST_ADDR { PARAM_VALUE.WD_DST_ADDR } {
	# Procedure called to update WD_DST_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_DST_ADDR { PARAM_VALUE.WD_DST_ADDR } {
	# Procedure called to validate WD_DST_ADDR
	return true
}

proc update_PARAM_VALUE.WD_DST_DATA { PARAM_VALUE.WD_DST_DATA } {
	# Procedure called to update WD_DST_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_DST_DATA { PARAM_VALUE.WD_DST_DATA } {
	# Procedure called to validate WD_DST_DATA
	return true
}

proc update_PARAM_VALUE.WD_ERR_INFO { PARAM_VALUE.WD_ERR_INFO } {
	# Procedure called to update WD_ERR_INFO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_ERR_INFO { PARAM_VALUE.WD_ERR_INFO } {
	# Procedure called to validate WD_ERR_INFO
	return true
}

proc update_PARAM_VALUE.WD_READ_ADR { PARAM_VALUE.WD_READ_ADR } {
	# Procedure called to update WD_READ_ADR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_READ_ADR { PARAM_VALUE.WD_READ_ADR } {
	# Procedure called to validate WD_READ_ADR
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

proc update_PARAM_VALUE.WD_SYNC_ADR { PARAM_VALUE.WD_SYNC_ADR } {
	# Procedure called to update WD_SYNC_ADR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_SYNC_ADR { PARAM_VALUE.WD_SYNC_ADR } {
	# Procedure called to validate WD_SYNC_ADR
	return true
}


proc update_MODELPARAM_VALUE.MD_SIM_ABLE { MODELPARAM_VALUE.MD_SIM_ABLE PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MD_SIM_ABLE}] ${MODELPARAM_VALUE.MD_SIM_ABLE}
}

proc update_MODELPARAM_VALUE.WD_SHK_DATA { MODELPARAM_VALUE.WD_SHK_DATA PARAM_VALUE.WD_SHK_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SHK_DATA}] ${MODELPARAM_VALUE.WD_SHK_DATA}
}

proc update_MODELPARAM_VALUE.WD_SHK_ADDR { MODELPARAM_VALUE.WD_SHK_ADDR PARAM_VALUE.WD_SHK_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SHK_ADDR}] ${MODELPARAM_VALUE.WD_SHK_ADDR}
}

proc update_MODELPARAM_VALUE.WD_DST_DATA { MODELPARAM_VALUE.WD_DST_DATA PARAM_VALUE.WD_DST_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_DST_DATA}] ${MODELPARAM_VALUE.WD_DST_DATA}
}

proc update_MODELPARAM_VALUE.WD_DST_ADDR { MODELPARAM_VALUE.WD_DST_ADDR PARAM_VALUE.WD_DST_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_DST_ADDR}] ${MODELPARAM_VALUE.WD_DST_ADDR}
}

proc update_MODELPARAM_VALUE.WD_SYNC_ADR { MODELPARAM_VALUE.WD_SYNC_ADR PARAM_VALUE.WD_SYNC_ADR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SYNC_ADR}] ${MODELPARAM_VALUE.WD_SYNC_ADR}
}

proc update_MODELPARAM_VALUE.WD_READ_ADR { MODELPARAM_VALUE.WD_READ_ADR PARAM_VALUE.WD_READ_ADR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_READ_ADR}] ${MODELPARAM_VALUE.WD_READ_ADR}
}

proc update_MODELPARAM_VALUE.NB_READ_LAT { MODELPARAM_VALUE.NB_READ_LAT PARAM_VALUE.NB_READ_LAT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_READ_LAT}] ${MODELPARAM_VALUE.NB_READ_LAT}
}

proc update_MODELPARAM_VALUE.WD_ERR_INFO { MODELPARAM_VALUE.WD_ERR_INFO PARAM_VALUE.WD_ERR_INFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_ERR_INFO}] ${MODELPARAM_VALUE.WD_ERR_INFO}
}

