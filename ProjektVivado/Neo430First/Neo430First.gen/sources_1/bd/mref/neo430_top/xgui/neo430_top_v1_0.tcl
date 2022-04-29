# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BOOTLD_USE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CFU_USE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLOCK_SPEED" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CRC_USE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DMEM_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "EXIRQ_USE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FREQ_GEN_USE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GPIO_USE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IMEM_AS_ROM" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IMEM_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MULDIV_USE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PWM_USE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SPI_USE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TIMER_USE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TRNG_USE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TWI_USE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "UART_USE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "USER_CODE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WB32_USE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WDT_USE" -parent ${Page_0}


}

proc update_PARAM_VALUE.BOOTLD_USE { PARAM_VALUE.BOOTLD_USE } {
	# Procedure called to update BOOTLD_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BOOTLD_USE { PARAM_VALUE.BOOTLD_USE } {
	# Procedure called to validate BOOTLD_USE
	return true
}

proc update_PARAM_VALUE.CFU_USE { PARAM_VALUE.CFU_USE } {
	# Procedure called to update CFU_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CFU_USE { PARAM_VALUE.CFU_USE } {
	# Procedure called to validate CFU_USE
	return true
}

proc update_PARAM_VALUE.CLOCK_SPEED { PARAM_VALUE.CLOCK_SPEED } {
	# Procedure called to update CLOCK_SPEED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLOCK_SPEED { PARAM_VALUE.CLOCK_SPEED } {
	# Procedure called to validate CLOCK_SPEED
	return true
}

proc update_PARAM_VALUE.CRC_USE { PARAM_VALUE.CRC_USE } {
	# Procedure called to update CRC_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CRC_USE { PARAM_VALUE.CRC_USE } {
	# Procedure called to validate CRC_USE
	return true
}

proc update_PARAM_VALUE.DMEM_SIZE { PARAM_VALUE.DMEM_SIZE } {
	# Procedure called to update DMEM_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DMEM_SIZE { PARAM_VALUE.DMEM_SIZE } {
	# Procedure called to validate DMEM_SIZE
	return true
}

proc update_PARAM_VALUE.EXIRQ_USE { PARAM_VALUE.EXIRQ_USE } {
	# Procedure called to update EXIRQ_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EXIRQ_USE { PARAM_VALUE.EXIRQ_USE } {
	# Procedure called to validate EXIRQ_USE
	return true
}

proc update_PARAM_VALUE.FREQ_GEN_USE { PARAM_VALUE.FREQ_GEN_USE } {
	# Procedure called to update FREQ_GEN_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FREQ_GEN_USE { PARAM_VALUE.FREQ_GEN_USE } {
	# Procedure called to validate FREQ_GEN_USE
	return true
}

proc update_PARAM_VALUE.GPIO_USE { PARAM_VALUE.GPIO_USE } {
	# Procedure called to update GPIO_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GPIO_USE { PARAM_VALUE.GPIO_USE } {
	# Procedure called to validate GPIO_USE
	return true
}

proc update_PARAM_VALUE.IMEM_AS_ROM { PARAM_VALUE.IMEM_AS_ROM } {
	# Procedure called to update IMEM_AS_ROM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IMEM_AS_ROM { PARAM_VALUE.IMEM_AS_ROM } {
	# Procedure called to validate IMEM_AS_ROM
	return true
}

proc update_PARAM_VALUE.IMEM_SIZE { PARAM_VALUE.IMEM_SIZE } {
	# Procedure called to update IMEM_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IMEM_SIZE { PARAM_VALUE.IMEM_SIZE } {
	# Procedure called to validate IMEM_SIZE
	return true
}

proc update_PARAM_VALUE.MULDIV_USE { PARAM_VALUE.MULDIV_USE } {
	# Procedure called to update MULDIV_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MULDIV_USE { PARAM_VALUE.MULDIV_USE } {
	# Procedure called to validate MULDIV_USE
	return true
}

proc update_PARAM_VALUE.PWM_USE { PARAM_VALUE.PWM_USE } {
	# Procedure called to update PWM_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PWM_USE { PARAM_VALUE.PWM_USE } {
	# Procedure called to validate PWM_USE
	return true
}

proc update_PARAM_VALUE.SPI_USE { PARAM_VALUE.SPI_USE } {
	# Procedure called to update SPI_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SPI_USE { PARAM_VALUE.SPI_USE } {
	# Procedure called to validate SPI_USE
	return true
}

proc update_PARAM_VALUE.TIMER_USE { PARAM_VALUE.TIMER_USE } {
	# Procedure called to update TIMER_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TIMER_USE { PARAM_VALUE.TIMER_USE } {
	# Procedure called to validate TIMER_USE
	return true
}

proc update_PARAM_VALUE.TRNG_USE { PARAM_VALUE.TRNG_USE } {
	# Procedure called to update TRNG_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TRNG_USE { PARAM_VALUE.TRNG_USE } {
	# Procedure called to validate TRNG_USE
	return true
}

proc update_PARAM_VALUE.TWI_USE { PARAM_VALUE.TWI_USE } {
	# Procedure called to update TWI_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TWI_USE { PARAM_VALUE.TWI_USE } {
	# Procedure called to validate TWI_USE
	return true
}

proc update_PARAM_VALUE.UART_USE { PARAM_VALUE.UART_USE } {
	# Procedure called to update UART_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.UART_USE { PARAM_VALUE.UART_USE } {
	# Procedure called to validate UART_USE
	return true
}

proc update_PARAM_VALUE.USER_CODE { PARAM_VALUE.USER_CODE } {
	# Procedure called to update USER_CODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.USER_CODE { PARAM_VALUE.USER_CODE } {
	# Procedure called to validate USER_CODE
	return true
}

proc update_PARAM_VALUE.WB32_USE { PARAM_VALUE.WB32_USE } {
	# Procedure called to update WB32_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WB32_USE { PARAM_VALUE.WB32_USE } {
	# Procedure called to validate WB32_USE
	return true
}

proc update_PARAM_VALUE.WDT_USE { PARAM_VALUE.WDT_USE } {
	# Procedure called to update WDT_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WDT_USE { PARAM_VALUE.WDT_USE } {
	# Procedure called to validate WDT_USE
	return true
}


proc update_MODELPARAM_VALUE.CLOCK_SPEED { MODELPARAM_VALUE.CLOCK_SPEED PARAM_VALUE.CLOCK_SPEED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLOCK_SPEED}] ${MODELPARAM_VALUE.CLOCK_SPEED}
}

proc update_MODELPARAM_VALUE.IMEM_SIZE { MODELPARAM_VALUE.IMEM_SIZE PARAM_VALUE.IMEM_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IMEM_SIZE}] ${MODELPARAM_VALUE.IMEM_SIZE}
}

proc update_MODELPARAM_VALUE.DMEM_SIZE { MODELPARAM_VALUE.DMEM_SIZE PARAM_VALUE.DMEM_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DMEM_SIZE}] ${MODELPARAM_VALUE.DMEM_SIZE}
}

proc update_MODELPARAM_VALUE.USER_CODE { MODELPARAM_VALUE.USER_CODE PARAM_VALUE.USER_CODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.USER_CODE}] ${MODELPARAM_VALUE.USER_CODE}
}

proc update_MODELPARAM_VALUE.MULDIV_USE { MODELPARAM_VALUE.MULDIV_USE PARAM_VALUE.MULDIV_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MULDIV_USE}] ${MODELPARAM_VALUE.MULDIV_USE}
}

proc update_MODELPARAM_VALUE.WB32_USE { MODELPARAM_VALUE.WB32_USE PARAM_VALUE.WB32_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WB32_USE}] ${MODELPARAM_VALUE.WB32_USE}
}

proc update_MODELPARAM_VALUE.WDT_USE { MODELPARAM_VALUE.WDT_USE PARAM_VALUE.WDT_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WDT_USE}] ${MODELPARAM_VALUE.WDT_USE}
}

proc update_MODELPARAM_VALUE.GPIO_USE { MODELPARAM_VALUE.GPIO_USE PARAM_VALUE.GPIO_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GPIO_USE}] ${MODELPARAM_VALUE.GPIO_USE}
}

proc update_MODELPARAM_VALUE.TIMER_USE { MODELPARAM_VALUE.TIMER_USE PARAM_VALUE.TIMER_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TIMER_USE}] ${MODELPARAM_VALUE.TIMER_USE}
}

proc update_MODELPARAM_VALUE.UART_USE { MODELPARAM_VALUE.UART_USE PARAM_VALUE.UART_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.UART_USE}] ${MODELPARAM_VALUE.UART_USE}
}

proc update_MODELPARAM_VALUE.CRC_USE { MODELPARAM_VALUE.CRC_USE PARAM_VALUE.CRC_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CRC_USE}] ${MODELPARAM_VALUE.CRC_USE}
}

proc update_MODELPARAM_VALUE.CFU_USE { MODELPARAM_VALUE.CFU_USE PARAM_VALUE.CFU_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFU_USE}] ${MODELPARAM_VALUE.CFU_USE}
}

proc update_MODELPARAM_VALUE.PWM_USE { MODELPARAM_VALUE.PWM_USE PARAM_VALUE.PWM_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PWM_USE}] ${MODELPARAM_VALUE.PWM_USE}
}

proc update_MODELPARAM_VALUE.TWI_USE { MODELPARAM_VALUE.TWI_USE PARAM_VALUE.TWI_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TWI_USE}] ${MODELPARAM_VALUE.TWI_USE}
}

proc update_MODELPARAM_VALUE.SPI_USE { MODELPARAM_VALUE.SPI_USE PARAM_VALUE.SPI_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SPI_USE}] ${MODELPARAM_VALUE.SPI_USE}
}

proc update_MODELPARAM_VALUE.TRNG_USE { MODELPARAM_VALUE.TRNG_USE PARAM_VALUE.TRNG_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TRNG_USE}] ${MODELPARAM_VALUE.TRNG_USE}
}

proc update_MODELPARAM_VALUE.EXIRQ_USE { MODELPARAM_VALUE.EXIRQ_USE PARAM_VALUE.EXIRQ_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.EXIRQ_USE}] ${MODELPARAM_VALUE.EXIRQ_USE}
}

proc update_MODELPARAM_VALUE.FREQ_GEN_USE { MODELPARAM_VALUE.FREQ_GEN_USE PARAM_VALUE.FREQ_GEN_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FREQ_GEN_USE}] ${MODELPARAM_VALUE.FREQ_GEN_USE}
}

proc update_MODELPARAM_VALUE.BOOTLD_USE { MODELPARAM_VALUE.BOOTLD_USE PARAM_VALUE.BOOTLD_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BOOTLD_USE}] ${MODELPARAM_VALUE.BOOTLD_USE}
}

proc update_MODELPARAM_VALUE.IMEM_AS_ROM { MODELPARAM_VALUE.IMEM_AS_ROM PARAM_VALUE.IMEM_AS_ROM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IMEM_AS_ROM}] ${MODELPARAM_VALUE.IMEM_AS_ROM}
}

