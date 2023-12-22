# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "MD_SIM_ABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_BCK_CODE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_BCK_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_CMD_ORDE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_IIC_RD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_IIC_WR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SR_BCK_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SR_BCK_ERR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_CMD_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_ERR_INFO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SHK0_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SHK0_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SHKA_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WD_SHKA_DATA" -parent ${Page_0}

  #Adding Page
  ipgui::add_page $IPINST -name "note"


}

proc update_PARAM_VALUE.MD_SIM_ABLE { PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to update MD_SIM_ABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MD_SIM_ABLE { PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to validate MD_SIM_ABLE
	return true
}

proc update_PARAM_VALUE.NB_BCK_CODE { PARAM_VALUE.NB_BCK_CODE } {
	# Procedure called to update NB_BCK_CODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_BCK_CODE { PARAM_VALUE.NB_BCK_CODE } {
	# Procedure called to validate NB_BCK_CODE
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

proc update_PARAM_VALUE.NB_IIC_RD { PARAM_VALUE.NB_IIC_RD } {
	# Procedure called to update NB_IIC_RD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_IIC_RD { PARAM_VALUE.NB_IIC_RD } {
	# Procedure called to validate NB_IIC_RD
	return true
}

proc update_PARAM_VALUE.NB_IIC_WR { PARAM_VALUE.NB_IIC_WR } {
	# Procedure called to update NB_IIC_WR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_IIC_WR { PARAM_VALUE.NB_IIC_WR } {
	# Procedure called to validate NB_IIC_WR
	return true
}

proc update_PARAM_VALUE.SR_BCK_DATA { PARAM_VALUE.SR_BCK_DATA } {
	# Procedure called to update SR_BCK_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SR_BCK_DATA { PARAM_VALUE.SR_BCK_DATA } {
	# Procedure called to validate SR_BCK_DATA
	return true
}

proc update_PARAM_VALUE.SR_BCK_ERR { PARAM_VALUE.SR_BCK_ERR } {
	# Procedure called to update SR_BCK_ERR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SR_BCK_ERR { PARAM_VALUE.SR_BCK_ERR } {
	# Procedure called to validate SR_BCK_ERR
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

proc update_PARAM_VALUE.WD_SHKA_ADDR { PARAM_VALUE.WD_SHKA_ADDR } {
	# Procedure called to update WD_SHKA_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_SHKA_ADDR { PARAM_VALUE.WD_SHKA_ADDR } {
	# Procedure called to validate WD_SHKA_ADDR
	return true
}

proc update_PARAM_VALUE.WD_SHKA_DATA { PARAM_VALUE.WD_SHKA_DATA } {
	# Procedure called to update WD_SHKA_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WD_SHKA_DATA { PARAM_VALUE.WD_SHKA_DATA } {
	# Procedure called to validate WD_SHKA_DATA
	return true
}


proc update_MODELPARAM_VALUE.MD_SIM_ABLE { MODELPARAM_VALUE.MD_SIM_ABLE PARAM_VALUE.MD_SIM_ABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MD_SIM_ABLE}] ${MODELPARAM_VALUE.MD_SIM_ABLE}
}

proc update_MODELPARAM_VALUE.WD_CMD_DATA { MODELPARAM_VALUE.WD_CMD_DATA PARAM_VALUE.WD_CMD_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_CMD_DATA}] ${MODELPARAM_VALUE.WD_CMD_DATA}
}

proc update_MODELPARAM_VALUE.NB_CMD_ORDE { MODELPARAM_VALUE.NB_CMD_ORDE PARAM_VALUE.NB_CMD_ORDE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_CMD_ORDE}] ${MODELPARAM_VALUE.NB_CMD_ORDE}
}

proc update_MODELPARAM_VALUE.WD_SHK0_DATA { MODELPARAM_VALUE.WD_SHK0_DATA PARAM_VALUE.WD_SHK0_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SHK0_DATA}] ${MODELPARAM_VALUE.WD_SHK0_DATA}
}

proc update_MODELPARAM_VALUE.WD_SHK0_ADDR { MODELPARAM_VALUE.WD_SHK0_ADDR PARAM_VALUE.WD_SHK0_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SHK0_ADDR}] ${MODELPARAM_VALUE.WD_SHK0_ADDR}
}

proc update_MODELPARAM_VALUE.NB_IIC_WR { MODELPARAM_VALUE.NB_IIC_WR PARAM_VALUE.NB_IIC_WR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_IIC_WR}] ${MODELPARAM_VALUE.NB_IIC_WR}
}

proc update_MODELPARAM_VALUE.NB_IIC_RD { MODELPARAM_VALUE.NB_IIC_RD PARAM_VALUE.NB_IIC_RD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_IIC_RD}] ${MODELPARAM_VALUE.NB_IIC_RD}
}

proc update_MODELPARAM_VALUE.WD_SHKA_DATA { MODELPARAM_VALUE.WD_SHKA_DATA PARAM_VALUE.WD_SHKA_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SHKA_DATA}] ${MODELPARAM_VALUE.WD_SHKA_DATA}
}

proc update_MODELPARAM_VALUE.WD_SHKA_ADDR { MODELPARAM_VALUE.WD_SHKA_ADDR PARAM_VALUE.WD_SHKA_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_SHKA_ADDR}] ${MODELPARAM_VALUE.WD_SHKA_ADDR}
}

proc update_MODELPARAM_VALUE.NB_BCK_CODE { MODELPARAM_VALUE.NB_BCK_CODE PARAM_VALUE.NB_BCK_CODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_BCK_CODE}] ${MODELPARAM_VALUE.NB_BCK_CODE}
}

proc update_MODELPARAM_VALUE.SR_BCK_DATA { MODELPARAM_VALUE.SR_BCK_DATA PARAM_VALUE.SR_BCK_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SR_BCK_DATA}] ${MODELPARAM_VALUE.SR_BCK_DATA}
}

proc update_MODELPARAM_VALUE.SR_BCK_ERR { MODELPARAM_VALUE.SR_BCK_ERR PARAM_VALUE.SR_BCK_ERR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SR_BCK_ERR}] ${MODELPARAM_VALUE.SR_BCK_ERR}
}

proc update_MODELPARAM_VALUE.NB_BCK_DATA { MODELPARAM_VALUE.NB_BCK_DATA PARAM_VALUE.NB_BCK_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_BCK_DATA}] ${MODELPARAM_VALUE.NB_BCK_DATA}
}

proc update_MODELPARAM_VALUE.WD_ERR_INFO { MODELPARAM_VALUE.WD_ERR_INFO PARAM_VALUE.WD_ERR_INFO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WD_ERR_INFO}] ${MODELPARAM_VALUE.WD_ERR_INFO}
}

