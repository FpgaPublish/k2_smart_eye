# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "MD_SIM_ABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_ADDR_INIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_DATA_INIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_SHK_DELAY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_SHK_SYNC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_ERR_INFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SHK_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SHK_DATA" -parent ${Page_0}

  ipgui::add_param $IPINST -name "MD_SLAVER_SHK"

}

proc update_PARAM_VALUE.MD_SIM_ABLE { PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to update MD_SIM_ABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MD_SIM_ABLE { PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to validate MD_SIM_ABLE
	return true
}

proc update_PARAM_VALUE.MD_SLAVER_SHK { PARAM_VALUE.MD_SLAVER_SHK } {
	# Procedure called to update MD_SLAVER_SHK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MD_SLAVER_SHK { PARAM_VALUE.MD_SLAVER_SHK } {
	# Procedure called to validate MD_SLAVER_SHK
	return true
}

proc update_PARAM_VALUE.NB_ADDR_INIT { PARAM_VALUE.NB_ADDR_INIT } {
	# Procedure called to update NB_ADDR_INIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_ADDR_INIT { PARAM_VALUE.NB_ADDR_INIT } {
	# Procedure called to validate NB_ADDR_INIT
	return true
}

proc update_PARAM_VALUE.NB_DATA_INIT { PARAM_VALUE.NB_DATA_INIT } {
	# Procedure called to update NB_DATA_INIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_DATA_INIT { PARAM_VALUE.NB_DATA_INIT } {
	# Procedure called to validate NB_DATA_INIT
	return true
}

proc update_PARAM_VALUE.NB_SHK_DELAY { PARAM_VALUE.NB_SHK_DELAY } {
	# Procedure called to update NB_SHK_DELAY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_SHK_DELAY { PARAM_VALUE.NB_SHK_DELAY } {
	# Procedure called to validate NB_SHK_DELAY
	return true
}

proc update_PARAM_VALUE.NB_SHK_SYNC { PARAM_VALUE.NB_SHK_SYNC } {
	# Procedure called to update NB_SHK_SYNC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_SHK_SYNC { PARAM_VALUE.NB_SHK_SYNC } {
	# Procedure called to validate NB_SHK_SYNC
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


proc update_MODELPARAM_VALUE.MD_SIM_ABLE { MODELPARAM_VALUE.MD_SIM_ABLE PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MD_SIM_ABLE}] ${MODELPARAM_VALUE.MD_SIM_ABLE}
}

proc update_MODELPARAM_VALUE.NB_ADDR_INIT { MODELPARAM_VALUE.NB_ADDR_INIT PARAM_VALUE.NB_ADDR_INIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_ADDR_INIT}] ${MODELPARAM_VALUE.NB_ADDR_INIT}
}

proc update_MODELPARAM_VALUE.NB_DATA_INIT { MODELPARAM_VALUE.NB_DATA_INIT PARAM_VALUE.NB_DATA_INIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_DATA_INIT}] ${MODELPARAM_VALUE.NB_DATA_INIT}
}

proc update_MODELPARAM_VALUE.NB_SHK_DELAY { MODELPARAM_VALUE.NB_SHK_DELAY PARAM_VALUE.NB_SHK_DELAY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_SHK_DELAY}] ${MODELPARAM_VALUE.NB_SHK_DELAY}
}

proc update_MODELPARAM_VALUE.NB_SHK_SYNC { MODELPARAM_VALUE.NB_SHK_SYNC PARAM_VALUE.NB_SHK_SYNC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_SHK_SYNC}] ${MODELPARAM_VALUE.NB_SHK_SYNC}
}

proc update_MODELPARAM_VALUE.WD_SHK_DATA { MODELPARAM_VALUE.WD_SHK_DATA PARAM_VALUE.WD_SHK_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SHK_DATA}] ${MODELPARAM_VALUE.WD_SHK_DATA}
}

proc update_MODELPARAM_VALUE.WD_SHK_ADDR { MODELPARAM_VALUE.WD_SHK_ADDR PARAM_VALUE.WD_SHK_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SHK_ADDR}] ${MODELPARAM_VALUE.WD_SHK_ADDR}
}

proc update_MODELPARAM_VALUE.WD_ERR_INFO { MODELPARAM_VALUE.WD_ERR_INFO PARAM_VALUE.WD_ERR_INFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_ERR_INFO}] ${MODELPARAM_VALUE.WD_ERR_INFO}
}

