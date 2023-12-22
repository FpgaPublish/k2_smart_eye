# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "MD_SIM_ABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_ERR_INFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SHK0_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SHK0_DATA" -parent ${Page_0}

  ipgui::add_param $IPINST -name "NB_SHK_NUMB"

}

proc update_PARAM_VALUE.MD_SIM_ABLE { PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to update MD_SIM_ABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MD_SIM_ABLE { PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to validate MD_SIM_ABLE
	return true
}

proc update_PARAM_VALUE.NB_SHK_NUMB { PARAM_VALUE.NB_SHK_NUMB } {
	# Procedure called to update NB_SHK_NUMB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_SHK_NUMB { PARAM_VALUE.NB_SHK_NUMB } {
	# Procedure called to validate NB_SHK_NUMB
	return true
}

proc update_PARAM_VALUE.WD_ERR_INFO { PARAM_VALUE.WD_ERR_INFO } {
	# Procedure called to update WD_ERR_INFO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_ERR_INFO { PARAM_VALUE.WD_ERR_INFO } {
	# Procedure called to validate WD_ERR_INFO
	return true
}

proc update_PARAM_VALUE.WD_SHK0_ADDR { PARAM_VALUE.WD_SHK0_ADDR } {
	# Procedure called to update WD_SHK0_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_SHK0_ADDR { PARAM_VALUE.WD_SHK0_ADDR } {
	# Procedure called to validate WD_SHK0_ADDR
	return true
}

proc update_PARAM_VALUE.WD_SHK0_DATA { PARAM_VALUE.WD_SHK0_DATA } {
	# Procedure called to update WD_SHK0_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_SHK0_DATA { PARAM_VALUE.WD_SHK0_DATA } {
	# Procedure called to validate WD_SHK0_DATA
	return true
}


proc update_MODELPARAM_VALUE.MD_SIM_ABLE { MODELPARAM_VALUE.MD_SIM_ABLE PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MD_SIM_ABLE}] ${MODELPARAM_VALUE.MD_SIM_ABLE}
}

proc update_MODELPARAM_VALUE.WD_SHK0_DATA { MODELPARAM_VALUE.WD_SHK0_DATA PARAM_VALUE.WD_SHK0_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SHK0_DATA}] ${MODELPARAM_VALUE.WD_SHK0_DATA}
}

proc update_MODELPARAM_VALUE.WD_SHK0_ADDR { MODELPARAM_VALUE.WD_SHK0_ADDR PARAM_VALUE.WD_SHK0_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SHK0_ADDR}] ${MODELPARAM_VALUE.WD_SHK0_ADDR}
}

proc update_MODELPARAM_VALUE.WD_ERR_INFO { MODELPARAM_VALUE.WD_ERR_INFO PARAM_VALUE.WD_ERR_INFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_ERR_INFO}] ${MODELPARAM_VALUE.WD_ERR_INFO}
}

