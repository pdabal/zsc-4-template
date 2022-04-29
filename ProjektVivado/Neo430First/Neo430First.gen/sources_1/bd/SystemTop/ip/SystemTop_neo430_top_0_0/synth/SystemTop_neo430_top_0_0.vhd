-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:neo430_top:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY SystemTop_neo430_top_0_0 IS
  PORT (
    clk_i : IN STD_LOGIC;
    rst_i : IN STD_LOGIC;
    gpio_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    gpio_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pwm_o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    freq_gen_o : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    uart_txd_o : OUT STD_LOGIC;
    uart_rxd_i : IN STD_LOGIC;
    spi_sclk_o : OUT STD_LOGIC;
    spi_mosi_o : OUT STD_LOGIC;
    spi_miso_i : IN STD_LOGIC;
    spi_cs_o : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    twi_sda_io : INOUT STD_LOGIC;
    twi_scl_io : INOUT STD_LOGIC;
    wb_adr_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wb_dat_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wb_dat_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wb_we_o : OUT STD_LOGIC;
    wb_sel_o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    wb_stb_o : OUT STD_LOGIC;
    wb_cyc_o : OUT STD_LOGIC;
    wb_ack_i : IN STD_LOGIC;
    ext_irq_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ext_ack_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END SystemTop_neo430_top_0_0;

ARCHITECTURE SystemTop_neo430_top_0_0_arch OF SystemTop_neo430_top_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF SystemTop_neo430_top_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT neo430_top IS
    GENERIC (
      CLOCK_SPEED : INTEGER;
      IMEM_SIZE : INTEGER;
      DMEM_SIZE : INTEGER;
      USER_CODE : STD_ULOGIC_VECTOR(15 DOWNTO 0);
      MULDIV_USE : BOOLEAN;
      WB32_USE : BOOLEAN;
      WDT_USE : BOOLEAN;
      GPIO_USE : BOOLEAN;
      TIMER_USE : BOOLEAN;
      UART_USE : BOOLEAN;
      CRC_USE : BOOLEAN;
      CFU_USE : BOOLEAN;
      PWM_USE : BOOLEAN;
      TWI_USE : BOOLEAN;
      SPI_USE : BOOLEAN;
      TRNG_USE : BOOLEAN;
      EXIRQ_USE : BOOLEAN;
      FREQ_GEN_USE : BOOLEAN;
      BOOTLD_USE : BOOLEAN;
      IMEM_AS_ROM : BOOLEAN
    );
    PORT (
      clk_i : IN STD_LOGIC;
      rst_i : IN STD_LOGIC;
      gpio_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      gpio_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pwm_o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      freq_gen_o : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      uart_txd_o : OUT STD_LOGIC;
      uart_rxd_i : IN STD_LOGIC;
      spi_sclk_o : OUT STD_LOGIC;
      spi_mosi_o : OUT STD_LOGIC;
      spi_miso_i : IN STD_LOGIC;
      spi_cs_o : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      twi_sda_io : INOUT STD_LOGIC;
      twi_scl_io : INOUT STD_LOGIC;
      wb_adr_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      wb_dat_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      wb_dat_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      wb_we_o : OUT STD_LOGIC;
      wb_sel_o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      wb_stb_o : OUT STD_LOGIC;
      wb_cyc_o : OUT STD_LOGIC;
      wb_ack_i : IN STD_LOGIC;
      ext_irq_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      ext_ack_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT neo430_top;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF SystemTop_neo430_top_0_0_arch: ARCHITECTURE IS "neo430_top,Vivado 2021.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF SystemTop_neo430_top_0_0_arch : ARCHITECTURE IS "SystemTop_neo430_top_0_0,neo430_top,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF SystemTop_neo430_top_0_0_arch: ARCHITECTURE IS "SystemTop_neo430_top_0_0,neo430_top,{x_ipProduct=Vivado 2021.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=neo430_top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,CLOCK_SPEED=100000000,IMEM_SIZE=16384,DMEM_SIZE=2048,USER_CODE=0xCAFE,MULDIV_USE=false,WB32_USE=false,WDT_USE=false,GPIO_USE=true,TIMER_USE=true,UART_USE=true,CRC_USE=false,CFU_USE=false,PWM_USE=true,TWI_USE=false,SPI_USE=false,TRNG_USE=false,EXIRQ_USE=false,FREQ_GEN_USE=true,BOOTLD_USE=true,IMEM_" & 
"AS_ROM=false}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF SystemTop_neo430_top_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : neo430_top
    GENERIC MAP (
      CLOCK_SPEED => 100000000,
      IMEM_SIZE => 16384,
      DMEM_SIZE => 2048,
      USER_CODE => X"CAFE",
      MULDIV_USE => false,
      WB32_USE => false,
      WDT_USE => false,
      GPIO_USE => true,
      TIMER_USE => true,
      UART_USE => true,
      CRC_USE => false,
      CFU_USE => false,
      PWM_USE => true,
      TWI_USE => false,
      SPI_USE => false,
      TRNG_USE => false,
      EXIRQ_USE => false,
      FREQ_GEN_USE => true,
      BOOTLD_USE => true,
      IMEM_AS_ROM => false
    )
    PORT MAP (
      clk_i => clk_i,
      rst_i => rst_i,
      gpio_o => gpio_o,
      gpio_i => gpio_i,
      pwm_o => pwm_o,
      freq_gen_o => freq_gen_o,
      uart_txd_o => uart_txd_o,
      uart_rxd_i => uart_rxd_i,
      spi_sclk_o => spi_sclk_o,
      spi_mosi_o => spi_mosi_o,
      spi_miso_i => spi_miso_i,
      spi_cs_o => spi_cs_o,
      twi_sda_io => twi_sda_io,
      twi_scl_io => twi_scl_io,
      wb_adr_o => wb_adr_o,
      wb_dat_i => wb_dat_i,
      wb_dat_o => wb_dat_o,
      wb_we_o => wb_we_o,
      wb_sel_o => wb_sel_o,
      wb_stb_o => wb_stb_o,
      wb_cyc_o => wb_cyc_o,
      wb_ack_i => wb_ack_i,
      ext_irq_i => ext_irq_i,
      ext_ack_o => ext_ack_o
    );
END SystemTop_neo430_top_0_0_arch;
