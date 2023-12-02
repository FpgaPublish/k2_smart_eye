# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "MD_CMD_START" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MD_SIM_ABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_ORDE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_PKG_HEAD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_PKG_SIZE" -parent ${Page_0}
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

proc update_PARAM_VALUE.NB_CMD_ORDE { PARAM_VALUE.NB_CMD_ORDE } {
	# Procedure called to update NB_CMD_ORDE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_CMD_ORDE { PARAM_VALUE.NB_CMD_ORDE } {
	# Procedure called to validate NB_CMD_ORDE
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

proc update_MODELPARAM_VALUE.NB_CMD_ORDE { MODELPARAM_VALUE.NB_CMD_ORDE PARAM_VALUE.NB_CMD_ORDE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_ORDE}] ${MODELPARAM_VALUE.NB_CMD_ORDE}
}

proc update_MODELPARAM_VALUE.WD_CMD_DATA { MODELPARAM_VALUE.WD_CMD_DATA PARAM_VALUE.WD_CMD_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_CMD_DATA}] ${MODELPARAM_VALUE.WD_CMD_DATA}
}

proc update_MODELPARAM_VALUE.WD_ERR_INFO { MODELPARAM_VALUE.WD_ERR_INFO PARAM_VALUE.WD_ERR_INFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_ERR_INFO}] ${MODELPARAM_VALUE.WD_ERR_INFO}
}

