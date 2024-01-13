
# Loading additional proc with user specified bodies to compute parameter values.
source [file join [file dirname [file dirname [info script]]] gui/bram_to_shk_v1_0.gtcl]

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "MD_SIM_ABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_BRAM_DELY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_DDR_INI1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_DDR_INI2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_DDR_INI3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_DDR_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_DDR_ONC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_BRAM_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_BRAM_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_ERR_INFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SHK_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SHK_DATA" -parent ${Page_0}

  ipgui::add_param $IPINST -name "NB_DDR_NUMB"

}

proc update_PARAM_VALUE.NB_DDR_INI2 { PARAM_VALUE.NB_DDR_INI2 PARAM_VALUE.NB_DDR_NUMB } {
	# Procedure called to update NB_DDR_INI2 when any of the dependent parameters in the arguments change
	
	set NB_DDR_INI2 ${PARAM_VALUE.NB_DDR_INI2}
	set NB_DDR_NUMB ${PARAM_VALUE.NB_DDR_NUMB}
	set values(NB_DDR_NUMB) [get_property value $NB_DDR_NUMB]
	if { [gen_USERPARAMETER_NB_DDR_INI2_ENABLEMENT $values(NB_DDR_NUMB)] } {
		set_property enabled true $NB_DDR_INI2
	} else {
		set_property enabled false $NB_DDR_INI2
	}
}

proc validate_PARAM_VALUE.NB_DDR_INI2 { PARAM_VALUE.NB_DDR_INI2 } {
	# Procedure called to validate NB_DDR_INI2
	return true
}

proc update_PARAM_VALUE.NB_DDR_INI3 { PARAM_VALUE.NB_DDR_INI3 PARAM_VALUE.NB_DDR_NUMB } {
	# Procedure called to update NB_DDR_INI3 when any of the dependent parameters in the arguments change
	
	set NB_DDR_INI3 ${PARAM_VALUE.NB_DDR_INI3}
	set NB_DDR_NUMB ${PARAM_VALUE.NB_DDR_NUMB}
	set values(NB_DDR_NUMB) [get_property value $NB_DDR_NUMB]
	if { [gen_USERPARAMETER_NB_DDR_INI3_ENABLEMENT $values(NB_DDR_NUMB)] } {
		set_property enabled true $NB_DDR_INI3
	} else {
		set_property enabled false $NB_DDR_INI3
	}
}

proc validate_PARAM_VALUE.NB_DDR_INI3 { PARAM_VALUE.NB_DDR_INI3 } {
	# Procedure called to validate NB_DDR_INI3
	return true
}

proc update_PARAM_VALUE.MD_SIM_ABLE { PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to update MD_SIM_ABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MD_SIM_ABLE { PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to validate MD_SIM_ABLE
	return true
}

proc update_PARAM_VALUE.NB_BRAM_DELY { PARAM_VALUE.NB_BRAM_DELY } {
	# Procedure called to update NB_BRAM_DELY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_BRAM_DELY { PARAM_VALUE.NB_BRAM_DELY } {
	# Procedure called to validate NB_BRAM_DELY
	return true
}

proc update_PARAM_VALUE.NB_DDR_INI1 { PARAM_VALUE.NB_DDR_INI1 } {
	# Procedure called to update NB_DDR_INI1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_DDR_INI1 { PARAM_VALUE.NB_DDR_INI1 } {
	# Procedure called to validate NB_DDR_INI1
	return true
}

proc update_PARAM_VALUE.NB_DDR_MAX { PARAM_VALUE.NB_DDR_MAX } {
	# Procedure called to update NB_DDR_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_DDR_MAX { PARAM_VALUE.NB_DDR_MAX } {
	# Procedure called to validate NB_DDR_MAX
	return true
}

proc update_PARAM_VALUE.NB_DDR_NUMB { PARAM_VALUE.NB_DDR_NUMB } {
	# Procedure called to update NB_DDR_NUMB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_DDR_NUMB { PARAM_VALUE.NB_DDR_NUMB } {
	# Procedure called to validate NB_DDR_NUMB
	return true
}

proc update_PARAM_VALUE.NB_DDR_ONC { PARAM_VALUE.NB_DDR_ONC } {
	# Procedure called to update NB_DDR_ONC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_DDR_ONC { PARAM_VALUE.NB_DDR_ONC } {
	# Procedure called to validate NB_DDR_ONC
	return true
}

proc update_PARAM_VALUE.WD_BRAM_ADDR { PARAM_VALUE.WD_BRAM_ADDR } {
	# Procedure called to update WD_BRAM_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_BRAM_ADDR { PARAM_VALUE.WD_BRAM_ADDR } {
	# Procedure called to validate WD_BRAM_ADDR
	return true
}

proc update_PARAM_VALUE.WD_BRAM_DATA { PARAM_VALUE.WD_BRAM_DATA } {
	# Procedure called to update WD_BRAM_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_BRAM_DATA { PARAM_VALUE.WD_BRAM_DATA } {
	# Procedure called to validate WD_BRAM_DATA
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

proc update_MODELPARAM_VALUE.NB_BRAM_DELY { MODELPARAM_VALUE.NB_BRAM_DELY PARAM_VALUE.NB_BRAM_DELY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_BRAM_DELY}] ${MODELPARAM_VALUE.NB_BRAM_DELY}
}

proc update_MODELPARAM_VALUE.NB_DDR_MAX { MODELPARAM_VALUE.NB_DDR_MAX PARAM_VALUE.NB_DDR_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_DDR_MAX}] ${MODELPARAM_VALUE.NB_DDR_MAX}
}

proc update_MODELPARAM_VALUE.NB_DDR_INI1 { MODELPARAM_VALUE.NB_DDR_INI1 PARAM_VALUE.NB_DDR_INI1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_DDR_INI1}] ${MODELPARAM_VALUE.NB_DDR_INI1}
}

proc update_MODELPARAM_VALUE.NB_DDR_INI2 { MODELPARAM_VALUE.NB_DDR_INI2 PARAM_VALUE.NB_DDR_INI2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_DDR_INI2}] ${MODELPARAM_VALUE.NB_DDR_INI2}
}

proc update_MODELPARAM_VALUE.NB_DDR_INI3 { MODELPARAM_VALUE.NB_DDR_INI3 PARAM_VALUE.NB_DDR_INI3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_DDR_INI3}] ${MODELPARAM_VALUE.NB_DDR_INI3}
}

proc update_MODELPARAM_VALUE.NB_DDR_ONC { MODELPARAM_VALUE.NB_DDR_ONC PARAM_VALUE.NB_DDR_ONC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_DDR_ONC}] ${MODELPARAM_VALUE.NB_DDR_ONC}
}

proc update_MODELPARAM_VALUE.WD_SHK_DATA { MODELPARAM_VALUE.WD_SHK_DATA PARAM_VALUE.WD_SHK_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SHK_DATA}] ${MODELPARAM_VALUE.WD_SHK_DATA}
}

proc update_MODELPARAM_VALUE.WD_SHK_ADDR { MODELPARAM_VALUE.WD_SHK_ADDR PARAM_VALUE.WD_SHK_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SHK_ADDR}] ${MODELPARAM_VALUE.WD_SHK_ADDR}
}

proc update_MODELPARAM_VALUE.WD_BRAM_ADDR { MODELPARAM_VALUE.WD_BRAM_ADDR PARAM_VALUE.WD_BRAM_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_BRAM_ADDR}] ${MODELPARAM_VALUE.WD_BRAM_ADDR}
}

proc update_MODELPARAM_VALUE.WD_BRAM_DATA { MODELPARAM_VALUE.WD_BRAM_DATA PARAM_VALUE.WD_BRAM_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_BRAM_DATA}] ${MODELPARAM_VALUE.WD_BRAM_DATA}
}

proc update_MODELPARAM_VALUE.WD_ERR_INFO { MODELPARAM_VALUE.WD_ERR_INFO PARAM_VALUE.WD_ERR_INFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_ERR_INFO}] ${MODELPARAM_VALUE.WD_ERR_INFO}
}

proc update_MODELPARAM_VALUE.NB_DDR_NUMB { MODELPARAM_VALUE.NB_DDR_NUMB PARAM_VALUE.NB_DDR_NUMB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_DDR_NUMB}] ${MODELPARAM_VALUE.NB_DDR_NUMB}
}

