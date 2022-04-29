--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Fri Apr 29 12:49:23 2022
--Host        : Laptop-G5-5590 running 64-bit major release  (build 9200)
--Command     : generate_target SystemTop_wrapper.bd
--Design      : SystemTop_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_wrapper is
  port (
    clk_i : in STD_LOGIC;
    led_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_n_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    sw_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    uart_rxd_i : in STD_LOGIC;
    uart_txd_o : out STD_LOGIC
  );
end SystemTop_wrapper;

architecture STRUCTURE of SystemTop_wrapper is
  component SystemTop is
  port (
    clk_i : in STD_LOGIC;
    rst_n_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    sw_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    uart_rxd_i : in STD_LOGIC;
    uart_txd_o : out STD_LOGIC;
    led_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component SystemTop;
begin
SystemTop_i: component SystemTop
     port map (
      clk_i => clk_i,
      led_o(15 downto 0) => led_o(15 downto 0),
      rst_n_i(0) => rst_n_i(0),
      sw_i(15 downto 0) => sw_i(15 downto 0),
      uart_rxd_i => uart_rxd_i,
      uart_txd_o => uart_txd_o
    );
end STRUCTURE;
