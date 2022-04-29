--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Fri Apr 29 12:49:23 2022
--Host        : Laptop-G5-5590 running 64-bit major release  (build 9200)
--Command     : generate_target SystemTop.bd
--Design      : SystemTop
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop is
  port (
    clk_i : in STD_LOGIC;
    led_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_n_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    sw_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    uart_rxd_i : in STD_LOGIC;
    uart_txd_o : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of SystemTop : entity is "SystemTop,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SystemTop,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_BD}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of SystemTop : entity is "SystemTop.hwdef";
end SystemTop;

architecture STRUCTURE of SystemTop is
  component SystemTop_neo430_top_0_0 is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    gpio_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    freq_gen_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    uart_txd_o : out STD_LOGIC;
    uart_rxd_i : in STD_LOGIC;
    spi_sclk_o : out STD_LOGIC;
    spi_mosi_o : out STD_LOGIC;
    spi_miso_i : in STD_LOGIC;
    spi_cs_o : out STD_LOGIC_VECTOR ( 5 downto 0 );
    twi_sda_io : inout STD_LOGIC;
    twi_scl_io : inout STD_LOGIC;
    wb_adr_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_dat_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_we_o : out STD_LOGIC;
    wb_sel_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wb_stb_o : out STD_LOGIC;
    wb_cyc_o : out STD_LOGIC;
    wb_ack_i : in STD_LOGIC;
    ext_irq_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ext_ack_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component SystemTop_neo430_top_0_0;
  component SystemTop_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component SystemTop_util_vector_logic_0_0;
  component SystemTop_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component SystemTop_xlconstant_0_0;
  component SystemTop_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component SystemTop_xlconstant_1_0;
  component SystemTop_xlconstant_2_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component SystemTop_xlconstant_2_0;
  signal clk_i_1 : STD_LOGIC;
  signal neo430_top_0_gpio_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal neo430_top_0_uart_txd_o : STD_LOGIC;
  signal rst_n_i_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sw_i_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal uart_rxd_i_1 : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_neo430_top_0_spi_mosi_o_UNCONNECTED : STD_LOGIC;
  signal NLW_neo430_top_0_spi_sclk_o_UNCONNECTED : STD_LOGIC;
  signal NLW_neo430_top_0_twi_scl_io_UNCONNECTED : STD_LOGIC;
  signal NLW_neo430_top_0_twi_sda_io_UNCONNECTED : STD_LOGIC;
  signal NLW_neo430_top_0_wb_cyc_o_UNCONNECTED : STD_LOGIC;
  signal NLW_neo430_top_0_wb_stb_o_UNCONNECTED : STD_LOGIC;
  signal NLW_neo430_top_0_wb_we_o_UNCONNECTED : STD_LOGIC;
  signal NLW_neo430_top_0_ext_ack_o_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_neo430_top_0_freq_gen_o_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_neo430_top_0_pwm_o_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_neo430_top_0_spi_cs_o_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_neo430_top_0_wb_adr_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_neo430_top_0_wb_dat_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_neo430_top_0_wb_sel_o_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_i : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_I CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_i : signal is "XIL_INTERFACENAME CLK.CLK_I, CLK_DOMAIN SystemTop_clk_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of uart_rxd_i : signal is "xilinx.com:signal:data:1.0 DATA.UART_RXD_I DATA";
  attribute X_INTERFACE_PARAMETER of uart_rxd_i : signal is "XIL_INTERFACENAME DATA.UART_RXD_I, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of uart_txd_o : signal is "xilinx.com:signal:data:1.0 DATA.UART_TXD_O DATA";
  attribute X_INTERFACE_PARAMETER of uart_txd_o : signal is "XIL_INTERFACENAME DATA.UART_TXD_O, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of led_o : signal is "xilinx.com:signal:data:1.0 DATA.LED_O DATA";
  attribute X_INTERFACE_PARAMETER of led_o : signal is "XIL_INTERFACENAME DATA.LED_O, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of rst_n_i : signal is "xilinx.com:signal:reset:1.0 RST.RST_N_I RST";
  attribute X_INTERFACE_PARAMETER of rst_n_i : signal is "XIL_INTERFACENAME RST.RST_N_I, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of sw_i : signal is "xilinx.com:signal:data:1.0 DATA.SW_I DATA";
  attribute X_INTERFACE_PARAMETER of sw_i : signal is "XIL_INTERFACENAME DATA.SW_I, LAYERED_METADATA undef";
begin
  clk_i_1 <= clk_i;
  led_o(15 downto 0) <= neo430_top_0_gpio_o(15 downto 0);
  rst_n_i_1(0) <= rst_n_i(0);
  sw_i_1(15 downto 0) <= sw_i(15 downto 0);
  uart_rxd_i_1 <= uart_rxd_i;
  uart_txd_o <= neo430_top_0_uart_txd_o;
neo430_top_0: component SystemTop_neo430_top_0_0
     port map (
      clk_i => clk_i_1,
      ext_ack_o(7 downto 0) => NLW_neo430_top_0_ext_ack_o_UNCONNECTED(7 downto 0),
      ext_irq_i(7 downto 0) => xlconstant_2_dout(7 downto 0),
      freq_gen_o(2 downto 0) => NLW_neo430_top_0_freq_gen_o_UNCONNECTED(2 downto 0),
      gpio_i(15 downto 0) => sw_i_1(15 downto 0),
      gpio_o(15 downto 0) => neo430_top_0_gpio_o(15 downto 0),
      pwm_o(3 downto 0) => NLW_neo430_top_0_pwm_o_UNCONNECTED(3 downto 0),
      rst_i => util_vector_logic_0_Res(0),
      spi_cs_o(5 downto 0) => NLW_neo430_top_0_spi_cs_o_UNCONNECTED(5 downto 0),
      spi_miso_i => xlconstant_0_dout(0),
      spi_mosi_o => NLW_neo430_top_0_spi_mosi_o_UNCONNECTED,
      spi_sclk_o => NLW_neo430_top_0_spi_sclk_o_UNCONNECTED,
      twi_scl_io => NLW_neo430_top_0_twi_scl_io_UNCONNECTED,
      twi_sda_io => NLW_neo430_top_0_twi_sda_io_UNCONNECTED,
      uart_rxd_i => uart_rxd_i_1,
      uart_txd_o => neo430_top_0_uart_txd_o,
      wb_ack_i => xlconstant_0_dout(0),
      wb_adr_o(31 downto 0) => NLW_neo430_top_0_wb_adr_o_UNCONNECTED(31 downto 0),
      wb_cyc_o => NLW_neo430_top_0_wb_cyc_o_UNCONNECTED,
      wb_dat_i(31 downto 0) => xlconstant_1_dout(31 downto 0),
      wb_dat_o(31 downto 0) => NLW_neo430_top_0_wb_dat_o_UNCONNECTED(31 downto 0),
      wb_sel_o(3 downto 0) => NLW_neo430_top_0_wb_sel_o_UNCONNECTED(3 downto 0),
      wb_stb_o => NLW_neo430_top_0_wb_stb_o_UNCONNECTED,
      wb_we_o => NLW_neo430_top_0_wb_we_o_UNCONNECTED
    );
util_vector_logic_0: component SystemTop_util_vector_logic_0_0
     port map (
      Op1(0) => rst_n_i_1(0),
      Res(0) => util_vector_logic_0_Res(0)
    );
xlconstant_0: component SystemTop_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component SystemTop_xlconstant_1_0
     port map (
      dout(31 downto 0) => xlconstant_1_dout(31 downto 0)
    );
xlconstant_2: component SystemTop_xlconstant_2_0
     port map (
      dout(7 downto 0) => xlconstant_2_dout(7 downto 0)
    );
end STRUCTURE;
