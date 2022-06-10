-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Mon Jun  6 14:28:06 2022
-- Host        : Laptop-G5-5590 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Projekty/LabZSC/WEL21ET1S4/pawel_dabal/Lab-1/ProjektVivado/Neo430First/Neo430First.gen/sources_1/bd/SystemTop/SystemTop_sim_netlist.vhdl
-- Design      : SystemTop
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_counter_up is
  port (
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    en_i : in STD_LOGIC;
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \register_sr_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \register_sr_reg[5]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \register_sr_reg[5]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_counter_up : entity is "counter_up";
end SystemTop_counter_up;

architecture STRUCTURE of SystemTop_counter_up is
  signal counter_sr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \counter_sr[1]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \register_sr[6]_i_2_n_0\ : STD_LOGIC;
  signal \register_sr[6]_i_3_n_0\ : STD_LOGIC;
  signal \register_sr[6]_i_4_n_0\ : STD_LOGIC;
  signal \register_sr[6]_i_5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_sr[0]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \counter_sr[1]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \register_sr[0]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \register_sr[1]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \register_sr[2]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \register_sr[3]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \register_sr[4]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \register_sr[6]_i_1\ : label is "soft_lutpair127";
begin
\counter_sr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_sr(0),
      O => p_0_in(0)
    );
\counter_sr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter_sr(1),
      I1 => counter_sr(0),
      O => \counter_sr[1]_i_1_n_0\
    );
\counter_sr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => p_0_in(0),
      Q => counter_sr(0)
    );
\counter_sr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => \counter_sr[1]_i_1_n_0\,
      Q => counter_sr(1)
    );
\register_sr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"209C"
    )
        port map (
      I0 => \register_sr[6]_i_5_n_0\,
      I1 => \register_sr[6]_i_3_n_0\,
      I2 => \register_sr[6]_i_4_n_0\,
      I3 => \register_sr[6]_i_2_n_0\,
      O => D(0)
    );
\register_sr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => \register_sr[6]_i_5_n_0\,
      I1 => \register_sr[6]_i_3_n_0\,
      I2 => \register_sr[6]_i_2_n_0\,
      I3 => \register_sr[6]_i_4_n_0\,
      O => D(1)
    );
\register_sr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => \register_sr[6]_i_5_n_0\,
      I1 => \register_sr[6]_i_4_n_0\,
      I2 => \register_sr[6]_i_2_n_0\,
      I3 => \register_sr[6]_i_3_n_0\,
      O => D(2)
    );
\register_sr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => \register_sr[6]_i_5_n_0\,
      I1 => \register_sr[6]_i_3_n_0\,
      I2 => \register_sr[6]_i_4_n_0\,
      I3 => \register_sr[6]_i_2_n_0\,
      O => D(3)
    );
\register_sr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \register_sr[6]_i_5_n_0\,
      I1 => \register_sr[6]_i_2_n_0\,
      I2 => \register_sr[6]_i_3_n_0\,
      I3 => \register_sr[6]_i_4_n_0\,
      O => D(4)
    );
\register_sr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5918"
    )
        port map (
      I0 => \register_sr[6]_i_5_n_0\,
      I1 => \register_sr[6]_i_3_n_0\,
      I2 => \register_sr[6]_i_2_n_0\,
      I3 => \register_sr[6]_i_4_n_0\,
      O => D(5)
    );
\register_sr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0091"
    )
        port map (
      I0 => \register_sr[6]_i_2_n_0\,
      I1 => \register_sr[6]_i_3_n_0\,
      I2 => \register_sr[6]_i_4_n_0\,
      I3 => \register_sr[6]_i_5_n_0\,
      O => D(6)
    );
\register_sr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => Q(1),
      I1 => \register_sr_reg[5]\(1),
      I2 => \register_sr_reg[5]_0\(1),
      I3 => counter_sr(0),
      I4 => counter_sr(1),
      I5 => \register_sr_reg[5]_1\(1),
      O => \register_sr[6]_i_2_n_0\
    );
\register_sr[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => Q(2),
      I1 => \register_sr_reg[5]\(2),
      I2 => \register_sr_reg[5]_0\(2),
      I3 => counter_sr(0),
      I4 => counter_sr(1),
      I5 => \register_sr_reg[5]_1\(2),
      O => \register_sr[6]_i_3_n_0\
    );
\register_sr[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => Q(0),
      I1 => \register_sr_reg[5]\(0),
      I2 => \register_sr_reg[5]_0\(0),
      I3 => counter_sr(0),
      I4 => counter_sr(1),
      I5 => \register_sr_reg[5]_1\(0),
      O => \register_sr[6]_i_4_n_0\
    );
\register_sr[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => Q(3),
      I1 => \register_sr_reg[5]\(3),
      I2 => \register_sr_reg[5]_0\(3),
      I3 => counter_sr(0),
      I4 => counter_sr(1),
      I5 => \register_sr_reg[5]_1\(3),
      O => \register_sr[6]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_led_dimmer_0_0 is
  port (
    led_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    led_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm_i : in STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SystemTop_led_dimmer_0_0 : entity is "SystemTop_led_dimmer_0_0,led_dimmer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SystemTop_led_dimmer_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of SystemTop_led_dimmer_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of SystemTop_led_dimmer_0_0 : entity is "led_dimmer,Vivado 2021.2";
end SystemTop_led_dimmer_0_0;

architecture STRUCTURE of SystemTop_led_dimmer_0_0 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led_o[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_o[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \led_o[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \led_o[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \led_o[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \led_o[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \led_o[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \led_o[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_o[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_o[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_o[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_o[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_o[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led_o[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led_o[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \led_o[9]_INST_0\ : label is "soft_lutpair4";
begin
\led_o[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(0),
      I1 => pwm_i,
      O => led_o(0)
    );
\led_o[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(10),
      I1 => pwm_i,
      O => led_o(10)
    );
\led_o[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(11),
      I1 => pwm_i,
      O => led_o(11)
    );
\led_o[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(12),
      I1 => pwm_i,
      O => led_o(12)
    );
\led_o[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(13),
      I1 => pwm_i,
      O => led_o(13)
    );
\led_o[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(14),
      I1 => pwm_i,
      O => led_o(14)
    );
\led_o[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(15),
      I1 => pwm_i,
      O => led_o(15)
    );
\led_o[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(1),
      I1 => pwm_i,
      O => led_o(1)
    );
\led_o[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(2),
      I1 => pwm_i,
      O => led_o(2)
    );
\led_o[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(3),
      I1 => pwm_i,
      O => led_o(3)
    );
\led_o[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(4),
      I1 => pwm_i,
      O => led_o(4)
    );
\led_o[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(5),
      I1 => pwm_i,
      O => led_o(5)
    );
\led_o[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(6),
      I1 => pwm_i,
      O => led_o(6)
    );
\led_o[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(7),
      I1 => pwm_i,
      O => led_o(7)
    );
\led_o[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(8),
      I1 => pwm_i,
      O => led_o(8)
    );
\led_o[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => led_i(9),
      I1 => pwm_i,
      O => led_o(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_addr_gen is
  port (
    addr_add : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_i : in STD_LOGIC_VECTOR ( 14 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_file_reg_0_15_4_4_i_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_file_reg_0_15_8_8_i_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_file_reg_0_15_12_12_i_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem_addr_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem_addr_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_addr_reg_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem_addr_reg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_addr_reg_reg[15]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem_addr_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_neo430_addr_gen : entity is "neo430_addr_gen";
end SystemTop_neo430_addr_gen;

architecture STRUCTURE of SystemTop_neo430_addr_gen is
  signal \_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_4\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_5\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_4\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_5\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_7\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_4\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_5\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_7\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_7\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__0_n_0\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__0_n_1\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__0_n_2\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__0_n_3\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__1_n_0\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__1_n_1\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__1_n_2\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__1_n_3\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__2_n_1\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__2_n_2\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__2_n_3\ : STD_LOGIC;
  signal mem_addr_reg0_carry_n_0 : STD_LOGIC;
  signal mem_addr_reg0_carry_n_1 : STD_LOGIC;
  signal mem_addr_reg0_carry_n_2 : STD_LOGIC;
  signal mem_addr_reg0_carry_n_3 : STD_LOGIC;
  signal \NLW__inferred__1/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_mem_addr_reg0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of mem_addr_reg0_carry : label is 35;
  attribute ADDER_THRESHOLD of \mem_addr_reg0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \mem_addr_reg0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \mem_addr_reg0_carry__2\ : label is 35;
begin
\_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__1/i__carry_n_0\,
      CO(2) => \_inferred__1/i__carry_n_1\,
      CO(1) => \_inferred__1/i__carry_n_2\,
      CO(0) => \_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => reg_i(3 downto 0),
      O(3) => \_inferred__1/i__carry_n_4\,
      O(2) => \_inferred__1/i__carry_n_5\,
      O(1) => \_inferred__1/i__carry_n_6\,
      O(0) => \_inferred__1/i__carry_n_7\,
      S(3 downto 0) => \mem_addr_reg_reg[3]_0\(3 downto 0)
    );
\_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry_n_0\,
      CO(3) => \_inferred__1/i__carry__0_n_0\,
      CO(2) => \_inferred__1/i__carry__0_n_1\,
      CO(1) => \_inferred__1/i__carry__0_n_2\,
      CO(0) => \_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => reg_i(7 downto 4),
      O(3) => \_inferred__1/i__carry__0_n_4\,
      O(2) => \_inferred__1/i__carry__0_n_5\,
      O(1) => \_inferred__1/i__carry__0_n_6\,
      O(0) => \_inferred__1/i__carry__0_n_7\,
      S(3 downto 0) => \mem_addr_reg_reg[7]_0\(3 downto 0)
    );
\_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry__0_n_0\,
      CO(3) => \_inferred__1/i__carry__1_n_0\,
      CO(2) => \_inferred__1/i__carry__1_n_1\,
      CO(1) => \_inferred__1/i__carry__1_n_2\,
      CO(0) => \_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => DI(1 downto 0),
      DI(1 downto 0) => reg_i(9 downto 8),
      O(3) => \_inferred__1/i__carry__1_n_4\,
      O(2) => \_inferred__1/i__carry__1_n_5\,
      O(1) => \_inferred__1/i__carry__1_n_6\,
      O(0) => \_inferred__1/i__carry__1_n_7\,
      S(3 downto 0) => \mem_addr_reg_reg[11]_0\(3 downto 0)
    );
\_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry__1_n_0\,
      CO(3) => \NLW__inferred__1/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__1/i__carry__2_n_1\,
      CO(1) => \_inferred__1/i__carry__2_n_2\,
      CO(0) => \_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => reg_i(14),
      DI(1 downto 0) => \mem_addr_reg_reg[15]_0\(1 downto 0),
      O(3) => \_inferred__1/i__carry__2_n_4\,
      O(2) => \_inferred__1/i__carry__2_n_5\,
      O(1) => \_inferred__1/i__carry__2_n_6\,
      O(0) => \_inferred__1/i__carry__2_n_7\,
      S(3 downto 0) => \mem_addr_reg_reg[15]_1\(3 downto 0)
    );
mem_addr_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => mem_addr_reg0_carry_n_0,
      CO(2) => mem_addr_reg0_carry_n_1,
      CO(1) => mem_addr_reg0_carry_n_2,
      CO(0) => mem_addr_reg0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => reg_i(3 downto 0),
      O(3 downto 0) => addr_add(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\mem_addr_reg0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => mem_addr_reg0_carry_n_0,
      CO(3) => \mem_addr_reg0_carry__0_n_0\,
      CO(2) => \mem_addr_reg0_carry__0_n_1\,
      CO(1) => \mem_addr_reg0_carry__0_n_2\,
      CO(0) => \mem_addr_reg0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => reg_i(7 downto 4),
      O(3 downto 0) => addr_add(7 downto 4),
      S(3 downto 0) => reg_file_reg_0_15_4_4_i_1(3 downto 0)
    );
\mem_addr_reg0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_addr_reg0_carry__0_n_0\,
      CO(3) => \mem_addr_reg0_carry__1_n_0\,
      CO(2) => \mem_addr_reg0_carry__1_n_1\,
      CO(1) => \mem_addr_reg0_carry__1_n_2\,
      CO(0) => \mem_addr_reg0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => reg_i(11 downto 8),
      O(3 downto 0) => addr_add(11 downto 8),
      S(3 downto 0) => reg_file_reg_0_15_8_8_i_1(3 downto 0)
    );
\mem_addr_reg0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_addr_reg0_carry__1_n_0\,
      CO(3) => \NLW_mem_addr_reg0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \mem_addr_reg0_carry__2_n_1\,
      CO(1) => \mem_addr_reg0_carry__2_n_2\,
      CO(0) => \mem_addr_reg0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => reg_i(14 downto 12),
      O(3 downto 0) => addr_add(15 downto 12),
      S(3 downto 0) => reg_file_reg_0_15_12_12_i_1(3 downto 0)
    );
\mem_addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry_n_7\,
      Q => Q(0),
      R => '0'
    );
\mem_addr_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry__1_n_5\,
      Q => Q(10),
      R => '0'
    );
\mem_addr_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry__1_n_4\,
      Q => Q(11),
      R => '0'
    );
\mem_addr_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry__2_n_7\,
      Q => Q(12),
      R => '0'
    );
\mem_addr_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry__2_n_6\,
      Q => Q(13),
      R => '0'
    );
\mem_addr_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry__2_n_5\,
      Q => Q(14),
      R => '0'
    );
\mem_addr_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry__2_n_4\,
      Q => Q(15),
      R => '0'
    );
\mem_addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry_n_6\,
      Q => Q(1),
      R => '0'
    );
\mem_addr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry_n_5\,
      Q => Q(2),
      R => '0'
    );
\mem_addr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry_n_4\,
      Q => Q(3),
      R => '0'
    );
\mem_addr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry__0_n_7\,
      Q => Q(4),
      R => '0'
    );
\mem_addr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry__0_n_6\,
      Q => Q(5),
      R => '0'
    );
\mem_addr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry__0_n_5\,
      Q => Q(6),
      R => '0'
    );
\mem_addr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry__0_n_4\,
      Q => Q(7),
      R => '0'
    );
\mem_addr_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry__1_n_7\,
      Q => Q(8),
      R => '0'
    );
\mem_addr_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \mem_addr_reg_reg[0]_0\(0),
      D => \_inferred__1/i__carry__1_n_6\,
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_alu is
  port (
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \op_b_ff_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \op_b_ff_reg[15]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \op_a_ff_reg[7]_0\ : out STD_LOGIC;
    \op_a_ff_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \op_b_ff_reg[11]_0\ : out STD_LOGIC;
    \op_a_ff_reg[7]_1\ : out STD_LOGIC;
    \op_a_ff_reg[7]_2\ : out STD_LOGIC;
    \op_a_ff_reg[9]_0\ : out STD_LOGIC;
    \op_a_ff_reg[2]_0\ : out STD_LOGIC;
    \op_a_ff_reg[11]_0\ : out STD_LOGIC;
    \op_a_ff_reg[4]_0\ : out STD_LOGIC;
    \op_a_ff_reg[13]_0\ : out STD_LOGIC;
    \op_a_ff_reg[6]_0\ : out STD_LOGIC;
    \op_a_ff_reg[7]_3\ : out STD_LOGIC;
    \op_a_ff_reg[1]_0\ : out STD_LOGIC;
    \op_a_ff_reg[0]_0\ : out STD_LOGIC;
    \op_a_ff_reg[1]_1\ : out STD_LOGIC;
    \ctrl_reg[18]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ctrl_reg[18]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    reg_file_reg_0_15_12_12_i_5_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    op_a_v1 : in STD_LOGIC;
    \sreg[8]_i_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ctrl_bus : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_i : in STD_LOGIC;
    reg_file_reg_0_15_0_0_i_3 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_neo430_alu : entity is "neo430_alu";
end SystemTop_neo430_alu;

architecture STRUCTURE of SystemTop_neo430_alu is
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^op_a_ff_reg[15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^op_b_ff_reg[15]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reg_file_reg_0_15_12_12_i_10_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_12_12_i_5_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_12_12_i_5_n_1 : STD_LOGIC;
  signal reg_file_reg_0_15_12_12_i_5_n_2 : STD_LOGIC;
  signal reg_file_reg_0_15_12_12_i_5_n_3 : STD_LOGIC;
  signal reg_file_reg_0_15_12_12_i_8_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_12_12_i_9_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_8_8_i_10_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_8_8_i_5_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_8_8_i_5_n_1 : STD_LOGIC;
  signal reg_file_reg_0_15_8_8_i_5_n_2 : STD_LOGIC;
  signal reg_file_reg_0_15_8_8_i_5_n_3 : STD_LOGIC;
  signal reg_file_reg_0_15_8_8_i_7_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_8_8_i_8_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_8_8_i_9_n_0 : STD_LOGIC;
  signal \sreg[8]_i_9_n_0\ : STD_LOGIC;
  signal \NLW_sreg_reg[0]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sreg_reg[0]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of reg_file_reg_0_15_7_7_i_4 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sreg[8]_i_7\ : label is "soft_lutpair8";
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
  \op_a_ff_reg[15]_0\(15 downto 0) <= \^op_a_ff_reg[15]_0\(15 downto 0);
  \op_b_ff_reg[15]_0\(3 downto 0) <= \^op_b_ff_reg[15]_0\(3 downto 0);
\op_a_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(0),
      Q => \^op_a_ff_reg[15]_0\(0),
      R => '0'
    );
\op_a_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(10),
      Q => \^op_a_ff_reg[15]_0\(10),
      R => '0'
    );
\op_a_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(11),
      Q => \^op_a_ff_reg[15]_0\(11),
      R => '0'
    );
\op_a_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(12),
      Q => \^op_a_ff_reg[15]_0\(12),
      R => '0'
    );
\op_a_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(13),
      Q => \^op_a_ff_reg[15]_0\(13),
      R => '0'
    );
\op_a_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(14),
      Q => \^op_a_ff_reg[15]_0\(14),
      R => '0'
    );
\op_a_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(15),
      Q => \^op_a_ff_reg[15]_0\(15),
      R => '0'
    );
\op_a_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(1),
      Q => \^op_a_ff_reg[15]_0\(1),
      R => '0'
    );
\op_a_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(2),
      Q => \^op_a_ff_reg[15]_0\(2),
      R => '0'
    );
\op_a_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(3),
      Q => \^op_a_ff_reg[15]_0\(3),
      R => '0'
    );
\op_a_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(4),
      Q => \^op_a_ff_reg[15]_0\(4),
      R => '0'
    );
\op_a_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(5),
      Q => \^op_a_ff_reg[15]_0\(5),
      R => '0'
    );
\op_a_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(6),
      Q => \^op_a_ff_reg[15]_0\(6),
      R => '0'
    );
\op_a_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(7),
      Q => \^op_a_ff_reg[15]_0\(7),
      R => '0'
    );
\op_a_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(8),
      Q => \^op_a_ff_reg[15]_0\(8),
      R => '0'
    );
\op_a_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(0),
      D => D(9),
      Q => \^op_a_ff_reg[15]_0\(9),
      R => '0'
    );
\op_b_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(0),
      Q => \^q\(0),
      R => '0'
    );
\op_b_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(10),
      Q => \^q\(10),
      R => '0'
    );
\op_b_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(11),
      Q => \^q\(11),
      R => '0'
    );
\op_b_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(12),
      Q => \^q\(12),
      R => '0'
    );
\op_b_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(13),
      Q => \^q\(13),
      R => '0'
    );
\op_b_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(14),
      Q => \^q\(14),
      R => '0'
    );
\op_b_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(15),
      Q => \^q\(15),
      R => '0'
    );
\op_b_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(1),
      Q => \^q\(1),
      R => '0'
    );
\op_b_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(2),
      Q => \^q\(2),
      R => '0'
    );
\op_b_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(3),
      Q => \^q\(3),
      R => '0'
    );
\op_b_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(4),
      Q => \^q\(4),
      R => '0'
    );
\op_b_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(5),
      Q => \^q\(5),
      R => '0'
    );
\op_b_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(6),
      Q => \^q\(6),
      R => '0'
    );
\op_b_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(7),
      Q => \^q\(7),
      R => '0'
    );
\op_b_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(8),
      Q => \^q\(8),
      R => '0'
    );
\op_b_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => reg_file_reg_0_15_12_12_i_5_0(1),
      D => D(9),
      Q => \^q\(9),
      R => '0'
    );
reg_file_reg_0_15_0_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF04400440FBBF"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_5_0(5),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(3),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      I4 => \^op_a_ff_reg[15]_0\(3),
      I5 => \^q\(3),
      O => \ctrl_reg[18]\(3)
    );
reg_file_reg_0_15_0_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF04400440FBBF"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_5_0(5),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(3),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      I4 => \^op_a_ff_reg[15]_0\(2),
      I5 => \^q\(2),
      O => \ctrl_reg[18]\(2)
    );
reg_file_reg_0_15_0_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF04400440FBBF"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_5_0(5),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(3),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      I4 => \^op_a_ff_reg[15]_0\(1),
      I5 => \^q\(1),
      O => \ctrl_reg[18]\(1)
    );
reg_file_reg_0_15_0_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA9AAA9AAAAAAA"
    )
        port map (
      I0 => \^op_a_ff_reg[15]_0\(0),
      I1 => reg_file_reg_0_15_12_12_i_5_0(5),
      I2 => reg_file_reg_0_15_12_12_i_5_0(4),
      I3 => reg_file_reg_0_15_12_12_i_5_0(3),
      I4 => reg_file_reg_0_15_0_0_i_3(0),
      I5 => reg_file_reg_0_15_12_12_i_5_0(2),
      O => \ctrl_reg[18]\(0)
    );
reg_file_reg_0_15_0_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \^op_a_ff_reg[15]_0\(1),
      I1 => reg_file_reg_0_15_12_12_i_5_0(2),
      I2 => \^op_a_ff_reg[15]_0\(8),
      I3 => reg_file_reg_0_15_12_12_i_5_0(3),
      I4 => \^op_a_ff_reg[15]_0\(0),
      I5 => reg_file_reg_0_15_12_12_i_5_0(4),
      O => \op_a_ff_reg[1]_1\
    );
reg_file_reg_0_15_0_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^op_a_ff_reg[15]_0\(0),
      I1 => \^q\(0),
      O => \op_a_ff_reg[0]_0\
    );
reg_file_reg_0_15_11_11_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B24A"
    )
        port map (
      I0 => \^q\(11),
      I1 => reg_file_reg_0_15_12_12_i_5_0(3),
      I2 => \^op_a_ff_reg[15]_0\(11),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      O => \op_b_ff_reg[11]_0\
    );
reg_file_reg_0_15_12_12_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF04400440FBBF"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_5_0(5),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(3),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      I4 => \^op_a_ff_reg[15]_0\(12),
      I5 => \^q\(12),
      O => reg_file_reg_0_15_12_12_i_10_n_0
    );
reg_file_reg_0_15_12_12_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => reg_file_reg_0_15_8_8_i_5_n_0,
      CO(3) => reg_file_reg_0_15_12_12_i_5_n_0,
      CO(2) => reg_file_reg_0_15_12_12_i_5_n_1,
      CO(1) => reg_file_reg_0_15_12_12_i_5_n_2,
      CO(0) => reg_file_reg_0_15_12_12_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(15 downto 12),
      O(3 downto 0) => \^op_b_ff_reg[15]_0\(3 downto 0),
      S(3) => S(0),
      S(2) => reg_file_reg_0_15_12_12_i_8_n_0,
      S(1) => reg_file_reg_0_15_12_12_i_9_n_0,
      S(0) => reg_file_reg_0_15_12_12_i_10_n_0
    );
reg_file_reg_0_15_12_12_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF04400440FBBF"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_5_0(5),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(3),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      I4 => \^op_a_ff_reg[15]_0\(14),
      I5 => \^q\(14),
      O => reg_file_reg_0_15_12_12_i_8_n_0
    );
reg_file_reg_0_15_12_12_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF04400440FBBF"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_5_0(5),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(3),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      I4 => \^op_a_ff_reg[15]_0\(13),
      I5 => \^q\(13),
      O => reg_file_reg_0_15_12_12_i_9_n_0
    );
reg_file_reg_0_15_1_1_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^op_a_ff_reg[15]_0\(1),
      I1 => \^q\(1),
      O => \op_a_ff_reg[1]_0\
    );
reg_file_reg_0_15_1_1_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCCFCCEFECEFEC"
    )
        port map (
      I0 => \^op_a_ff_reg[15]_0\(9),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(2),
      I3 => \^op_a_ff_reg[15]_0\(2),
      I4 => \^op_a_ff_reg[15]_0\(1),
      I5 => reg_file_reg_0_15_12_12_i_5_0(3),
      O => \op_a_ff_reg[9]_0\
    );
reg_file_reg_0_15_2_2_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFECEFECFFFCCFCC"
    )
        port map (
      I0 => \^op_a_ff_reg[15]_0\(2),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(2),
      I3 => \^op_a_ff_reg[15]_0\(3),
      I4 => \^op_a_ff_reg[15]_0\(10),
      I5 => reg_file_reg_0_15_12_12_i_5_0(3),
      O => \op_a_ff_reg[2]_0\
    );
reg_file_reg_0_15_3_3_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCCFCCEFECEFEC"
    )
        port map (
      I0 => \^op_a_ff_reg[15]_0\(11),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(2),
      I3 => \^op_a_ff_reg[15]_0\(4),
      I4 => \^op_a_ff_reg[15]_0\(3),
      I5 => reg_file_reg_0_15_12_12_i_5_0(3),
      O => \op_a_ff_reg[11]_0\
    );
reg_file_reg_0_15_4_4_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAFCFFFFFA0C0"
    )
        port map (
      I0 => \^op_a_ff_reg[15]_0\(4),
      I1 => \^op_a_ff_reg[15]_0\(12),
      I2 => reg_file_reg_0_15_12_12_i_5_0(2),
      I3 => reg_file_reg_0_15_12_12_i_5_0(3),
      I4 => reg_file_reg_0_15_12_12_i_5_0(4),
      I5 => \^op_a_ff_reg[15]_0\(5),
      O => \op_a_ff_reg[4]_0\
    );
reg_file_reg_0_15_5_5_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCAFFFFFFCA00"
    )
        port map (
      I0 => \^op_a_ff_reg[15]_0\(13),
      I1 => \^op_a_ff_reg[15]_0\(5),
      I2 => reg_file_reg_0_15_12_12_i_5_0(3),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      I4 => reg_file_reg_0_15_12_12_i_5_0(4),
      I5 => \^op_a_ff_reg[15]_0\(6),
      O => \op_a_ff_reg[13]_0\
    );
reg_file_reg_0_15_6_6_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAFCFFFFFA0C0"
    )
        port map (
      I0 => \^op_a_ff_reg[15]_0\(6),
      I1 => \^op_a_ff_reg[15]_0\(14),
      I2 => reg_file_reg_0_15_12_12_i_5_0(2),
      I3 => reg_file_reg_0_15_12_12_i_5_0(3),
      I4 => reg_file_reg_0_15_12_12_i_5_0(4),
      I5 => \^op_a_ff_reg[15]_0\(7),
      O => \op_a_ff_reg[6]_0\
    );
reg_file_reg_0_15_7_7_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF04400440FBBF"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_5_0(5),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(3),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      I4 => \^op_a_ff_reg[15]_0\(4),
      I5 => \^q\(4),
      O => \ctrl_reg[18]_0\(0)
    );
reg_file_reg_0_15_7_7_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^op_a_ff_reg[15]_0\(7),
      I1 => \^q\(7),
      O => \op_a_ff_reg[7]_3\
    );
reg_file_reg_0_15_7_7_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E64"
    )
        port map (
      I0 => \^op_a_ff_reg[15]_0\(7),
      I1 => \^q\(7),
      I2 => reg_file_reg_0_15_12_12_i_5_0(3),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      O => \op_a_ff_reg[7]_0\
    );
reg_file_reg_0_15_7_7_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF04400440FBBF"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_5_0(5),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(3),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      I4 => \^op_a_ff_reg[15]_0\(6),
      I5 => \^q\(6),
      O => \ctrl_reg[18]_0\(2)
    );
reg_file_reg_0_15_7_7_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF04400440FBBF"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_5_0(5),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(3),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      I4 => \^op_a_ff_reg[15]_0\(5),
      I5 => \^q\(5),
      O => \ctrl_reg[18]_0\(1)
    );
reg_file_reg_0_15_8_8_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF04400440FBBF"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_5_0(5),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(3),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      I4 => \^op_a_ff_reg[15]_0\(8),
      I5 => CO(0),
      O => reg_file_reg_0_15_8_8_i_10_n_0
    );
reg_file_reg_0_15_8_8_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => reg_file_reg_0_15_8_8_i_5_n_0,
      CO(2) => reg_file_reg_0_15_8_8_i_5_n_1,
      CO(1) => reg_file_reg_0_15_8_8_i_5_n_2,
      CO(0) => reg_file_reg_0_15_8_8_i_5_n_3,
      CYINIT => \^q\(8),
      DI(3 downto 1) => \^q\(11 downto 9),
      DI(0) => CO(0),
      O(3 downto 0) => O(3 downto 0),
      S(3) => reg_file_reg_0_15_8_8_i_7_n_0,
      S(2) => reg_file_reg_0_15_8_8_i_8_n_0,
      S(1) => reg_file_reg_0_15_8_8_i_9_n_0,
      S(0) => reg_file_reg_0_15_8_8_i_10_n_0
    );
reg_file_reg_0_15_8_8_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF04400440FBBF"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_5_0(5),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(3),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      I4 => \^op_a_ff_reg[15]_0\(11),
      I5 => \^q\(11),
      O => reg_file_reg_0_15_8_8_i_7_n_0
    );
reg_file_reg_0_15_8_8_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF04400440FBBF"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_5_0(5),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(3),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      I4 => \^op_a_ff_reg[15]_0\(10),
      I5 => \^q\(10),
      O => reg_file_reg_0_15_8_8_i_8_n_0
    );
reg_file_reg_0_15_8_8_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF04400440FBBF"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_5_0(5),
      I1 => reg_file_reg_0_15_12_12_i_5_0(4),
      I2 => reg_file_reg_0_15_12_12_i_5_0(3),
      I3 => reg_file_reg_0_15_12_12_i_5_0(2),
      I4 => \^op_a_ff_reg[15]_0\(9),
      I5 => \^q\(9),
      O => reg_file_reg_0_15_8_8_i_9_n_0
    );
\sreg[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0690FFFF06900000"
    )
        port map (
      I0 => \^op_a_ff_reg[15]_0\(7),
      I1 => op_a_v1,
      I2 => \^q\(7),
      I3 => \sreg[8]_i_4\(0),
      I4 => ctrl_bus(0),
      I5 => \sreg[8]_i_9_n_0\,
      O => \op_a_ff_reg[7]_1\
    );
\sreg[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => \^op_a_ff_reg[15]_0\(7),
      I1 => \^q\(7),
      I2 => ctrl_bus(0),
      I3 => \^op_a_ff_reg[15]_0\(15),
      I4 => \^q\(15),
      O => \op_a_ff_reg[7]_2\
    );
\sreg[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0690"
    )
        port map (
      I0 => \^op_a_ff_reg[15]_0\(15),
      I1 => op_a_v1,
      I2 => \^q\(15),
      I3 => \^op_b_ff_reg[15]_0\(3),
      O => \sreg[8]_i_9_n_0\
    );
\sreg_reg[0]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => reg_file_reg_0_15_12_12_i_5_n_0,
      CO(3 downto 1) => \NLW_sreg_reg[0]_i_7_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \op_b_ff_reg[15]_1\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_sreg_reg[0]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_boot_rom is
  port (
    rden : out STD_LOGIC;
    DOADO : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rden_reg_0 : out STD_LOGIC;
    \rdata_reg__0_0\ : out STD_LOGIC;
    \rdata_reg__0_1\ : out STD_LOGIC;
    rden_reg_1 : out STD_LOGIC;
    rden_reg_2 : in STD_LOGIC;
    clk_i : in STD_LOGIC;
    \rdata_reg__0_2\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    timer_rdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    uart_rdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ir_reg[14]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rden_0 : in STD_LOGIC;
    rden_1 : in STD_LOGIC;
    rdata_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_neo430_boot_rom : entity is "neo430_boot_rom";
end SystemTop_neo430_boot_rom;

architecture STRUCTURE of SystemTop_neo430_boot_rom is
  signal rdata_reg_0 : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal \^rden\ : STD_LOGIC;
  signal \NLW_rdata_reg__0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_rdata_reg__0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_rdata_reg__0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \rdata_reg__0\ : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \rdata_reg__0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \rdata_reg__0\ : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \rdata_reg__0\ : label is "rdata";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \rdata_reg__0\ : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \rdata_reg__0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \rdata_reg__0\ : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of \rdata_reg__0\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \rdata_reg__0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \rdata_reg__0\ : label is 15;
begin
  rden <= \^rden\;
\ir[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rdata_reg_0(14),
      I1 => \^rden\,
      I2 => \ir_reg[14]\(1),
      I3 => rden_0,
      O => \rdata_reg__0_0\
    );
\ir[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \^rden\,
      I1 => rdata_reg_0(15),
      I2 => timer_rdata(1),
      I3 => uart_rdata(1),
      O => rden_reg_0
    );
\rdata_reg__0\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"413BF6AC12B0435CC0045392120B120C120D120E120F3DE2FFFA5211BFFE4031",
      INIT_01 => X"4A4CF5D812B0F72E403C4C4A4130F5D812B0F6F8403C1300413F413E413D413C",
      INIT_02 => X"128A0005407CF690403AFFA4D392120AF04C4030F6A612B0435C4302F62A12B0",
      INIT_03 => X"128A009E407CF690403AFFA4D392120A4130413A4A4CF68812B04C0A128A434C",
      INIT_04 => X"407C4130F68812B0F69012B0FFA4D3924130413A4A4CF68812B04C0A128A434C",
      INIT_05 => X"40304300400040323BFD930C4D2CFFA0403DF5D812B0F735403CF09012B000B9",
      INIT_06 => X"F6B812B000004D8100004C8E000A411E4F084E094C0A832112081209120AF0BC",
      INIT_07 => X"436E8231120AF6D64030532100004C89F6F212B00010407E412D4A0C00004C88",
      INIT_08 => X"0003407CF690403AFFA4D392F0C212B00006503E410E522F410F00004E81510E",
      INIT_09 => X"4A4CF68812B04C0A128A434C128A0002411C128A0004411C128A0006411C128A",
      INIT_0A => X"12894C4A1289F5C64039200B934E4D074C08120712081209120A4130413A5231",
      INIT_0B => X"40301289630D470D531C480C4C4A1289F0FA4039F6D44030F6BC12B04A4C4C4D",
      INIT_0C => X"93050100F035FFF242154C4600068031120412051206120712081209120AF160",
      INIT_0D => X"426D434C464EF1464037128DF742403C200F9306F5D8403DF03412B0435C2403",
      INIT_0E => X"4C0A1287426D436C464EF1B44030F755403CF1A44030436C2407CAFE903C1287",
      INIT_0F => X"4D0C5C0E4C0E430D4A0C100AC312281D9A0FFFF6421F4C041287426D426C464E",
      INIT_10 => X"9F0A100FC312200C00049981200F000298814349434800044C8100024E816D0C",
      INIT_11 => X"4F81622D490D0006503C480C464EF1A44030426CF1A44030427C241E94052819",
      INIT_12 => X"4030531A0000438C5A0C4A0CF20E4030412F6309532800004C88EC0512870000",
      INIT_13 => X"4E81510E436E4E4982311209120AF6CE403000065031F5D812B0F760403CF21E",
      INIT_14 => X"F690403AFFA4D392F09012B00006407CF0C212B00006503E410E522F410F0000",
      INIT_15 => X"403AF68812B0128A490C128A0002411C128A0004411C128A0006411C128A436C",
      INIT_16 => X"12B04E0C4E074D084C0A120712081209120AF6D84030523123FD934C128AF050",
      INIT_17 => X"120AF6D440301289630D480D531C4A0C474E1289480D4A0C4C4EF2724039F6B8",
      INIT_18 => X"F09012B00006407CF0C212B00006503E410E522F410F00004E81510E436E8231",
      INIT_19 => X"128A0002411C128A0004411C128A0006411C128A00D8407CF690403AFFA4D392",
      INIT_1A => X"12051206120712081209120A4130413A523123FD934C128AF050403AF68812B0",
      INIT_1B => X"F03412B02002934CF07012B0F2FE12B0426D434C1288F763403CF5D840381204",
      INIT_1C => X"950949044349128A426D436C450EFFF64215128A426D434CCAFE403EF2CE403A",
      INIT_1D => X"503C460C43074906EE04492EF6CE40301288F760403C128A426D426C440E2809",
      INIT_1E => X"4032F6C612B012051206120712081209120AF39E40305329128A622D470D0006",
      INIT_1F => X"435CFFA84382FF884382FFEE4382FFE84382FFE04382FF904382FFEC4382C000",
      INIT_20 => X"4382F66012B0436CF5D212B0F53212B0434D4B00403CC000F00A40B2F6A612B0",
      INIT_21 => X"F6B212B0C0044382FFB000FF40B2FFB44C82533C5C0C5C0C482CFFFE4038FFB0",
      INIT_22 => X"1289FFF4421C128AF795403C1289FFF0421CF6464039128AF767403CF5D8403A",
      INIT_23 => X"F7B0403C1289FFF6421C128AF7A7403C1289FFFC421C1289482C128AF79E403C",
      INIT_24 => X"F7C2403CF09012B000AB407C1289FFF2421C128AF7B9403C1289FFFA421C128A",
      INIT_25 => X"12B0128AF7EA403CF18212B0435C20080010903C4E2CFFA2403DC004403E128A",
      INIT_26 => X"128AF7EC403CF3544035F5B24036F5C640371288F02A403837F1930C4D2CF09E",
      INIT_27 => X"200300689079F4DA4030F0004030200400729079128AF7EA403C12864C491287",
      INIT_28 => X"40301285200300709079F4DA4030F18212B0434C200500759079F4DA40301288",
      INIT_29 => X"4C0EFFFE421BFFFC421A1209120AF4DA4030128AF7F4403C27CB00659079F4DA",
      INIT_2A => X"00FF407D00034079434A2C199E0A201B9B0928049F0B4F09434C6D0F4D0F5C0E",
      INIT_2B => X"1000D03DDC0D5D0D5D0D5D0D5D0D5D0D5D0D5D0D5A0D4A0DFFA0438228179C0D",
      INIT_2C => X"F6E412B0490D2008926A2402936AF54A4030531C7F0B8E0AF6D84030FFA04D82",
      INIT_2D => X"3BFD930D4E2DFFA0403E00FFF03CF5A04030100CC312F55C403000FFF03A535A",
      INIT_2E => X"120712081209120A4130FFA2421C413037FD930C4D2CFFA2403D4130FFA24C82",
      INIT_2F => X"4A4C1288474C2002000A903AF6D440302002930A496A000D4077F5B240384C09",
      INIT_30 => X"507C4130F5B212B00030503C28059C4D0009407D000FF07CF5EA403053191288",
      INIT_31 => X"494C128AF608403AF6E412B0426D490C4C491209120AF618403000FFF03C0057",
      INIT_32 => X"F6D84030128A494C128AF62A403AF6E412B0427D4C091209120AF6D84030128A",
      INIT_33 => X"D03C5C0C5C0C5C0C5C0C5C0C5C0C5C0C5C0C5C0C0000438DFFA4403D00FFF03C",
      INIT_34 => X"930C4E2CFFA4403E00004C8DFFA6403D4130FFA4FFC0F0B2413000004C8D0040",
      INIT_35 => X"4D4C4C4E4130108C41304303D2324130FFACEC824130FFAC4C8241304D2C3BFD",
      INIT_36 => X"533D4130413A4139413841374136413541344130FFB8470040B24130DE0C108E",
      INIT_37 => X"3A680A3A73444D43413023FA930E100C100DC312533E413023FB930D100CC312",
      INIT_38 => X"7250203A700A64616F6C7055203A750A74726174736552203A720A706C654820",
      INIT_39 => X"0A2E2E2E676E69746F6F42005F5252450A070065747563657845203A650A676F",
      INIT_3A => X"002E2E2E676E6964616F4C002E2E2E4558454E494220676E697469617741000A",
      INIT_3B => X"3A564C420A0A726564616F6C746F6F42203033344F454E0A0A002E2E2E004B4F",
      INIT_3C => X"430A007830203A5253550A007830203A5657480A303230322033312079614D20",
      INIT_3D => X"30203A5359530A007830203A4D41520A007830203A4D4F520A007830203A4B4C",
      INIT_3E => X"6F742079656B207373657250202E7334206E6920746F6F626F7475410A0A0078",
      INIT_3F => X"0000000000444D432064614200203E3A444D430A000A000A0A2E74726F626120",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 4) => ADDRARDADDR(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk_i,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 12) => rdata_reg_0(15 downto 12),
      DOADO(11 downto 0) => DOADO(11 downto 0),
      DOBDO(15 downto 0) => \NLW_rdata_reg__0_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_rdata_reg__0_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_rdata_reg__0_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => \rdata_reg__0_2\,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
rden_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => rden_reg_2,
      Q => \^rden\,
      R => '0'
    );
\src[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => rdata_reg_0(13),
      I1 => \^rden\,
      I2 => timer_rdata(0),
      I3 => uart_rdata(0),
      O => \rdata_reg__0_1\
    );
\src[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^rden\,
      I1 => rdata_reg_0(12),
      I2 => rden_1,
      I3 => rdata_reg(0),
      I4 => \ir_reg[14]\(0),
      I5 => rden_0,
      O => rden_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_control is
  port (
    \ctrl_reg[19]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[21]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ctrl_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ctrl_reg[12]_0\ : out STD_LOGIC;
    \mem_addr_reg_reg[1]\ : out STD_LOGIC;
    \ctrl_reg[9]_0\ : out STD_LOGIC;
    \ctrl_reg[8]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \ctrl_reg[25]_0\ : out STD_LOGIC;
    \ctrl_reg[25]_1\ : out STD_LOGIC;
    \ctrl_reg[25]_2\ : out STD_LOGIC;
    \ctrl_reg[28]_0\ : out STD_LOGIC;
    \ctrl_reg[21]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ctrl_reg[23]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ctrl_reg[3]_0\ : out STD_LOGIC;
    \ctrl_reg[1]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ctrl_reg[1]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_addr_reg_reg[11]\ : out STD_LOGIC;
    \ctrl_reg[26]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \ctrl_reg[22]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ctrl_reg[23]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ctrl_reg[22]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_state_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    dio_swap_reg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \mem_addr_reg_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_addr_reg_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \din_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \pwm_ch_reg[1][7]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \mem_addr_reg_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_addr_reg_reg[2]_2\ : out STD_LOGIC;
    \mem_addr_reg_reg[2]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    cnt_reg_15_sp_1 : out STD_LOGIC;
    cnt_reg_14_sp_1 : out STD_LOGIC;
    cnt_reg_13_sp_1 : out STD_LOGIC;
    cnt_reg_12_sp_1 : out STD_LOGIC;
    cnt_reg_11_sp_1 : out STD_LOGIC;
    cnt_reg_10_sp_1 : out STD_LOGIC;
    cnt_reg_9_sp_1 : out STD_LOGIC;
    cnt_reg_8_sp_1 : out STD_LOGIC;
    cnt_reg_7_sp_1 : out STD_LOGIC;
    \ctrl_reg[6]_0\ : out STD_LOGIC;
    \ctrl_reg[5]_0\ : out STD_LOGIC;
    \ctrl_reg[4]_0\ : out STD_LOGIC;
    \ctrl_reg[3]_1\ : out STD_LOGIC;
    \ctrl_reg[2]_0\ : out STD_LOGIC;
    \ctrl_reg[1]_2\ : out STD_LOGIC;
    \ctrl_reg[0]_0\ : out STD_LOGIC;
    \mem_addr_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_addr_reg_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[27]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[27]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[27]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[28]_1\ : out STD_LOGIC;
    \mem_addr_reg_reg[15]\ : out STD_LOGIC;
    reg_i : out STD_LOGIC_VECTOR ( 14 downto 0 );
    dio_swap_reg_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \mem_addr_reg_reg[11]_0\ : out STD_LOGIC;
    \ctrl_reg[28]_2\ : out STD_LOGIC;
    \op_b_ff_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    dio_swap_reg_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    in_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \ctrl_reg[1]_3\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    op_a_v1 : out STD_LOGIC;
    \irq_buf_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[12]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[25]_3\ : out STD_LOGIC;
    uart_tx_busy0 : out STD_LOGIC;
    \cpu_bus[addr]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \ctrl_reg[28]_3\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[28]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[25]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    acc_en : out STD_LOGIC;
    acc_en_0 : out STD_LOGIC;
    \cpu_bus[wr_en]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dio_swap0 : out STD_LOGIC;
    clk_i : in STD_LOGIC;
    sreg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_file_reg_0_15_7_7_i_11_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \op_b_ff_reg[1]\ : in STD_LOGIC;
    \uart_tx_sreg_reg[7]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    mem_addr_reg0_carry : in STD_LOGIC;
    \op_b_ff_reg[5]\ : in STD_LOGIC;
    data_o0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \op_b_ff_reg[6]\ : in STD_LOGIC;
    \mem_addr_reg_reg[7]\ : in STD_LOGIC;
    \op_b_ff_reg[9]\ : in STD_LOGIC;
    \op_b_ff_reg[7]_0\ : in STD_LOGIC;
    imem_file_ram_l_reg_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \op_b_ff_reg[12]\ : in STD_LOGIC;
    \mem_addr_reg0_carry__2\ : in STD_LOGIC;
    \am_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ctrl_reg[17]_0\ : in STD_LOGIC;
    \uart_tx_sreg_reg[1]\ : in STD_LOGIC;
    \uart_tx_sreg_reg[6]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \uart_tx_sreg_reg[1]_0\ : in STD_LOGIC;
    \uart_tx_sreg_reg[7]_0\ : in STD_LOGIC;
    \data_o_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_o_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    p_1_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_o_reg[15]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_o_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cnt_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_o_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \op_b_ff_reg[15]\ : in STD_LOGIC;
    mem_data_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \ctrl_reg[17]_1\ : in STD_LOGIC;
    \op_b_ff_reg[4]\ : in STD_LOGIC;
    \sam_reg[1]_0\ : in STD_LOGIC;
    \op_b_ff_reg[14]\ : in STD_LOGIC;
    \op_b_ff_reg[4]_0\ : in STD_LOGIC;
    \op_b_ff_reg[3]\ : in STD_LOGIC;
    \mem_addr_reg_reg[11]_1\ : in STD_LOGIC;
    \i__carry__1_i_5_0\ : in STD_LOGIC;
    \i__carry__1_i_5_1\ : in STD_LOGIC;
    \op_b_ff_reg[0]\ : in STD_LOGIC;
    \op_b_ff_reg[0]_0\ : in STD_LOGIC;
    reg_file_reg_0_15_0_0_i_2_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_file_reg_0_15_4_4_i_5_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    addr_add : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \irq_buf_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ctrl_reg[7]_1\ : in STD_LOGIC;
    \ctrl_reg[7]_2\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_file_reg_0_15_15_15_i_2_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sreg_reg[8]\ : in STD_LOGIC;
    \sreg_reg[8]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    \sreg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \uart_tx_sreg_reg[7]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_1\ : in STD_LOGIC;
    \op_b_ff_reg[2]\ : in STD_LOGIC;
    \op_b_ff_reg[8]\ : in STD_LOGIC;
    \op_b_ff_reg[10]\ : in STD_LOGIC;
    \op_b_ff_reg[11]\ : in STD_LOGIC;
    \op_b_ff_reg[13]\ : in STD_LOGIC;
    imem_up_en : in STD_LOGIC;
    bw_ff : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[3]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[3]_2\ : in STD_LOGIC;
    \FSM_sequential_state_reg[3]_3\ : in STD_LOGIC;
    \FSM_sequential_state_reg[4]_0\ : in STD_LOGIC;
    \ctrl_reg[17]_2\ : in STD_LOGIC;
    \ctrl_reg[15]_0\ : in STD_LOGIC;
    \ctrl_reg[16]_0\ : in STD_LOGIC;
    \ctrl_reg[8]_1\ : in STD_LOGIC;
    \irq_buf_reg[1]_2\ : in STD_LOGIC;
    irq_fire_ff : in STD_LOGIC;
    p_2_in3_in : in STD_LOGIC;
    irq_o : in STD_LOGIC;
    \uart_tx_sreg_reg[1]_1\ : in STD_LOGIC;
    reg_file_reg_0_15_0_0_i_2_1 : in STD_LOGIC;
    \uart_tx_sreg_reg[2]\ : in STD_LOGIC;
    reg_file_reg_0_15_1_1_i_2_0 : in STD_LOGIC;
    reg_file_reg_0_15_2_2_i_2_0 : in STD_LOGIC;
    reg_file_reg_0_15_3_3_i_2_0 : in STD_LOGIC;
    reg_file_reg_0_15_4_4_i_2_0 : in STD_LOGIC;
    reg_file_reg_0_15_5_5_i_2_0 : in STD_LOGIC;
    reg_file_reg_0_15_6_6_i_2_0 : in STD_LOGIC;
    \uart_tx_sreg_reg[4]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[4]_1\ : in STD_LOGIC;
    \am_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \src_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_neo430_control : entity is "neo430_control";
end SystemTop_neo430_control;

architecture STRUCTURE of SystemTop_neo430_control is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^di\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state[0]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[4]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[4]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[4]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[4]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[4]_i_9_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[3]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \am_reg_n_0_[0]\ : STD_LOGIC;
  signal cnt_reg_10_sn_1 : STD_LOGIC;
  signal cnt_reg_11_sn_1 : STD_LOGIC;
  signal cnt_reg_12_sn_1 : STD_LOGIC;
  signal cnt_reg_13_sn_1 : STD_LOGIC;
  signal cnt_reg_14_sn_1 : STD_LOGIC;
  signal cnt_reg_15_sn_1 : STD_LOGIC;
  signal cnt_reg_7_sn_1 : STD_LOGIC;
  signal cnt_reg_8_sn_1 : STD_LOGIC;
  signal cnt_reg_9_sn_1 : STD_LOGIC;
  signal \cpu_bus[rd_en]\ : STD_LOGIC;
  signal \ctrl[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[11]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[11]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[12]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[12]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[13]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[13]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[13]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl[13]_i_4_n_0\ : STD_LOGIC;
  signal \ctrl[13]_i_5_n_0\ : STD_LOGIC;
  signal \ctrl[14]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[14]_i_2__0_n_0\ : STD_LOGIC;
  signal \ctrl[14]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[14]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl[14]_i_4_n_0\ : STD_LOGIC;
  signal \ctrl[14]_i_5_n_0\ : STD_LOGIC;
  signal \ctrl[14]_i_6_n_0\ : STD_LOGIC;
  signal \ctrl[14]_i_7_n_0\ : STD_LOGIC;
  signal \ctrl[14]_i_8_n_0\ : STD_LOGIC;
  signal \ctrl[15]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[15]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[16]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[16]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[17]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[17]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[17]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl[17]_i_5_n_0\ : STD_LOGIC;
  signal \ctrl[18]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[18]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[18]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl[18]_i_4_n_0\ : STD_LOGIC;
  signal \ctrl[18]_i_5_n_0\ : STD_LOGIC;
  signal \ctrl[18]_i_6_n_0\ : STD_LOGIC;
  signal \ctrl[18]_i_7_n_0\ : STD_LOGIC;
  signal \ctrl[19]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[19]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[19]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl[1]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[1]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl[1]_i_4_n_0\ : STD_LOGIC;
  signal \ctrl[20]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[21]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[21]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[21]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl[21]_i_4_n_0\ : STD_LOGIC;
  signal \ctrl[22]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[23]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[24]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[25]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[26]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[26]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[26]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl[27]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[27]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[28]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[28]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[28]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl[28]_i_4_n_0\ : STD_LOGIC;
  signal \ctrl[28]_i_5_n_0\ : STD_LOGIC;
  signal \ctrl[2]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[2]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[2]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl[2]_i_4_n_0\ : STD_LOGIC;
  signal \ctrl[2]_i_5_n_0\ : STD_LOGIC;
  signal \ctrl[3]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[4]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[4]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[4]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl[5]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[5]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[6]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[7]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[7]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[7]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl[8]_i_10_n_0\ : STD_LOGIC;
  signal \ctrl[8]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[8]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[8]_i_4_n_0\ : STD_LOGIC;
  signal \ctrl[8]_i_5_n_0\ : STD_LOGIC;
  signal \ctrl[8]_i_6_n_0\ : STD_LOGIC;
  signal \ctrl[8]_i_7_n_0\ : STD_LOGIC;
  signal \ctrl[8]_i_9_n_0\ : STD_LOGIC;
  signal \ctrl[9]_i_1_n_0\ : STD_LOGIC;
  signal ctrl_bus : STD_LOGIC_VECTOR ( 27 to 27 );
  signal \^ctrl_reg[19]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \ctrl_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \^ctrl_reg[22]_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^ctrl_reg[25]_0\ : STD_LOGIC;
  signal \^ctrl_reg[25]_2\ : STD_LOGIC;
  signal \^ctrl_reg[25]_3\ : STD_LOGIC;
  signal \^ctrl_reg[26]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^ctrl_reg[28]_0\ : STD_LOGIC;
  signal \^ctrl_reg[3]_0\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[0]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[11]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[12]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[20]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[21]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[22]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[23]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[24]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[5]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[6]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_o[15]_i_3_n_0\ : STD_LOGIC;
  signal \data_o[15]_i_4_n_0\ : STD_LOGIC;
  signal dio_swap_i_2_n_0 : STD_LOGIC;
  signal dmem_file_l_reg_i_3_n_0 : STD_LOGIC;
  signal dmem_file_l_reg_i_4_n_0 : STD_LOGIC;
  signal dmem_file_l_reg_i_5_n_0 : STD_LOGIC;
  signal dmem_file_l_reg_i_6_n_0 : STD_LOGIC;
  signal \dout[15]_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_10_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_10_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_9_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_10_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal i_flag_ff0 : STD_LOGIC;
  signal i_flag_ff1 : STD_LOGIC;
  signal imem_file_ram_l_reg_0_i_19_n_0 : STD_LOGIC;
  signal imm : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal imm_i0 : STD_LOGIC;
  signal \^in_data\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ir_reg_n_0_[10]\ : STD_LOGIC;
  signal \ir_reg_n_0_[11]\ : STD_LOGIC;
  signal \ir_reg_n_0_[4]\ : STD_LOGIC;
  signal \ir_reg_n_0_[5]\ : STD_LOGIC;
  signal \ir_reg_n_0_[8]\ : STD_LOGIC;
  signal \irq_buf[0]_i_2_n_0\ : STD_LOGIC;
  signal \^irq_buf_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \irq_buf_reg_n_0_[0]\ : STD_LOGIC;
  signal irq_fire : STD_LOGIC;
  signal irq_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal irq_start_i_1_n_0 : STD_LOGIC;
  signal irq_start_reg_n_0 : STD_LOGIC;
  signal irq_vec : STD_LOGIC;
  signal \irq_vec[0]_i_1_n_0\ : STD_LOGIC;
  signal \irq_vec[1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \mem_addr_reg0_carry__2_i_9_n_0\ : STD_LOGIC;
  signal mem_addr_reg0_carry_i_10_n_0 : STD_LOGIC;
  signal \^mem_addr_reg_reg[1]\ : STD_LOGIC;
  signal mem_rd : STD_LOGIC;
  signal mem_rd_ff : STD_LOGIC;
  signal mem_rd_ff_i_2_n_0 : STD_LOGIC;
  signal \op_b_ff[13]_i_3_n_0\ : STD_LOGIC;
  signal \op_b_ff[15]_i_2_n_0\ : STD_LOGIC;
  signal \op_b_ff[1]_i_3_n_0\ : STD_LOGIC;
  signal \op_b_ff[3]_i_2_n_0\ : STD_LOGIC;
  signal \op_b_ff[4]_i_2_n_0\ : STD_LOGIC;
  signal \^op_b_ff_reg[7]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in14_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_8_in : STD_LOGIC;
  signal p_9_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pwm_ch[0][7]_i_2_n_0\ : STD_LOGIC;
  signal rden_i_2_n_0 : STD_LOGIC;
  signal rden_i_3_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_0_0_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_0_0_i_3_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_0_0_i_3_n_1 : STD_LOGIC;
  signal reg_file_reg_0_15_0_0_i_3_n_2 : STD_LOGIC;
  signal reg_file_reg_0_15_0_0_i_3_n_3 : STD_LOGIC;
  signal reg_file_reg_0_15_0_0_i_3_n_4 : STD_LOGIC;
  signal reg_file_reg_0_15_0_0_i_3_n_5 : STD_LOGIC;
  signal reg_file_reg_0_15_0_0_i_3_n_6 : STD_LOGIC;
  signal reg_file_reg_0_15_0_0_i_3_n_7 : STD_LOGIC;
  signal reg_file_reg_0_15_0_0_i_5_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_0_0_i_6_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_0_0_i_7_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_0_0_i_8_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_0_0_i_9_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_10_10_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_10_10_i_3_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_10_10_i_4_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_10_10_i_5_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_11_11_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_11_11_i_4_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_11_11_i_5_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_11_11_i_6_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_12_12_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_12_12_i_3_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_12_12_i_4_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_12_12_i_6_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_13_13_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_13_13_i_3_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_13_13_i_4_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_13_13_i_5_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_14_14_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_14_14_i_3_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_14_14_i_4_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_14_14_i_5_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_15_15_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_15_15_i_3_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_15_15_i_4_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_15_15_i_5_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_15_15_i_6_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_1_1_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_1_1_i_4_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_1_1_i_5_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_2_2_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_2_2_i_3_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_2_2_i_4_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_2_2_i_5_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_3_3_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_3_3_i_3_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_3_3_i_4_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_3_3_i_5_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_4_4_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_4_4_i_3_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_4_4_i_4_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_4_4_i_5_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_5_5_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_5_5_i_3_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_5_5_i_4_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_5_5_i_5_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_6_6_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_6_6_i_3_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_6_6_i_4_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_6_6_i_5_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_7_7_i_11_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_7_7_i_12_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_7_7_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_7_7_i_3_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_7_7_i_3_n_1 : STD_LOGIC;
  signal reg_file_reg_0_15_7_7_i_3_n_2 : STD_LOGIC;
  signal reg_file_reg_0_15_7_7_i_3_n_3 : STD_LOGIC;
  signal reg_file_reg_0_15_7_7_i_3_n_5 : STD_LOGIC;
  signal reg_file_reg_0_15_7_7_i_3_n_6 : STD_LOGIC;
  signal reg_file_reg_0_15_7_7_i_3_n_7 : STD_LOGIC;
  signal reg_file_reg_0_15_7_7_i_6_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_7_7_i_7_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_8_8_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_8_8_i_3_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_8_8_i_4_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_8_8_i_6_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_9_9_i_2_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_9_9_i_3_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_9_9_i_4_n_0 : STD_LOGIC;
  signal reg_file_reg_0_15_9_9_i_5_n_0 : STD_LOGIC;
  signal \^reg_i\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal sam : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sam[0]_i_1_n_0\ : STD_LOGIC;
  signal \sam[1]_i_1_n_0\ : STD_LOGIC;
  signal src : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sreg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sreg[0]_i_3_n_0\ : STD_LOGIC;
  signal \sreg[0]_i_4_n_0\ : STD_LOGIC;
  signal \sreg[0]_i_5_n_0\ : STD_LOGIC;
  signal \sreg[14]_i_2_n_0\ : STD_LOGIC;
  signal \sreg[1]_i_2_n_0\ : STD_LOGIC;
  signal \sreg[1]_i_3_n_0\ : STD_LOGIC;
  signal \sreg[1]_i_4_n_0\ : STD_LOGIC;
  signal \sreg[1]_i_5_n_0\ : STD_LOGIC;
  signal \sreg[1]_i_6_n_0\ : STD_LOGIC;
  signal \sreg[2]_i_2_n_0\ : STD_LOGIC;
  signal \sreg[8]_i_3_n_0\ : STD_LOGIC;
  signal \sreg[8]_i_4_n_0\ : STD_LOGIC;
  signal \sreg[8]_i_5_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_sreg_reg[0]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sreg_reg[0]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_7\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_9\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_8\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_5\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_7\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_11\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_4\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_7\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_8\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \FSM_sequential_state[4]_i_12\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \FSM_sequential_state[4]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_sequential_state[4]_i_8\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \FSM_sequential_state[4]_i_9\ : label is "soft_lutpair17";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "reti_0:10100,pushcall_2:10001,pushcall_1:10000,irq_1:00011,irq_0:00010,decode:01001,reti_3:10111,ifetch_1:01000,reti_2:10110,ifetch_0:00001,irq_5:00111,reset:00000,irq_4:00110,pushcall_0:01111,trans_6:10011,trans_3:01101,irq_3:00101,trans_2:01100,irq_2:00100,trans_5:10010,trans_4:01110,trans_1:01011,reti_1:10101,trans_0:01010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "reti_0:10100,pushcall_2:10001,pushcall_1:10000,irq_1:00011,irq_0:00010,decode:01001,reti_3:10111,ifetch_1:01000,reti_2:10110,ifetch_0:00001,irq_5:00111,reset:00000,irq_4:00110,pushcall_0:01111,trans_6:10011,trans_3:01101,irq_3:00101,trans_2:01100,irq_2:00100,trans_5:10010,trans_4:01110,trans_1:01011,reti_1:10101,trans_0:01010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "reti_0:10100,pushcall_2:10001,pushcall_1:10000,irq_1:00011,irq_0:00010,decode:01001,reti_3:10111,ifetch_1:01000,reti_2:10110,ifetch_0:00001,irq_5:00111,reset:00000,irq_4:00110,pushcall_0:01111,trans_6:10011,trans_3:01101,irq_3:00101,trans_2:01100,irq_2:00100,trans_5:10010,trans_4:01110,trans_1:01011,reti_1:10101,trans_0:01010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "reti_0:10100,pushcall_2:10001,pushcall_1:10000,irq_1:00011,irq_0:00010,decode:01001,reti_3:10111,ifetch_1:01000,reti_2:10110,ifetch_0:00001,irq_5:00111,reset:00000,irq_4:00110,pushcall_0:01111,trans_6:10011,trans_3:01101,irq_3:00101,trans_2:01100,irq_2:00100,trans_5:10010,trans_4:01110,trans_1:01011,reti_1:10101,trans_0:01010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[4]\ : label is "reti_0:10100,pushcall_2:10001,pushcall_1:10000,irq_1:00011,irq_0:00010,decode:01001,reti_3:10111,ifetch_1:01000,reti_2:10110,ifetch_0:00001,irq_5:00111,reset:00000,irq_4:00110,pushcall_0:01111,trans_6:10011,trans_3:01101,irq_3:00101,trans_2:01100,irq_2:00100,trans_5:10010,trans_4:01110,trans_1:01011,reti_1:10101,trans_0:01010";
  attribute SOFT_HLUTNM of \ctrl[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ctrl[11]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \ctrl[11]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \ctrl[11]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ctrl[12]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ctrl[13]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ctrl[13]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ctrl[13]_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ctrl[14]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ctrl[17]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ctrl[17]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \ctrl[18]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ctrl[18]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ctrl[18]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ctrl[18]_i_6\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ctrl[18]_i_7\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ctrl[21]_i_4\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \ctrl[22]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \ctrl[23]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ctrl[25]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ctrl[27]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ctrl[28]_i_4\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \ctrl[28]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ctrl[4]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ctrl[4]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ctrl[5]_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \ctrl[6]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ctrl[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ctrl[7]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ctrl[8]_i_10\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ctrl[8]_i_2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \ctrl[8]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ctrl[9]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_o[0]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \data_o[0]_i_1__1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \data_o[10]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \data_o[10]_i_1__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \data_o[10]_i_1__2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \data_o[10]_i_1__3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \data_o[11]_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \data_o[11]_i_1__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_o[11]_i_1__2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \data_o[11]_i_1__3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \data_o[11]_i_1__4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \data_o[12]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \data_o[12]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_o[12]_i_1__1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \data_o[12]_i_1__2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \data_o[13]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_o[13]_i_1__1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \data_o[13]_i_1__2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \data_o[13]_i_1__3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \data_o[14]_i_1__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \data_o[14]_i_1__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_o[14]_i_1__2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \data_o[14]_i_1__3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \data_o[15]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_o[15]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_o[15]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_o[15]_i_1__2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_o[15]_i_1__3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_o[15]_i_2__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \data_o[15]_i_2__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_o[15]_i_2__2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \data_o[15]_i_2__3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \data_o[1]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \data_o[1]_i_1__3\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \data_o[2]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \data_o[2]_i_1__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \data_o[2]_i_1__2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \data_o[3]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \data_o[3]_i_1__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \data_o[3]_i_1__2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \data_o[4]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \data_o[4]_i_1__1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \data_o[5]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \data_o[5]_i_1__1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \data_o[6]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \data_o[6]_i_1__1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \data_o[6]_i_1__2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \data_o[7]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \data_o[7]_i_1__1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \data_o[7]_i_1__2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \data_o[8]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \data_o[8]_i_1__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \data_o[8]_i_1__1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \data_o[8]_i_1__2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \data_o[8]_i_1__3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \data_o[9]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \data_o[9]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \data_o[9]_i_1__1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \data_o[9]_i_1__2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \dout[15]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \dout[15]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of enable_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i__carry__0_i_10\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \i__carry__0_i_11\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \i__carry__0_i_8\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \i__carry__0_i_9\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \i__carry__1_i_10\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \i__carry__1_i_11\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \i__carry__1_i_7\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \i__carry_i_10\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \i__carry_i_8__1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \i__carry_i_9\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \irq_mask[15]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of irq_start_i_1 : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of mem_rd_ff_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \op_b_ff[1]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \op_b_ff[2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \pwm_ch[0][7]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \pwm_ch[2][7]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of reg_file_reg_0_15_0_0_i_5 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of reg_file_reg_0_15_0_0_i_7 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of reg_file_reg_0_15_11_11_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of reg_file_reg_0_15_13_13_i_2 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sam[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sreg[0]_i_3\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \sreg[0]_i_5\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \sreg[2]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sreg[8]_i_5\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \sreg[8]_i_8\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \thres[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tuning_word[0][15]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \uart_rx_avail[1]_i_4\ : label is "soft_lutpair13";
begin
  CO(0) <= \^co\(0);
  DI(1 downto 0) <= \^di\(1 downto 0);
  E(0) <= \^e\(0);
  \FSM_sequential_state_reg[3]_0\(1 downto 0) <= \^fsm_sequential_state_reg[3]_0\(1 downto 0);
  cnt_reg_10_sp_1 <= cnt_reg_10_sn_1;
  cnt_reg_11_sp_1 <= cnt_reg_11_sn_1;
  cnt_reg_12_sp_1 <= cnt_reg_12_sn_1;
  cnt_reg_13_sp_1 <= cnt_reg_13_sn_1;
  cnt_reg_14_sp_1 <= cnt_reg_14_sn_1;
  cnt_reg_15_sp_1 <= cnt_reg_15_sn_1;
  cnt_reg_7_sp_1 <= cnt_reg_7_sn_1;
  cnt_reg_8_sp_1 <= cnt_reg_8_sn_1;
  cnt_reg_9_sp_1 <= cnt_reg_9_sn_1;
  \ctrl_reg[19]_0\(9 downto 0) <= \^ctrl_reg[19]_0\(9 downto 0);
  \ctrl_reg[22]_1\(1 downto 0) <= \^ctrl_reg[22]_1\(1 downto 0);
  \ctrl_reg[25]_0\ <= \^ctrl_reg[25]_0\;
  \ctrl_reg[25]_2\ <= \^ctrl_reg[25]_2\;
  \ctrl_reg[25]_3\ <= \^ctrl_reg[25]_3\;
  \ctrl_reg[26]_0\(4 downto 0) <= \^ctrl_reg[26]_0\(4 downto 0);
  \ctrl_reg[28]_0\ <= \^ctrl_reg[28]_0\;
  \ctrl_reg[3]_0\ <= \^ctrl_reg[3]_0\;
  in_data(15 downto 0) <= \^in_data\(15 downto 0);
  \irq_buf_reg[1]_0\(0) <= \^irq_buf_reg[1]_0\(0);
  \mem_addr_reg_reg[1]\ <= \^mem_addr_reg_reg[1]\;
  \op_b_ff_reg[7]\(0) <= \^op_b_ff_reg[7]\(0);
  reg_i(14 downto 0) <= \^reg_i\(14 downto 0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55551110"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_state[0]_i_3_n_0\,
      I2 => \FSM_sequential_state_reg[0]_0\,
      I3 => \FSM_sequential_state[0]_i_5_n_0\,
      I4 => \FSM_sequential_state[0]_i_6_n_0\,
      I5 => \FSM_sequential_state[0]_i_7_n_0\,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(0),
      I1 => state(0),
      O => \FSM_sequential_state[0]_i_10_n_0\
    );
\FSM_sequential_state[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFCFCFEFEFCFCF"
    )
        port map (
      I0 => \FSM_sequential_state[4]_i_8_n_0\,
      I1 => state(4),
      I2 => \ctrl[5]_i_2_n_0\,
      I3 => imm(8),
      I4 => state(0),
      I5 => \^fsm_sequential_state_reg[3]_0\(0),
      O => \FSM_sequential_state[0]_i_11_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \op_b_ff_reg[15]\,
      I1 => \ctrl_reg[17]_1\,
      I2 => \ctrl_reg[17]_0\,
      I3 => \op_b_ff_reg[4]\,
      I4 => \ctrl[8]_i_2_n_0\,
      I5 => \FSM_sequential_state[3]_i_4_n_0\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => state(2),
      I1 => \^fsm_sequential_state_reg[3]_0\(1),
      I2 => state(4),
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0F0F0FFFDFFFF"
    )
        port map (
      I0 => p_2_in(0),
      I1 => \ctrl[14]_i_2__0_n_0\,
      I2 => state(4),
      I3 => p_2_in(1),
      I4 => \^fsm_sequential_state_reg[3]_0\(0),
      I5 => state(0),
      O => \FSM_sequential_state[0]_i_5_n_0\
    );
\FSM_sequential_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBFBFBFB"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_9_n_0\,
      I1 => \FSM_sequential_state[0]_i_10_n_0\,
      I2 => \FSM_sequential_state[3]_i_8_n_0\,
      I3 => \ctrl[14]_i_2__0_n_0\,
      I4 => \ctrl[7]_i_2_n_0\,
      I5 => \FSM_sequential_state[0]_i_11_n_0\,
      O => \FSM_sequential_state[0]_i_6_n_0\
    );
\FSM_sequential_state[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4055"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(1),
      I1 => state(2),
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => state(0),
      O => \FSM_sequential_state[0]_i_7_n_0\
    );
\FSM_sequential_state[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(8),
      I1 => \^ctrl_reg[19]_0\(7),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => \^ctrl_reg[19]_0\(5),
      O => \FSM_sequential_state[0]_i_9_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00F2"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_state_reg[1]_0\,
      I2 => state(2),
      I3 => \FSM_sequential_state[1]_i_4_n_0\,
      I4 => \FSM_sequential_state[1]_i_5_n_0\,
      I5 => \FSM_sequential_state[1]_i_6_n_0\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => irq_start_reg_n_0,
      I1 => \^fsm_sequential_state_reg[3]_0\(1),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF3F7F3"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => state(4),
      I4 => \^fsm_sequential_state_reg[3]_0\(1),
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFDFFFF"
    )
        port map (
      I0 => p_2_in(0),
      I1 => p_2_in(1),
      I2 => \am_reg_n_0_[0]\,
      I3 => state(2),
      I4 => \^fsm_sequential_state_reg[3]_0\(1),
      I5 => \FSM_sequential_state[1]_i_7_n_0\,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FF04FF04FF0404"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_8_n_0\,
      I1 => \FSM_sequential_state_reg[3]_1\,
      I2 => \am_reg[3]_0\(3),
      I3 => \FSM_sequential_state[1]_i_9_n_0\,
      I4 => \am_reg_n_0_[0]\,
      I5 => \ctrl[7]_i_2_n_0\,
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF33F733FF33"
    )
        port map (
      I0 => p_2_in(1),
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      I2 => state(2),
      I3 => state(0),
      I4 => \^fsm_sequential_state_reg[3]_0\(1),
      I5 => state(4),
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(0),
      I1 => state(0),
      I2 => state(2),
      I3 => \^fsm_sequential_state_reg[3]_0\(1),
      O => \FSM_sequential_state[1]_i_8_n_0\
    );
\FSM_sequential_state[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FFF3F9FFFFFFFFF"
    )
        port map (
      I0 => p_2_in(0),
      I1 => p_0_in14_in,
      I2 => \ctrl[8]_i_2_n_0\,
      I3 => state(0),
      I4 => p_2_in(1),
      I5 => \^fsm_sequential_state_reg[3]_0\(0),
      O => \FSM_sequential_state[1]_i_9_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBABBAABBAA"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      I2 => \FSM_sequential_state_reg[4]_0\,
      I3 => state(2),
      I4 => \^fsm_sequential_state_reg[3]_0\(0),
      I5 => \FSM_sequential_state[2]_i_4_n_0\,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(1),
      I1 => state(2),
      I2 => state(0),
      I3 => \^fsm_sequential_state_reg[3]_0\(0),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAABBAABAAA"
    )
        port map (
      I0 => state(4),
      I1 => \FSM_sequential_state[2]_i_5_n_0\,
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => state(2),
      I4 => state(0),
      I5 => \FSM_sequential_state[4]_i_8_n_0\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAE00AE000000"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_6_n_0\,
      I1 => \FSM_sequential_state[3]_i_8_n_0\,
      I2 => \ctrl[14]_i_2__0_n_0\,
      I3 => \^fsm_sequential_state_reg[3]_0\(1),
      I4 => state(0),
      I5 => \^fsm_sequential_state_reg[3]_0\(0),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \ctrl[7]_i_2_n_0\,
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => state(0),
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AAAFFFFAABBFFFF"
    )
        port map (
      I0 => state(0),
      I1 => p_2_in(0),
      I2 => \^fsm_sequential_state_reg[3]_0\(1),
      I3 => p_2_in(1),
      I4 => \^fsm_sequential_state_reg[3]_0\(0),
      I5 => \FSM_sequential_state[2]_i_7_n_0\,
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ctrl[7]_i_2_n_0\,
      I1 => p_0_in14_in,
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABBBBBB"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_2_n_0\,
      I1 => state(2),
      I2 => \FSM_sequential_state_reg[3]_2\,
      I3 => \FSM_sequential_state[3]_i_4_n_0\,
      I4 => \FSM_sequential_state_reg[3]_3\,
      I5 => \FSM_sequential_state[3]_i_6_n_0\,
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => state(0),
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      I2 => state(2),
      I3 => state(4),
      I4 => \^fsm_sequential_state_reg[3]_0\(1),
      I5 => irq_start_reg_n_0,
      O => \FSM_sequential_state[3]_i_10_n_0\
    );
\FSM_sequential_state[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15F355FF"
    )
        port map (
      I0 => state(2),
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      I2 => p_2_in(1),
      I3 => state(0),
      I4 => \ctrl[7]_i_2_n_0\,
      O => \FSM_sequential_state[3]_i_11_n_0\
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAEEEAFFFFEEEA"
    )
        port map (
      I0 => \FSM_sequential_state[4]_i_11_n_0\,
      I1 => \FSM_sequential_state[3]_i_7_n_0\,
      I2 => \FSM_sequential_state[3]_i_8_n_0\,
      I3 => \am_reg_n_0_[0]\,
      I4 => \ctrl[18]_i_6_n_0\,
      I5 => \FSM_sequential_state[1]_i_2_n_0\,
      O => \FSM_sequential_state[3]_i_2_n_0\
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      O => \FSM_sequential_state[3]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00002000"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_4_n_0\,
      I1 => state(2),
      I2 => \^fsm_sequential_state_reg[3]_0\(1),
      I3 => \FSM_sequential_state_reg[3]_1\,
      I4 => \am_reg[3]_0\(3),
      I5 => \FSM_sequential_state[3]_i_9_n_0\,
      O => \FSM_sequential_state[3]_i_6_n_0\
    );
\FSM_sequential_state[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(2),
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      O => \FSM_sequential_state[3]_i_7_n_0\
    );
\FSM_sequential_state[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_2_in(0),
      I1 => p_2_in(1),
      O => \FSM_sequential_state[3]_i_8_n_0\
    );
\FSM_sequential_state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111F1111111F111F"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_10_n_0\,
      I1 => \ctrl[18]_i_5_n_0\,
      I2 => \FSM_sequential_state[3]_i_11_n_0\,
      I3 => p_0_in14_in,
      I4 => p_2_in(1),
      I5 => p_2_in(0),
      O => \FSM_sequential_state[3]_i_9_n_0\
    );
\FSM_sequential_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00DFFFDF"
    )
        port map (
      I0 => \FSM_sequential_state[4]_i_4_n_0\,
      I1 => irq_start_reg_n_0,
      I2 => \FSM_sequential_state_reg[0]_1\,
      I3 => \^fsm_sequential_state_reg[3]_0\(1),
      I4 => state(4),
      O => \FSM_sequential_state[4]_i_1_n_0\
    );
\FSM_sequential_state[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000200000AAAA"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(1),
      I1 => \ctrl[7]_i_2_n_0\,
      I2 => p_2_in(0),
      I3 => p_2_in(1),
      I4 => state(0),
      I5 => \^fsm_sequential_state_reg[3]_0\(0),
      O => \FSM_sequential_state[4]_i_11_n_0\
    );
\FSM_sequential_state[4]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => p_2_in(0),
      I1 => p_2_in(1),
      I2 => p_0_in14_in,
      I3 => \ctrl[7]_i_2_n_0\,
      O => \FSM_sequential_state[4]_i_12_n_0\
    );
\FSM_sequential_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FAAAAAEA"
    )
        port map (
      I0 => \FSM_sequential_state[4]_i_5_n_0\,
      I1 => \FSM_sequential_state_reg[4]_0\,
      I2 => \^fsm_sequential_state_reg[3]_0\(1),
      I3 => state(2),
      I4 => \^fsm_sequential_state_reg[3]_0\(0),
      I5 => \FSM_sequential_state[4]_i_7_n_0\,
      O => \FSM_sequential_state[4]_i_2_n_0\
    );
\FSM_sequential_state[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => state(4),
      I1 => state(2),
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => state(0),
      O => \FSM_sequential_state[4]_i_4_n_0\
    );
\FSM_sequential_state[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF04FFC4FF"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(0),
      I1 => state(2),
      I2 => \^fsm_sequential_state_reg[3]_0\(1),
      I3 => state(0),
      I4 => \FSM_sequential_state[4]_i_8_n_0\,
      I5 => \FSM_sequential_state[4]_i_9_n_0\,
      O => \FSM_sequential_state[4]_i_5_n_0\
    );
\FSM_sequential_state[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBEBEBEBEBEBFBEB"
    )
        port map (
      I0 => \FSM_sequential_state[4]_i_11_n_0\,
      I1 => state(4),
      I2 => \^fsm_sequential_state_reg[3]_0\(1),
      I3 => \FSM_sequential_state[4]_i_12_n_0\,
      I4 => state(2),
      I5 => state(0),
      O => \FSM_sequential_state[4]_i_7_n_0\
    );
\FSM_sequential_state[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => p_2_in(1),
      I1 => p_2_in(0),
      I2 => p_0_in14_in,
      I3 => \am_reg_n_0_[0]\,
      O => \FSM_sequential_state[4]_i_8_n_0\
    );
\FSM_sequential_state[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => p_0_in14_in,
      I1 => \ctrl[7]_i_2_n_0\,
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => p_2_in(1),
      I4 => \^fsm_sequential_state_reg[3]_0\(1),
      O => \FSM_sequential_state[4]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \FSM_sequential_state[4]_i_1_n_0\,
      CLR => \FSM_sequential_state_reg[4]_1\,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \FSM_sequential_state[4]_i_1_n_0\,
      CLR => \FSM_sequential_state_reg[4]_1\,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \^fsm_sequential_state_reg[3]_0\(0)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \FSM_sequential_state[4]_i_1_n_0\,
      CLR => \FSM_sequential_state_reg[4]_1\,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2)
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \FSM_sequential_state[4]_i_1_n_0\,
      CLR => \FSM_sequential_state_reg[4]_1\,
      D => \FSM_sequential_state[3]_i_1_n_0\,
      Q => \^fsm_sequential_state_reg[3]_0\(1)
    );
\FSM_sequential_state_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \FSM_sequential_state[4]_i_1_n_0\,
      CLR => \FSM_sequential_state_reg[4]_1\,
      D => \FSM_sequential_state[4]_i_2_n_0\,
      Q => state(4)
    );
\am_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \am_reg[0]_0\(0),
      D => \am_reg[3]_0\(0),
      Q => \am_reg_n_0_[0]\,
      R => '0'
    );
\am_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \am_reg[0]_0\(0),
      D => \am_reg[3]_0\(1),
      Q => p_2_in(0),
      R => '0'
    );
\am_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \am_reg[0]_0\(0),
      D => \am_reg[3]_0\(2),
      Q => p_2_in(1),
      R => '0'
    );
\am_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \am_reg[0]_0\(0),
      D => \am_reg[3]_0\(3),
      Q => p_0_in14_in,
      R => '0'
    );
\ctrl[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30308E16"
    )
        port map (
      I0 => state(0),
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      I2 => state(2),
      I3 => \^fsm_sequential_state_reg[3]_0\(1),
      I4 => state(4),
      O => \ctrl[0]_i_1_n_0\
    );
\ctrl[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => state(4),
      I1 => state(2),
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => \^fsm_sequential_state_reg[3]_0\(1),
      I4 => state(0),
      O => \ctrl[11]_i_1_n_0\
    );
\ctrl[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \ctrl[11]_i_2_n_0\,
      O => \mem_addr_reg_reg[2]_3\(0)
    );
\ctrl[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => \ctrl[14]_i_2_n_0\,
      I1 => \data_o[15]_i_4_n_0\,
      I2 => \^ctrl_reg[25]_2\,
      I3 => \^ctrl_reg[25]_0\,
      I4 => \data_o[15]_i_3_n_0\,
      O => \ctrl[11]_i_2_n_0\
    );
\ctrl[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404F404F7F40404"
    )
        port map (
      I0 => \ctrl[12]_i_2_n_0\,
      I1 => \^fsm_sequential_state_reg[3]_0\(1),
      I2 => state(4),
      I3 => state(2),
      I4 => \^fsm_sequential_state_reg[3]_0\(0),
      I5 => state(0),
      O => \ctrl[12]_i_1_n_0\
    );
\ctrl[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF73FFF"
    )
        port map (
      I0 => p_2_in(0),
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      I2 => p_2_in(1),
      I3 => state(0),
      I4 => state(2),
      O => \ctrl[12]_i_2_n_0\
    );
\ctrl[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4EE4444E0EE0400A"
    )
        port map (
      I0 => state(4),
      I1 => \ctrl[13]_i_2_n_0\,
      I2 => state(0),
      I3 => \^fsm_sequential_state_reg[3]_0\(0),
      I4 => state(2),
      I5 => \^fsm_sequential_state_reg[3]_0\(1),
      O => \ctrl[13]_i_1_n_0\
    );
\ctrl[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDDCCDDCCDDCCFC"
    )
        port map (
      I0 => \ctrl[13]_i_3_n_0\,
      I1 => \ctrl[13]_i_4_n_0\,
      I2 => \ctrl[13]_i_5_n_0\,
      I3 => p_2_in(1),
      I4 => p_2_in(0),
      I5 => \ctrl[14]_i_2__0_n_0\,
      O => \ctrl[13]_i_2_n_0\
    );
\ctrl[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => state(0),
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      I2 => state(2),
      O => \ctrl[13]_i_3_n_0\
    );
\ctrl[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080FFFF"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(0),
      I1 => p_2_in(1),
      I2 => state(0),
      I3 => state(2),
      I4 => \^fsm_sequential_state_reg[3]_0\(1),
      O => \ctrl[13]_i_4_n_0\
    );
\ctrl[13]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(0),
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      I2 => state(2),
      O => \ctrl[13]_i_5_n_0\
    );
\ctrl[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000F00000"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(1),
      I1 => \ctrl[14]_i_2__0_n_0\,
      I2 => state(4),
      I3 => state(2),
      I4 => \^fsm_sequential_state_reg[3]_0\(0),
      I5 => state(0),
      O => \ctrl[14]_i_1_n_0\
    );
\ctrl[14]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \ctrl[14]_i_2_n_0\,
      I1 => \^ctrl_reg[25]_2\,
      I2 => imem_file_ram_l_reg_0_i_19_n_0,
      I3 => \ctrl[14]_i_3_n_0\,
      I4 => \^mem_addr_reg_reg[1]\,
      O => \ctrl_reg[27]_2\(0)
    );
\ctrl[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \ctrl[14]_i_4_n_0\,
      I1 => dmem_file_l_reg_i_3_n_0,
      I2 => dmem_file_l_reg_i_6_n_0,
      I3 => dmem_file_l_reg_i_4_n_0,
      I4 => ctrl_bus(27),
      O => \ctrl[14]_i_2_n_0\
    );
\ctrl[14]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \am_reg_n_0_[0]\,
      I1 => p_0_in14_in,
      O => \ctrl[14]_i_2__0_n_0\
    );
\ctrl[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABFFABAA"
    )
        port map (
      I0 => \^ctrl_reg[25]_0\,
      I1 => \mem_addr_reg0_carry__0_i_10_n_0\,
      I2 => \^ctrl_reg[26]_0\(3),
      I3 => \ctrl_reg_n_0_[24]\,
      I4 => imem_file_ram_l_reg_3(6),
      I5 => \data_o[15]_i_4_n_0\,
      O => \ctrl[14]_i_3_n_0\
    );
\ctrl[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \ctrl[14]_i_5_n_0\,
      I1 => dmem_file_l_reg_i_5_n_0,
      I2 => \ctrl[14]_i_6_n_0\,
      I3 => \ctrl[14]_i_7_n_0\,
      I4 => \ctrl[14]_i_8_n_0\,
      O => \ctrl[14]_i_4_n_0\
    );
\ctrl[14]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DF"
    )
        port map (
      I0 => \^reg_i\(8),
      I1 => \^ctrl_reg[26]_0\(3),
      I2 => \ctrl_reg_n_0_[24]\,
      I3 => imem_file_ram_l_reg_3(8),
      O => \ctrl[14]_i_5_n_0\
    );
\ctrl[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABF0000AABFFFFF"
    )
        port map (
      I0 => \^ctrl_reg[26]_0\(3),
      I1 => \^ctrl_reg[3]_0\,
      I2 => data_o0(7),
      I3 => \op_b_ff[13]_i_3_n_0\,
      I4 => \ctrl_reg_n_0_[24]\,
      I5 => imem_file_ram_l_reg_3(7),
      O => \ctrl[14]_i_6_n_0\
    );
\ctrl[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABF0000AABFFFFF"
    )
        port map (
      I0 => \^ctrl_reg[26]_0\(3),
      I1 => \^ctrl_reg[3]_0\,
      I2 => data_o0(10),
      I3 => \op_b_ff[13]_i_3_n_0\,
      I4 => \ctrl_reg_n_0_[24]\,
      I5 => imem_file_ram_l_reg_3(10),
      O => \ctrl[14]_i_7_n_0\
    );
\ctrl[14]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABF0000AABFFFFF"
    )
        port map (
      I0 => \^ctrl_reg[26]_0\(3),
      I1 => \^ctrl_reg[3]_0\,
      I2 => data_o0(9),
      I3 => \op_b_ff[13]_i_3_n_0\,
      I4 => \ctrl_reg_n_0_[24]\,
      I5 => imem_file_ram_l_reg_3(9),
      O => \ctrl[14]_i_8_n_0\
    );
\ctrl[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AAAA00200020"
    )
        port map (
      I0 => \ctrl[15]_i_2_n_0\,
      I1 => \ctrl_reg[17]_2\,
      I2 => \ctrl[18]_i_6_n_0\,
      I3 => \ctrl_reg[15]_0\,
      I4 => \ctrl[18]_i_7_n_0\,
      I5 => \^ctrl_reg[19]_0\(5),
      O => \ctrl[15]_i_1_n_0\
    );
\ctrl[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC3FFFEB0000AAAA"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(1),
      I1 => state(0),
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => state(2),
      I4 => state(4),
      I5 => \^ctrl_reg[19]_0\(5),
      O => \ctrl[15]_i_2_n_0\
    );
\ctrl[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AA080808080808"
    )
        port map (
      I0 => \ctrl[16]_i_2_n_0\,
      I1 => \^ctrl_reg[19]_0\(6),
      I2 => \ctrl[18]_i_7_n_0\,
      I3 => \ctrl_reg[17]_2\,
      I4 => \ctrl[18]_i_6_n_0\,
      I5 => \ctrl_reg[16]_0\,
      O => \ctrl[16]_i_1_n_0\
    );
\ctrl[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC3FFFEB0000AAAA"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(1),
      I1 => state(0),
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => state(2),
      I4 => state(4),
      I5 => \^ctrl_reg[19]_0\(6),
      O => \ctrl[16]_i_2_n_0\
    );
\ctrl[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBAAAAA"
    )
        port map (
      I0 => \ctrl[17]_i_2_n_0\,
      I1 => \ctrl[17]_i_3_n_0\,
      I2 => mem_data_i(14),
      I3 => \ctrl_reg[17]_2\,
      I4 => \ctrl[18]_i_6_n_0\,
      I5 => \ctrl[17]_i_5_n_0\,
      O => \ctrl[17]_i_1_n_0\
    );
\ctrl[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0020"
    )
        port map (
      I0 => state(4),
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      I2 => state(2),
      I3 => state(0),
      I4 => \^ctrl_reg[19]_0\(7),
      O => \ctrl[17]_i_2_n_0\
    );
\ctrl[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAABBBBBABB"
    )
        port map (
      I0 => state(4),
      I1 => \^fsm_sequential_state_reg[3]_0\(1),
      I2 => state(2),
      I3 => \^fsm_sequential_state_reg[3]_0\(0),
      I4 => state(0),
      I5 => \^ctrl_reg[19]_0\(7),
      O => \ctrl[17]_i_3_n_0\
    );
\ctrl[17]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B33FB333"
    )
        port map (
      I0 => state(2),
      I1 => \^fsm_sequential_state_reg[3]_0\(1),
      I2 => state(0),
      I3 => \^fsm_sequential_state_reg[3]_0\(0),
      I4 => \^ctrl_reg[19]_0\(7),
      O => \ctrl[17]_i_5_n_0\
    );
\ctrl[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF040000"
    )
        port map (
      I0 => \ctrl_reg[17]_1\,
      I1 => \ctrl_reg[17]_0\,
      I2 => \op_b_ff_reg[4]\,
      I3 => \am_reg[3]_0\(3),
      I4 => \^e\(0),
      I5 => \ctrl[18]_i_3_n_0\,
      O => \ctrl[18]_i_1_n_0\
    );
\ctrl[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D000DDDDC000C000"
    )
        port map (
      I0 => \ctrl[18]_i_4_n_0\,
      I1 => \ctrl[18]_i_5_n_0\,
      I2 => mem_data_i(15),
      I3 => \ctrl[18]_i_6_n_0\,
      I4 => \ctrl[18]_i_7_n_0\,
      I5 => \^ctrl_reg[19]_0\(8),
      O => \ctrl[18]_i_2_n_0\
    );
\ctrl[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40020100"
    )
        port map (
      I0 => state(4),
      I1 => \^fsm_sequential_state_reg[3]_0\(1),
      I2 => state(0),
      I3 => \^fsm_sequential_state_reg[3]_0\(0),
      I4 => state(2),
      O => \ctrl[18]_i_3_n_0\
    );
\ctrl[18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1806"
    )
        port map (
      I0 => state(0),
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      I2 => state(2),
      I3 => state(4),
      O => \ctrl[18]_i_4_n_0\
    );
\ctrl[18]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(1),
      I1 => state(4),
      O => \ctrl[18]_i_5_n_0\
    );
\ctrl[18]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(0),
      I1 => state(0),
      I2 => state(2),
      O => \ctrl[18]_i_6_n_0\
    );
\ctrl[18]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70303000"
    )
        port map (
      I0 => state(2),
      I1 => state(4),
      I2 => \^fsm_sequential_state_reg[3]_0\(1),
      I3 => \^fsm_sequential_state_reg[3]_0\(0),
      I4 => state(0),
      O => \ctrl[18]_i_7_n_0\
    );
\ctrl[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \ctrl[19]_i_2_n_0\,
      I1 => state(4),
      I2 => state(2),
      I3 => \^fsm_sequential_state_reg[3]_0\(0),
      I4 => state(0),
      I5 => \^ctrl_reg[19]_0\(9),
      O => \ctrl[19]_i_1_n_0\
    );
\ctrl[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000D7EF"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(1),
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      I2 => state(0),
      I3 => state(2),
      I4 => state(4),
      I5 => \ctrl[19]_i_3_n_0\,
      O => \ctrl[19]_i_2_n_0\
    );
\ctrl[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EC00FFFFEFFF"
    )
        port map (
      I0 => \op_b_ff_reg[14]\,
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      I2 => state(0),
      I3 => \^fsm_sequential_state_reg[3]_0\(1),
      I4 => state(2),
      I5 => \^ctrl_reg[19]_0\(9),
      O => \ctrl[19]_i_3_n_0\
    );
\ctrl[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0038300FFFFFFFF"
    )
        port map (
      I0 => imm(1),
      I1 => state(0),
      I2 => \^fsm_sequential_state_reg[3]_0\(1),
      I3 => state(2),
      I4 => \^fsm_sequential_state_reg[3]_0\(0),
      I5 => \ctrl[1]_i_4_n_0\,
      O => \ctrl[1]_i_2_n_0\
    );
\ctrl[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F5A4A0A"
    )
        port map (
      I0 => state(2),
      I1 => imm(1),
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => state(0),
      I4 => src(0),
      O => \ctrl[1]_i_3_n_0\
    );
\ctrl[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDFDFDDDDDDDF"
    )
        port map (
      I0 => src(0),
      I1 => state(0),
      I2 => \ctrl[2]_i_4_n_0\,
      I3 => \^fsm_sequential_state_reg[3]_0\(0),
      I4 => state(2),
      I5 => \^fsm_sequential_state_reg[3]_0\(1),
      O => \ctrl[1]_i_4_n_0\
    );
\ctrl[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEAAAAABE"
    )
        port map (
      I0 => \ctrl[21]_i_2_n_0\,
      I1 => state(2),
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => state(0),
      I4 => \^fsm_sequential_state_reg[3]_0\(1),
      I5 => state(4),
      O => \ctrl[20]_i_1_n_0\
    );
\ctrl[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FAFFFBFF"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(0),
      I1 => state(0),
      I2 => state(4),
      I3 => \^fsm_sequential_state_reg[3]_0\(1),
      I4 => state(2),
      I5 => \ctrl[21]_i_2_n_0\,
      O => \ctrl[21]_i_1_n_0\
    );
\ctrl[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => imm(7),
      I1 => state(0),
      I2 => p_2_in(0),
      I3 => \^fsm_sequential_state_reg[3]_0\(1),
      I4 => state(4),
      I5 => \ctrl[21]_i_3_n_0\,
      O => \ctrl[21]_i_2_n_0\
    );
\ctrl[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFFFFFF"
    )
        port map (
      I0 => src(3),
      I1 => src(0),
      I2 => src(1),
      I3 => src(2),
      I4 => state(2),
      I5 => \ctrl[21]_i_4_n_0\,
      O => \ctrl[21]_i_3_n_0\
    );
\ctrl[21]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(0),
      I1 => p_2_in(1),
      O => \ctrl[21]_i_4_n_0\
    );
\ctrl[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => state(4),
      I1 => \^fsm_sequential_state_reg[3]_0\(1),
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => state(2),
      O => \ctrl[22]_i_1_n_0\
    );
\ctrl[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40014050"
    )
        port map (
      I0 => state(4),
      I1 => \^fsm_sequential_state_reg[3]_0\(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \^fsm_sequential_state_reg[3]_0\(0),
      O => \ctrl[23]_i_1_n_0\
    );
\ctrl[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAABABBBAAA"
    )
        port map (
      I0 => \ctrl[28]_i_2_n_0\,
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      I2 => state(2),
      I3 => state(4),
      I4 => state(0),
      I5 => \^fsm_sequential_state_reg[3]_0\(1),
      O => \ctrl[24]_i_1_n_0\
    );
\ctrl[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => state(4),
      I1 => \^fsm_sequential_state_reg[3]_0\(1),
      I2 => state(0),
      I3 => \^fsm_sequential_state_reg[3]_0\(0),
      I4 => state(2),
      O => \ctrl[25]_i_1_n_0\
    );
\ctrl[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => state(4),
      I1 => \ctrl[26]_i_2_n_0\,
      I2 => \ctrl[26]_i_3_n_0\,
      O => \ctrl[26]_i_1_n_0\
    );
\ctrl[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D999111100002222"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(0),
      I1 => state(0),
      I2 => p_0_in14_in,
      I3 => \am_reg_n_0_[0]\,
      I4 => \^fsm_sequential_state_reg[3]_0\(1),
      I5 => state(2),
      O => \ctrl[26]_i_2_n_0\
    );
\ctrl[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFDFDFFFFFDFFF"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(1),
      I1 => state(2),
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => state(0),
      I4 => p_2_in(1),
      I5 => \am_reg_n_0_[0]\,
      O => \ctrl[26]_i_3_n_0\
    );
\ctrl[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00110F00"
    )
        port map (
      I0 => state(0),
      I1 => \^fsm_sequential_state_reg[3]_0\(1),
      I2 => \ctrl[27]_i_2_n_0\,
      I3 => state(4),
      I4 => state(2),
      O => \ctrl[27]_i_1_n_0\
    );
\ctrl[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF00FFFFFF00FF"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => state(0),
      I4 => \^fsm_sequential_state_reg[3]_0\(0),
      I5 => \am_reg_n_0_[0]\,
      O => \ctrl[27]_i_2_n_0\
    );
\ctrl[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF80000"
    )
        port map (
      I0 => p_0_in14_in,
      I1 => \am_reg_n_0_[0]\,
      I2 => p_2_in(0),
      I3 => p_2_in(1),
      I4 => \ctrl[28]_i_2_n_0\,
      I5 => \ctrl[28]_i_3_n_0\,
      O => \ctrl[28]_i_1_n_0\
    );
\ctrl[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000020202020"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(0),
      I1 => state(2),
      I2 => \ctrl[18]_i_5_n_0\,
      I3 => p_2_in(1),
      I4 => \ctrl[14]_i_2__0_n_0\,
      I5 => state(0),
      O => \ctrl[28]_i_2_n_0\
    );
\ctrl[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAB00"
    )
        port map (
      I0 => state(2),
      I1 => \FSM_sequential_state_reg[0]_1\,
      I2 => irq_start_reg_n_0,
      I3 => \ctrl[28]_i_4_n_0\,
      I4 => \ctrl[28]_i_5_n_0\,
      I5 => mem_rd_ff,
      O => \ctrl[28]_i_3_n_0\
    );
\ctrl[28]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(0),
      I1 => state(0),
      I2 => \^fsm_sequential_state_reg[3]_0\(1),
      I3 => state(4),
      O => \ctrl[28]_i_4_n_0\
    );
\ctrl[28]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(0),
      I1 => state(2),
      I2 => state(4),
      O => \ctrl[28]_i_5_n_0\
    );
\ctrl[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEAEAEA"
    )
        port map (
      I0 => \ctrl[2]_i_2_n_0\,
      I1 => \ctrl[2]_i_3_n_0\,
      I2 => \ctrl[2]_i_4_n_0\,
      I3 => state(2),
      I4 => \^fsm_sequential_state_reg[3]_0\(1),
      I5 => \ctrl[2]_i_5_n_0\,
      O => \ctrl[2]_i_1_n_0\
    );
\ctrl[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAFEAAAAAAAAA"
    )
        port map (
      I0 => state(4),
      I1 => src(1),
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => state(0),
      I4 => \^fsm_sequential_state_reg[3]_0\(1),
      I5 => state(2),
      O => \ctrl[2]_i_2_n_0\
    );
\ctrl[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22222222222222"
    )
        port map (
      I0 => src(1),
      I1 => state(0),
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => imm(2),
      I4 => \^fsm_sequential_state_reg[3]_0\(1),
      I5 => state(2),
      O => \ctrl[2]_i_3_n_0\
    );
\ctrl[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A2A2A2AAAAAAAA"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(1),
      I1 => p_2_in(0),
      I2 => p_2_in(1),
      I3 => \am_reg_n_0_[0]\,
      I4 => p_0_in14_in,
      I5 => \^fsm_sequential_state_reg[3]_0\(0),
      O => \ctrl[2]_i_4_n_0\
    );
\ctrl[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C404CCCCC404CC"
    )
        port map (
      I0 => src(1),
      I1 => state(4),
      I2 => state(2),
      I3 => \^fsm_sequential_state_reg[3]_0\(0),
      I4 => state(0),
      I5 => imm(2),
      O => \ctrl[2]_i_5_n_0\
    );
\ctrl[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \ctrl[4]_i_2_n_0\,
      I1 => src(2),
      I2 => state(0),
      I3 => imm(3),
      I4 => \ctrl[4]_i_3_n_0\,
      O => \ctrl[3]_i_1_n_0\
    );
\ctrl[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \ctrl[4]_i_2_n_0\,
      I1 => src(3),
      I2 => state(0),
      I3 => imm(4),
      I4 => \ctrl[4]_i_3_n_0\,
      O => \ctrl[4]_i_1_n_0\
    );
\ctrl[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEDDFF07"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(0),
      I1 => state(2),
      I2 => \ctrl[2]_i_4_n_0\,
      I3 => state(0),
      I4 => state(4),
      O => \ctrl[4]_i_2_n_0\
    );
\ctrl[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3008"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(1),
      I1 => state(2),
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => state(4),
      O => \ctrl[4]_i_3_n_0\
    );
\ctrl[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8FFF00008000"
    )
        port map (
      I0 => imm(8),
      I1 => \ctrl[14]_i_2__0_n_0\,
      I2 => \FSM_sequential_state[3]_i_4_n_0\,
      I3 => \ctrl[5]_i_2_n_0\,
      I4 => state(4),
      I5 => sam(0),
      O => \ctrl[5]_i_1_n_0\
    );
\ctrl[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(2),
      I1 => \^fsm_sequential_state_reg[3]_0\(1),
      O => \ctrl[5]_i_2_n_0\
    );
\ctrl[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA8AAAAAAA"
    )
        port map (
      I0 => sam(1),
      I1 => state(4),
      I2 => \^fsm_sequential_state_reg[3]_0\(1),
      I3 => state(2),
      I4 => state(0),
      I5 => \^fsm_sequential_state_reg[3]_0\(0),
      O => \ctrl[6]_i_1_n_0\
    );
\ctrl[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \ctrl[14]_i_2_n_0\,
      I1 => \^ctrl_reg[25]_2\,
      I2 => \ctrl[14]_i_3_n_0\,
      I3 => imem_file_ram_l_reg_0_i_19_n_0,
      I4 => \^mem_addr_reg_reg[1]\,
      O => \ctrl_reg[27]_1\(0)
    );
\ctrl[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \ctrl[7]_i_2_n_0\,
      I1 => state(4),
      I2 => state(2),
      I3 => \^fsm_sequential_state_reg[3]_0\(0),
      I4 => state(0),
      O => \ctrl[7]_i_1_n_0\
    );
\ctrl[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ir_reg_n_0_[11]\,
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => \ctrl[7]_i_3_n_0\,
      O => \ctrl[7]_i_2_n_0\
    );
\ctrl[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \ir_reg_n_0_[10]\,
      I2 => imm_i0,
      I3 => p_0_in(2),
      O => \ctrl[7]_i_3_n_0\
    );
\ctrl[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF08AA"
    )
        port map (
      I0 => \ctrl[8]_i_2_n_0\,
      I1 => \ctrl_reg[8]_1\,
      I2 => \ctrl[8]_i_4_n_0\,
      I3 => \ctrl[8]_i_5_n_0\,
      I4 => \ctrl[8]_i_6_n_0\,
      I5 => \ctrl[8]_i_7_n_0\,
      O => \ctrl[8]_i_1_n_0\
    );
\ctrl[8]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      O => \ctrl[8]_i_10_n_0\
    );
\ctrl[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(1),
      I1 => state(2),
      O => \ctrl[8]_i_2_n_0\
    );
\ctrl[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \am_reg[3]_0\(3),
      I1 => \ctrl_reg[17]_0\,
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => state(0),
      O => \ctrl[8]_i_4_n_0\
    );
\ctrl[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5755F757F757F757"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]_0\(0),
      I1 => p_2_in(0),
      I2 => state(0),
      I3 => p_2_in(1),
      I4 => \am_reg_n_0_[0]\,
      I5 => p_0_in14_in,
      O => \ctrl[8]_i_5_n_0\
    );
\ctrl[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAAAEBBFEBAF"
    )
        port map (
      I0 => state(4),
      I1 => state(2),
      I2 => state(0),
      I3 => \^fsm_sequential_state_reg[3]_0\(0),
      I4 => \ctrl[8]_i_9_n_0\,
      I5 => \^fsm_sequential_state_reg[3]_0\(1),
      O => \ctrl[8]_i_6_n_0\
    );
\ctrl[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E000F000F00000"
    )
        port map (
      I0 => \am_reg_n_0_[0]\,
      I1 => \ctrl[8]_i_10_n_0\,
      I2 => state(4),
      I3 => state(2),
      I4 => \^fsm_sequential_state_reg[3]_0\(0),
      I5 => state(0),
      O => \ctrl[8]_i_7_n_0\
    );
\ctrl[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => irq_start_reg_n_0,
      I1 => \FSM_sequential_state_reg[0]_1\,
      O => \ctrl[8]_i_9_n_0\
    );
\ctrl[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => state(2),
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      I2 => state(0),
      I3 => \^fsm_sequential_state_reg[3]_0\(1),
      I4 => state(4),
      O => \ctrl[9]_i_1_n_0\
    );
\ctrl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[0]_i_1_n_0\,
      Q => \ctrl_reg_n_0_[0]\,
      R => '0'
    );
\ctrl_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[11]_i_1_n_0\,
      Q => \ctrl_reg_n_0_[11]\,
      R => '0'
    );
\ctrl_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[12]_i_1_n_0\,
      Q => \ctrl_reg_n_0_[12]\,
      R => '0'
    );
\ctrl_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[13]_i_1_n_0\,
      Q => \^ctrl_reg[26]_0\(1),
      R => '0'
    );
\ctrl_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[14]_i_1_n_0\,
      Q => \^ctrl_reg[26]_0\(2),
      R => '0'
    );
\ctrl_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \ctrl[18]_i_1_n_0\,
      D => \ctrl[15]_i_1_n_0\,
      Q => \^ctrl_reg[19]_0\(5),
      R => '0'
    );
\ctrl_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \ctrl[18]_i_1_n_0\,
      D => \ctrl[16]_i_1_n_0\,
      Q => \^ctrl_reg[19]_0\(6),
      R => '0'
    );
\ctrl_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \ctrl[18]_i_1_n_0\,
      D => \ctrl[17]_i_1_n_0\,
      Q => \^ctrl_reg[19]_0\(7),
      R => '0'
    );
\ctrl_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \ctrl[18]_i_1_n_0\,
      D => \ctrl[18]_i_2_n_0\,
      Q => \^ctrl_reg[19]_0\(8),
      R => '0'
    );
\ctrl_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[19]_i_1_n_0\,
      Q => \^ctrl_reg[19]_0\(9),
      R => '0'
    );
\ctrl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl_reg[1]_i_1_n_0\,
      Q => \^ctrl_reg[19]_0\(0),
      R => '0'
    );
\ctrl_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ctrl[1]_i_2_n_0\,
      I1 => \ctrl[1]_i_3_n_0\,
      O => \ctrl_reg[1]_i_1_n_0\,
      S => state(4)
    );
\ctrl_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[20]_i_1_n_0\,
      Q => \ctrl_reg_n_0_[20]\,
      R => '0'
    );
\ctrl_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[21]_i_1_n_0\,
      Q => \ctrl_reg_n_0_[21]\,
      R => '0'
    );
\ctrl_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[22]_i_1_n_0\,
      Q => \ctrl_reg_n_0_[22]\,
      R => '0'
    );
\ctrl_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[23]_i_1_n_0\,
      Q => \ctrl_reg_n_0_[23]\,
      R => '0'
    );
\ctrl_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[24]_i_1_n_0\,
      Q => \ctrl_reg_n_0_[24]\,
      R => '0'
    );
\ctrl_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[25]_i_1_n_0\,
      Q => \^ctrl_reg[26]_0\(3),
      R => '0'
    );
\ctrl_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[26]_i_1_n_0\,
      Q => \^ctrl_reg[26]_0\(4),
      R => '0'
    );
\ctrl_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[27]_i_1_n_0\,
      Q => ctrl_bus(27),
      R => '0'
    );
\ctrl_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[28]_i_1_n_0\,
      Q => \cpu_bus[rd_en]\,
      R => '0'
    );
\ctrl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[2]_i_1_n_0\,
      Q => \^ctrl_reg[19]_0\(1),
      R => '0'
    );
\ctrl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[3]_i_1_n_0\,
      Q => \^ctrl_reg[19]_0\(2),
      R => '0'
    );
\ctrl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[4]_i_1_n_0\,
      Q => \^ctrl_reg[19]_0\(3),
      R => '0'
    );
\ctrl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[5]_i_1_n_0\,
      Q => \ctrl_reg_n_0_[5]\,
      R => '0'
    );
\ctrl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[6]_i_1_n_0\,
      Q => \ctrl_reg_n_0_[6]\,
      R => '0'
    );
\ctrl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[7]_i_1_n_0\,
      Q => \ctrl_reg_n_0_[7]\,
      R => '0'
    );
\ctrl_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[8]_i_1_n_0\,
      Q => \^ctrl_reg[19]_0\(4),
      R => '0'
    );
\ctrl_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl[9]_i_1_n_0\,
      Q => \^ctrl_reg[26]_0\(0),
      R => '0'
    );
\data_o[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^mem_addr_reg_reg[1]\,
      I1 => imem_file_ram_l_reg_0_i_19_n_0,
      I2 => \^ctrl_reg[25]_0\,
      O => D(0)
    );
\data_o[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(0),
      I3 => \data_o_reg[15]_0\(0),
      O => \din_reg[15]\(0)
    );
\data_o[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(0),
      I3 => \data_o_reg[7]\(0),
      O => \pwm_ch_reg[1][7]\(0)
    );
\data_o[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[6]\(0),
      I3 => cnt_reg(0),
      O => \ctrl_reg[0]_0\
    );
\data_o[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \^ctrl_reg[25]_0\,
      I1 => imem_file_ram_l_reg_0_i_19_n_0,
      I2 => \^mem_addr_reg_reg[1]\,
      O => D(6)
    );
\data_o[10]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(10),
      I3 => \data_o_reg[15]_0\(10),
      O => \din_reg[15]\(10)
    );
\data_o[10]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(10),
      I3 => \data_o_reg[15]_1\(2),
      O => \pwm_ch_reg[1][7]\(10)
    );
\data_o[10]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => cnt_reg(10),
      O => cnt_reg_10_sn_1
    );
\data_o[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => \^ctrl_reg[25]_0\,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => imem_file_ram_l_reg_0_i_19_n_0,
      O => D(7)
    );
\data_o[11]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => \^ctrl_reg[28]_0\,
      I1 => \data_o[15]_i_4_n_0\,
      I2 => \^ctrl_reg[25]_2\,
      I3 => \^ctrl_reg[25]_0\,
      I4 => \data_o[15]_i_3_n_0\,
      O => \ctrl_reg[28]_3\
    );
\data_o[11]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(11),
      I3 => \data_o_reg[15]_0\(11),
      O => \din_reg[15]\(11)
    );
\data_o[11]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(11),
      I3 => \data_o_reg[15]_1\(3),
      O => \pwm_ch_reg[1][7]\(11)
    );
\data_o[11]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => cnt_reg(11),
      O => cnt_reg_11_sn_1
    );
\data_o[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^mem_addr_reg_reg[1]\,
      I1 => \uart_tx_sreg_reg[7]\(2),
      O => \ctrl_reg[12]_0\
    );
\data_o[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(12),
      I3 => \data_o_reg[15]_0\(12),
      O => \din_reg[15]\(12)
    );
\data_o[12]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(12),
      I3 => \data_o_reg[15]_1\(4),
      O => \pwm_ch_reg[1][7]\(12)
    );
\data_o[12]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => cnt_reg(12),
      O => cnt_reg_12_sn_1
    );
\data_o[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(13),
      I3 => \data_o_reg[15]_0\(13),
      O => \din_reg[15]\(13)
    );
\data_o[13]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(13),
      I3 => \data_o_reg[15]_1\(5),
      O => \pwm_ch_reg[1][7]\(13)
    );
\data_o[13]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => cnt_reg(13),
      O => cnt_reg_13_sn_1
    );
\data_o[13]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^mem_addr_reg_reg[1]\,
      I1 => imem_file_ram_l_reg_0_i_19_n_0,
      I2 => \^ctrl_reg[25]_0\,
      O => D(8)
    );
\data_o[14]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^mem_addr_reg_reg[1]\,
      I1 => imem_file_ram_l_reg_0_i_19_n_0,
      O => D(9)
    );
\data_o[14]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(14),
      I3 => \data_o_reg[15]_0\(14),
      O => \din_reg[15]\(14)
    );
\data_o[14]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(14),
      I3 => \data_o_reg[15]_1\(6),
      O => \pwm_ch_reg[1][7]\(14)
    );
\data_o[14]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => cnt_reg(14),
      O => cnt_reg_14_sn_1
    );
\data_o[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \^ctrl_reg[28]_0\,
      I1 => \ctrl[14]_i_3_n_0\,
      I2 => imem_file_ram_l_reg_0_i_19_n_0,
      I3 => \^ctrl_reg[25]_2\,
      O => \ctrl_reg[28]_2\
    );
\data_o[15]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \^ctrl_reg[28]_0\,
      I1 => \^ctrl_reg[25]_2\,
      I2 => \^ctrl_reg[25]_0\,
      I3 => \data_o[15]_i_3_n_0\,
      I4 => \data_o[15]_i_4_n_0\,
      O => SR(0)
    );
\data_o[15]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^ctrl_reg[28]_0\,
      I1 => \^ctrl_reg[25]_0\,
      I2 => \^ctrl_reg[25]_2\,
      I3 => \data_o[15]_i_3_n_0\,
      I4 => \data_o[15]_i_4_n_0\,
      O => \ctrl_reg[28]_4\(0)
    );
\data_o[15]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^ctrl_reg[25]_2\,
      I1 => \^ctrl_reg[28]_0\,
      I2 => \data_o[15]_i_4_n_0\,
      I3 => \data_o[15]_i_3_n_0\,
      O => \ctrl_reg[25]_4\(0)
    );
\data_o[15]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \ctrl[14]_i_3_n_0\,
      I1 => \^ctrl_reg[25]_2\,
      I2 => \^ctrl_reg[28]_0\,
      O => \ctrl_reg[25]_1\
    );
\data_o[15]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"23"
    )
        port map (
      I0 => \^mem_addr_reg_reg[1]\,
      I1 => imem_file_ram_l_reg_0_i_19_n_0,
      I2 => \^ctrl_reg[25]_0\,
      O => D(10)
    );
\data_o[15]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(15),
      I3 => \data_o_reg[15]_0\(15),
      O => \din_reg[15]\(15)
    );
\data_o[15]_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(15),
      I3 => \data_o_reg[15]_1\(7),
      O => \pwm_ch_reg[1][7]\(15)
    );
\data_o[15]_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => cnt_reg(15),
      O => cnt_reg_15_sn_1
    );
\data_o[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF070000FF07FFFF"
    )
        port map (
      I0 => \^ctrl_reg[3]_0\,
      I1 => data_o0(6),
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => \^ctrl_reg[26]_0\(3),
      I4 => \ctrl_reg_n_0_[24]\,
      I5 => imem_file_ram_l_reg_3(6),
      O => \data_o[15]_i_3_n_0\
    );
\data_o[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABF0000AABFFFFF"
    )
        port map (
      I0 => \^ctrl_reg[26]_0\(3),
      I1 => \^ctrl_reg[3]_0\,
      I2 => data_o0(5),
      I3 => \op_b_ff[13]_i_3_n_0\,
      I4 => \ctrl_reg_n_0_[24]\,
      I5 => imem_file_ram_l_reg_3(5),
      O => \data_o[15]_i_4_n_0\
    );
\data_o[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(1),
      I3 => \data_o_reg[15]_0\(1),
      O => \din_reg[15]\(1)
    );
\data_o[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(1),
      I3 => \data_o_reg[7]\(1),
      O => \pwm_ch_reg[1][7]\(1)
    );
\data_o[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[6]\(1),
      I3 => cnt_reg(1),
      O => \ctrl_reg[1]_2\
    );
\data_o[1]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^mem_addr_reg_reg[1]\,
      I1 => imem_file_ram_l_reg_0_i_19_n_0,
      I2 => \^ctrl_reg[25]_0\,
      O => D(1)
    );
\data_o[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \^ctrl_reg[25]_0\,
      I1 => imem_file_ram_l_reg_0_i_19_n_0,
      I2 => \^mem_addr_reg_reg[1]\,
      O => D(2)
    );
\data_o[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(2),
      I3 => \data_o_reg[15]_0\(2),
      O => \din_reg[15]\(2)
    );
\data_o[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(2),
      I3 => \data_o_reg[7]\(2),
      O => \pwm_ch_reg[1][7]\(2)
    );
\data_o[2]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[6]\(2),
      I3 => cnt_reg(2),
      O => \ctrl_reg[2]_0\
    );
\data_o[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \^ctrl_reg[25]_0\,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => imem_file_ram_l_reg_0_i_19_n_0,
      O => D(3)
    );
\data_o[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(3),
      I3 => \data_o_reg[15]_0\(3),
      O => \din_reg[15]\(3)
    );
\data_o[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(3),
      I3 => \data_o_reg[7]\(3),
      O => \pwm_ch_reg[1][7]\(3)
    );
\data_o[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[6]\(3),
      I3 => cnt_reg(3),
      O => \ctrl_reg[3]_1\
    );
\data_o[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(4),
      I3 => \data_o_reg[15]_0\(4),
      O => \din_reg[15]\(4)
    );
\data_o[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(4),
      I3 => \data_o_reg[7]\(4),
      O => \pwm_ch_reg[1][7]\(4)
    );
\data_o[4]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[6]\(4),
      I3 => cnt_reg(4),
      O => \ctrl_reg[4]_0\
    );
\data_o[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(5),
      I3 => \data_o_reg[15]_0\(5),
      O => \din_reg[15]\(5)
    );
\data_o[5]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(5),
      I3 => \data_o_reg[7]\(5),
      O => \pwm_ch_reg[1][7]\(5)
    );
\data_o[5]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[6]\(5),
      I3 => cnt_reg(5),
      O => \ctrl_reg[5]_0\
    );
\data_o[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"16"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \^ctrl_reg[25]_0\,
      O => D(4)
    );
\data_o[6]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(6),
      I3 => \data_o_reg[15]_0\(6),
      O => \din_reg[15]\(6)
    );
\data_o[6]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(6),
      I3 => \data_o_reg[7]\(6),
      O => \pwm_ch_reg[1][7]\(6)
    );
\data_o[6]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[6]\(6),
      I3 => cnt_reg(6),
      O => \ctrl_reg[6]_0\
    );
\data_o[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(7),
      I3 => \data_o_reg[15]_0\(7),
      O => \din_reg[15]\(7)
    );
\data_o[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(7),
      I3 => \data_o_reg[7]\(7),
      O => \pwm_ch_reg[1][7]\(7)
    );
\data_o[7]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => cnt_reg(7),
      O => cnt_reg_7_sn_1
    );
\data_o[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ctrl_reg[25]_0\,
      I1 => imem_file_ram_l_reg_0_i_19_n_0,
      O => D(5)
    );
\data_o[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^mem_addr_reg_reg[1]\,
      I1 => \uart_tx_sreg_reg[7]\(0),
      O => \ctrl_reg[8]_0\
    );
\data_o[8]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(8),
      I3 => \data_o_reg[15]_0\(8),
      O => \din_reg[15]\(8)
    );
\data_o[8]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(8),
      I3 => \data_o_reg[15]_1\(0),
      O => \pwm_ch_reg[1][7]\(8)
    );
\data_o[8]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => cnt_reg(8),
      O => cnt_reg_8_sn_1
    );
\data_o[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^mem_addr_reg_reg[1]\,
      I1 => \uart_tx_sreg_reg[7]\(1),
      O => \ctrl_reg[9]_0\
    );
\data_o[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \data_o_reg[15]\(9),
      I3 => \data_o_reg[15]_0\(9),
      O => \din_reg[15]\(9)
    );
\data_o[9]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => p_1_in(9),
      I3 => \data_o_reg[15]_1\(1),
      O => \pwm_ch_reg[1][7]\(9)
    );
\data_o[9]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => cnt_reg(9),
      O => cnt_reg_9_sn_1
    );
dio_swap_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080808A8"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(9),
      I1 => imem_file_ram_l_reg_3(0),
      I2 => \ctrl_reg_n_0_[24]\,
      I3 => \^ctrl_reg[26]_0\(3),
      I4 => dio_swap_i_2_n_0,
      O => dio_swap0
    );
dio_swap_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000FFBFFFF0FFB"
    )
        port map (
      I0 => \ctrl_reg_n_0_[6]\,
      I1 => sreg(0),
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \^ctrl_reg[19]_0\(0),
      I4 => \^ctrl_reg[3]_0\,
      I5 => data_o0(0),
      O => dio_swap_i_2_n_0
    );
dmem_file_h_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AA0200AAAAAAAA"
    )
        port map (
      I0 => ctrl_bus(27),
      I1 => dio_swap_i_2_n_0,
      I2 => \^ctrl_reg[26]_0\(3),
      I3 => \ctrl_reg_n_0_[24]\,
      I4 => imem_file_ram_l_reg_3(0),
      I5 => bw_ff,
      O => \cpu_bus[wr_en]\(1)
    );
dmem_file_l_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => dmem_file_l_reg_i_3_n_0,
      I1 => dmem_file_l_reg_i_4_n_0,
      I2 => dmem_file_l_reg_i_5_n_0,
      I3 => dmem_file_l_reg_i_6_n_0,
      O => acc_en
    );
dmem_file_l_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A8AAAAAAAAAA"
    )
        port map (
      I0 => ctrl_bus(27),
      I1 => dio_swap_i_2_n_0,
      I2 => \^ctrl_reg[26]_0\(3),
      I3 => \ctrl_reg_n_0_[24]\,
      I4 => imem_file_ram_l_reg_3(0),
      I5 => bw_ff,
      O => \cpu_bus[wr_en]\(0)
    );
dmem_file_l_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"053505F50F3F0FFF"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(15),
      I1 => \op_b_ff[15]_i_2_n_0\,
      I2 => \ctrl_reg_n_0_[24]\,
      I3 => \^ctrl_reg[26]_0\(3),
      I4 => \^reg_i\(14),
      I5 => imem_file_ram_l_reg_3(14),
      O => dmem_file_l_reg_i_3_n_0
    );
dmem_file_l_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABF0000AABFFFFF"
    )
        port map (
      I0 => \^ctrl_reg[26]_0\(3),
      I1 => \^ctrl_reg[3]_0\,
      I2 => data_o0(12),
      I3 => \op_b_ff[13]_i_3_n_0\,
      I4 => \ctrl_reg_n_0_[24]\,
      I5 => imem_file_ram_l_reg_3(12),
      O => dmem_file_l_reg_i_4_n_0
    );
dmem_file_l_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABF0000AABFFFFF"
    )
        port map (
      I0 => \^ctrl_reg[26]_0\(3),
      I1 => \^ctrl_reg[3]_0\,
      I2 => data_o0(11),
      I3 => \op_b_ff[13]_i_3_n_0\,
      I4 => \ctrl_reg_n_0_[24]\,
      I5 => imem_file_ram_l_reg_3(11),
      O => dmem_file_l_reg_i_5_n_0
    );
dmem_file_l_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABF0000AABFFFFF"
    )
        port map (
      I0 => \^ctrl_reg[26]_0\(3),
      I1 => \^ctrl_reg[3]_0\,
      I2 => data_o0(13),
      I3 => \op_b_ff[13]_i_3_n_0\,
      I4 => \ctrl_reg_n_0_[24]\,
      I5 => imem_file_ram_l_reg_3(13),
      O => dmem_file_l_reg_i_6_n_0
    );
\dout[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^mem_addr_reg_reg[1]\,
      I1 => imem_file_ram_l_reg_0_i_19_n_0,
      I2 => \dout[15]_i_2_n_0\,
      O => \mem_addr_reg_reg[1]_1\(0)
    );
\dout[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \ctrl[14]_i_2_n_0\,
      I1 => \^ctrl_reg[25]_2\,
      I2 => \^ctrl_reg[25]_0\,
      I3 => \data_o[15]_i_3_n_0\,
      I4 => \data_o[15]_i_4_n_0\,
      O => \dout[15]_i_2_n_0\
    );
enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \pwm_ch[0][7]_i_2_n_0\,
      O => \mem_addr_reg_reg[2]_2\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77787878"
    )
        port map (
      I0 => \ctrl_reg_n_0_[23]\,
      I1 => \i__carry__0_i_5_n_0\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(7),
      I4 => \^ctrl_reg[3]_0\,
      O => \ctrl_reg[23]_1\(3)
    );
\i__carry__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => \ctrl_reg_n_0_[20]\,
      I1 => \ir_reg_n_0_[5]\,
      I2 => \ctrl_reg_n_0_[21]\,
      O => \i__carry__0_i_10_n_0\
    );
\i__carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => \ctrl_reg_n_0_[20]\,
      I1 => \ir_reg_n_0_[4]\,
      I2 => \ctrl_reg_n_0_[21]\,
      O => \i__carry__0_i_11_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77787878"
    )
        port map (
      I0 => \ctrl_reg_n_0_[23]\,
      I1 => \i__carry__0_i_6_n_0\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(6),
      I4 => \^ctrl_reg[3]_0\,
      O => \ctrl_reg[23]_1\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77787878"
    )
        port map (
      I0 => \ctrl_reg_n_0_[23]\,
      I1 => \i__carry__0_i_7_n_0\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(5),
      I4 => \^ctrl_reg[3]_0\,
      O => \ctrl_reg[23]_1\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A80757F"
    )
        port map (
      I0 => \ctrl_reg_n_0_[23]\,
      I1 => \mem_addr_reg_reg[7]\,
      I2 => \ctrl_reg_n_0_[22]\,
      I3 => \i__carry__0_i_8_n_0\,
      I4 => \op_b_ff[4]_i_2_n_0\,
      O => \ctrl_reg[23]_1\(0)
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5FFC500"
    )
        port map (
      I0 => \op_b_ff_reg[15]\,
      I1 => mem_data_i(15),
      I2 => \uart_tx_sreg_reg[1]\,
      I3 => \ctrl_reg_n_0_[22]\,
      I4 => \i__carry__0_i_9_n_0\,
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5FFC500"
    )
        port map (
      I0 => \op_b_ff_reg[14]\,
      I1 => mem_data_i(14),
      I2 => \uart_tx_sreg_reg[1]\,
      I3 => \ctrl_reg_n_0_[22]\,
      I4 => \i__carry__0_i_10_n_0\,
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47FF4700"
    )
        port map (
      I0 => \ctrl_reg[17]_0\,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => \sam_reg[1]_0\,
      I3 => \ctrl_reg_n_0_[22]\,
      I4 => \i__carry__0_i_11_n_0\,
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => \ctrl_reg_n_0_[20]\,
      I1 => imm(4),
      I2 => \ctrl_reg_n_0_[21]\,
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => \ctrl_reg_n_0_[20]\,
      I1 => imm(7),
      I2 => \ctrl_reg_n_0_[21]\,
      O => \i__carry__0_i_9_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5C5CFC0C00000000"
    )
        port map (
      I0 => \op_b_ff_reg[3]\,
      I1 => \i__carry__1_i_7_n_0\,
      I2 => \ctrl_reg_n_0_[22]\,
      I3 => mem_data_i(11),
      I4 => \uart_tx_sreg_reg[1]\,
      I5 => \ctrl_reg_n_0_[23]\,
      O => \^di\(1)
    );
\i__carry__1_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => \ctrl_reg_n_0_[20]\,
      I1 => \ir_reg_n_0_[8]\,
      I2 => \ctrl_reg_n_0_[21]\,
      O => \i__carry__1_i_10_n_0\
    );
\i__carry__1_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => \ctrl_reg_n_0_[20]\,
      I1 => imm(8),
      I2 => \ctrl_reg_n_0_[21]\,
      O => \i__carry__1_i_11_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5C5CFC0C00000000"
    )
        port map (
      I0 => \mem_addr_reg_reg[11]_1\,
      I1 => \i__carry__1_i_7_n_0\,
      I2 => \ctrl_reg_n_0_[22]\,
      I3 => mem_data_i(10),
      I4 => \uart_tx_sreg_reg[1]\,
      I5 => \ctrl_reg_n_0_[23]\,
      O => \^di\(0)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55556AAAAAAA6AAA"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^ctrl_reg[19]_0\(0),
      I2 => \ctrl_reg_n_0_[6]\,
      I3 => \ctrl_reg_n_0_[5]\,
      I4 => \^ctrl_reg[3]_0\,
      I5 => data_o0(11),
      O => \ctrl_reg[1]_1\(3)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55556AAAAAAA6AAA"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^ctrl_reg[19]_0\(0),
      I2 => \ctrl_reg_n_0_[6]\,
      I3 => \ctrl_reg_n_0_[5]\,
      I4 => \^ctrl_reg[3]_0\,
      I5 => data_o0(10),
      O => \ctrl_reg[1]_1\(2)
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77787878"
    )
        port map (
      I0 => \ctrl_reg_n_0_[23]\,
      I1 => \i__carry__1_i_8_n_0\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(9),
      I4 => \^ctrl_reg[3]_0\,
      O => \ctrl_reg[1]_1\(1)
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ctrl_reg_n_0_[23]\,
      I1 => \i__carry__1_i_9_n_0\,
      I2 => \^reg_i\(8),
      O => \ctrl_reg[1]_1\(0)
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => \ctrl_reg_n_0_[20]\,
      I1 => imm_i0,
      I2 => \ctrl_reg_n_0_[21]\,
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"53FF5300"
    )
        port map (
      I0 => \i__carry__1_i_5_0\,
      I1 => \i__carry__1_i_5_1\,
      I2 => \uart_tx_sreg_reg[1]\,
      I3 => \ctrl_reg_n_0_[22]\,
      I4 => \i__carry__1_i_10_n_0\,
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__1_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"53FF5300"
    )
        port map (
      I0 => \op_b_ff_reg[0]\,
      I1 => \op_b_ff_reg[0]_0\,
      I2 => \uart_tx_sreg_reg[1]\,
      I3 => \ctrl_reg_n_0_[22]\,
      I4 => \i__carry__1_i_11_n_0\,
      O => \i__carry__1_i_9_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C5CFC5C00000000"
    )
        port map (
      I0 => \ctrl_reg[17]_0\,
      I1 => \i__carry__1_i_7_n_0\,
      I2 => \ctrl_reg_n_0_[22]\,
      I3 => \uart_tx_sreg_reg[1]\,
      I4 => \sam_reg[1]_0\,
      I5 => \ctrl_reg_n_0_[23]\,
      O => \^ctrl_reg[22]_1\(1)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA400A400000000"
    )
        port map (
      I0 => \ctrl_reg_n_0_[21]\,
      I1 => imm_i0,
      I2 => \ctrl_reg_n_0_[20]\,
      I3 => \ctrl_reg_n_0_[22]\,
      I4 => \op_b_ff_reg[12]\,
      I5 => \ctrl_reg_n_0_[23]\,
      O => \^ctrl_reg[22]_1\(0)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \op_b_ff[15]_i_2_n_0\,
      I1 => \i__carry__2_i_7_n_0\,
      I2 => \ctrl_reg_n_0_[23]\,
      O => \ctrl_reg[23]_2\(3)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ctrl_reg_n_0_[23]\,
      I1 => \mem_addr_reg0_carry__2_i_9_n_0\,
      I2 => \^reg_i\(14),
      O => \ctrl_reg[23]_2\(2)
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55556AAAAAAA6AAA"
    )
        port map (
      I0 => \^ctrl_reg[22]_1\(1),
      I1 => \^ctrl_reg[19]_0\(0),
      I2 => \ctrl_reg_n_0_[6]\,
      I3 => \ctrl_reg_n_0_[5]\,
      I4 => \^ctrl_reg[3]_0\,
      I5 => data_o0(13),
      O => \ctrl_reg[23]_2\(1)
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A80757F"
    )
        port map (
      I0 => \ctrl_reg_n_0_[23]\,
      I1 => \op_b_ff_reg[12]\,
      I2 => \ctrl_reg_n_0_[22]\,
      I3 => \i__carry__1_i_7_n_0\,
      I4 => \mem_addr_reg0_carry__2_i_11_n_0\,
      O => \ctrl_reg[23]_2\(0)
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A303A3F3"
    )
        port map (
      I0 => \op_b_ff_reg[15]\,
      I1 => \i__carry__1_i_7_n_0\,
      I2 => \ctrl_reg_n_0_[22]\,
      I3 => \uart_tx_sreg_reg[1]\,
      I4 => mem_data_i(15),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ctrl_reg_n_0_[21]\,
      I1 => \ctrl_reg_n_0_[20]\,
      I2 => imm(1),
      O => \i__carry_i_10_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => \ctrl_reg_n_0_[23]\,
      I1 => \i__carry_i_5__1_n_0\,
      I2 => \op_b_ff[3]_i_2_n_0\,
      O => \ctrl_reg[23]_0\(3)
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ctrl_reg_n_0_[23]\,
      I1 => \i__carry_i_6__1_n_0\,
      I2 => \^reg_i\(2),
      O => \ctrl_reg[23]_0\(2)
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => \ctrl_reg_n_0_[23]\,
      I1 => \i__carry_i_7__1_n_0\,
      I2 => \op_b_ff[1]_i_3_n_0\,
      O => \ctrl_reg[23]_0\(1)
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => \ctrl_reg_n_0_[23]\,
      I1 => mem_addr_reg0_carry_i_10_n_0,
      I2 => dio_swap_i_2_n_0,
      O => \ctrl_reg[23]_0\(0)
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5FFC500"
    )
        port map (
      I0 => \op_b_ff_reg[3]\,
      I1 => mem_data_i(11),
      I2 => \uart_tx_sreg_reg[1]\,
      I3 => \ctrl_reg_n_0_[22]\,
      I4 => \i__carry_i_8__1_n_0\,
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5FFC500"
    )
        port map (
      I0 => \mem_addr_reg_reg[11]_1\,
      I1 => mem_data_i(10),
      I2 => \uart_tx_sreg_reg[1]\,
      I3 => \ctrl_reg_n_0_[22]\,
      I4 => \i__carry_i_9_n_0\,
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35FF3500"
    )
        port map (
      I0 => \i__carry__1_i_5_0\,
      I1 => \i__carry__1_i_5_1\,
      I2 => \uart_tx_sreg_reg[1]\,
      I3 => \ctrl_reg_n_0_[22]\,
      I4 => \i__carry_i_10_n_0\,
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => \ctrl_reg_n_0_[20]\,
      I1 => imm(3),
      I2 => \ctrl_reg_n_0_[21]\,
      O => \i__carry_i_8__1_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => \ctrl_reg_n_0_[20]\,
      I1 => imm(2),
      I2 => \ctrl_reg_n_0_[21]\,
      O => \i__carry_i_9_n_0\
    );
i_flag_ff0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => sreg(2),
      Q => i_flag_ff0,
      R => '0'
    );
i_flag_ff1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => i_flag_ff0,
      Q => i_flag_ff1,
      R => '0'
    );
imem_file_ram_h_reg_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_1_1_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_9_9_i_2_n_0,
      O => dio_swap_reg_1(9)
    );
imem_file_ram_h_reg_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_0_0_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_8_8_i_2_n_0,
      O => dio_swap_reg_1(8)
    );
imem_file_ram_h_reg_1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_3_3_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_11_11_i_2_n_0,
      O => dio_swap_reg_1(11)
    );
imem_file_ram_h_reg_1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_2_2_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_10_10_i_2_n_0,
      O => dio_swap_reg_1(10)
    );
imem_file_ram_h_reg_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_5_5_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_13_13_i_2_n_0,
      O => dio_swap_reg_1(13)
    );
imem_file_ram_h_reg_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_4_4_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_12_12_i_2_n_0,
      O => dio_swap_reg_1(12)
    );
imem_file_ram_h_reg_3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_7_7_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_15_15_i_2_n_0,
      O => dio_swap_reg_1(15)
    );
imem_file_ram_h_reg_3_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_6_6_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_14_14_i_2_n_0,
      O => dio_swap_reg_1(14)
    );
imem_file_ram_l_reg_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0535"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(15),
      I1 => \op_b_ff[15]_i_2_n_0\,
      I2 => \ctrl_reg_n_0_[24]\,
      I3 => \^ctrl_reg[26]_0\(3),
      O => acc_en_0
    );
imem_file_ram_l_reg_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E2E2E222E222E22"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(6),
      I1 => \ctrl_reg_n_0_[24]\,
      I2 => \^ctrl_reg[26]_0\(3),
      I3 => \op_b_ff[13]_i_3_n_0\,
      I4 => data_o0(6),
      I5 => \^ctrl_reg[3]_0\,
      O => \cpu_bus[addr]\(3)
    );
imem_file_ram_l_reg_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222EEE2E2E2"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(5),
      I1 => \ctrl_reg_n_0_[24]\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(5),
      I4 => \^ctrl_reg[3]_0\,
      I5 => \^ctrl_reg[26]_0\(3),
      O => \cpu_bus[addr]\(2)
    );
imem_file_ram_l_reg_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \op_b_ff[4]_i_2_n_0\,
      I1 => \^ctrl_reg[26]_0\(3),
      I2 => \ctrl_reg_n_0_[24]\,
      I3 => imem_file_ram_l_reg_3(4),
      O => \^ctrl_reg[25]_2\
    );
imem_file_ram_l_reg_0_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \op_b_ff[3]_i_2_n_0\,
      I1 => \^ctrl_reg[26]_0\(3),
      I2 => \ctrl_reg_n_0_[24]\,
      I3 => imem_file_ram_l_reg_3(3),
      O => \^ctrl_reg[25]_0\
    );
imem_file_ram_l_reg_0_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      O => \cpu_bus[addr]\(1)
    );
imem_file_ram_l_reg_0_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^mem_addr_reg_reg[1]\,
      O => \cpu_bus[addr]\(0)
    );
imem_file_ram_l_reg_0_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_9_9_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_1_1_i_2_n_0,
      O => dio_swap_reg_1(1)
    );
imem_file_ram_l_reg_0_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_8_8_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_0_0_i_2_n_0,
      O => dio_swap_reg_1(0)
    );
imem_file_ram_l_reg_0_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335555"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(2),
      I1 => \^reg_i\(2),
      I2 => irq_sel(1),
      I3 => \^ctrl_reg[26]_0\(3),
      I4 => \ctrl_reg_n_0_[24]\,
      O => imem_file_ram_l_reg_0_i_19_n_0
    );
imem_file_ram_l_reg_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBC8"
    )
        port map (
      I0 => \^ctrl_reg[26]_0\(3),
      I1 => \ctrl_reg_n_0_[24]\,
      I2 => \^reg_i\(14),
      I3 => imem_file_ram_l_reg_3(14),
      O => \cpu_bus[addr]\(11)
    );
imem_file_ram_l_reg_0_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F305555"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(1),
      I1 => irq_sel(0),
      I2 => \^ctrl_reg[26]_0\(3),
      I3 => \op_b_ff[1]_i_3_n_0\,
      I4 => \ctrl_reg_n_0_[24]\,
      O => \^mem_addr_reg_reg[1]\
    );
imem_file_ram_l_reg_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222EEE2E2E2"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(13),
      I1 => \ctrl_reg_n_0_[24]\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(13),
      I4 => \^ctrl_reg[3]_0\,
      I5 => \^ctrl_reg[26]_0\(3),
      O => \cpu_bus[addr]\(10)
    );
imem_file_ram_l_reg_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222EEE2E2E2"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(12),
      I1 => \ctrl_reg_n_0_[24]\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(12),
      I4 => \^ctrl_reg[3]_0\,
      I5 => \^ctrl_reg[26]_0\(3),
      O => \cpu_bus[addr]\(9)
    );
imem_file_ram_l_reg_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222EEE2E2E2"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(11),
      I1 => \ctrl_reg_n_0_[24]\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(11),
      I4 => \^ctrl_reg[3]_0\,
      I5 => \^ctrl_reg[26]_0\(3),
      O => \cpu_bus[addr]\(8)
    );
imem_file_ram_l_reg_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222EEE2E2E2"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(10),
      I1 => \ctrl_reg_n_0_[24]\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(10),
      I4 => \^ctrl_reg[3]_0\,
      I5 => \^ctrl_reg[26]_0\(3),
      O => \cpu_bus[addr]\(7)
    );
imem_file_ram_l_reg_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222EEE2E2E2"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(9),
      I1 => \ctrl_reg_n_0_[24]\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(9),
      I4 => \^ctrl_reg[3]_0\,
      I5 => \^ctrl_reg[26]_0\(3),
      O => \cpu_bus[addr]\(6)
    );
imem_file_ram_l_reg_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(8),
      I1 => \ctrl_reg_n_0_[24]\,
      I2 => \^ctrl_reg[26]_0\(3),
      I3 => \^reg_i\(8),
      O => \cpu_bus[addr]\(5)
    );
imem_file_ram_l_reg_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222EEE2E2E2"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(7),
      I1 => \ctrl_reg_n_0_[24]\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(7),
      I4 => \^ctrl_reg[3]_0\,
      I5 => \^ctrl_reg[26]_0\(3),
      O => \cpu_bus[addr]\(4)
    );
imem_file_ram_l_reg_1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_11_11_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_3_3_i_2_n_0,
      O => dio_swap_reg_1(3)
    );
imem_file_ram_l_reg_1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_10_10_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_2_2_i_2_n_0,
      O => dio_swap_reg_1(2)
    );
imem_file_ram_l_reg_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_13_13_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_5_5_i_2_n_0,
      O => dio_swap_reg_1(5)
    );
imem_file_ram_l_reg_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_4_4_i_2_n_0,
      O => dio_swap_reg_1(4)
    );
imem_file_ram_l_reg_3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_15_15_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_7_7_i_2_n_0,
      O => dio_swap_reg_1(7)
    );
imem_file_ram_l_reg_3_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_file_reg_0_15_14_14_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_6_6_i_2_n_0,
      O => dio_swap_reg_1(6)
    );
\ir[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => state(0),
      I1 => \^fsm_sequential_state_reg[3]_0\(0),
      I2 => state(2),
      I3 => state(4),
      I4 => \^fsm_sequential_state_reg[3]_0\(1),
      O => \^e\(0)
    );
\ir_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(0),
      Q => imm(1),
      R => '0'
    );
\ir_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(10),
      Q => \ir_reg_n_0_[10]\,
      R => '0'
    );
\ir_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(11),
      Q => \ir_reg_n_0_[11]\,
      R => '0'
    );
\ir_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(12),
      Q => p_0_in(0),
      R => '0'
    );
\ir_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(13),
      Q => p_0_in(1),
      R => '0'
    );
\ir_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(14),
      Q => p_0_in(2),
      R => '0'
    );
\ir_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(15),
      Q => p_0_in(3),
      R => '0'
    );
\ir_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(1),
      Q => imm(2),
      R => '0'
    );
\ir_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(2),
      Q => imm(3),
      R => '0'
    );
\ir_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(3),
      Q => imm(4),
      R => '0'
    );
\ir_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(4),
      Q => \ir_reg_n_0_[4]\,
      R => '0'
    );
\ir_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(5),
      Q => \ir_reg_n_0_[5]\,
      R => '0'
    );
\ir_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(6),
      Q => imm(7),
      R => '0'
    );
\ir_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(7),
      Q => imm(8),
      R => '0'
    );
\ir_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(8),
      Q => \ir_reg_n_0_[8]\,
      R => '0'
    );
\ir_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^e\(0),
      D => mem_data_i(9),
      Q => imm_i0,
      R => '0'
    );
\irq_buf[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E0EEE0E0"
    )
        port map (
      I0 => \irq_buf[0]_i_2_n_0\,
      I1 => irq_sel(0),
      I2 => \irq_buf_reg_n_0_[0]\,
      I3 => irq_fire_ff,
      I4 => p_2_in3_in,
      I5 => \irq_buf_reg[1]_1\(1),
      O => p_9_out(0)
    );
\irq_buf[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => irq_sel(1),
      I1 => state(2),
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => state(0),
      I4 => \^fsm_sequential_state_reg[3]_0\(1),
      I5 => state(4),
      O => \irq_buf[0]_i_2_n_0\
    );
\irq_buf[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000DF"
    )
        port map (
      I0 => irq_sel(0),
      I1 => irq_sel(1),
      I2 => \ctrl[25]_i_1_n_0\,
      I3 => \irq_buf_reg[1]_2\,
      I4 => \irq_buf_reg[1]_1\(1),
      O => p_9_out(1)
    );
\irq_buf[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFDFDF00"
    )
        port map (
      I0 => irq_sel(1),
      I1 => irq_sel(0),
      I2 => \ctrl[25]_i_1_n_0\,
      I3 => p_8_in,
      I4 => irq_o,
      I5 => \irq_buf_reg[1]_1\(1),
      O => p_9_out(2)
    );
\irq_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => p_9_out(0),
      Q => \irq_buf_reg_n_0_[0]\,
      R => '0'
    );
\irq_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => p_9_out(1),
      Q => \^irq_buf_reg[1]_0\(0),
      R => '0'
    );
\irq_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => p_9_out(2),
      Q => p_8_in,
      R => '0'
    );
\irq_mask[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \dout[15]_i_2_n_0\,
      O => \mem_addr_reg_reg[2]_1\(0)
    );
irq_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AEA"
    )
        port map (
      I0 => irq_fire,
      I1 => irq_start_reg_n_0,
      I2 => sreg(2),
      I3 => \ctrl[25]_i_1_n_0\,
      O => irq_start_i_1_n_0
    );
irq_start_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => p_8_in,
      I1 => \irq_buf_reg_n_0_[0]\,
      I2 => \^irq_buf_reg[1]_0\(0),
      I3 => i_flag_ff1,
      I4 => sreg(2),
      O => irq_fire
    );
irq_start_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => irq_start_i_1_n_0,
      Q => irq_start_reg_n_0,
      R => '0'
    );
\irq_vec[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45FF4500"
    )
        port map (
      I0 => \irq_buf_reg_n_0_[0]\,
      I1 => \^irq_buf_reg[1]_0\(0),
      I2 => p_8_in,
      I3 => irq_vec,
      I4 => irq_sel(0),
      O => \irq_vec[0]_i_1_n_0\
    );
\irq_vec[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \irq_buf_reg_n_0_[0]\,
      I1 => \^irq_buf_reg[1]_0\(0),
      I2 => irq_vec,
      I3 => irq_sel(1),
      O => \irq_vec[1]_i_1_n_0\
    );
\irq_vec[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000088888880"
    )
        port map (
      I0 => sreg(2),
      I1 => i_flag_ff1,
      I2 => \^irq_buf_reg[1]_0\(0),
      I3 => \irq_buf_reg_n_0_[0]\,
      I4 => p_8_in,
      I5 => irq_start_reg_n_0,
      O => irq_vec
    );
\irq_vec_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \irq_vec[0]_i_1_n_0\,
      Q => irq_sel(0),
      R => '0'
    );
\irq_vec_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \irq_vec[1]_i_1_n_0\,
      Q => irq_sel(1),
      R => '0'
    );
\mem_addr_reg0_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(0),
      I1 => \ctrl_reg_n_0_[6]\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \^ctrl_reg[3]_0\,
      I4 => data_o0(7),
      O => \^reg_i\(7)
    );
\mem_addr_reg0_carry__0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47777777"
    )
        port map (
      I0 => data_o0(6),
      I1 => \^ctrl_reg[3]_0\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \ctrl_reg_n_0_[6]\,
      I4 => \^ctrl_reg[19]_0\(0),
      O => \mem_addr_reg0_carry__0_i_10_n_0\
    );
\mem_addr_reg0_carry__0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47777777"
    )
        port map (
      I0 => data_o0(5),
      I1 => \^ctrl_reg[3]_0\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \ctrl_reg_n_0_[6]\,
      I4 => \^ctrl_reg[19]_0\(0),
      O => \mem_addr_reg0_carry__0_i_11_n_0\
    );
\mem_addr_reg0_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(0),
      I1 => \ctrl_reg_n_0_[6]\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \^ctrl_reg[3]_0\,
      I4 => data_o0(6),
      O => \^reg_i\(6)
    );
\mem_addr_reg0_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(0),
      I1 => \ctrl_reg_n_0_[6]\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \^ctrl_reg[3]_0\,
      I4 => data_o0(5),
      O => \^reg_i\(5)
    );
\mem_addr_reg0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888BB8888888"
    )
        port map (
      I0 => data_o0(4),
      I1 => \^ctrl_reg[3]_0\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \ctrl_reg_n_0_[6]\,
      I4 => \^ctrl_reg[19]_0\(0),
      I5 => \FSM_sequential_state_reg[0]_1\,
      O => \^reg_i\(4)
    );
\mem_addr_reg0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA996555559965"
    )
        port map (
      I0 => \mem_addr_reg0_carry__0_i_9_n_0\,
      I1 => \ctrl_reg_n_0_[21]\,
      I2 => imm(7),
      I3 => \ctrl_reg_n_0_[20]\,
      I4 => \ctrl_reg_n_0_[22]\,
      I5 => \op_b_ff_reg[7]_0\,
      O => \ctrl_reg[21]_1\(3)
    );
\mem_addr_reg0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA996555559965"
    )
        port map (
      I0 => \mem_addr_reg0_carry__0_i_10_n_0\,
      I1 => \ctrl_reg_n_0_[21]\,
      I2 => \ir_reg_n_0_[5]\,
      I3 => \ctrl_reg_n_0_[20]\,
      I4 => \ctrl_reg_n_0_[22]\,
      I5 => \op_b_ff_reg[6]\,
      O => \ctrl_reg[21]_1\(2)
    );
\mem_addr_reg0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA996555559965"
    )
        port map (
      I0 => \mem_addr_reg0_carry__0_i_11_n_0\,
      I1 => \ctrl_reg_n_0_[21]\,
      I2 => \ir_reg_n_0_[4]\,
      I3 => \ctrl_reg_n_0_[20]\,
      I4 => \ctrl_reg_n_0_[22]\,
      I5 => \op_b_ff_reg[5]\,
      O => \ctrl_reg[21]_1\(1)
    );
\mem_addr_reg0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA996555559965"
    )
        port map (
      I0 => \op_b_ff[4]_i_2_n_0\,
      I1 => \ctrl_reg_n_0_[21]\,
      I2 => imm(4),
      I3 => \ctrl_reg_n_0_[20]\,
      I4 => \ctrl_reg_n_0_[22]\,
      I5 => \mem_addr_reg_reg[7]\,
      O => \ctrl_reg[21]_1\(0)
    );
\mem_addr_reg0_carry__0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47777777"
    )
        port map (
      I0 => data_o0(7),
      I1 => \^ctrl_reg[3]_0\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \ctrl_reg_n_0_[6]\,
      I4 => \^ctrl_reg[19]_0\(0),
      O => \mem_addr_reg0_carry__0_i_9_n_0\
    );
\mem_addr_reg0_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(0),
      I1 => \ctrl_reg_n_0_[6]\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \^ctrl_reg[3]_0\,
      I4 => data_o0(11),
      O => \^reg_i\(11)
    );
\mem_addr_reg0_carry__1_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \mem_addr_reg_reg[11]_1\,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => mem_data_i(10),
      I3 => \ctrl_reg_n_0_[22]\,
      I4 => \i__carry__1_i_7_n_0\,
      O => \mem_addr_reg0_carry__1_i_10_n_0\
    );
\mem_addr_reg0_carry__1_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47777777"
    )
        port map (
      I0 => data_o0(9),
      I1 => \^ctrl_reg[3]_0\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \ctrl_reg_n_0_[6]\,
      I4 => \^ctrl_reg[19]_0\(0),
      O => \mem_addr_reg0_carry__1_i_11_n_0\
    );
\mem_addr_reg0_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(0),
      I1 => \ctrl_reg_n_0_[6]\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \^ctrl_reg[3]_0\,
      I4 => data_o0(10),
      O => \^reg_i\(10)
    );
\mem_addr_reg0_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(0),
      I1 => \ctrl_reg_n_0_[6]\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \^ctrl_reg[3]_0\,
      I4 => data_o0(9),
      O => \^reg_i\(9)
    );
\mem_addr_reg0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC0020000C002"
    )
        port map (
      I0 => sreg(3),
      I1 => \^ctrl_reg[19]_0\(0),
      I2 => \ctrl_reg_n_0_[6]\,
      I3 => \ctrl_reg_n_0_[5]\,
      I4 => \^ctrl_reg[3]_0\,
      I5 => data_o0(8),
      O => \^reg_i\(8)
    );
\mem_addr_reg0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007FFF7FFF800080"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(0),
      I1 => \ctrl_reg_n_0_[6]\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \^ctrl_reg[3]_0\,
      I4 => data_o0(11),
      I5 => \mem_addr_reg0_carry__1_i_9_n_0\,
      O => \ctrl_reg[1]_0\(3)
    );
\mem_addr_reg0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007FFF7FFF800080"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(0),
      I1 => \ctrl_reg_n_0_[6]\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \^ctrl_reg[3]_0\,
      I4 => data_o0(10),
      I5 => \mem_addr_reg0_carry__1_i_10_n_0\,
      O => \ctrl_reg[1]_0\(2)
    );
\mem_addr_reg0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA996555559965"
    )
        port map (
      I0 => \mem_addr_reg0_carry__1_i_11_n_0\,
      I1 => \ctrl_reg_n_0_[21]\,
      I2 => \ir_reg_n_0_[8]\,
      I3 => \ctrl_reg_n_0_[20]\,
      I4 => \ctrl_reg_n_0_[22]\,
      I5 => \op_b_ff_reg[9]\,
      O => \ctrl_reg[1]_0\(1)
    );
\mem_addr_reg0_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555669AAAAA669A"
    )
        port map (
      I0 => \^reg_i\(8),
      I1 => \ctrl_reg_n_0_[21]\,
      I2 => imm(8),
      I3 => \ctrl_reg_n_0_[20]\,
      I4 => \ctrl_reg_n_0_[22]\,
      I5 => \op_b_ff_reg[8]\,
      O => \ctrl_reg[1]_0\(0)
    );
\mem_addr_reg0_carry__1_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \op_b_ff_reg[3]\,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => mem_data_i(11),
      I3 => \ctrl_reg_n_0_[22]\,
      I4 => \i__carry__1_i_7_n_0\,
      O => \mem_addr_reg0_carry__1_i_9_n_0\
    );
\mem_addr_reg0_carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => data_o0(14),
      I1 => \^ctrl_reg[3]_0\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \ctrl_reg_n_0_[6]\,
      I4 => \^ctrl_reg[19]_0\(0),
      O => \^reg_i\(14)
    );
\mem_addr_reg0_carry__2_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35FF3500"
    )
        port map (
      I0 => \ctrl_reg[17]_0\,
      I1 => \sam_reg[1]_0\,
      I2 => \uart_tx_sreg_reg[1]\,
      I3 => \ctrl_reg_n_0_[22]\,
      I4 => \i__carry__1_i_7_n_0\,
      O => \mem_addr_reg0_carry__2_i_10_n_0\
    );
\mem_addr_reg0_carry__2_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47777777"
    )
        port map (
      I0 => data_o0(12),
      I1 => \^ctrl_reg[3]_0\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \ctrl_reg_n_0_[6]\,
      I4 => \^ctrl_reg[19]_0\(0),
      O => \mem_addr_reg0_carry__2_i_11_n_0\
    );
\mem_addr_reg0_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(0),
      I1 => \ctrl_reg_n_0_[6]\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \^ctrl_reg[3]_0\,
      I4 => data_o0(13),
      O => \^reg_i\(13)
    );
\mem_addr_reg0_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(0),
      I1 => \ctrl_reg_n_0_[6]\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \^ctrl_reg[3]_0\,
      I4 => data_o0(12),
      O => \^reg_i\(12)
    );
\mem_addr_reg0_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47477477B8B88B88"
    )
        port map (
      I0 => \mem_addr_reg0_carry__2\,
      I1 => \ctrl_reg_n_0_[22]\,
      I2 => \ctrl_reg_n_0_[21]\,
      I3 => imm_i0,
      I4 => \ctrl_reg_n_0_[20]\,
      I5 => \op_b_ff[15]_i_2_n_0\,
      O => \ctrl_reg[22]_0\(3)
    );
\mem_addr_reg0_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007FFF7FFF800080"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(0),
      I1 => \ctrl_reg_n_0_[6]\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \^ctrl_reg[3]_0\,
      I4 => data_o0(14),
      I5 => \mem_addr_reg0_carry__2_i_9_n_0\,
      O => \ctrl_reg[22]_0\(2)
    );
\mem_addr_reg0_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007FFF7FFF800080"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(0),
      I1 => \ctrl_reg_n_0_[6]\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \^ctrl_reg[3]_0\,
      I4 => data_o0(13),
      I5 => \mem_addr_reg0_carry__2_i_10_n_0\,
      O => \ctrl_reg[22]_0\(1)
    );
\mem_addr_reg0_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA996555559965"
    )
        port map (
      I0 => \mem_addr_reg0_carry__2_i_11_n_0\,
      I1 => \ctrl_reg_n_0_[21]\,
      I2 => imm_i0,
      I3 => \ctrl_reg_n_0_[20]\,
      I4 => \ctrl_reg_n_0_[22]\,
      I5 => \op_b_ff_reg[12]\,
      O => \ctrl_reg[22]_0\(0)
    );
\mem_addr_reg0_carry__2_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \op_b_ff_reg[14]\,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => mem_data_i(14),
      I3 => \ctrl_reg_n_0_[22]\,
      I4 => \i__carry__1_i_7_n_0\,
      O => \mem_addr_reg0_carry__2_i_9_n_0\
    );
mem_addr_reg0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88BB888B888"
    )
        port map (
      I0 => data_o0(3),
      I1 => \^ctrl_reg[3]_0\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \ctrl_reg_n_0_[6]\,
      I4 => \^ctrl_reg[19]_0\(0),
      I5 => sreg(2),
      O => \^reg_i\(3)
    );
mem_addr_reg0_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3500350035FF3500"
    )
        port map (
      I0 => \op_b_ff_reg[0]\,
      I1 => \op_b_ff_reg[0]_0\,
      I2 => \uart_tx_sreg_reg[1]\,
      I3 => \ctrl_reg_n_0_[22]\,
      I4 => \ctrl_reg_n_0_[20]\,
      I5 => \ctrl_reg_n_0_[21]\,
      O => mem_addr_reg0_carry_i_10_n_0
    );
mem_addr_reg0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA00E0000A00E"
    )
        port map (
      I0 => \ctrl_reg_n_0_[6]\,
      I1 => sreg(1),
      I2 => \^ctrl_reg[19]_0\(0),
      I3 => \ctrl_reg_n_0_[5]\,
      I4 => \^ctrl_reg[3]_0\,
      I5 => data_o0(2),
      O => \^reg_i\(2)
    );
mem_addr_reg0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0AAC0AAC3AAC0"
    )
        port map (
      I0 => data_o0(1),
      I1 => \^ctrl_reg[19]_0\(0),
      I2 => \ctrl_reg_n_0_[6]\,
      I3 => \^ctrl_reg[3]_0\,
      I4 => \irq_buf_reg[1]_1\(0),
      I5 => \ctrl_reg_n_0_[5]\,
      O => \^reg_i\(1)
    );
mem_addr_reg0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B88BB888"
    )
        port map (
      I0 => data_o0(0),
      I1 => \^ctrl_reg[3]_0\,
      I2 => \^ctrl_reg[19]_0\(0),
      I3 => \ctrl_reg_n_0_[5]\,
      I4 => sreg(0),
      I5 => \ctrl_reg_n_0_[6]\,
      O => \^reg_i\(0)
    );
mem_addr_reg0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA996555559965"
    )
        port map (
      I0 => \op_b_ff[3]_i_2_n_0\,
      I1 => \ctrl_reg_n_0_[21]\,
      I2 => imm(3),
      I3 => \ctrl_reg_n_0_[20]\,
      I4 => \ctrl_reg_n_0_[22]\,
      I5 => mem_addr_reg0_carry,
      O => \ctrl_reg[21]_0\(3)
    );
mem_addr_reg0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555669AAAAA669A"
    )
        port map (
      I0 => \^reg_i\(2),
      I1 => \ctrl_reg_n_0_[21]\,
      I2 => imm(2),
      I3 => \ctrl_reg_n_0_[20]\,
      I4 => \ctrl_reg_n_0_[22]\,
      I5 => \op_b_ff_reg[2]\,
      O => \ctrl_reg[21]_0\(2)
    );
mem_addr_reg0_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA595555AA59"
    )
        port map (
      I0 => \op_b_ff[1]_i_3_n_0\,
      I1 => imm(1),
      I2 => \ctrl_reg_n_0_[20]\,
      I3 => \ctrl_reg_n_0_[21]\,
      I4 => \ctrl_reg_n_0_[22]\,
      I5 => \op_b_ff_reg[1]\,
      O => \ctrl_reg[21]_0\(1)
    );
mem_addr_reg0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dio_swap_i_2_n_0,
      I1 => mem_addr_reg0_carry_i_10_n_0,
      O => \ctrl_reg[21]_0\(0)
    );
mem_rd_ff_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002800"
    )
        port map (
      I0 => mem_rd_ff_i_2_n_0,
      I1 => state(2),
      I2 => \^fsm_sequential_state_reg[3]_0\(0),
      I3 => \^fsm_sequential_state_reg[3]_0\(1),
      I4 => state(4),
      O => mem_rd
    );
mem_rd_ff_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005000FFFF50C0FF"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_9_n_0\,
      I1 => p_2_in(0),
      I2 => \ctrl[14]_i_2__0_n_0\,
      I3 => \^fsm_sequential_state_reg[3]_0\(0),
      I4 => state(0),
      I5 => p_2_in(1),
      O => mem_rd_ff_i_2_n_0
    );
mem_rd_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => mem_rd,
      Q => mem_rd_ff,
      R => '0'
    );
\op_b_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"350035FF"
    )
        port map (
      I0 => \op_b_ff_reg[0]\,
      I1 => \op_b_ff_reg[0]_0\,
      I2 => \uart_tx_sreg_reg[1]\,
      I3 => \ctrl_reg_n_0_[12]\,
      I4 => dio_swap_i_2_n_0,
      O => dio_swap_reg_0(0)
    );
\op_b_ff[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \op_b_ff_reg[10]\,
      I1 => \ctrl_reg_n_0_[12]\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(10),
      I4 => \^ctrl_reg[3]_0\,
      O => dio_swap_reg_0(10)
    );
\op_b_ff[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \op_b_ff_reg[11]\,
      I1 => \ctrl_reg_n_0_[12]\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(11),
      I4 => \^ctrl_reg[3]_0\,
      O => dio_swap_reg_0(11)
    );
\op_b_ff[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \op_b_ff_reg[12]\,
      I1 => \ctrl_reg_n_0_[12]\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(12),
      I4 => \^ctrl_reg[3]_0\,
      O => dio_swap_reg_0(12)
    );
\op_b_ff[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \op_b_ff_reg[13]\,
      I1 => \ctrl_reg_n_0_[12]\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(13),
      I4 => \^ctrl_reg[3]_0\,
      O => dio_swap_reg_0(13)
    );
\op_b_ff[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(0),
      I1 => \ctrl_reg_n_0_[6]\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \^ctrl_reg[19]_0\(3),
      I4 => \^ctrl_reg[19]_0\(1),
      I5 => \^ctrl_reg[19]_0\(2),
      O => \op_b_ff[13]_i_3_n_0\
    );
\op_b_ff[13]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(2),
      I1 => \^ctrl_reg[19]_0\(1),
      I2 => \^ctrl_reg[19]_0\(3),
      O => \^ctrl_reg[3]_0\
    );
\op_b_ff[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \op_b_ff_reg[14]\,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => mem_data_i(14),
      I3 => \ctrl_reg_n_0_[12]\,
      I4 => \^reg_i\(14),
      O => dio_swap_reg_0(14)
    );
\op_b_ff[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \op_b_ff_reg[15]\,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => mem_data_i(15),
      I3 => \ctrl_reg_n_0_[12]\,
      I4 => \op_b_ff[15]_i_2_n_0\,
      O => dio_swap_reg_0(15)
    );
\op_b_ff[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC0020000C002"
    )
        port map (
      I0 => imem_up_en,
      I1 => \^ctrl_reg[19]_0\(0),
      I2 => \ctrl_reg_n_0_[6]\,
      I3 => \ctrl_reg_n_0_[5]\,
      I4 => \^ctrl_reg[3]_0\,
      I5 => data_o0(15),
      O => \op_b_ff[15]_i_2_n_0\
    );
\op_b_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \op_b_ff_reg[1]\,
      I1 => \ctrl_reg_n_0_[12]\,
      I2 => \op_b_ff[1]_i_3_n_0\,
      O => dio_swap_reg_0(1)
    );
\op_b_ff[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F0F0BF0FFFFFB"
    )
        port map (
      I0 => \ctrl_reg_n_0_[5]\,
      I1 => \irq_buf_reg[1]_1\(0),
      I2 => \^ctrl_reg[3]_0\,
      I3 => \ctrl_reg_n_0_[6]\,
      I4 => \^ctrl_reg[19]_0\(0),
      I5 => data_o0(1),
      O => \op_b_ff[1]_i_3_n_0\
    );
\op_b_ff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \op_b_ff_reg[2]\,
      I1 => \ctrl_reg_n_0_[12]\,
      I2 => \^reg_i\(2),
      O => dio_swap_reg_0(2)
    );
\op_b_ff[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C500C5FF"
    )
        port map (
      I0 => \op_b_ff_reg[3]\,
      I1 => mem_data_i(11),
      I2 => \uart_tx_sreg_reg[1]\,
      I3 => \ctrl_reg_n_0_[12]\,
      I4 => \op_b_ff[3]_i_2_n_0\,
      O => dio_swap_reg_0(3)
    );
\op_b_ff[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000FFDFFFF0FFD"
    )
        port map (
      I0 => sreg(2),
      I1 => \^ctrl_reg[19]_0\(0),
      I2 => \ctrl_reg_n_0_[6]\,
      I3 => \ctrl_reg_n_0_[5]\,
      I4 => \^ctrl_reg[3]_0\,
      I5 => data_o0(3),
      O => \op_b_ff[3]_i_2_n_0\
    );
\op_b_ff[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"350035FF"
    )
        port map (
      I0 => \op_b_ff_reg[4]_0\,
      I1 => \op_b_ff_reg[4]\,
      I2 => \uart_tx_sreg_reg[1]\,
      I3 => \ctrl_reg_n_0_[12]\,
      I4 => \op_b_ff[4]_i_2_n_0\,
      O => dio_swap_reg_0(4)
    );
\op_b_ff[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003FFDFFFF3FFD"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]_1\,
      I1 => \^ctrl_reg[19]_0\(0),
      I2 => \ctrl_reg_n_0_[6]\,
      I3 => \ctrl_reg_n_0_[5]\,
      I4 => \^ctrl_reg[3]_0\,
      I5 => data_o0(4),
      O => \op_b_ff[4]_i_2_n_0\
    );
\op_b_ff[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \op_b_ff_reg[5]\,
      I1 => \ctrl_reg_n_0_[12]\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(5),
      I4 => \^ctrl_reg[3]_0\,
      O => dio_swap_reg_0(5)
    );
\op_b_ff[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \op_b_ff_reg[6]\,
      I1 => \ctrl_reg_n_0_[12]\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(6),
      I4 => \^ctrl_reg[3]_0\,
      O => dio_swap_reg_0(6)
    );
\op_b_ff[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \op_b_ff_reg[7]_0\,
      I1 => \ctrl_reg_n_0_[12]\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(7),
      I4 => \^ctrl_reg[3]_0\,
      O => dio_swap_reg_0(7)
    );
\op_b_ff[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \op_b_ff_reg[8]\,
      I1 => \ctrl_reg_n_0_[12]\,
      I2 => \^reg_i\(8),
      O => dio_swap_reg_0(8)
    );
\op_b_ff[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \op_b_ff_reg[9]\,
      I1 => \ctrl_reg_n_0_[12]\,
      I2 => \op_b_ff[13]_i_3_n_0\,
      I3 => data_o0(9),
      I4 => \^ctrl_reg[3]_0\,
      O => dio_swap_reg_0(9)
    );
\pwm_ch[0][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \pwm_ch[0][7]_i_2_n_0\,
      O => \mem_addr_reg_reg[2]\(0)
    );
\pwm_ch[0][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \ctrl[14]_i_2_n_0\,
      I1 => \^ctrl_reg[25]_0\,
      I2 => \^ctrl_reg[25]_2\,
      I3 => \data_o[15]_i_3_n_0\,
      I4 => \data_o[15]_i_4_n_0\,
      O => \pwm_ch[0][7]_i_2_n_0\
    );
\pwm_ch[2][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^mem_addr_reg_reg[1]\,
      I1 => imem_file_ram_l_reg_0_i_19_n_0,
      I2 => \pwm_ch[0][7]_i_2_n_0\,
      O => \mem_addr_reg_reg[1]_0\(0)
    );
rdata_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DDD1"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(11),
      I1 => \ctrl_reg_n_0_[24]\,
      I2 => rden_i_2_n_0,
      I3 => \^ctrl_reg[26]_0\(3),
      I4 => rden_i_3_n_0,
      O => \mem_addr_reg_reg[11]\
    );
rden_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => dmem_file_l_reg_i_3_n_0,
      I1 => dmem_file_l_reg_i_4_n_0,
      I2 => dmem_file_l_reg_i_5_n_0,
      I3 => dmem_file_l_reg_i_6_n_0,
      I4 => \cpu_bus[rd_en]\,
      O => \ctrl_reg[28]_1\
    );
\rden_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05350000"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(15),
      I1 => \op_b_ff[15]_i_2_n_0\,
      I2 => \ctrl_reg_n_0_[24]\,
      I3 => \^ctrl_reg[26]_0\(3),
      I4 => \cpu_bus[rd_en]\,
      O => \mem_addr_reg_reg[15]\
    );
\rden_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000DDD100000000"
    )
        port map (
      I0 => imem_file_ram_l_reg_3(11),
      I1 => \ctrl_reg_n_0_[24]\,
      I2 => rden_i_2_n_0,
      I3 => \^ctrl_reg[26]_0\(3),
      I4 => rden_i_3_n_0,
      I5 => \cpu_bus[rd_en]\,
      O => \mem_addr_reg_reg[11]_0\
    );
rden_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47777777"
    )
        port map (
      I0 => data_o0(11),
      I1 => \^ctrl_reg[3]_0\,
      I2 => \ctrl_reg_n_0_[5]\,
      I3 => \ctrl_reg_n_0_[6]\,
      I4 => \^ctrl_reg[19]_0\(0),
      O => rden_i_2_n_0
    );
rden_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEFFFEFFFF"
    )
        port map (
      I0 => dmem_file_l_reg_i_3_n_0,
      I1 => dmem_file_l_reg_i_6_n_0,
      I2 => \^ctrl_reg[26]_0\(3),
      I3 => \mem_addr_reg0_carry__2_i_11_n_0\,
      I4 => \ctrl_reg_n_0_[24]\,
      I5 => imem_file_ram_l_reg_3(12),
      O => rden_i_3_n_0
    );
reg_file_reg_0_15_0_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => reg_file_reg_0_15_0_0_i_2_n_0,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => addr_add(0),
      I3 => \ctrl_reg_n_0_[11]\,
      O => \^in_data\(0)
    );
reg_file_reg_0_15_0_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_file_reg_0_15_0_0_i_3_n_7,
      I1 => \uart_tx_sreg_reg[1]_1\,
      I2 => reg_file_reg_0_15_0_0_i_5_n_0,
      I3 => reg_file_reg_0_15_0_0_i_6_n_0,
      I4 => reg_file_reg_0_15_0_0_i_7_n_0,
      I5 => reg_file_reg_0_15_0_0_i_8_n_0,
      O => reg_file_reg_0_15_0_0_i_2_n_0
    );
reg_file_reg_0_15_0_0_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => reg_file_reg_0_15_0_0_i_3_n_0,
      CO(2) => reg_file_reg_0_15_0_0_i_3_n_1,
      CO(1) => reg_file_reg_0_15_0_0_i_3_n_2,
      CO(0) => reg_file_reg_0_15_0_0_i_3_n_3,
      CYINIT => Q(0),
      DI(3 downto 1) => Q(3 downto 1),
      DI(0) => reg_file_reg_0_15_0_0_i_9_n_0,
      O(3) => reg_file_reg_0_15_0_0_i_3_n_4,
      O(2) => reg_file_reg_0_15_0_0_i_3_n_5,
      O(1) => reg_file_reg_0_15_0_0_i_3_n_6,
      O(0) => reg_file_reg_0_15_0_0_i_3_n_7,
      S(3 downto 0) => reg_file_reg_0_15_0_0_i_2_0(3 downto 0)
    );
reg_file_reg_0_15_0_0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(8),
      I1 => \^ctrl_reg[19]_0\(7),
      O => reg_file_reg_0_15_0_0_i_5_n_0
    );
reg_file_reg_0_15_0_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"94B8"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(5),
      I1 => reg_file_reg_0_15_7_7_i_11_0(0),
      I2 => Q(0),
      I3 => \^ctrl_reg[19]_0\(6),
      O => reg_file_reg_0_15_0_0_i_6_n_0
    );
reg_file_reg_0_15_0_0_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(8),
      I1 => \^ctrl_reg[19]_0\(7),
      I2 => \^ctrl_reg[19]_0\(6),
      O => reg_file_reg_0_15_0_0_i_7_n_0
    );
reg_file_reg_0_15_0_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAAAAAEAAAA"
    )
        port map (
      I0 => reg_file_reg_0_15_0_0_i_2_1,
      I1 => reg_file_reg_0_15_7_7_i_11_0(0),
      I2 => \^ctrl_reg[19]_0\(5),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => \^ctrl_reg[19]_0\(7),
      I5 => reg_file_reg_0_15_0_0_i_3_n_7,
      O => reg_file_reg_0_15_0_0_i_8_n_0
    );
reg_file_reg_0_15_0_0_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0060FF9F"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(5),
      I1 => \^ctrl_reg[19]_0\(6),
      I2 => \^ctrl_reg[19]_0\(7),
      I3 => \^ctrl_reg[19]_0\(8),
      I4 => reg_file_reg_0_15_7_7_i_11_0(0),
      O => reg_file_reg_0_15_0_0_i_9_n_0
    );
reg_file_reg_0_15_10_10_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => reg_file_reg_0_15_10_10_i_2_n_0,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => addr_add(10),
      I3 => \ctrl_reg_n_0_[11]\,
      O => \^in_data\(10)
    );
reg_file_reg_0_15_10_10_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => reg_file_reg_0_15_10_10_i_3_n_0,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => reg_file_reg_0_15_10_10_i_4_n_0,
      I3 => \^ctrl_reg[19]_0\(9),
      O => reg_file_reg_0_15_10_10_i_2_n_0
    );
reg_file_reg_0_15_10_10_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB84B484F4C0300"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(5),
      I1 => \^ctrl_reg[19]_0\(7),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => O(2),
      I4 => Q(10),
      I5 => reg_file_reg_0_15_7_7_i_11_0(10),
      O => reg_file_reg_0_15_10_10_i_3_n_0
    );
reg_file_reg_0_15_10_10_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAA0200AAAA"
    )
        port map (
      I0 => reg_file_reg_0_15_10_10_i_5_n_0,
      I1 => \^ctrl_reg[19]_0\(5),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => reg_file_reg_0_15_7_7_i_11_0(10),
      I4 => \^ctrl_reg[19]_0\(7),
      I5 => O(2),
      O => reg_file_reg_0_15_10_10_i_4_n_0
    );
reg_file_reg_0_15_10_10_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFFAFFEEAAFAAA"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(7),
      I1 => reg_file_reg_0_15_7_7_i_11_0(7),
      I2 => reg_file_reg_0_15_7_7_i_11_0(2),
      I3 => \^ctrl_reg[19]_0\(5),
      I4 => \^ctrl_reg[19]_0\(6),
      I5 => reg_file_reg_0_15_7_7_i_11_0(11),
      O => reg_file_reg_0_15_10_10_i_5_n_0
    );
reg_file_reg_0_15_11_11_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => reg_file_reg_0_15_11_11_i_2_n_0,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => addr_add(11),
      I3 => \ctrl_reg_n_0_[11]\,
      O => \^in_data\(11)
    );
reg_file_reg_0_15_11_11_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BF8C"
    )
        port map (
      I0 => \uart_tx_sreg_reg[4]\,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => \^ctrl_reg[19]_0\(7),
      I3 => reg_file_reg_0_15_11_11_i_4_n_0,
      I4 => reg_file_reg_0_15_11_11_i_5_n_0,
      O => reg_file_reg_0_15_11_11_i_2_n_0
    );
reg_file_reg_0_15_11_11_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA02AAAAA800AAAA"
    )
        port map (
      I0 => reg_file_reg_0_15_11_11_i_6_n_0,
      I1 => \^ctrl_reg[19]_0\(5),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => O(3),
      I4 => \^ctrl_reg[19]_0\(7),
      I5 => reg_file_reg_0_15_7_7_i_11_0(11),
      O => reg_file_reg_0_15_11_11_i_4_n_0
    );
reg_file_reg_0_15_11_11_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFBFBFAAAAAAAA"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(9),
      I1 => O(3),
      I2 => reg_file_reg_0_15_0_0_i_7_n_0,
      I3 => reg_file_reg_0_15_7_7_i_11_0(11),
      I4 => Q(11),
      I5 => reg_file_reg_0_15_0_0_i_5_n_0,
      O => reg_file_reg_0_15_11_11_i_5_n_0
    );
reg_file_reg_0_15_11_11_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFFAFFEEAAFAAA"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(7),
      I1 => reg_file_reg_0_15_7_7_i_11_0(7),
      I2 => reg_file_reg_0_15_7_7_i_11_0(3),
      I3 => \^ctrl_reg[19]_0\(5),
      I4 => \^ctrl_reg[19]_0\(6),
      I5 => reg_file_reg_0_15_7_7_i_11_0(12),
      O => reg_file_reg_0_15_11_11_i_6_n_0
    );
reg_file_reg_0_15_12_12_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_2_n_0,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => addr_add(12),
      I3 => \ctrl_reg_n_0_[11]\,
      O => \^in_data\(12)
    );
reg_file_reg_0_15_12_12_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_3_n_0,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => reg_file_reg_0_15_12_12_i_4_n_0,
      I3 => \^ctrl_reg[19]_0\(9),
      O => reg_file_reg_0_15_12_12_i_2_n_0
    );
reg_file_reg_0_15_12_12_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB84B484F4C0300"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(5),
      I1 => \^ctrl_reg[19]_0\(7),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => reg_file_reg_0_15_15_15_i_2_0(0),
      I4 => Q(12),
      I5 => reg_file_reg_0_15_7_7_i_11_0(12),
      O => reg_file_reg_0_15_12_12_i_3_n_0
    );
reg_file_reg_0_15_12_12_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAA0200AAAA"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_6_n_0,
      I1 => \^ctrl_reg[19]_0\(5),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => reg_file_reg_0_15_7_7_i_11_0(12),
      I4 => \^ctrl_reg[19]_0\(7),
      I5 => reg_file_reg_0_15_15_15_i_2_0(0),
      O => reg_file_reg_0_15_12_12_i_4_n_0
    );
reg_file_reg_0_15_12_12_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFFAFFEEAAFAAA"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(7),
      I1 => reg_file_reg_0_15_7_7_i_11_0(7),
      I2 => reg_file_reg_0_15_7_7_i_11_0(4),
      I3 => \^ctrl_reg[19]_0\(5),
      I4 => \^ctrl_reg[19]_0\(6),
      I5 => reg_file_reg_0_15_7_7_i_11_0(13),
      O => reg_file_reg_0_15_12_12_i_6_n_0
    );
reg_file_reg_0_15_12_12_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF04400440FBBF"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(8),
      I1 => \^ctrl_reg[19]_0\(7),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => \^ctrl_reg[19]_0\(5),
      I4 => reg_file_reg_0_15_7_7_i_11_0(15),
      I5 => Q(15),
      O => S(0)
    );
reg_file_reg_0_15_13_13_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => reg_file_reg_0_15_13_13_i_2_n_0,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => addr_add(13),
      I3 => \ctrl_reg_n_0_[11]\,
      O => \^in_data\(13)
    );
reg_file_reg_0_15_13_13_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => reg_file_reg_0_15_13_13_i_3_n_0,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => reg_file_reg_0_15_13_13_i_4_n_0,
      I3 => \^ctrl_reg[19]_0\(9),
      O => reg_file_reg_0_15_13_13_i_2_n_0
    );
reg_file_reg_0_15_13_13_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB84B484F4C0300"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(5),
      I1 => \^ctrl_reg[19]_0\(7),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => reg_file_reg_0_15_15_15_i_2_0(1),
      I4 => Q(13),
      I5 => reg_file_reg_0_15_7_7_i_11_0(13),
      O => reg_file_reg_0_15_13_13_i_3_n_0
    );
reg_file_reg_0_15_13_13_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAA0200AAAA"
    )
        port map (
      I0 => reg_file_reg_0_15_13_13_i_5_n_0,
      I1 => \^ctrl_reg[19]_0\(5),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => reg_file_reg_0_15_7_7_i_11_0(13),
      I4 => \^ctrl_reg[19]_0\(7),
      I5 => reg_file_reg_0_15_15_15_i_2_0(1),
      O => reg_file_reg_0_15_13_13_i_4_n_0
    );
reg_file_reg_0_15_13_13_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEFAFEAFAEAAA"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(7),
      I1 => reg_file_reg_0_15_7_7_i_11_0(7),
      I2 => \^ctrl_reg[19]_0\(5),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => reg_file_reg_0_15_7_7_i_11_0(5),
      I5 => reg_file_reg_0_15_7_7_i_11_0(14),
      O => reg_file_reg_0_15_13_13_i_5_n_0
    );
reg_file_reg_0_15_14_14_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => \ctrl_reg_n_0_[11]\,
      I1 => addr_add(14),
      I2 => \ctrl_reg_n_0_[0]\,
      I3 => reg_file_reg_0_15_14_14_i_2_n_0,
      O => \^in_data\(14)
    );
reg_file_reg_0_15_14_14_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => reg_file_reg_0_15_14_14_i_3_n_0,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => reg_file_reg_0_15_14_14_i_4_n_0,
      I3 => \^ctrl_reg[19]_0\(9),
      O => reg_file_reg_0_15_14_14_i_2_n_0
    );
reg_file_reg_0_15_14_14_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB84B484F4C0300"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(5),
      I1 => \^ctrl_reg[19]_0\(7),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => reg_file_reg_0_15_15_15_i_2_0(2),
      I4 => Q(14),
      I5 => reg_file_reg_0_15_7_7_i_11_0(14),
      O => reg_file_reg_0_15_14_14_i_3_n_0
    );
reg_file_reg_0_15_14_14_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA02AAAAA800AAAA"
    )
        port map (
      I0 => reg_file_reg_0_15_14_14_i_5_n_0,
      I1 => \^ctrl_reg[19]_0\(5),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => reg_file_reg_0_15_15_15_i_2_0(2),
      I4 => \^ctrl_reg[19]_0\(7),
      I5 => reg_file_reg_0_15_7_7_i_11_0(14),
      O => reg_file_reg_0_15_14_14_i_4_n_0
    );
reg_file_reg_0_15_14_14_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEFAFEAFAEAAA"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(7),
      I1 => reg_file_reg_0_15_7_7_i_11_0(7),
      I2 => \^ctrl_reg[19]_0\(5),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => reg_file_reg_0_15_7_7_i_11_0(6),
      I5 => reg_file_reg_0_15_7_7_i_11_0(15),
      O => reg_file_reg_0_15_14_14_i_5_n_0
    );
reg_file_reg_0_15_15_15_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFCA"
    )
        port map (
      I0 => reg_file_reg_0_15_15_15_i_2_n_0,
      I1 => addr_add(15),
      I2 => \ctrl_reg_n_0_[0]\,
      I3 => \ctrl_reg_n_0_[11]\,
      O => \^in_data\(15)
    );
reg_file_reg_0_15_15_15_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000015155550151"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(9),
      I1 => reg_file_reg_0_15_15_15_i_3_n_0,
      I2 => reg_file_reg_0_15_0_0_i_7_n_0,
      I3 => reg_file_reg_0_15_15_15_i_4_n_0,
      I4 => reg_file_reg_0_15_0_0_i_5_n_0,
      I5 => reg_file_reg_0_15_15_15_i_5_n_0,
      O => reg_file_reg_0_15_15_15_i_2_n_0
    );
reg_file_reg_0_15_15_15_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01FD0000"
    )
        port map (
      I0 => reg_file_reg_0_15_7_7_i_11_0(15),
      I1 => \^ctrl_reg[19]_0\(5),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => reg_file_reg_0_15_15_15_i_2_0(3),
      I4 => \^ctrl_reg[19]_0\(7),
      I5 => reg_file_reg_0_15_15_15_i_6_n_0,
      O => reg_file_reg_0_15_15_15_i_3_n_0
    );
reg_file_reg_0_15_15_15_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DB3"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(6),
      I1 => Q(15),
      I2 => \^ctrl_reg[19]_0\(5),
      I3 => reg_file_reg_0_15_7_7_i_11_0(15),
      O => reg_file_reg_0_15_15_15_i_4_n_0
    );
reg_file_reg_0_15_15_15_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07770707F777F7F7"
    )
        port map (
      I0 => reg_file_reg_0_15_7_7_i_11_0(15),
      I1 => Q(15),
      I2 => \^ctrl_reg[19]_0\(8),
      I3 => \^ctrl_reg[19]_0\(7),
      I4 => \^ctrl_reg[19]_0\(6),
      I5 => reg_file_reg_0_15_15_15_i_2_0(3),
      O => reg_file_reg_0_15_15_15_i_5_n_0
    );
reg_file_reg_0_15_15_15_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1105110011051155"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(7),
      I1 => reg_file_reg_0_15_7_7_i_11_0(7),
      I2 => reg_file_reg_0_15_7_7_i_11_0(15),
      I3 => \^ctrl_reg[19]_0\(5),
      I4 => \^ctrl_reg[19]_0\(6),
      I5 => sreg(0),
      O => reg_file_reg_0_15_15_15_i_6_n_0
    );
reg_file_reg_0_15_1_1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => reg_file_reg_0_15_1_1_i_2_n_0,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => addr_add(1),
      I3 => \ctrl_reg_n_0_[11]\,
      O => \^in_data\(1)
    );
reg_file_reg_0_15_1_1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_file_reg_0_15_0_0_i_3_n_6,
      I1 => \uart_tx_sreg_reg[2]\,
      I2 => reg_file_reg_0_15_0_0_i_5_n_0,
      I3 => reg_file_reg_0_15_1_1_i_4_n_0,
      I4 => reg_file_reg_0_15_0_0_i_7_n_0,
      I5 => reg_file_reg_0_15_1_1_i_5_n_0,
      O => reg_file_reg_0_15_1_1_i_2_n_0
    );
reg_file_reg_0_15_1_1_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C760"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(6),
      I1 => \^ctrl_reg[19]_0\(5),
      I2 => reg_file_reg_0_15_7_7_i_11_0(1),
      I3 => Q(1),
      O => reg_file_reg_0_15_1_1_i_4_n_0
    );
reg_file_reg_0_15_1_1_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA80008AAAAAAAA"
    )
        port map (
      I0 => reg_file_reg_0_15_1_1_i_2_0,
      I1 => reg_file_reg_0_15_7_7_i_11_0(1),
      I2 => \^ctrl_reg[19]_0\(5),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => reg_file_reg_0_15_0_0_i_3_n_6,
      I5 => \^ctrl_reg[19]_0\(7),
      O => reg_file_reg_0_15_1_1_i_5_n_0
    );
reg_file_reg_0_15_2_2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => reg_file_reg_0_15_2_2_i_2_n_0,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => addr_add(2),
      I3 => \ctrl_reg_n_0_[11]\,
      O => \^in_data\(2)
    );
reg_file_reg_0_15_2_2_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB3BC808"
    )
        port map (
      I0 => reg_file_reg_0_15_2_2_i_3_n_0,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => \^ctrl_reg[19]_0\(7),
      I3 => reg_file_reg_0_15_2_2_i_4_n_0,
      I4 => reg_file_reg_0_15_2_2_i_5_n_0,
      O => reg_file_reg_0_15_2_2_i_2_n_0
    );
reg_file_reg_0_15_2_2_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBB808880888088"
    )
        port map (
      I0 => reg_file_reg_0_15_0_0_i_3_n_5,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => \^ctrl_reg[19]_0\(7),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => reg_file_reg_0_15_7_7_i_11_0(2),
      I5 => Q(2),
      O => reg_file_reg_0_15_2_2_i_3_n_0
    );
reg_file_reg_0_15_2_2_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"94B8"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(5),
      I1 => reg_file_reg_0_15_7_7_i_11_0(2),
      I2 => Q(2),
      I3 => \^ctrl_reg[19]_0\(6),
      O => reg_file_reg_0_15_2_2_i_4_n_0
    );
reg_file_reg_0_15_2_2_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA80008AAAAAAAA"
    )
        port map (
      I0 => reg_file_reg_0_15_2_2_i_2_0,
      I1 => reg_file_reg_0_15_7_7_i_11_0(2),
      I2 => \^ctrl_reg[19]_0\(5),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => reg_file_reg_0_15_0_0_i_3_n_5,
      I5 => \^ctrl_reg[19]_0\(7),
      O => reg_file_reg_0_15_2_2_i_5_n_0
    );
reg_file_reg_0_15_3_3_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => reg_file_reg_0_15_3_3_i_2_n_0,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => addr_add(3),
      I3 => \ctrl_reg_n_0_[11]\,
      O => \^in_data\(3)
    );
reg_file_reg_0_15_3_3_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB3BC808"
    )
        port map (
      I0 => reg_file_reg_0_15_3_3_i_3_n_0,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => \^ctrl_reg[19]_0\(7),
      I3 => reg_file_reg_0_15_3_3_i_4_n_0,
      I4 => reg_file_reg_0_15_3_3_i_5_n_0,
      O => reg_file_reg_0_15_3_3_i_2_n_0
    );
reg_file_reg_0_15_3_3_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBB808880888088"
    )
        port map (
      I0 => reg_file_reg_0_15_0_0_i_3_n_4,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => \^ctrl_reg[19]_0\(7),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => reg_file_reg_0_15_7_7_i_11_0(3),
      I5 => Q(3),
      O => reg_file_reg_0_15_3_3_i_3_n_0
    );
reg_file_reg_0_15_3_3_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"94B8"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(5),
      I1 => reg_file_reg_0_15_7_7_i_11_0(3),
      I2 => Q(3),
      I3 => \^ctrl_reg[19]_0\(6),
      O => reg_file_reg_0_15_3_3_i_4_n_0
    );
reg_file_reg_0_15_3_3_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA80008AAAAAAAA"
    )
        port map (
      I0 => reg_file_reg_0_15_3_3_i_2_0,
      I1 => reg_file_reg_0_15_7_7_i_11_0(3),
      I2 => \^ctrl_reg[19]_0\(5),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => reg_file_reg_0_15_0_0_i_3_n_4,
      I5 => \^ctrl_reg[19]_0\(7),
      O => reg_file_reg_0_15_3_3_i_5_n_0
    );
reg_file_reg_0_15_4_4_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => reg_file_reg_0_15_4_4_i_2_n_0,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => addr_add(4),
      I3 => \ctrl_reg_n_0_[11]\,
      O => \^in_data\(4)
    );
reg_file_reg_0_15_4_4_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB3BC808"
    )
        port map (
      I0 => reg_file_reg_0_15_4_4_i_3_n_0,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => \^ctrl_reg[19]_0\(7),
      I3 => reg_file_reg_0_15_4_4_i_4_n_0,
      I4 => reg_file_reg_0_15_4_4_i_5_n_0,
      O => reg_file_reg_0_15_4_4_i_2_n_0
    );
reg_file_reg_0_15_4_4_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBB808880888088"
    )
        port map (
      I0 => reg_file_reg_0_15_7_7_i_3_n_7,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => \^ctrl_reg[19]_0\(7),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => reg_file_reg_0_15_7_7_i_11_0(4),
      I5 => Q(4),
      O => reg_file_reg_0_15_4_4_i_3_n_0
    );
reg_file_reg_0_15_4_4_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"94B8"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(5),
      I1 => reg_file_reg_0_15_7_7_i_11_0(4),
      I2 => Q(4),
      I3 => \^ctrl_reg[19]_0\(6),
      O => reg_file_reg_0_15_4_4_i_4_n_0
    );
reg_file_reg_0_15_4_4_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA80008AAAAAAAA"
    )
        port map (
      I0 => reg_file_reg_0_15_4_4_i_2_0,
      I1 => reg_file_reg_0_15_7_7_i_11_0(4),
      I2 => \^ctrl_reg[19]_0\(5),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => reg_file_reg_0_15_7_7_i_3_n_7,
      I5 => \^ctrl_reg[19]_0\(7),
      O => reg_file_reg_0_15_4_4_i_5_n_0
    );
reg_file_reg_0_15_5_5_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => reg_file_reg_0_15_5_5_i_2_n_0,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => addr_add(5),
      I3 => \ctrl_reg_n_0_[11]\,
      O => \^in_data\(5)
    );
reg_file_reg_0_15_5_5_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB3BC808"
    )
        port map (
      I0 => reg_file_reg_0_15_5_5_i_3_n_0,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => \^ctrl_reg[19]_0\(7),
      I3 => reg_file_reg_0_15_5_5_i_4_n_0,
      I4 => reg_file_reg_0_15_5_5_i_5_n_0,
      O => reg_file_reg_0_15_5_5_i_2_n_0
    );
reg_file_reg_0_15_5_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBB808880888088"
    )
        port map (
      I0 => reg_file_reg_0_15_7_7_i_3_n_6,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => \^ctrl_reg[19]_0\(7),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => reg_file_reg_0_15_7_7_i_11_0(5),
      I5 => Q(5),
      O => reg_file_reg_0_15_5_5_i_3_n_0
    );
reg_file_reg_0_15_5_5_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"94B8"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(5),
      I1 => reg_file_reg_0_15_7_7_i_11_0(5),
      I2 => Q(5),
      I3 => \^ctrl_reg[19]_0\(6),
      O => reg_file_reg_0_15_5_5_i_4_n_0
    );
reg_file_reg_0_15_5_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA80008AAAAAAAA"
    )
        port map (
      I0 => reg_file_reg_0_15_5_5_i_2_0,
      I1 => reg_file_reg_0_15_7_7_i_11_0(5),
      I2 => \^ctrl_reg[19]_0\(5),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => reg_file_reg_0_15_7_7_i_3_n_6,
      I5 => \^ctrl_reg[19]_0\(7),
      O => reg_file_reg_0_15_5_5_i_5_n_0
    );
reg_file_reg_0_15_6_6_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => reg_file_reg_0_15_6_6_i_2_n_0,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => addr_add(6),
      I3 => \ctrl_reg_n_0_[11]\,
      O => \^in_data\(6)
    );
reg_file_reg_0_15_6_6_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB3BC808"
    )
        port map (
      I0 => reg_file_reg_0_15_6_6_i_3_n_0,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => \^ctrl_reg[19]_0\(7),
      I3 => reg_file_reg_0_15_6_6_i_4_n_0,
      I4 => reg_file_reg_0_15_6_6_i_5_n_0,
      O => reg_file_reg_0_15_6_6_i_2_n_0
    );
reg_file_reg_0_15_6_6_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBB808880888088"
    )
        port map (
      I0 => reg_file_reg_0_15_7_7_i_3_n_5,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => \^ctrl_reg[19]_0\(7),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => reg_file_reg_0_15_7_7_i_11_0(6),
      I5 => Q(6),
      O => reg_file_reg_0_15_6_6_i_3_n_0
    );
reg_file_reg_0_15_6_6_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"94B8"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(5),
      I1 => reg_file_reg_0_15_7_7_i_11_0(6),
      I2 => Q(6),
      I3 => \^ctrl_reg[19]_0\(6),
      O => reg_file_reg_0_15_6_6_i_4_n_0
    );
reg_file_reg_0_15_6_6_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA80008AAAAAAAA"
    )
        port map (
      I0 => reg_file_reg_0_15_6_6_i_2_0,
      I1 => reg_file_reg_0_15_7_7_i_11_0(6),
      I2 => \^ctrl_reg[19]_0\(5),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => reg_file_reg_0_15_7_7_i_3_n_5,
      I5 => \^ctrl_reg[19]_0\(7),
      O => reg_file_reg_0_15_6_6_i_5_n_0
    );
reg_file_reg_0_15_7_7_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => reg_file_reg_0_15_7_7_i_2_n_0,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => addr_add(7),
      I3 => \ctrl_reg_n_0_[11]\,
      O => \^in_data\(7)
    );
reg_file_reg_0_15_7_7_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00004E44"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(9),
      I1 => reg_file_reg_0_15_7_7_i_11_0(8),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => sreg(0),
      I4 => \^ctrl_reg[19]_0\(5),
      I5 => reg_file_reg_0_15_7_7_i_12_n_0,
      O => reg_file_reg_0_15_7_7_i_11_n_0
    );
reg_file_reg_0_15_7_7_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAEEEEFEAA2222"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(7),
      I1 => \^ctrl_reg[19]_0\(5),
      I2 => \^ctrl_reg[19]_0\(9),
      I3 => reg_file_reg_0_15_7_7_i_11_0(7),
      I4 => \^ctrl_reg[19]_0\(6),
      I5 => reg_file_reg_0_15_7_7_i_11_0(15),
      O => reg_file_reg_0_15_7_7_i_12_n_0
    );
reg_file_reg_0_15_7_7_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^op_b_ff_reg[7]\(0),
      I1 => \ctrl_reg[7]_1\,
      I2 => reg_file_reg_0_15_0_0_i_5_n_0,
      I3 => \ctrl_reg[7]_2\,
      I4 => reg_file_reg_0_15_0_0_i_7_n_0,
      I5 => reg_file_reg_0_15_7_7_i_6_n_0,
      O => reg_file_reg_0_15_7_7_i_2_n_0
    );
reg_file_reg_0_15_7_7_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => reg_file_reg_0_15_0_0_i_3_n_0,
      CO(3) => reg_file_reg_0_15_7_7_i_3_n_0,
      CO(2) => reg_file_reg_0_15_7_7_i_3_n_1,
      CO(1) => reg_file_reg_0_15_7_7_i_3_n_2,
      CO(0) => reg_file_reg_0_15_7_7_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3) => \^op_b_ff_reg[7]\(0),
      O(2) => reg_file_reg_0_15_7_7_i_3_n_5,
      O(1) => reg_file_reg_0_15_7_7_i_3_n_6,
      O(0) => reg_file_reg_0_15_7_7_i_3_n_7,
      S(3) => reg_file_reg_0_15_7_7_i_7_n_0,
      S(2 downto 0) => reg_file_reg_0_15_4_4_i_5_0(2 downto 0)
    );
reg_file_reg_0_15_7_7_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888AAAACFC0AAAA"
    )
        port map (
      I0 => reg_file_reg_0_15_7_7_i_11_n_0,
      I1 => \^op_b_ff_reg[7]\(0),
      I2 => \^ctrl_reg[19]_0\(5),
      I3 => reg_file_reg_0_15_7_7_i_11_0(7),
      I4 => \^ctrl_reg[19]_0\(7),
      I5 => \^ctrl_reg[19]_0\(6),
      O => reg_file_reg_0_15_7_7_i_6_n_0
    );
reg_file_reg_0_15_7_7_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF04400440FBBF"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(8),
      I1 => \^ctrl_reg[19]_0\(7),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => \^ctrl_reg[19]_0\(5),
      I4 => reg_file_reg_0_15_7_7_i_11_0(7),
      I5 => Q(7),
      O => reg_file_reg_0_15_7_7_i_7_n_0
    );
reg_file_reg_0_15_8_8_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => reg_file_reg_0_15_8_8_i_2_n_0,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => addr_add(8),
      I3 => \ctrl_reg_n_0_[11]\,
      O => \^in_data\(8)
    );
reg_file_reg_0_15_8_8_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => reg_file_reg_0_15_8_8_i_3_n_0,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => reg_file_reg_0_15_8_8_i_4_n_0,
      I3 => \^ctrl_reg[19]_0\(9),
      O => reg_file_reg_0_15_8_8_i_2_n_0
    );
reg_file_reg_0_15_8_8_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF637303AC607000"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(5),
      I1 => \^ctrl_reg[19]_0\(6),
      I2 => \^ctrl_reg[19]_0\(7),
      I3 => Q(8),
      I4 => reg_file_reg_0_15_7_7_i_11_0(8),
      I5 => O(0),
      O => reg_file_reg_0_15_8_8_i_3_n_0
    );
reg_file_reg_0_15_8_8_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA80008AAAAAAAA"
    )
        port map (
      I0 => reg_file_reg_0_15_8_8_i_6_n_0,
      I1 => reg_file_reg_0_15_7_7_i_11_0(8),
      I2 => \^ctrl_reg[19]_0\(5),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => O(0),
      I5 => \^ctrl_reg[19]_0\(7),
      O => reg_file_reg_0_15_8_8_i_4_n_0
    );
reg_file_reg_0_15_8_8_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFFAFFEEAAFAAA"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(7),
      I1 => reg_file_reg_0_15_7_7_i_11_0(7),
      I2 => reg_file_reg_0_15_7_7_i_11_0(0),
      I3 => \^ctrl_reg[19]_0\(5),
      I4 => \^ctrl_reg[19]_0\(6),
      I5 => reg_file_reg_0_15_7_7_i_11_0(9),
      O => reg_file_reg_0_15_8_8_i_6_n_0
    );
reg_file_reg_0_15_9_9_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => reg_file_reg_0_15_9_9_i_2_n_0,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => addr_add(9),
      I3 => \ctrl_reg_n_0_[11]\,
      O => \^in_data\(9)
    );
reg_file_reg_0_15_9_9_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => reg_file_reg_0_15_9_9_i_3_n_0,
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => reg_file_reg_0_15_9_9_i_4_n_0,
      I3 => \^ctrl_reg[19]_0\(9),
      O => reg_file_reg_0_15_9_9_i_2_n_0
    );
reg_file_reg_0_15_9_9_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB84B484F4C0300"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(5),
      I1 => \^ctrl_reg[19]_0\(7),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => O(1),
      I4 => Q(9),
      I5 => reg_file_reg_0_15_7_7_i_11_0(9),
      O => reg_file_reg_0_15_9_9_i_3_n_0
    );
reg_file_reg_0_15_9_9_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA80008AAAAAAAA"
    )
        port map (
      I0 => reg_file_reg_0_15_9_9_i_5_n_0,
      I1 => reg_file_reg_0_15_7_7_i_11_0(9),
      I2 => \^ctrl_reg[19]_0\(5),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => O(1),
      I5 => \^ctrl_reg[19]_0\(7),
      O => reg_file_reg_0_15_9_9_i_4_n_0
    );
reg_file_reg_0_15_9_9_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFFAFFEEAAFAAA"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(7),
      I1 => reg_file_reg_0_15_7_7_i_11_0(7),
      I2 => reg_file_reg_0_15_7_7_i_11_0(1),
      I3 => \^ctrl_reg[19]_0\(5),
      I4 => \^ctrl_reg[19]_0\(6),
      I5 => reg_file_reg_0_15_7_7_i_11_0(10),
      O => reg_file_reg_0_15_9_9_i_5_n_0
    );
\sam[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state(4),
      I1 => \^fsm_sequential_state_reg[3]_0\(1),
      I2 => \op_b_ff_reg[4]_0\,
      I3 => \FSM_sequential_state[4]_i_4_n_0\,
      I4 => sam(0),
      O => \sam[0]_i_1_n_0\
    );
\sam[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state(4),
      I1 => \^fsm_sequential_state_reg[3]_0\(1),
      I2 => \sam_reg[1]_0\,
      I3 => \FSM_sequential_state[4]_i_4_n_0\,
      I4 => sam(1),
      O => \sam[1]_i_1_n_0\
    );
\sam_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \sam[0]_i_1_n_0\,
      Q => sam(0),
      R => '0'
    );
\sam_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \sam[1]_i_1_n_0\,
      Q => sam(1),
      R => '0'
    );
\src_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \am_reg[0]_0\(0),
      D => \src_reg[3]_0\(0),
      Q => src(0),
      R => '0'
    );
\src_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \am_reg[0]_0\(0),
      D => \src_reg[3]_0\(1),
      Q => src(1),
      R => '0'
    );
\src_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \am_reg[0]_0\(0),
      D => \src_reg[3]_0\(2),
      Q => src(2),
      R => '0'
    );
\src_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \am_reg[0]_0\(0),
      D => \src_reg[3]_0\(3),
      Q => src(3),
      R => '0'
    );
\sreg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8BBBBBB"
    )
        port map (
      I0 => \^in_data\(0),
      I1 => \sreg[8]_i_3_n_0\,
      I2 => \sreg[0]_i_2_n_0\,
      I3 => \sreg[1]_i_2_n_0\,
      I4 => \sreg[0]_i_3_n_0\,
      I5 => \sreg[0]_i_4_n_0\,
      O => \ctrl_reg[1]_3\(0)
    );
\sreg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0082038B00820088"
    )
        port map (
      I0 => sreg(0),
      I1 => \^ctrl_reg[19]_0\(7),
      I2 => \^ctrl_reg[19]_0\(8),
      I3 => \^ctrl_reg[19]_0\(6),
      I4 => \^ctrl_reg[19]_0\(5),
      I5 => reg_file_reg_0_15_7_7_i_11_0(0),
      O => \sreg[0]_i_2_n_0\
    );
\sreg[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0CD"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(5),
      I1 => \^ctrl_reg[19]_0\(6),
      I2 => \^ctrl_reg[19]_0\(8),
      I3 => \^ctrl_reg[19]_0\(7),
      O => \sreg[0]_i_3_n_0\
    );
\sreg[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => \sreg[0]_i_5_n_0\,
      I1 => \^co\(0),
      I2 => \^ctrl_reg[19]_0\(9),
      I3 => \sreg_reg[0]\(0),
      I4 => \sreg[0]_i_3_n_0\,
      O => \sreg[0]_i_4_n_0\
    );
\sreg[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"019D"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(8),
      I1 => \^ctrl_reg[19]_0\(7),
      I2 => \^ctrl_reg[19]_0\(5),
      I3 => \^ctrl_reg[19]_0\(6),
      O => \sreg[0]_i_5_n_0\
    );
\sreg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(0),
      I1 => \^ctrl_reg[19]_0\(4),
      I2 => \^ctrl_reg[19]_0\(2),
      I3 => \^ctrl_reg[19]_0\(1),
      I4 => \^ctrl_reg[19]_0\(3),
      I5 => \sreg[14]_i_2_n_0\,
      O => \ctrl_reg[1]_3\(4)
    );
\sreg[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001D"
    )
        port map (
      I0 => reg_file_reg_0_15_14_14_i_2_n_0,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => addr_add(14),
      I3 => \ctrl_reg_n_0_[11]\,
      O => \sreg[14]_i_2_n_0\
    );
\sreg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^in_data\(1),
      I1 => \sreg[8]_i_3_n_0\,
      I2 => \irq_buf_reg[1]_1\(0),
      I3 => \sreg[8]_i_5_n_0\,
      I4 => \sreg[1]_i_2_n_0\,
      O => \ctrl_reg[1]_3\(1)
    );
\sreg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \sreg[1]_i_3_n_0\,
      I1 => \sreg[1]_i_4_n_0\,
      I2 => \sreg[1]_i_5_n_0\,
      I3 => \sreg[1]_i_6_n_0\,
      O => \sreg[1]_i_2_n_0\
    );
\sreg[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => reg_file_reg_0_15_7_7_i_2_n_0,
      I1 => reg_file_reg_0_15_9_9_i_2_n_0,
      I2 => reg_file_reg_0_15_1_1_i_2_n_0,
      I3 => reg_file_reg_0_15_11_11_i_2_n_0,
      O => \sreg[1]_i_3_n_0\
    );
\sreg[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => reg_file_reg_0_15_15_15_i_2_n_0,
      I1 => reg_file_reg_0_15_10_10_i_2_n_0,
      I2 => reg_file_reg_0_15_3_3_i_2_n_0,
      I3 => reg_file_reg_0_15_12_12_i_2_n_0,
      O => \sreg[1]_i_4_n_0\
    );
\sreg[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => reg_file_reg_0_15_0_0_i_2_n_0,
      I1 => reg_file_reg_0_15_13_13_i_2_n_0,
      I2 => reg_file_reg_0_15_5_5_i_2_n_0,
      I3 => reg_file_reg_0_15_14_14_i_2_n_0,
      O => \sreg[1]_i_5_n_0\
    );
\sreg[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => reg_file_reg_0_15_4_4_i_2_n_0,
      I1 => reg_file_reg_0_15_8_8_i_2_n_0,
      I2 => reg_file_reg_0_15_2_2_i_2_n_0,
      I3 => reg_file_reg_0_15_6_6_i_2_n_0,
      O => \sreg[1]_i_6_n_0\
    );
\sreg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \^in_data\(2),
      I1 => \sreg[8]_i_3_n_0\,
      I2 => sreg(1),
      I3 => \sreg[8]_i_5_n_0\,
      I4 => \sreg[2]_i_2_n_0\,
      I5 => reg_file_reg_0_15_15_15_i_2_n_0,
      O => \ctrl_reg[1]_3\(2)
    );
\sreg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reg_file_reg_0_15_7_7_i_2_n_0,
      I1 => \^ctrl_reg[19]_0\(9),
      O => \sreg[2]_i_2_n_0\
    );
\sreg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAABAAAAA"
    )
        port map (
      I0 => \ctrl_reg_n_0_[7]\,
      I1 => \^ctrl_reg[19]_0\(0),
      I2 => \^ctrl_reg[19]_0\(4),
      I3 => \^ctrl_reg[19]_0\(2),
      I4 => \^ctrl_reg[19]_0\(1),
      I5 => \^ctrl_reg[19]_0\(3),
      O => \ctrl_reg[7]_0\(0)
    );
\sreg[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \^in_data\(8),
      I1 => \sreg[8]_i_3_n_0\,
      I2 => \sreg[8]_i_4_n_0\,
      I3 => \sreg[8]_i_5_n_0\,
      I4 => sreg(3),
      O => \ctrl_reg[1]_3\(3)
    );
\sreg[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(3),
      I1 => \^ctrl_reg[19]_0\(1),
      I2 => \^ctrl_reg[19]_0\(2),
      I3 => \^ctrl_reg[19]_0\(4),
      I4 => \^ctrl_reg[19]_0\(0),
      O => \sreg[8]_i_3_n_0\
    );
\sreg[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0ACA0A0000C0A0A0"
    )
        port map (
      I0 => \sreg_reg[8]\,
      I1 => \sreg_reg[8]_0\,
      I2 => \^ctrl_reg[19]_0\(8),
      I3 => \^ctrl_reg[19]_0\(5),
      I4 => \^ctrl_reg[19]_0\(6),
      I5 => \^ctrl_reg[19]_0\(7),
      O => \sreg[8]_i_4_n_0\
    );
\sreg[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"090A"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(7),
      I1 => \^ctrl_reg[19]_0\(8),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => \^ctrl_reg[19]_0\(5),
      O => \sreg[8]_i_5_n_0\
    );
\sreg[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \^ctrl_reg[19]_0\(8),
      I1 => \^ctrl_reg[19]_0\(7),
      I2 => \^ctrl_reg[19]_0\(6),
      I3 => \^ctrl_reg[19]_0\(5),
      O => op_a_v1
    );
\sreg_reg[0]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => reg_file_reg_0_15_7_7_i_3_n_0,
      CO(3 downto 1) => \NLW_sreg_reg[0]_i_6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^co\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_sreg_reg[0]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\thres[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \ctrl[14]_i_2_n_0\,
      I1 => \^ctrl_reg[25]_2\,
      I2 => \ctrl[14]_i_3_n_0\,
      I3 => \^mem_addr_reg_reg[1]\,
      I4 => imem_file_ram_l_reg_0_i_19_n_0,
      O => \ctrl_reg[27]_0\(0)
    );
\tuning_word[0][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => imem_file_ram_l_reg_0_i_19_n_0,
      I1 => \^mem_addr_reg_reg[1]\,
      I2 => \ctrl[11]_i_2_n_0\,
      O => \mem_addr_reg_reg[2]_0\(0)
    );
\uart_rx_avail[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => dmem_file_l_reg_i_4_n_0,
      I1 => dmem_file_l_reg_i_6_n_0,
      I2 => dmem_file_l_reg_i_3_n_0,
      I3 => \ctrl[14]_i_4_n_0\,
      I4 => \cpu_bus[rd_en]\,
      O => \^ctrl_reg[28]_0\
    );
\uart_rx_avail[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \ctrl[14]_i_3_n_0\,
      I1 => imem_file_ram_l_reg_0_i_19_n_0,
      I2 => \^ctrl_reg[25]_2\,
      O => \^ctrl_reg[25]_3\
    );
uart_tx_busy_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \ctrl[14]_i_3_n_0\,
      I1 => imem_file_ram_l_reg_0_i_19_n_0,
      I2 => \^ctrl_reg[25]_2\,
      I3 => \ctrl[14]_i_2_n_0\,
      I4 => \uart_tx_sreg_reg[7]\(2),
      I5 => \^mem_addr_reg_reg[1]\,
      O => uart_tx_busy0
    );
\uart_tx_sreg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => reg_file_reg_0_15_8_8_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_0_0_i_2_n_0,
      I3 => \uart_tx_sreg_reg[6]\(0),
      I4 => \uart_tx_sreg_reg[1]_0\,
      O => dio_swap_reg(0)
    );
\uart_tx_sreg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => reg_file_reg_0_15_9_9_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_1_1_i_2_n_0,
      I3 => \uart_tx_sreg_reg[6]\(1),
      I4 => \uart_tx_sreg_reg[1]_0\,
      O => dio_swap_reg(1)
    );
\uart_tx_sreg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => reg_file_reg_0_15_10_10_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_2_2_i_2_n_0,
      I3 => \uart_tx_sreg_reg[6]\(2),
      I4 => \uart_tx_sreg_reg[1]_0\,
      O => dio_swap_reg(2)
    );
\uart_tx_sreg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => reg_file_reg_0_15_11_11_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_3_3_i_2_n_0,
      I3 => \uart_tx_sreg_reg[6]\(3),
      I4 => \uart_tx_sreg_reg[1]_0\,
      O => dio_swap_reg(3)
    );
\uart_tx_sreg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => reg_file_reg_0_15_12_12_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_4_4_i_2_n_0,
      I3 => \uart_tx_sreg_reg[6]\(4),
      I4 => \uart_tx_sreg_reg[1]_0\,
      O => dio_swap_reg(4)
    );
\uart_tx_sreg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => reg_file_reg_0_15_13_13_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_5_5_i_2_n_0,
      I3 => \uart_tx_sreg_reg[6]\(5),
      I4 => \uart_tx_sreg_reg[1]_0\,
      O => dio_swap_reg(5)
    );
\uart_tx_sreg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00020000000200"
    )
        port map (
      I0 => \^ctrl_reg[25]_3\,
      I1 => \ctrl[14]_i_2_n_0\,
      I2 => \^mem_addr_reg_reg[1]\,
      I3 => \uart_tx_sreg_reg[7]\(2),
      I4 => \uart_tx_sreg_reg[1]_0\,
      I5 => \uart_tx_sreg_reg[7]_1\,
      O => \ctrl_reg[12]_1\(0)
    );
\uart_tx_sreg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => reg_file_reg_0_15_14_14_i_2_n_0,
      I1 => \uart_tx_sreg_reg[1]\,
      I2 => reg_file_reg_0_15_6_6_i_2_n_0,
      I3 => \uart_tx_sreg_reg[7]_0\,
      I4 => \uart_tx_sreg_reg[1]_0\,
      O => dio_swap_reg(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_dmem is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rden : out STD_LOGIC;
    \data_o_reg[13]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    dmem_file_h_reg_0 : out STD_LOGIC;
    dmem_file_l_reg_0 : out STD_LOGIC;
    mem_data_i : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dmem_file_h_reg_1 : out STD_LOGIC;
    dmem_file_h_reg_2 : out STD_LOGIC;
    dmem_file_l_reg_1 : out STD_LOGIC;
    dmem_file_l_reg_2 : out STD_LOGIC;
    dmem_file_l_reg_3 : out STD_LOGIC;
    dmem_file_l_reg_4 : out STD_LOGIC;
    dmem_file_l_reg_5 : out STD_LOGIC;
    dmem_file_l_reg_6 : out STD_LOGIC;
    dmem_file_l_reg_7 : out STD_LOGIC;
    clk_i : in STD_LOGIC;
    acc_en : in STD_LOGIC;
    \cpu_bus[addr]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dmem_file_h_reg_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \cpu_bus[wr_en]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rden_reg_0 : in STD_LOGIC;
    \am_reg[0]\ : in STD_LOGIC;
    \am_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \am_reg[0]_1\ : in STD_LOGIC;
    freq_gen_rdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ir_reg[11]\ : in STD_LOGIC;
    \ir_reg[11]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \ir_reg[11]_1\ : in STD_LOGIC;
    \ir_reg[10]\ : in STD_LOGIC;
    \ir_reg[10]_0\ : in STD_LOGIC;
    timer_rdata : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_neo430_dmem : entity is "neo430_dmem";
end SystemTop_neo430_dmem;

architecture STRUCTURE of SystemTop_neo430_dmem is
  signal \^dmem_file_h_reg_0\ : STD_LOGIC;
  signal \^mem_data_i\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rdata_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^rden\ : STD_LOGIC;
  signal NLW_dmem_file_h_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_dmem_file_h_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_dmem_file_h_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_dmem_file_h_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_dmem_file_l_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_dmem_file_l_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_dmem_file_l_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_dmem_file_l_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of dmem_file_h_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dmem_file_h_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of dmem_file_h_reg : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of dmem_file_h_reg : label is "U0/neo430_dmem_inst/dmem_file_h";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of dmem_file_h_reg : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of dmem_file_h_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of dmem_file_h_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of dmem_file_h_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of dmem_file_h_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of dmem_file_h_reg : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of dmem_file_l_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS of dmem_file_l_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of dmem_file_l_reg : label is 8192;
  attribute RTL_RAM_NAME of dmem_file_l_reg : label is "U0/neo430_dmem_inst/dmem_file_l";
  attribute RTL_RAM_TYPE of dmem_file_l_reg : label is "RAM_SP";
  attribute ram_addr_begin of dmem_file_l_reg : label is 0;
  attribute ram_addr_end of dmem_file_l_reg : label is 1023;
  attribute ram_offset of dmem_file_l_reg : label is 0;
  attribute ram_slice_begin of dmem_file_l_reg : label is 0;
  attribute ram_slice_end of dmem_file_l_reg : label is 7;
begin
  dmem_file_h_reg_0 <= \^dmem_file_h_reg_0\;
  mem_data_i(1 downto 0) <= \^mem_data_i\(1 downto 0);
  rden <= \^rden\;
\am[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => rdata_reg(7),
      I1 => \^rden\,
      I2 => freq_gen_rdata(7),
      I3 => Q(0),
      O => dmem_file_l_reg_0
    );
dmem_file_h_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 4) => \cpu_bus[addr]\(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk_i,
      CLKBWRCLK => '0',
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => dmem_file_h_reg_3(15 downto 8),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 8) => NLW_dmem_file_h_reg_DOADO_UNCONNECTED(15 downto 8),
      DOADO(7 downto 4) => DOADO(3 downto 0),
      DOADO(3 downto 0) => rdata_reg(11 downto 8),
      DOBDO(15 downto 0) => NLW_dmem_file_h_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_dmem_file_h_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_dmem_file_h_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => acc_en,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \cpu_bus[wr_en]\(1),
      WEA(0) => \cpu_bus[wr_en]\(1),
      WEBWE(3 downto 0) => B"0000"
    );
dmem_file_l_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 4) => \cpu_bus[addr]\(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk_i,
      CLKBWRCLK => '0',
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => dmem_file_h_reg_3(7 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 8) => NLW_dmem_file_l_reg_DOADO_UNCONNECTED(15 downto 8),
      DOADO(7 downto 0) => rdata_reg(7 downto 0),
      DOBDO(15 downto 0) => NLW_dmem_file_l_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_dmem_file_l_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_dmem_file_l_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => acc_en,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \cpu_bus[wr_en]\(0),
      WEA(0) => \cpu_bus[wr_en]\(0),
      WEBWE(3 downto 0) => B"0000"
    );
\ir[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFFFFFFF"
    )
        port map (
      I0 => \ir_reg[10]\,
      I1 => rdata_reg(10),
      I2 => \^rden\,
      I3 => \ir_reg[11]_0\(7),
      I4 => freq_gen_rdata(10),
      I5 => \ir_reg[10]_0\,
      O => \^mem_data_i\(0)
    );
\ir[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFFFFFFF"
    )
        port map (
      I0 => \ir_reg[11]\,
      I1 => rdata_reg(11),
      I2 => \^rden\,
      I3 => \ir_reg[11]_0\(8),
      I4 => freq_gen_rdata(11),
      I5 => \ir_reg[11]_1\,
      O => \^mem_data_i\(1)
    );
\ir[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => rdata_reg(6),
      I1 => \^rden\,
      I2 => freq_gen_rdata(6),
      I3 => timer_rdata(0),
      O => dmem_file_l_reg_1
    );
rden_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => rden_reg_0,
      Q => \^rden\,
      R => '0'
    );
\sam[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => rdata_reg(4),
      I1 => \^rden\,
      I2 => \ir_reg[11]_0\(4),
      I3 => freq_gen_rdata(4),
      O => dmem_file_l_reg_3
    );
\sam[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => rdata_reg(5),
      I1 => \^rden\,
      I2 => \ir_reg[11]_0\(5),
      I3 => freq_gen_rdata(5),
      O => dmem_file_l_reg_2
    );
\src[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => rdata_reg(0),
      I1 => \^rden\,
      I2 => \ir_reg[11]_0\(0),
      I3 => freq_gen_rdata(0),
      O => dmem_file_l_reg_7
    );
\src[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => rdata_reg(8),
      I1 => \^rden\,
      I2 => \ir_reg[11]_0\(6),
      I3 => freq_gen_rdata(8),
      O => dmem_file_h_reg_2
    );
\src[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => rdata_reg(1),
      I1 => \^rden\,
      I2 => \ir_reg[11]_0\(1),
      I3 => freq_gen_rdata(1),
      O => dmem_file_l_reg_6
    );
\src[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => rdata_reg(9),
      I1 => \^rden\,
      I2 => freq_gen_rdata(9),
      I3 => timer_rdata(1),
      O => dmem_file_h_reg_1
    );
\src[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => rdata_reg(2),
      I1 => \^rden\,
      I2 => \ir_reg[11]_0\(2),
      I3 => freq_gen_rdata(2),
      O => dmem_file_l_reg_5
    );
\src[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF000400"
    )
        port map (
      I0 => \^dmem_file_h_reg_0\,
      I1 => \am_reg[0]\,
      I2 => \am_reg[0]_0\,
      I3 => E(0),
      I4 => \am_reg[0]_1\,
      O => \data_o_reg[13]\(0)
    );
\src[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => rdata_reg(3),
      I1 => \^rden\,
      I2 => \ir_reg[11]_0\(3),
      I3 => freq_gen_rdata(3),
      O => dmem_file_l_reg_4
    );
\src[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^mem_data_i\(1),
      I1 => \^mem_data_i\(0),
      O => \^dmem_file_h_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_freq_gen is
  port (
    freq_gen_cg_en : out STD_LOGIC;
    freq_gen_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    freq_gen_rdata : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk_i : in STD_LOGIC;
    \nco_prsc_tick_reg[0]_0\ : in STD_LOGIC;
    \nco_prsc_tick_reg[0]_1\ : in STD_LOGIC;
    \nco_prsc_tick_reg[0]_2\ : in STD_LOGIC;
    \nco_prsc_tick_reg[0]_3\ : in STD_LOGIC;
    \nco_prsc_tick_reg[0]_4\ : in STD_LOGIC;
    \nco_prsc_tick_reg[0]_5\ : in STD_LOGIC;
    \nco_prsc_tick_reg[0]_6\ : in STD_LOGIC;
    \nco_prsc_tick_reg[0]_7\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_o_reg[11]_0\ : in STD_LOGIC;
    \tuning_word_reg[0][15]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_neo430_freq_gen : entity is "neo430_freq_gen";
end SystemTop_neo430_freq_gen;

architecture STRUCTURE of SystemTop_neo430_freq_gen is
  signal clkgen_en_o_i_1_n_0 : STD_LOGIC;
  signal \ctrl_reg_n_0_[0]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[10]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[11]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[3]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[4]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[5]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[6]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[7]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[8]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[9]\ : STD_LOGIC;
  signal \in\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \nco_phase_accu[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][0]_i_3_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][0]_i_4_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][0]_i_5_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][0]_i_6_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][12]_i_2_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][12]_i_3_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][12]_i_4_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][12]_i_5_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][4]_i_2_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][4]_i_3_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][4]_i_4_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][4]_i_5_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][8]_i_2_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][8]_i_3_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][8]_i_4_n_0\ : STD_LOGIC;
  signal \nco_phase_accu[0][8]_i_5_n_0\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][0]_i_2_n_1\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][0]_i_2_n_2\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][0]_i_2_n_3\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][0]_i_2_n_4\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][0]_i_2_n_5\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][0]_i_2_n_6\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][0]_i_2_n_7\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][12]_i_1_n_0\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][12]_i_1_n_1\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][12]_i_1_n_2\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][12]_i_1_n_3\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][12]_i_1_n_4\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][12]_i_1_n_5\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][12]_i_1_n_6\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][12]_i_1_n_7\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][16]_i_1_n_7\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][4]_i_1_n_1\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][4]_i_1_n_2\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][4]_i_1_n_3\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][4]_i_1_n_4\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][4]_i_1_n_5\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][4]_i_1_n_6\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][4]_i_1_n_7\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][8]_i_1_n_0\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][8]_i_1_n_1\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][8]_i_1_n_2\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][8]_i_1_n_3\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][8]_i_1_n_4\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][8]_i_1_n_5\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][8]_i_1_n_6\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0][8]_i_1_n_7\ : STD_LOGIC;
  signal \nco_phase_accu_reg[0]_3\ : STD_LOGIC_VECTOR ( 16 to 16 );
  signal \nco_phase_accu_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \nco_phase_accu_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \nco_phase_accu_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \nco_phase_accu_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \nco_phase_accu_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \nco_phase_accu_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \nco_phase_accu_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \nco_phase_accu_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \nco_phase_accu_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \nco_phase_accu_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \nco_phase_accu_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \nco_phase_accu_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \nco_phase_accu_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \nco_phase_accu_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \nco_phase_accu_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \nco_phase_accu_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \nco_prsc_tick[0]_i_2_n_0\ : STD_LOGIC;
  signal \nco_prsc_tick[0]_i_3_n_0\ : STD_LOGIC;
  signal \nco_prsc_tick_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_in : STD_LOGIC;
  signal \NLW_nco_phase_accu_reg[0][16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_nco_phase_accu_reg[0][16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \nco_phase_accu_reg[0][0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \nco_phase_accu_reg[0][12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \nco_phase_accu_reg[0][16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \nco_phase_accu_reg[0][4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \nco_phase_accu_reg[0][8]_i_1\ : label is 11;
begin
clkgen_en_o_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_2_in,
      I1 => p_0_in,
      I2 => \ctrl_reg_n_0_[0]\,
      O => clkgen_en_o_i_1_n_0
    );
clkgen_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => clkgen_en_o_i_1_n_0,
      Q => freq_gen_cg_en,
      R => '0'
    );
\ctrl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => D(0),
      Q => \ctrl_reg_n_0_[0]\,
      R => '0'
    );
\ctrl_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => D(10),
      Q => \ctrl_reg_n_0_[10]\,
      R => '0'
    );
\ctrl_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => D(11),
      Q => \ctrl_reg_n_0_[11]\,
      R => '0'
    );
\ctrl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => D(1),
      Q => p_0_in,
      R => '0'
    );
\ctrl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => D(2),
      Q => p_2_in,
      R => '0'
    );
\ctrl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => D(3),
      Q => \ctrl_reg_n_0_[3]\,
      R => '0'
    );
\ctrl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => D(4),
      Q => \ctrl_reg_n_0_[4]\,
      R => '0'
    );
\ctrl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => D(5),
      Q => \ctrl_reg_n_0_[5]\,
      R => '0'
    );
\ctrl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => D(6),
      Q => \ctrl_reg_n_0_[6]\,
      R => '0'
    );
\ctrl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => D(7),
      Q => \ctrl_reg_n_0_[7]\,
      R => '0'
    );
\ctrl_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => D(8),
      Q => \ctrl_reg_n_0_[8]\,
      R => '0'
    );
\ctrl_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => D(9),
      Q => \ctrl_reg_n_0_[9]\,
      R => '0'
    );
\data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl_reg_n_0_[0]\,
      Q => freq_gen_rdata(0),
      R => \data_o_reg[11]_0\
    );
\data_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl_reg_n_0_[10]\,
      Q => freq_gen_rdata(10),
      R => \data_o_reg[11]_0\
    );
\data_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl_reg_n_0_[11]\,
      Q => freq_gen_rdata(11),
      R => \data_o_reg[11]_0\
    );
\data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => p_0_in,
      Q => freq_gen_rdata(1),
      R => \data_o_reg[11]_0\
    );
\data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => p_2_in,
      Q => freq_gen_rdata(2),
      R => \data_o_reg[11]_0\
    );
\data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl_reg_n_0_[3]\,
      Q => freq_gen_rdata(3),
      R => \data_o_reg[11]_0\
    );
\data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl_reg_n_0_[4]\,
      Q => freq_gen_rdata(4),
      R => \data_o_reg[11]_0\
    );
\data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl_reg_n_0_[5]\,
      Q => freq_gen_rdata(5),
      R => \data_o_reg[11]_0\
    );
\data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl_reg_n_0_[6]\,
      Q => freq_gen_rdata(6),
      R => \data_o_reg[11]_0\
    );
\data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl_reg_n_0_[7]\,
      Q => freq_gen_rdata(7),
      R => \data_o_reg[11]_0\
    );
\data_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl_reg_n_0_[8]\,
      Q => freq_gen_rdata(8),
      R => \data_o_reg[11]_0\
    );
\data_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \ctrl_reg_n_0_[9]\,
      Q => freq_gen_rdata(9),
      R => \data_o_reg[11]_0\
    );
\freq_gen_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \nco_phase_accu_reg[0]_3\(16),
      Q => freq_gen_o(0),
      R => '0'
    );
\nco_phase_accu[0][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ctrl_reg_n_0_[0]\,
      O => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu[0][0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(3),
      I1 => \nco_phase_accu_reg_n_0_[0][3]\,
      O => \nco_phase_accu[0][0]_i_3_n_0\
    );
\nco_phase_accu[0][0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(2),
      I1 => \nco_phase_accu_reg_n_0_[0][2]\,
      O => \nco_phase_accu[0][0]_i_4_n_0\
    );
\nco_phase_accu[0][0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(1),
      I1 => \nco_phase_accu_reg_n_0_[0][1]\,
      O => \nco_phase_accu[0][0]_i_5_n_0\
    );
\nco_phase_accu[0][0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(0),
      I1 => \nco_phase_accu_reg_n_0_[0][0]\,
      O => \nco_phase_accu[0][0]_i_6_n_0\
    );
\nco_phase_accu[0][12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(15),
      I1 => \nco_phase_accu_reg_n_0_[0][15]\,
      O => \nco_phase_accu[0][12]_i_2_n_0\
    );
\nco_phase_accu[0][12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(14),
      I1 => \nco_phase_accu_reg_n_0_[0][14]\,
      O => \nco_phase_accu[0][12]_i_3_n_0\
    );
\nco_phase_accu[0][12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(13),
      I1 => \nco_phase_accu_reg_n_0_[0][13]\,
      O => \nco_phase_accu[0][12]_i_4_n_0\
    );
\nco_phase_accu[0][12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(12),
      I1 => \nco_phase_accu_reg_n_0_[0][12]\,
      O => \nco_phase_accu[0][12]_i_5_n_0\
    );
\nco_phase_accu[0][4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(7),
      I1 => \nco_phase_accu_reg_n_0_[0][7]\,
      O => \nco_phase_accu[0][4]_i_2_n_0\
    );
\nco_phase_accu[0][4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(6),
      I1 => \nco_phase_accu_reg_n_0_[0][6]\,
      O => \nco_phase_accu[0][4]_i_3_n_0\
    );
\nco_phase_accu[0][4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(5),
      I1 => \nco_phase_accu_reg_n_0_[0][5]\,
      O => \nco_phase_accu[0][4]_i_4_n_0\
    );
\nco_phase_accu[0][4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(4),
      I1 => \nco_phase_accu_reg_n_0_[0][4]\,
      O => \nco_phase_accu[0][4]_i_5_n_0\
    );
\nco_phase_accu[0][8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(11),
      I1 => \nco_phase_accu_reg_n_0_[0][11]\,
      O => \nco_phase_accu[0][8]_i_2_n_0\
    );
\nco_phase_accu[0][8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(10),
      I1 => \nco_phase_accu_reg_n_0_[0][10]\,
      O => \nco_phase_accu[0][8]_i_3_n_0\
    );
\nco_phase_accu[0][8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(9),
      I1 => \nco_phase_accu_reg_n_0_[0][9]\,
      O => \nco_phase_accu[0][8]_i_4_n_0\
    );
\nco_phase_accu[0][8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(8),
      I1 => \nco_phase_accu_reg_n_0_[0][8]\,
      O => \nco_phase_accu[0][8]_i_5_n_0\
    );
\nco_phase_accu_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][0]_i_2_n_7\,
      Q => \nco_phase_accu_reg_n_0_[0][0]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \nco_phase_accu_reg[0][0]_i_2_n_0\,
      CO(2) => \nco_phase_accu_reg[0][0]_i_2_n_1\,
      CO(1) => \nco_phase_accu_reg[0][0]_i_2_n_2\,
      CO(0) => \nco_phase_accu_reg[0][0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(3 downto 0),
      O(3) => \nco_phase_accu_reg[0][0]_i_2_n_4\,
      O(2) => \nco_phase_accu_reg[0][0]_i_2_n_5\,
      O(1) => \nco_phase_accu_reg[0][0]_i_2_n_6\,
      O(0) => \nco_phase_accu_reg[0][0]_i_2_n_7\,
      S(3) => \nco_phase_accu[0][0]_i_3_n_0\,
      S(2) => \nco_phase_accu[0][0]_i_4_n_0\,
      S(1) => \nco_phase_accu[0][0]_i_5_n_0\,
      S(0) => \nco_phase_accu[0][0]_i_6_n_0\
    );
\nco_phase_accu_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][8]_i_1_n_5\,
      Q => \nco_phase_accu_reg_n_0_[0][10]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][8]_i_1_n_4\,
      Q => \nco_phase_accu_reg_n_0_[0][11]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][12]_i_1_n_7\,
      Q => \nco_phase_accu_reg_n_0_[0][12]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nco_phase_accu_reg[0][8]_i_1_n_0\,
      CO(3) => \nco_phase_accu_reg[0][12]_i_1_n_0\,
      CO(2) => \nco_phase_accu_reg[0][12]_i_1_n_1\,
      CO(1) => \nco_phase_accu_reg[0][12]_i_1_n_2\,
      CO(0) => \nco_phase_accu_reg[0][12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(15 downto 12),
      O(3) => \nco_phase_accu_reg[0][12]_i_1_n_4\,
      O(2) => \nco_phase_accu_reg[0][12]_i_1_n_5\,
      O(1) => \nco_phase_accu_reg[0][12]_i_1_n_6\,
      O(0) => \nco_phase_accu_reg[0][12]_i_1_n_7\,
      S(3) => \nco_phase_accu[0][12]_i_2_n_0\,
      S(2) => \nco_phase_accu[0][12]_i_3_n_0\,
      S(1) => \nco_phase_accu[0][12]_i_4_n_0\,
      S(0) => \nco_phase_accu[0][12]_i_5_n_0\
    );
\nco_phase_accu_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][12]_i_1_n_6\,
      Q => \nco_phase_accu_reg_n_0_[0][13]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][12]_i_1_n_5\,
      Q => \nco_phase_accu_reg_n_0_[0][14]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][12]_i_1_n_4\,
      Q => \nco_phase_accu_reg_n_0_[0][15]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][16]_i_1_n_7\,
      Q => \nco_phase_accu_reg[0]_3\(16),
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nco_phase_accu_reg[0][12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_nco_phase_accu_reg[0][16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_nco_phase_accu_reg[0][16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \nco_phase_accu_reg[0][16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \nco_phase_accu_reg[0]_3\(16)
    );
\nco_phase_accu_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][0]_i_2_n_6\,
      Q => \nco_phase_accu_reg_n_0_[0][1]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][0]_i_2_n_5\,
      Q => \nco_phase_accu_reg_n_0_[0][2]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][0]_i_2_n_4\,
      Q => \nco_phase_accu_reg_n_0_[0][3]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][4]_i_1_n_7\,
      Q => \nco_phase_accu_reg_n_0_[0][4]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nco_phase_accu_reg[0][0]_i_2_n_0\,
      CO(3) => \nco_phase_accu_reg[0][4]_i_1_n_0\,
      CO(2) => \nco_phase_accu_reg[0][4]_i_1_n_1\,
      CO(1) => \nco_phase_accu_reg[0][4]_i_1_n_2\,
      CO(0) => \nco_phase_accu_reg[0][4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(7 downto 4),
      O(3) => \nco_phase_accu_reg[0][4]_i_1_n_4\,
      O(2) => \nco_phase_accu_reg[0][4]_i_1_n_5\,
      O(1) => \nco_phase_accu_reg[0][4]_i_1_n_6\,
      O(0) => \nco_phase_accu_reg[0][4]_i_1_n_7\,
      S(3) => \nco_phase_accu[0][4]_i_2_n_0\,
      S(2) => \nco_phase_accu[0][4]_i_3_n_0\,
      S(1) => \nco_phase_accu[0][4]_i_4_n_0\,
      S(0) => \nco_phase_accu[0][4]_i_5_n_0\
    );
\nco_phase_accu_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][4]_i_1_n_6\,
      Q => \nco_phase_accu_reg_n_0_[0][5]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][4]_i_1_n_5\,
      Q => \nco_phase_accu_reg_n_0_[0][6]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][4]_i_1_n_4\,
      Q => \nco_phase_accu_reg_n_0_[0][7]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][8]_i_1_n_7\,
      Q => \nco_phase_accu_reg_n_0_[0][8]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_phase_accu_reg[0][8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nco_phase_accu_reg[0][4]_i_1_n_0\,
      CO(3) => \nco_phase_accu_reg[0][8]_i_1_n_0\,
      CO(2) => \nco_phase_accu_reg[0][8]_i_1_n_1\,
      CO(1) => \nco_phase_accu_reg[0][8]_i_1_n_2\,
      CO(0) => \nco_phase_accu_reg[0][8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(11 downto 8),
      O(3) => \nco_phase_accu_reg[0][8]_i_1_n_4\,
      O(2) => \nco_phase_accu_reg[0][8]_i_1_n_5\,
      O(1) => \nco_phase_accu_reg[0][8]_i_1_n_6\,
      O(0) => \nco_phase_accu_reg[0][8]_i_1_n_7\,
      S(3) => \nco_phase_accu[0][8]_i_2_n_0\,
      S(2) => \nco_phase_accu[0][8]_i_3_n_0\,
      S(1) => \nco_phase_accu[0][8]_i_4_n_0\,
      S(0) => \nco_phase_accu[0][8]_i_5_n_0\
    );
\nco_phase_accu_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \nco_prsc_tick_reg_n_0_[0]\,
      D => \nco_phase_accu_reg[0][8]_i_1_n_6\,
      Q => \nco_phase_accu_reg_n_0_[0][9]\,
      R => \nco_phase_accu[0][0]_i_1_n_0\
    );
\nco_prsc_tick[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \nco_prsc_tick_reg[0]_0\,
      I1 => \nco_prsc_tick_reg[0]_1\,
      I2 => \nco_prsc_tick_reg[0]_2\,
      I3 => \ctrl_reg_n_0_[3]\,
      I4 => \nco_prsc_tick_reg[0]_3\,
      I5 => \ctrl_reg_n_0_[4]\,
      O => \nco_prsc_tick[0]_i_2_n_0\
    );
\nco_prsc_tick[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \nco_prsc_tick_reg[0]_4\,
      I1 => \nco_prsc_tick_reg[0]_5\,
      I2 => \nco_prsc_tick_reg[0]_6\,
      I3 => \ctrl_reg_n_0_[3]\,
      I4 => \nco_prsc_tick_reg[0]_7\,
      I5 => \ctrl_reg_n_0_[4]\,
      O => \nco_prsc_tick[0]_i_3_n_0\
    );
\nco_prsc_tick_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => p_1_out(0),
      Q => \nco_prsc_tick_reg_n_0_[0]\,
      R => '0'
    );
\nco_prsc_tick_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \nco_prsc_tick[0]_i_2_n_0\,
      I1 => \nco_prsc_tick[0]_i_3_n_0\,
      O => p_1_out(0),
      S => \ctrl_reg_n_0_[5]\
    );
\tuning_word_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(0),
      Q => \in\(0),
      R => '0'
    );
\tuning_word_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(10),
      Q => \in\(10),
      R => '0'
    );
\tuning_word_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(11),
      Q => \in\(11),
      R => '0'
    );
\tuning_word_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(12),
      Q => \in\(12),
      R => '0'
    );
\tuning_word_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(13),
      Q => \in\(13),
      R => '0'
    );
\tuning_word_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(14),
      Q => \in\(14),
      R => '0'
    );
\tuning_word_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(15),
      Q => \in\(15),
      R => '0'
    );
\tuning_word_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(1),
      Q => \in\(1),
      R => '0'
    );
\tuning_word_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(2),
      Q => \in\(2),
      R => '0'
    );
\tuning_word_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(3),
      Q => \in\(3),
      R => '0'
    );
\tuning_word_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(4),
      Q => \in\(4),
      R => '0'
    );
\tuning_word_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(5),
      Q => \in\(5),
      R => '0'
    );
\tuning_word_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(6),
      Q => \in\(6),
      R => '0'
    );
\tuning_word_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(7),
      Q => \in\(7),
      R => '0'
    );
\tuning_word_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(8),
      Q => \in\(8),
      R => '0'
    );
\tuning_word_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \tuning_word_reg[0][15]_0\(0),
      D => D(9),
      Q => \in\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_gpio is
  port (
    irq_o : out STD_LOGIC;
    \data_o_reg[12]_0\ : out STD_LOGIC;
    \data_o_reg[12]_1\ : out STD_LOGIC;
    mem_data_i : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \data_o_reg[5]_0\ : out STD_LOGIC;
    \din_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \dout_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_i : in STD_LOGIC;
    \ctrl_reg[15]\ : in STD_LOGIC;
    \ctrl_reg[15]_0\ : in STD_LOGIC;
    \ir_reg[12]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    timer_rdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    uart_rdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ir_reg[12]_0\ : in STD_LOGIC;
    \ir_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ir_reg[5]_0\ : in STD_LOGIC;
    \ir_reg[5]_1\ : in STD_LOGIC;
    gpio_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dout_reg[15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \irq_mask_reg[15]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_neo430_gpio : entity is "neo430_gpio";
end SystemTop_neo430_gpio;

architecture STRUCTURE of SystemTop_neo430_gpio is
  signal \^data_o_reg[12]_1\ : STD_LOGIC;
  signal \^data_o_reg[5]_0\ : STD_LOGIC;
  signal \^din_reg[15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gpio_rdata : STD_LOGIC_VECTOR ( 12 downto 5 );
  signal in_buf : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \irq_mask_reg_n_0_[0]\ : STD_LOGIC;
  signal \irq_mask_reg_n_0_[10]\ : STD_LOGIC;
  signal \irq_mask_reg_n_0_[11]\ : STD_LOGIC;
  signal \irq_mask_reg_n_0_[12]\ : STD_LOGIC;
  signal \irq_mask_reg_n_0_[13]\ : STD_LOGIC;
  signal \irq_mask_reg_n_0_[14]\ : STD_LOGIC;
  signal \irq_mask_reg_n_0_[15]\ : STD_LOGIC;
  signal \irq_mask_reg_n_0_[1]\ : STD_LOGIC;
  signal \irq_mask_reg_n_0_[2]\ : STD_LOGIC;
  signal \irq_mask_reg_n_0_[3]\ : STD_LOGIC;
  signal \irq_mask_reg_n_0_[4]\ : STD_LOGIC;
  signal \irq_mask_reg_n_0_[5]\ : STD_LOGIC;
  signal \irq_mask_reg_n_0_[6]\ : STD_LOGIC;
  signal \irq_mask_reg_n_0_[7]\ : STD_LOGIC;
  signal \irq_mask_reg_n_0_[8]\ : STD_LOGIC;
  signal \irq_mask_reg_n_0_[9]\ : STD_LOGIC;
  signal irq_o_i_10_n_0 : STD_LOGIC;
  signal irq_o_i_2_n_0 : STD_LOGIC;
  signal irq_o_i_3_n_0 : STD_LOGIC;
  signal irq_o_i_4_n_0 : STD_LOGIC;
  signal irq_o_i_5_n_0 : STD_LOGIC;
  signal irq_o_i_6_n_0 : STD_LOGIC;
  signal irq_o_i_7_n_0 : STD_LOGIC;
  signal irq_o_i_8_n_0 : STD_LOGIC;
  signal irq_o_i_9_n_0 : STD_LOGIC;
  signal or_all_f : STD_LOGIC;
  signal sync_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ctrl[15]_i_3\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \ir[12]_i_1\ : label is "soft_lutpair80";
begin
  \data_o_reg[12]_1\ <= \^data_o_reg[12]_1\;
  \data_o_reg[5]_0\ <= \^data_o_reg[5]_0\;
  \din_reg[15]_0\(15 downto 0) <= \^din_reg[15]_0\(15 downto 0);
\ctrl[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_o_reg[12]_1\,
      I1 => \ctrl_reg[15]\,
      I2 => \ctrl_reg[15]_0\,
      O => \data_o_reg[12]_0\
    );
\data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\data_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(10),
      Q => Q(9),
      R => SR(0)
    );
\data_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(11),
      Q => Q(10),
      R => SR(0)
    );
\data_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(12),
      Q => gpio_rdata(12),
      R => SR(0)
    );
\data_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(13),
      Q => Q(11),
      R => SR(0)
    );
\data_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(14),
      Q => Q(12),
      R => SR(0)
    );
\data_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(15),
      Q => Q(13),
      R => SR(0)
    );
\data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
\data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => SR(0)
    );
\data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(5),
      Q => gpio_rdata(5),
      R => SR(0)
    );
\data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(6),
      Q => Q(5),
      R => SR(0)
    );
\data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(7),
      Q => Q(6),
      R => SR(0)
    );
\data_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(8),
      Q => Q(7),
      R => SR(0)
    );
\data_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(9),
      Q => Q(8),
      R => SR(0)
    );
\din_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(0),
      Q => \^din_reg[15]_0\(0),
      R => '0'
    );
\din_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(10),
      Q => \^din_reg[15]_0\(10),
      R => '0'
    );
\din_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(11),
      Q => \^din_reg[15]_0\(11),
      R => '0'
    );
\din_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(12),
      Q => \^din_reg[15]_0\(12),
      R => '0'
    );
\din_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(13),
      Q => \^din_reg[15]_0\(13),
      R => '0'
    );
\din_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(14),
      Q => \^din_reg[15]_0\(14),
      R => '0'
    );
\din_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(15),
      Q => \^din_reg[15]_0\(15),
      R => '0'
    );
\din_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(1),
      Q => \^din_reg[15]_0\(1),
      R => '0'
    );
\din_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(2),
      Q => \^din_reg[15]_0\(2),
      R => '0'
    );
\din_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(3),
      Q => \^din_reg[15]_0\(3),
      R => '0'
    );
\din_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(4),
      Q => \^din_reg[15]_0\(4),
      R => '0'
    );
\din_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(5),
      Q => \^din_reg[15]_0\(5),
      R => '0'
    );
\din_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(6),
      Q => \^din_reg[15]_0\(6),
      R => '0'
    );
\din_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(7),
      Q => \^din_reg[15]_0\(7),
      R => '0'
    );
\din_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(8),
      Q => \^din_reg[15]_0\(8),
      R => '0'
    );
\din_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => in_buf(9),
      Q => \^din_reg[15]_0\(9),
      R => '0'
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(0),
      Q => \dout_reg[15]_0\(0),
      R => '0'
    );
\dout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(10),
      Q => \dout_reg[15]_0\(10),
      R => '0'
    );
\dout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(11),
      Q => \dout_reg[15]_0\(11),
      R => '0'
    );
\dout_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(12),
      Q => \dout_reg[15]_0\(12),
      R => '0'
    );
\dout_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(13),
      Q => \dout_reg[15]_0\(13),
      R => '0'
    );
\dout_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(14),
      Q => \dout_reg[15]_0\(14),
      R => '0'
    );
\dout_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(15),
      Q => \dout_reg[15]_0\(15),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(1),
      Q => \dout_reg[15]_0\(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(2),
      Q => \dout_reg[15]_0\(2),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(3),
      Q => \dout_reg[15]_0\(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(4),
      Q => \dout_reg[15]_0\(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(5),
      Q => \dout_reg[15]_0\(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(6),
      Q => \dout_reg[15]_0\(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(7),
      Q => \dout_reg[15]_0\(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(8),
      Q => \dout_reg[15]_0\(8),
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \dout_reg[15]_1\(9),
      Q => \dout_reg[15]_0\(9),
      R => '0'
    );
\in_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(0),
      Q => in_buf(0),
      R => '0'
    );
\in_buf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(10),
      Q => in_buf(10),
      R => '0'
    );
\in_buf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(11),
      Q => in_buf(11),
      R => '0'
    );
\in_buf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(12),
      Q => in_buf(12),
      R => '0'
    );
\in_buf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(13),
      Q => in_buf(13),
      R => '0'
    );
\in_buf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(14),
      Q => in_buf(14),
      R => '0'
    );
\in_buf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(15),
      Q => in_buf(15),
      R => '0'
    );
\in_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(1),
      Q => in_buf(1),
      R => '0'
    );
\in_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(2),
      Q => in_buf(2),
      R => '0'
    );
\in_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(3),
      Q => in_buf(3),
      R => '0'
    );
\in_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(4),
      Q => in_buf(4),
      R => '0'
    );
\in_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(5),
      Q => in_buf(5),
      R => '0'
    );
\in_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(6),
      Q => in_buf(6),
      R => '0'
    );
\in_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(7),
      Q => in_buf(7),
      R => '0'
    );
\in_buf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(8),
      Q => in_buf(8),
      R => '0'
    );
\in_buf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => gpio_i(9),
      Q => in_buf(9),
      R => '0'
    );
\ir[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_o_reg[12]_1\,
      O => mem_data_i(1)
    );
\ir[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_o_reg[5]_0\,
      O => mem_data_i(0)
    );
\irq_mask_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(0),
      Q => \irq_mask_reg_n_0_[0]\,
      R => '0'
    );
\irq_mask_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(10),
      Q => \irq_mask_reg_n_0_[10]\,
      R => '0'
    );
\irq_mask_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(11),
      Q => \irq_mask_reg_n_0_[11]\,
      R => '0'
    );
\irq_mask_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(12),
      Q => \irq_mask_reg_n_0_[12]\,
      R => '0'
    );
\irq_mask_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(13),
      Q => \irq_mask_reg_n_0_[13]\,
      R => '0'
    );
\irq_mask_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(14),
      Q => \irq_mask_reg_n_0_[14]\,
      R => '0'
    );
\irq_mask_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(15),
      Q => \irq_mask_reg_n_0_[15]\,
      R => '0'
    );
\irq_mask_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(1),
      Q => \irq_mask_reg_n_0_[1]\,
      R => '0'
    );
\irq_mask_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(2),
      Q => \irq_mask_reg_n_0_[2]\,
      R => '0'
    );
\irq_mask_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(3),
      Q => \irq_mask_reg_n_0_[3]\,
      R => '0'
    );
\irq_mask_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(4),
      Q => \irq_mask_reg_n_0_[4]\,
      R => '0'
    );
\irq_mask_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(5),
      Q => \irq_mask_reg_n_0_[5]\,
      R => '0'
    );
\irq_mask_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(6),
      Q => \irq_mask_reg_n_0_[6]\,
      R => '0'
    );
\irq_mask_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(7),
      Q => \irq_mask_reg_n_0_[7]\,
      R => '0'
    );
\irq_mask_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(8),
      Q => \irq_mask_reg_n_0_[8]\,
      R => '0'
    );
\irq_mask_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \irq_mask_reg[15]_0\(0),
      D => \dout_reg[15]_1\(9),
      Q => \irq_mask_reg_n_0_[9]\,
      R => '0'
    );
irq_o_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => irq_o_i_2_n_0,
      I1 => irq_o_i_3_n_0,
      I2 => irq_o_i_4_n_0,
      I3 => irq_o_i_5_n_0,
      I4 => irq_o_i_6_n_0,
      O => or_all_f
    );
irq_o_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60FFFF6060606060"
    )
        port map (
      I0 => sync_in(8),
      I1 => \^din_reg[15]_0\(8),
      I2 => \irq_mask_reg_n_0_[8]\,
      I3 => sync_in(11),
      I4 => \^din_reg[15]_0\(11),
      I5 => \irq_mask_reg_n_0_[11]\,
      O => irq_o_i_10_n_0
    );
irq_o_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60FFFF6060606060"
    )
        port map (
      I0 => sync_in(5),
      I1 => \^din_reg[15]_0\(5),
      I2 => \irq_mask_reg_n_0_[5]\,
      I3 => sync_in(3),
      I4 => \^din_reg[15]_0\(3),
      I5 => \irq_mask_reg_n_0_[3]\,
      O => irq_o_i_2_n_0
    );
irq_o_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60FFFF6060606060"
    )
        port map (
      I0 => sync_in(2),
      I1 => \^din_reg[15]_0\(2),
      I2 => \irq_mask_reg_n_0_[2]\,
      I3 => sync_in(12),
      I4 => \^din_reg[15]_0\(12),
      I5 => \irq_mask_reg_n_0_[12]\,
      O => irq_o_i_3_n_0
    );
irq_o_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60FFFF6060606060"
    )
        port map (
      I0 => sync_in(4),
      I1 => \^din_reg[15]_0\(4),
      I2 => \irq_mask_reg_n_0_[4]\,
      I3 => sync_in(7),
      I4 => \^din_reg[15]_0\(7),
      I5 => \irq_mask_reg_n_0_[7]\,
      O => irq_o_i_4_n_0
    );
irq_o_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60FFFF6060606060"
    )
        port map (
      I0 => sync_in(9),
      I1 => \^din_reg[15]_0\(9),
      I2 => \irq_mask_reg_n_0_[9]\,
      I3 => sync_in(6),
      I4 => \^din_reg[15]_0\(6),
      I5 => \irq_mask_reg_n_0_[6]\,
      O => irq_o_i_5_n_0
    );
irq_o_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => irq_o_i_7_n_0,
      I1 => irq_o_i_8_n_0,
      I2 => irq_o_i_9_n_0,
      I3 => irq_o_i_10_n_0,
      O => irq_o_i_6_n_0
    );
irq_o_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60FFFF6060606060"
    )
        port map (
      I0 => sync_in(13),
      I1 => \^din_reg[15]_0\(13),
      I2 => \irq_mask_reg_n_0_[13]\,
      I3 => sync_in(15),
      I4 => \^din_reg[15]_0\(15),
      I5 => \irq_mask_reg_n_0_[15]\,
      O => irq_o_i_7_n_0
    );
irq_o_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60FFFF6060606060"
    )
        port map (
      I0 => sync_in(10),
      I1 => \^din_reg[15]_0\(10),
      I2 => \irq_mask_reg_n_0_[10]\,
      I3 => sync_in(14),
      I4 => \^din_reg[15]_0\(14),
      I5 => \irq_mask_reg_n_0_[14]\,
      O => irq_o_i_8_n_0
    );
irq_o_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60FFFF6060606060"
    )
        port map (
      I0 => sync_in(1),
      I1 => \^din_reg[15]_0\(1),
      I2 => \irq_mask_reg_n_0_[1]\,
      I3 => sync_in(0),
      I4 => \^din_reg[15]_0\(0),
      I5 => \irq_mask_reg_n_0_[0]\,
      O => irq_o_i_9_n_0
    );
irq_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => or_all_f,
      Q => irq_o,
      R => '0'
    );
\sam[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => gpio_rdata(5),
      I1 => uart_rdata(0),
      I2 => \ir_reg[5]\(0),
      I3 => timer_rdata(0),
      I4 => \ir_reg[5]_0\,
      I5 => \ir_reg[5]_1\,
      O => \^data_o_reg[5]_0\
    );
\src[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => gpio_rdata(12),
      I1 => \ir_reg[12]\(0),
      I2 => timer_rdata(1),
      I3 => uart_rdata(1),
      I4 => \ir_reg[12]_0\,
      O => \^data_o_reg[12]_1\
    );
\sync_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(0),
      Q => sync_in(0),
      R => '0'
    );
\sync_in_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(10),
      Q => sync_in(10),
      R => '0'
    );
\sync_in_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(11),
      Q => sync_in(11),
      R => '0'
    );
\sync_in_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(12),
      Q => sync_in(12),
      R => '0'
    );
\sync_in_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(13),
      Q => sync_in(13),
      R => '0'
    );
\sync_in_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(14),
      Q => sync_in(14),
      R => '0'
    );
\sync_in_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(15),
      Q => sync_in(15),
      R => '0'
    );
\sync_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(1),
      Q => sync_in(1),
      R => '0'
    );
\sync_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(2),
      Q => sync_in(2),
      R => '0'
    );
\sync_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(3),
      Q => sync_in(3),
      R => '0'
    );
\sync_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(4),
      Q => sync_in(4),
      R => '0'
    );
\sync_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(5),
      Q => sync_in(5),
      R => '0'
    );
\sync_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(6),
      Q => sync_in(6),
      R => '0'
    );
\sync_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(7),
      Q => sync_in(7),
      R => '0'
    );
\sync_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(8),
      Q => sync_in(8),
      R => '0'
    );
\sync_in_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^din_reg[15]_0\(9),
      Q => sync_in(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_imem is
  port (
    rden : out STD_LOGIC;
    \FSM_sequential_state_reg[3]\ : out STD_LOGIC;
    mem_data_i : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    \data_o_reg[13]\ : out STD_LOGIC;
    \data_o_reg[15]\ : out STD_LOGIC;
    rdata_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    imem_file_ram_l_reg_3_0 : out STD_LOGIC;
    imem_file_ram_h_reg_2_0 : out STD_LOGIC;
    imem_file_ram_h_reg_1_0 : out STD_LOGIC;
    imem_file_ram_h_reg_1_1 : out STD_LOGIC;
    imem_file_ram_h_reg_0_0 : out STD_LOGIC;
    imem_file_ram_h_reg_0_1 : out STD_LOGIC;
    imem_file_ram_l_reg_3_1 : out STD_LOGIC;
    imem_file_ram_l_reg_2_0 : out STD_LOGIC;
    imem_file_ram_l_reg_2_1 : out STD_LOGIC;
    imem_file_ram_l_reg_1_0 : out STD_LOGIC;
    imem_file_ram_l_reg_1_1 : out STD_LOGIC;
    imem_file_ram_l_reg_0_0 : out STD_LOGIC;
    imem_file_ram_l_reg_0_1 : out STD_LOGIC;
    rden_reg_0 : in STD_LOGIC;
    clk_i : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_state_reg[1]_3\ : in STD_LOGIC;
    \ir_reg[15]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ir_reg[15]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ir_reg[15]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rden_0 : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ir_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rden_1 : in STD_LOGIC;
    \ir_reg[14]\ : in STD_LOGIC;
    uart_rdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    timer_rdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    acc_en : in STD_LOGIC;
    \cpu_bus[addr]\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    imem_file_ram_h_reg_3_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    imem_file_ram_l_reg_3_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_neo430_imem : entity is "neo430_imem";
end SystemTop_neo430_imem;

architecture STRUCTURE of SystemTop_neo430_imem is
  signal \^data_o_reg[15]\ : STD_LOGIC;
  signal \ir[14]_i_2_n_0\ : STD_LOGIC;
  signal \ir[15]_i_3_n_0\ : STD_LOGIC;
  signal \^mem_data_i\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rdata_reg_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^rden\ : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_imem_file_ram_h_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_imem_file_ram_h_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_h_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_h_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_imem_file_ram_h_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_imem_file_ram_h_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_imem_file_ram_h_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_imem_file_ram_h_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_h_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_h_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_imem_file_ram_h_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_imem_file_ram_h_reg_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_imem_file_ram_h_reg_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_imem_file_ram_h_reg_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_h_reg_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_h_reg_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_imem_file_ram_h_reg_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_imem_file_ram_h_reg_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_h_reg_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_imem_file_ram_h_reg_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_imem_file_ram_h_reg_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_h_reg_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_h_reg_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_imem_file_ram_h_reg_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_imem_file_ram_l_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_imem_file_ram_l_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_imem_file_ram_l_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_l_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_l_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_imem_file_ram_l_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_imem_file_ram_l_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_imem_file_ram_l_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_imem_file_ram_l_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_l_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_l_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_imem_file_ram_l_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_imem_file_ram_l_reg_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_imem_file_ram_l_reg_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_imem_file_ram_l_reg_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_l_reg_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_l_reg_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_imem_file_ram_l_reg_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_imem_file_ram_l_reg_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_imem_file_ram_l_reg_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_imem_file_ram_l_reg_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_imem_file_ram_l_reg_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_l_reg_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_imem_file_ram_l_reg_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_imem_file_ram_l_reg_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_8\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \am[3]_i_1\ : label is "soft_lutpair81";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of imem_file_ram_h_reg_0 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of imem_file_ram_h_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of imem_file_ram_h_reg_0 : label is 131072;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of imem_file_ram_h_reg_0 : label is "U0/neo430_imem_inst/imem_file_ram_h";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of imem_file_ram_h_reg_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of imem_file_ram_h_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of imem_file_ram_h_reg_0 : label is 16383;
  attribute ram_offset : integer;
  attribute ram_offset of imem_file_ram_h_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of imem_file_ram_h_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of imem_file_ram_h_reg_0 : label is 1;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of imem_file_ram_h_reg_1 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of imem_file_ram_h_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of imem_file_ram_h_reg_1 : label is 131072;
  attribute RTL_RAM_NAME of imem_file_ram_h_reg_1 : label is "U0/neo430_imem_inst/imem_file_ram_h";
  attribute RTL_RAM_TYPE of imem_file_ram_h_reg_1 : label is "RAM_SP";
  attribute ram_addr_begin of imem_file_ram_h_reg_1 : label is 0;
  attribute ram_addr_end of imem_file_ram_h_reg_1 : label is 16383;
  attribute ram_offset of imem_file_ram_h_reg_1 : label is 0;
  attribute ram_slice_begin of imem_file_ram_h_reg_1 : label is 2;
  attribute ram_slice_end of imem_file_ram_h_reg_1 : label is 3;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of imem_file_ram_h_reg_2 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of imem_file_ram_h_reg_2 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of imem_file_ram_h_reg_2 : label is 131072;
  attribute RTL_RAM_NAME of imem_file_ram_h_reg_2 : label is "U0/neo430_imem_inst/imem_file_ram_h";
  attribute RTL_RAM_TYPE of imem_file_ram_h_reg_2 : label is "RAM_SP";
  attribute ram_addr_begin of imem_file_ram_h_reg_2 : label is 0;
  attribute ram_addr_end of imem_file_ram_h_reg_2 : label is 16383;
  attribute ram_offset of imem_file_ram_h_reg_2 : label is 0;
  attribute ram_slice_begin of imem_file_ram_h_reg_2 : label is 4;
  attribute ram_slice_end of imem_file_ram_h_reg_2 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of imem_file_ram_h_reg_3 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of imem_file_ram_h_reg_3 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of imem_file_ram_h_reg_3 : label is 131072;
  attribute RTL_RAM_NAME of imem_file_ram_h_reg_3 : label is "U0/neo430_imem_inst/imem_file_ram_h";
  attribute RTL_RAM_TYPE of imem_file_ram_h_reg_3 : label is "RAM_SP";
  attribute ram_addr_begin of imem_file_ram_h_reg_3 : label is 0;
  attribute ram_addr_end of imem_file_ram_h_reg_3 : label is 16383;
  attribute ram_offset of imem_file_ram_h_reg_3 : label is 0;
  attribute ram_slice_begin of imem_file_ram_h_reg_3 : label is 6;
  attribute ram_slice_end of imem_file_ram_h_reg_3 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of imem_file_ram_l_reg_0 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of imem_file_ram_l_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of imem_file_ram_l_reg_0 : label is 131072;
  attribute RTL_RAM_NAME of imem_file_ram_l_reg_0 : label is "U0/neo430_imem_inst/imem_file_ram_l";
  attribute RTL_RAM_TYPE of imem_file_ram_l_reg_0 : label is "RAM_SP";
  attribute ram_addr_begin of imem_file_ram_l_reg_0 : label is 0;
  attribute ram_addr_end of imem_file_ram_l_reg_0 : label is 16383;
  attribute ram_offset of imem_file_ram_l_reg_0 : label is 0;
  attribute ram_slice_begin of imem_file_ram_l_reg_0 : label is 0;
  attribute ram_slice_end of imem_file_ram_l_reg_0 : label is 1;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of imem_file_ram_l_reg_1 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of imem_file_ram_l_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of imem_file_ram_l_reg_1 : label is 131072;
  attribute RTL_RAM_NAME of imem_file_ram_l_reg_1 : label is "U0/neo430_imem_inst/imem_file_ram_l";
  attribute RTL_RAM_TYPE of imem_file_ram_l_reg_1 : label is "RAM_SP";
  attribute ram_addr_begin of imem_file_ram_l_reg_1 : label is 0;
  attribute ram_addr_end of imem_file_ram_l_reg_1 : label is 16383;
  attribute ram_offset of imem_file_ram_l_reg_1 : label is 0;
  attribute ram_slice_begin of imem_file_ram_l_reg_1 : label is 2;
  attribute ram_slice_end of imem_file_ram_l_reg_1 : label is 3;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of imem_file_ram_l_reg_2 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of imem_file_ram_l_reg_2 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of imem_file_ram_l_reg_2 : label is 131072;
  attribute RTL_RAM_NAME of imem_file_ram_l_reg_2 : label is "U0/neo430_imem_inst/imem_file_ram_l";
  attribute RTL_RAM_TYPE of imem_file_ram_l_reg_2 : label is "RAM_SP";
  attribute ram_addr_begin of imem_file_ram_l_reg_2 : label is 0;
  attribute ram_addr_end of imem_file_ram_l_reg_2 : label is 16383;
  attribute ram_offset of imem_file_ram_l_reg_2 : label is 0;
  attribute ram_slice_begin of imem_file_ram_l_reg_2 : label is 4;
  attribute ram_slice_end of imem_file_ram_l_reg_2 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of imem_file_ram_l_reg_3 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of imem_file_ram_l_reg_3 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of imem_file_ram_l_reg_3 : label is 131072;
  attribute RTL_RAM_NAME of imem_file_ram_l_reg_3 : label is "U0/neo430_imem_inst/imem_file_ram_l";
  attribute RTL_RAM_TYPE of imem_file_ram_l_reg_3 : label is "RAM_SP";
  attribute ram_addr_begin of imem_file_ram_l_reg_3 : label is 0;
  attribute ram_addr_end of imem_file_ram_l_reg_3 : label is 16383;
  attribute ram_offset of imem_file_ram_l_reg_3 : label is 0;
  attribute ram_slice_begin of imem_file_ram_l_reg_3 : label is 6;
  attribute ram_slice_end of imem_file_ram_l_reg_3 : label is 7;
begin
  \data_o_reg[15]\ <= \^data_o_reg[15]\;
  mem_data_i(1 downto 0) <= \^mem_data_i\(1 downto 0);
  rden <= \^rden\;
\FSM_sequential_state[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001505"
    )
        port map (
      I0 => \^mem_data_i\(0),
      I1 => \FSM_sequential_state_reg[1]_3\,
      I2 => \^mem_data_i\(1),
      I3 => \FSM_sequential_state_reg[1]_0\,
      I4 => \FSM_sequential_state_reg[1]_2\(0),
      O => \FSM_sequential_state_reg[1]\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E0A0F0"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_0\,
      I1 => \FSM_sequential_state_reg[1]_1\,
      I2 => \FSM_sequential_state_reg[1]_2\(1),
      I3 => \^mem_data_i\(1),
      I4 => \FSM_sequential_state_reg[1]_3\,
      I5 => \^mem_data_i\(0),
      O => \FSM_sequential_state_reg[3]\
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^data_o_reg[15]\,
      I1 => \FSM_sequential_state_reg[1]_3\,
      I2 => \^mem_data_i\(0),
      O => \data_o_reg[13]\
    );
\am[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rdata_reg_0(7),
      I1 => \^rden\,
      I2 => \ir_reg[11]\(7),
      I3 => rden_1,
      O => imem_file_ram_l_reg_3_0
    );
\am[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^mem_data_i\(1),
      I1 => \^mem_data_i\(0),
      O => \^data_o_reg[15]\
    );
imem_file_ram_h_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => \cpu_bus[addr]\(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_imem_file_ram_h_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_imem_file_ram_h_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_i,
      CLKBWRCLK => '0',
      DBITERR => NLW_imem_file_ram_h_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => imem_file_ram_h_reg_3_0(9 downto 8),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => NLW_imem_file_ram_h_reg_0_DOADO_UNCONNECTED(31 downto 2),
      DOADO(1 downto 0) => rdata_reg_0(9 downto 8),
      DOBDO(31 downto 0) => NLW_imem_file_ram_h_reg_0_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_imem_file_ram_h_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_imem_file_ram_h_reg_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_imem_file_ram_h_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => acc_en,
      ENBWREN => '0',
      INJECTDBITERR => NLW_imem_file_ram_h_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_imem_file_ram_h_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_imem_file_ram_h_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_imem_file_ram_h_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(7 downto 0) => B"00000000"
    );
imem_file_ram_h_reg_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => \cpu_bus[addr]\(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_imem_file_ram_h_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_imem_file_ram_h_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_i,
      CLKBWRCLK => '0',
      DBITERR => NLW_imem_file_ram_h_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => imem_file_ram_h_reg_3_0(11 downto 10),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => NLW_imem_file_ram_h_reg_1_DOADO_UNCONNECTED(31 downto 2),
      DOADO(1 downto 0) => rdata_reg_0(11 downto 10),
      DOBDO(31 downto 0) => NLW_imem_file_ram_h_reg_1_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_imem_file_ram_h_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_imem_file_ram_h_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_imem_file_ram_h_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => acc_en,
      ENBWREN => '0',
      INJECTDBITERR => NLW_imem_file_ram_h_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_imem_file_ram_h_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_imem_file_ram_h_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_imem_file_ram_h_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(7 downto 0) => B"00000000"
    );
imem_file_ram_h_reg_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => \cpu_bus[addr]\(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_imem_file_ram_h_reg_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_imem_file_ram_h_reg_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_i,
      CLKBWRCLK => '0',
      DBITERR => NLW_imem_file_ram_h_reg_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => imem_file_ram_h_reg_3_0(13 downto 12),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => NLW_imem_file_ram_h_reg_2_DOADO_UNCONNECTED(31 downto 2),
      DOADO(1) => rdata_reg_0(13),
      DOADO(0) => rdata_reg(0),
      DOBDO(31 downto 0) => NLW_imem_file_ram_h_reg_2_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_imem_file_ram_h_reg_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_imem_file_ram_h_reg_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_imem_file_ram_h_reg_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => acc_en,
      ENBWREN => '0',
      INJECTDBITERR => NLW_imem_file_ram_h_reg_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_imem_file_ram_h_reg_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_imem_file_ram_h_reg_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_imem_file_ram_h_reg_2_SBITERR_UNCONNECTED,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(7 downto 0) => B"00000000"
    );
imem_file_ram_h_reg_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => \cpu_bus[addr]\(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_imem_file_ram_h_reg_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_imem_file_ram_h_reg_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_i,
      CLKBWRCLK => '0',
      DBITERR => NLW_imem_file_ram_h_reg_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => imem_file_ram_h_reg_3_0(15 downto 14),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => NLW_imem_file_ram_h_reg_3_DOADO_UNCONNECTED(31 downto 2),
      DOADO(1 downto 0) => rdata_reg_0(15 downto 14),
      DOBDO(31 downto 0) => NLW_imem_file_ram_h_reg_3_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_imem_file_ram_h_reg_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_imem_file_ram_h_reg_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_imem_file_ram_h_reg_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => acc_en,
      ENBWREN => '0',
      INJECTDBITERR => NLW_imem_file_ram_h_reg_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_imem_file_ram_h_reg_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_imem_file_ram_h_reg_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_imem_file_ram_h_reg_3_SBITERR_UNCONNECTED,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(7 downto 0) => B"00000000"
    );
imem_file_ram_l_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => \cpu_bus[addr]\(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_imem_file_ram_l_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_imem_file_ram_l_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_i,
      CLKBWRCLK => '0',
      DBITERR => NLW_imem_file_ram_l_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => imem_file_ram_h_reg_3_0(1 downto 0),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => NLW_imem_file_ram_l_reg_0_DOADO_UNCONNECTED(31 downto 2),
      DOADO(1 downto 0) => rdata_reg_0(1 downto 0),
      DOBDO(31 downto 0) => NLW_imem_file_ram_l_reg_0_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_imem_file_ram_l_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_imem_file_ram_l_reg_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_imem_file_ram_l_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => acc_en,
      ENBWREN => '0',
      INJECTDBITERR => NLW_imem_file_ram_l_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_imem_file_ram_l_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_imem_file_ram_l_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_imem_file_ram_l_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => imem_file_ram_l_reg_3_2(0),
      WEA(2) => imem_file_ram_l_reg_3_2(0),
      WEA(1) => imem_file_ram_l_reg_3_2(0),
      WEA(0) => imem_file_ram_l_reg_3_2(0),
      WEBWE(7 downto 0) => B"00000000"
    );
imem_file_ram_l_reg_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => \cpu_bus[addr]\(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_imem_file_ram_l_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_imem_file_ram_l_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_i,
      CLKBWRCLK => '0',
      DBITERR => NLW_imem_file_ram_l_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => imem_file_ram_h_reg_3_0(3 downto 2),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => NLW_imem_file_ram_l_reg_1_DOADO_UNCONNECTED(31 downto 2),
      DOADO(1 downto 0) => rdata_reg_0(3 downto 2),
      DOBDO(31 downto 0) => NLW_imem_file_ram_l_reg_1_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_imem_file_ram_l_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_imem_file_ram_l_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_imem_file_ram_l_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => acc_en,
      ENBWREN => '0',
      INJECTDBITERR => NLW_imem_file_ram_l_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_imem_file_ram_l_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_imem_file_ram_l_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_imem_file_ram_l_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => imem_file_ram_l_reg_3_2(0),
      WEA(2) => imem_file_ram_l_reg_3_2(0),
      WEA(1) => imem_file_ram_l_reg_3_2(0),
      WEA(0) => imem_file_ram_l_reg_3_2(0),
      WEBWE(7 downto 0) => B"00000000"
    );
imem_file_ram_l_reg_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => \cpu_bus[addr]\(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_imem_file_ram_l_reg_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_imem_file_ram_l_reg_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_i,
      CLKBWRCLK => '0',
      DBITERR => NLW_imem_file_ram_l_reg_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => imem_file_ram_h_reg_3_0(5 downto 4),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => NLW_imem_file_ram_l_reg_2_DOADO_UNCONNECTED(31 downto 2),
      DOADO(1 downto 0) => rdata_reg_0(5 downto 4),
      DOBDO(31 downto 0) => NLW_imem_file_ram_l_reg_2_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_imem_file_ram_l_reg_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_imem_file_ram_l_reg_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_imem_file_ram_l_reg_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => acc_en,
      ENBWREN => '0',
      INJECTDBITERR => NLW_imem_file_ram_l_reg_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_imem_file_ram_l_reg_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_imem_file_ram_l_reg_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_imem_file_ram_l_reg_2_SBITERR_UNCONNECTED,
      WEA(3) => imem_file_ram_l_reg_3_2(0),
      WEA(2) => imem_file_ram_l_reg_3_2(0),
      WEA(1) => imem_file_ram_l_reg_3_2(0),
      WEA(0) => imem_file_ram_l_reg_3_2(0),
      WEBWE(7 downto 0) => B"00000000"
    );
imem_file_ram_l_reg_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => \cpu_bus[addr]\(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_imem_file_ram_l_reg_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_imem_file_ram_l_reg_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_i,
      CLKBWRCLK => '0',
      DBITERR => NLW_imem_file_ram_l_reg_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => imem_file_ram_h_reg_3_0(7 downto 6),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => NLW_imem_file_ram_l_reg_3_DOADO_UNCONNECTED(31 downto 2),
      DOADO(1 downto 0) => rdata_reg_0(7 downto 6),
      DOBDO(31 downto 0) => NLW_imem_file_ram_l_reg_3_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_imem_file_ram_l_reg_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_imem_file_ram_l_reg_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_imem_file_ram_l_reg_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => acc_en,
      ENBWREN => '0',
      INJECTDBITERR => NLW_imem_file_ram_l_reg_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_imem_file_ram_l_reg_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_imem_file_ram_l_reg_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_imem_file_ram_l_reg_3_SBITERR_UNCONNECTED,
      WEA(3) => imem_file_ram_l_reg_3_2(0),
      WEA(2) => imem_file_ram_l_reg_3_2(0),
      WEA(1) => imem_file_ram_l_reg_3_2(0),
      WEA(0) => imem_file_ram_l_reg_3_2(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\ir[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rdata_reg_0(10),
      I1 => \^rden\,
      I2 => \ir_reg[11]\(10),
      I3 => rden_1,
      O => imem_file_ram_h_reg_1_1
    );
\ir[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rdata_reg_0(11),
      I1 => \^rden\,
      I2 => \ir_reg[11]\(11),
      I3 => rden_1,
      O => imem_file_ram_h_reg_1_0
    );
\ir[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \ir[14]_i_2_n_0\,
      I1 => \ir_reg[14]\,
      I2 => \ir_reg[15]_1\(0),
      I3 => Q(0),
      I4 => uart_rdata(0),
      O => \^mem_data_i\(0)
    );
\ir[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => rdata_reg_0(14),
      I1 => \^rden\,
      I2 => \ir_reg[15]_0\(0),
      I3 => timer_rdata(0),
      O => \ir[14]_i_2_n_0\
    );
\ir[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \ir[15]_i_3_n_0\,
      I1 => \ir_reg[15]\,
      I2 => Q(1),
      I3 => \ir_reg[15]_0\(1),
      I4 => \ir_reg[15]_1\(1),
      O => \^mem_data_i\(1)
    );
\ir[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^rden\,
      I1 => rdata_reg_0(15),
      I2 => rden_0,
      I3 => DOADO(1),
      O => \ir[15]_i_3_n_0\
    );
\ir[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rdata_reg_0(6),
      I1 => \^rden\,
      I2 => \ir_reg[11]\(6),
      I3 => rden_1,
      O => imem_file_ram_l_reg_3_1
    );
rden_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => rden_reg_0,
      Q => \^rden\,
      R => '0'
    );
\sam[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rdata_reg_0(4),
      I1 => \^rden\,
      I2 => \ir_reg[11]\(4),
      I3 => rden_1,
      O => imem_file_ram_l_reg_2_1
    );
\sam[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rdata_reg_0(5),
      I1 => \^rden\,
      I2 => \ir_reg[11]\(5),
      I3 => rden_1,
      O => imem_file_ram_l_reg_2_0
    );
\src[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rdata_reg_0(0),
      I1 => \^rden\,
      I2 => \ir_reg[11]\(0),
      I3 => rden_1,
      O => imem_file_ram_l_reg_0_1
    );
\src[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rdata_reg_0(8),
      I1 => \^rden\,
      I2 => \ir_reg[11]\(8),
      I3 => rden_1,
      O => imem_file_ram_h_reg_0_1
    );
\src[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rdata_reg_0(1),
      I1 => \^rden\,
      I2 => \ir_reg[11]\(1),
      I3 => rden_1,
      O => imem_file_ram_l_reg_0_0
    );
\src[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rdata_reg_0(9),
      I1 => \^rden\,
      I2 => \ir_reg[11]\(9),
      I3 => rden_1,
      O => imem_file_ram_h_reg_0_0
    );
\src[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rdata_reg_0(2),
      I1 => \^rden\,
      I2 => \ir_reg[11]\(2),
      I3 => rden_1,
      O => imem_file_ram_l_reg_1_1
    );
\src[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rdata_reg_0(3),
      I1 => \^rden\,
      I2 => \ir_reg[11]\(3),
      I3 => rden_1,
      O => imem_file_ram_l_reg_1_0
    );
\src[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rdata_reg_0(13),
      I1 => \^rden\,
      I2 => DOADO(0),
      I3 => rden_0,
      O => imem_file_ram_h_reg_2_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_pwm is
  port (
    pwm_cg_en : out STD_LOGIC;
    pwm_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_1_in : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_o_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_o_reg[7]_1\ : out STD_LOGIC;
    dio_swap_reg : out STD_LOGIC;
    dio_swap_reg_0 : out STD_LOGIC;
    \data_o_reg[7]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_o_reg[15]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    gpio_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \pwm_ch_reg[2][7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \prsc_reg[2]_0\ : in STD_LOGIC;
    \pwm_ch_reg[1][7]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_i : in STD_LOGIC;
    \am_reg[0]\ : in STD_LOGIC;
    \am_reg[0]_0\ : in STD_LOGIC;
    \am_reg[0]_1\ : in STD_LOGIC;
    dio_swap : in STD_LOGIC;
    mem_data_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    uart_rdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    timer_rdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ir_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ir_reg[7]_0\ : in STD_LOGIC;
    \ir_reg[7]_1\ : in STD_LOGIC;
    \pwm_cnt_reg[0]_0\ : in STD_LOGIC;
    \pwm_cnt_reg[0]_1\ : in STD_LOGIC;
    \pwm_cnt_reg[0]_2\ : in STD_LOGIC;
    \pwm_cnt_reg[0]_3\ : in STD_LOGIC;
    \pwm_cnt_reg[0]_4\ : in STD_LOGIC;
    \pwm_cnt_reg[0]_5\ : in STD_LOGIC;
    \pwm_cnt_reg[0]_6\ : in STD_LOGIC;
    \pwm_cnt_reg[0]_7\ : in STD_LOGIC;
    \register_sr_reg[3]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \pwm_ch_reg[2][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_neo430_pwm : entity is "neo430_pwm";
end SystemTop_neo430_pwm;

architecture STRUCTURE of SystemTop_neo430_pwm is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^data_o_reg[7]_1\ : STD_LOGIC;
  signal gpio_pwm : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \prsc_reg_n_0_[0]\ : STD_LOGIC;
  signal \prsc_reg_n_0_[1]\ : STD_LOGIC;
  signal \prsc_reg_n_0_[2]\ : STD_LOGIC;
  signal prsc_tick : STD_LOGIC;
  signal \^pwm_cg_en\ : STD_LOGIC;
  signal \pwm_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \pwm_cnt[7]_i_5_n_0\ : STD_LOGIC;
  signal \pwm_cnt[7]_i_6_n_0\ : STD_LOGIC;
  signal pwm_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pwm_out12_in : STD_LOGIC;
  signal pwm_out14_in : STD_LOGIC;
  signal \pwm_out1_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \pwm_out1_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \pwm_out1_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \pwm_out1_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \pwm_out1_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \pwm_out1_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \pwm_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_out[3]_i_1_n_0\ : STD_LOGIC;
  signal pwm_rdata : STD_LOGIC_VECTOR ( 7 to 7 );
  signal size_sel : STD_LOGIC;
  signal \NLW_pwm_out1_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out1_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \am[0]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \gpio_o[0]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \gpio_o[10]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \gpio_o[11]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \gpio_o[12]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \gpio_o[13]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \gpio_o[14]_INST_0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \gpio_o[15]_INST_0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \gpio_o[1]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \gpio_o[2]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \gpio_o[3]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \gpio_o[4]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \gpio_o[5]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \gpio_o[6]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \gpio_o[7]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \gpio_o[8]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \gpio_o[9]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \ir[7]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \mem_addr_reg0_carry__2_i_8\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \op_b_ff[7]_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \pwm_cnt[1]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \pwm_cnt[2]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \pwm_cnt[3]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \pwm_cnt[4]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \pwm_cnt[6]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \pwm_cnt[7]_i_3\ : label is "soft_lutpair85";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \pwm_out1_inferred__1/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_out1_inferred__2/i__carry\ : label is 11;
  attribute SOFT_HLUTNM of \pwm_out[0]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \pwm_out[3]_i_1\ : label is "soft_lutpair95";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \data_o_reg[7]_1\ <= \^data_o_reg[7]_1\;
  p_1_in(15 downto 0) <= \^p_1_in\(15 downto 0);
  pwm_cg_en <= \^pwm_cg_en\;
\am[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4777"
    )
        port map (
      I0 => \^data_o_reg[7]_1\,
      I1 => \am_reg[0]\,
      I2 => \am_reg[0]_0\,
      I3 => \am_reg[0]_1\,
      O => \data_o_reg[7]_0\(0)
    );
\am[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pwm_rdata(7),
      I1 => uart_rdata(0),
      I2 => timer_rdata(0),
      I3 => \ir_reg[7]\(0),
      I4 => \ir_reg[7]_0\,
      I5 => \ir_reg[7]_1\,
      O => \^data_o_reg[7]_1\
    );
\data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(0),
      Q => \data_o_reg[15]_0\(0),
      R => SR(0)
    );
\data_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(10),
      Q => \data_o_reg[15]_0\(9),
      R => SR(0)
    );
\data_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(11),
      Q => \data_o_reg[15]_0\(10),
      R => SR(0)
    );
\data_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(12),
      Q => \data_o_reg[15]_0\(11),
      R => SR(0)
    );
\data_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(13),
      Q => \data_o_reg[15]_0\(12),
      R => SR(0)
    );
\data_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(14),
      Q => \data_o_reg[15]_0\(13),
      R => SR(0)
    );
\data_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(15),
      Q => \data_o_reg[15]_0\(14),
      R => SR(0)
    );
\data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(1),
      Q => \data_o_reg[15]_0\(1),
      R => SR(0)
    );
\data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(2),
      Q => \data_o_reg[15]_0\(2),
      R => SR(0)
    );
\data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(3),
      Q => \data_o_reg[15]_0\(3),
      R => SR(0)
    );
\data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(4),
      Q => \data_o_reg[15]_0\(4),
      R => SR(0)
    );
\data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(5),
      Q => \data_o_reg[15]_0\(5),
      R => SR(0)
    );
\data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(6),
      Q => \data_o_reg[15]_0\(6),
      R => SR(0)
    );
\data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(7),
      Q => pwm_rdata(7),
      R => SR(0)
    );
\data_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(8),
      Q => \data_o_reg[15]_0\(7),
      R => SR(0)
    );
\data_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(9),
      Q => \data_o_reg[15]_0\(8),
      R => SR(0)
    );
enable_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \prsc_reg[2]_0\,
      D => \pwm_ch_reg[1][7]_0\(0),
      Q => \^pwm_cg_en\,
      R => '0'
    );
\gpio_o[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(0),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(0)
    );
\gpio_o[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(10),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(10)
    );
\gpio_o[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(11),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(11)
    );
\gpio_o[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(12),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(12)
    );
\gpio_o[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(13),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(13)
    );
\gpio_o[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(14),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(14)
    );
\gpio_o[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(15),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(15)
    );
\gpio_o[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(1),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(1)
    );
\gpio_o[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(2),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(2)
    );
\gpio_o[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(3),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(3)
    );
\gpio_o[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(4),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(4)
    );
\gpio_o[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(5),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(5)
    );
\gpio_o[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(6),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(6)
    );
\gpio_o[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(7),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(7)
    );
\gpio_o[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(8),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(8)
    );
\gpio_o[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \register_sr_reg[3]\(9),
      I1 => p_0_in,
      I2 => gpio_pwm,
      O => gpio_o(9)
    );
gpio_pwm_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \prsc_reg[2]_0\,
      D => \pwm_ch_reg[1][7]_0\(4),
      Q => gpio_pwm,
      R => '0'
    );
\i__carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4000F400"
    )
        port map (
      I0 => \^p_1_in\(6),
      I1 => pwm_cnt_reg(6),
      I2 => pwm_cnt_reg(7),
      I3 => size_sel,
      I4 => \^p_1_in\(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4000F400"
    )
        port map (
      I0 => \^q\(6),
      I1 => pwm_cnt_reg(6),
      I2 => pwm_cnt_reg(7),
      I3 => size_sel,
      I4 => \^q\(7),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4000F400"
    )
        port map (
      I0 => \^p_1_in\(4),
      I1 => pwm_cnt_reg(4),
      I2 => pwm_cnt_reg(5),
      I3 => size_sel,
      I4 => \^p_1_in\(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4000F400"
    )
        port map (
      I0 => \^q\(4),
      I1 => pwm_cnt_reg(4),
      I2 => pwm_cnt_reg(5),
      I3 => size_sel,
      I4 => \^q\(5),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pwm_cnt_reg(3),
      I1 => \^q\(3),
      I2 => pwm_cnt_reg(2),
      I3 => \^q\(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pwm_cnt_reg(3),
      I1 => \^p_1_in\(3),
      I2 => pwm_cnt_reg(2),
      I3 => \^p_1_in\(2),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pwm_cnt_reg(1),
      I1 => \^q\(1),
      I2 => pwm_cnt_reg(0),
      I3 => \^q\(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pwm_cnt_reg(1),
      I1 => \^p_1_in\(1),
      I2 => pwm_cnt_reg(0),
      I3 => \^p_1_in\(0),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9009FFFF"
    )
        port map (
      I0 => pwm_cnt_reg(6),
      I1 => \^q\(6),
      I2 => pwm_cnt_reg(7),
      I3 => \^q\(7),
      I4 => size_sel,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9009FFFF"
    )
        port map (
      I0 => pwm_cnt_reg(6),
      I1 => \^p_1_in\(6),
      I2 => pwm_cnt_reg(7),
      I3 => \^p_1_in\(7),
      I4 => size_sel,
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9009FFFF"
    )
        port map (
      I0 => pwm_cnt_reg(4),
      I1 => \^q\(4),
      I2 => pwm_cnt_reg(5),
      I3 => \^q\(5),
      I4 => size_sel,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9009FFFF"
    )
        port map (
      I0 => pwm_cnt_reg(4),
      I1 => \^p_1_in\(4),
      I2 => pwm_cnt_reg(5),
      I3 => \^p_1_in\(5),
      I4 => size_sel,
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(3),
      I1 => pwm_cnt_reg(3),
      I2 => \^q\(2),
      I3 => pwm_cnt_reg(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^p_1_in\(3),
      I1 => pwm_cnt_reg(3),
      I2 => \^p_1_in\(2),
      I3 => pwm_cnt_reg(2),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(1),
      I1 => pwm_cnt_reg(1),
      I2 => \^q\(0),
      I3 => pwm_cnt_reg(0),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^p_1_in\(1),
      I1 => pwm_cnt_reg(1),
      I2 => \^p_1_in\(0),
      I3 => pwm_cnt_reg(0),
      O => \i__carry_i_8__0_n_0\
    );
\ir[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_o_reg[7]_1\,
      O => \data_o_reg[7]_2\(0)
    );
\mem_addr_reg0_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \^data_o_reg[7]_1\,
      I1 => dio_swap,
      I2 => mem_data_i(0),
      O => dio_swap_reg
    );
\op_b_ff[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^data_o_reg[7]_1\,
      I1 => mem_data_i(0),
      I2 => dio_swap,
      O => dio_swap_reg_0
    );
\prsc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \prsc_reg[2]_0\,
      D => \pwm_ch_reg[1][7]_0\(1),
      Q => \prsc_reg_n_0_[0]\,
      R => '0'
    );
\prsc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \prsc_reg[2]_0\,
      D => \pwm_ch_reg[1][7]_0\(2),
      Q => \prsc_reg_n_0_[1]\,
      R => '0'
    );
\prsc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \prsc_reg[2]_0\,
      D => \pwm_ch_reg[1][7]_0\(3),
      Q => \prsc_reg_n_0_[2]\,
      R => '0'
    );
\pwm_ch_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(0),
      Q => \^p_1_in\(0),
      R => '0'
    );
\pwm_ch_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(1),
      Q => \^p_1_in\(1),
      R => '0'
    );
\pwm_ch_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(2),
      Q => \^p_1_in\(2),
      R => '0'
    );
\pwm_ch_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(3),
      Q => \^p_1_in\(3),
      R => '0'
    );
\pwm_ch_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(4),
      Q => \^p_1_in\(4),
      R => '0'
    );
\pwm_ch_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(5),
      Q => \^p_1_in\(5),
      R => '0'
    );
\pwm_ch_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(6),
      Q => \^p_1_in\(6),
      R => '0'
    );
\pwm_ch_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(7),
      Q => \^p_1_in\(7),
      R => '0'
    );
\pwm_ch_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(8),
      Q => \^p_1_in\(8),
      R => '0'
    );
\pwm_ch_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(9),
      Q => \^p_1_in\(9),
      R => '0'
    );
\pwm_ch_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(10),
      Q => \^p_1_in\(10),
      R => '0'
    );
\pwm_ch_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(11),
      Q => \^p_1_in\(11),
      R => '0'
    );
\pwm_ch_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(12),
      Q => \^p_1_in\(12),
      R => '0'
    );
\pwm_ch_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(13),
      Q => \^p_1_in\(13),
      R => '0'
    );
\pwm_ch_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(14),
      Q => \^p_1_in\(14),
      R => '0'
    );
\pwm_ch_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \pwm_ch_reg[1][7]_0\(15),
      Q => \^p_1_in\(15),
      R => '0'
    );
\pwm_ch_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(0),
      Q => \pwm_ch_reg[2][7]_0\(0),
      R => '0'
    );
\pwm_ch_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(1),
      Q => \pwm_ch_reg[2][7]_0\(1),
      R => '0'
    );
\pwm_ch_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(2),
      Q => \pwm_ch_reg[2][7]_0\(2),
      R => '0'
    );
\pwm_ch_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(3),
      Q => \pwm_ch_reg[2][7]_0\(3),
      R => '0'
    );
\pwm_ch_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(4),
      Q => \pwm_ch_reg[2][7]_0\(4),
      R => '0'
    );
\pwm_ch_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(5),
      Q => \pwm_ch_reg[2][7]_0\(5),
      R => '0'
    );
\pwm_ch_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(6),
      Q => \pwm_ch_reg[2][7]_0\(6),
      R => '0'
    );
\pwm_ch_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(7),
      Q => \pwm_ch_reg[2][7]_0\(7),
      R => '0'
    );
\pwm_ch_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(8),
      Q => \^q\(0),
      R => '0'
    );
\pwm_ch_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(9),
      Q => \^q\(1),
      R => '0'
    );
\pwm_ch_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(10),
      Q => \^q\(2),
      R => '0'
    );
\pwm_ch_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(11),
      Q => \^q\(3),
      R => '0'
    );
\pwm_ch_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(12),
      Q => \^q\(4),
      R => '0'
    );
\pwm_ch_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(13),
      Q => \^q\(5),
      R => '0'
    );
\pwm_ch_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(14),
      Q => \^q\(6),
      R => '0'
    );
\pwm_ch_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \pwm_ch_reg[2][0]_0\(0),
      D => \pwm_ch_reg[1][7]_0\(15),
      Q => \^q\(7),
      R => '0'
    );
\pwm_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      O => plusOp(0)
    );
\pwm_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pwm_cnt_reg(1),
      I1 => pwm_cnt_reg(0),
      O => plusOp(1)
    );
\pwm_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => pwm_cnt_reg(2),
      I1 => pwm_cnt_reg(0),
      I2 => pwm_cnt_reg(1),
      O => plusOp(2)
    );
\pwm_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => pwm_cnt_reg(3),
      I1 => pwm_cnt_reg(1),
      I2 => pwm_cnt_reg(0),
      I3 => pwm_cnt_reg(2),
      O => plusOp(3)
    );
\pwm_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => pwm_cnt_reg(4),
      I1 => pwm_cnt_reg(2),
      I2 => pwm_cnt_reg(0),
      I3 => pwm_cnt_reg(1),
      I4 => pwm_cnt_reg(3),
      O => plusOp(4)
    );
\pwm_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => pwm_cnt_reg(5),
      I1 => pwm_cnt_reg(3),
      I2 => pwm_cnt_reg(1),
      I3 => pwm_cnt_reg(0),
      I4 => pwm_cnt_reg(2),
      I5 => pwm_cnt_reg(4),
      O => plusOp(5)
    );
\pwm_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pwm_cnt_reg(6),
      I1 => \pwm_cnt[7]_i_6_n_0\,
      O => plusOp(6)
    );
\pwm_cnt[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pwm_cg_en\,
      O => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => pwm_cnt_reg(7),
      I1 => \pwm_cnt[7]_i_6_n_0\,
      I2 => pwm_cnt_reg(6),
      O => plusOp(7)
    );
\pwm_cnt[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000FFF55335533"
    )
        port map (
      I0 => \pwm_cnt_reg[0]_0\,
      I1 => \pwm_cnt_reg[0]_1\,
      I2 => \pwm_cnt_reg[0]_2\,
      I3 => \prsc_reg_n_0_[0]\,
      I4 => \pwm_cnt_reg[0]_3\,
      I5 => \prsc_reg_n_0_[1]\,
      O => \pwm_cnt[7]_i_4_n_0\
    );
\pwm_cnt[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \pwm_cnt_reg[0]_4\,
      I1 => \pwm_cnt_reg[0]_5\,
      I2 => \pwm_cnt_reg[0]_6\,
      I3 => \prsc_reg_n_0_[0]\,
      I4 => \pwm_cnt_reg[0]_7\,
      I5 => \prsc_reg_n_0_[1]\,
      O => \pwm_cnt[7]_i_5_n_0\
    );
\pwm_cnt[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => pwm_cnt_reg(5),
      I1 => pwm_cnt_reg(3),
      I2 => pwm_cnt_reg(1),
      I3 => pwm_cnt_reg(0),
      I4 => pwm_cnt_reg(2),
      I5 => pwm_cnt_reg(4),
      O => \pwm_cnt[7]_i_6_n_0\
    );
\pwm_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => prsc_tick,
      D => plusOp(0),
      Q => pwm_cnt_reg(0),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => prsc_tick,
      D => plusOp(1),
      Q => pwm_cnt_reg(1),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => prsc_tick,
      D => plusOp(2),
      Q => pwm_cnt_reg(2),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => prsc_tick,
      D => plusOp(3),
      Q => pwm_cnt_reg(3),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => prsc_tick,
      D => plusOp(4),
      Q => pwm_cnt_reg(4),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => prsc_tick,
      D => plusOp(5),
      Q => pwm_cnt_reg(5),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => prsc_tick,
      D => plusOp(6),
      Q => pwm_cnt_reg(6),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => prsc_tick,
      D => plusOp(7),
      Q => pwm_cnt_reg(7),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pwm_cnt[7]_i_4_n_0\,
      I1 => \pwm_cnt[7]_i_5_n_0\,
      O => prsc_tick,
      S => \prsc_reg_n_0_[2]\
    );
\pwm_out1_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_out12_in,
      CO(2) => \pwm_out1_inferred__1/i__carry_n_1\,
      CO(1) => \pwm_out1_inferred__1/i__carry_n_2\,
      CO(0) => \pwm_out1_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_pwm_out1_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\pwm_out1_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_out14_in,
      CO(2) => \pwm_out1_inferred__2/i__carry_n_1\,
      CO(1) => \pwm_out1_inferred__2/i__carry_n_2\,
      CO(0) => \pwm_out1_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_pwm_out1_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\pwm_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pwm_cg_en\,
      I1 => pwm_out14_in,
      O => \pwm_out[0]_i_1_n_0\
    );
\pwm_out[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pwm_cg_en\,
      I1 => pwm_out12_in,
      O => \pwm_out[3]_i_1_n_0\
    );
\pwm_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \pwm_out[0]_i_1_n_0\,
      Q => pwm_o(0),
      R => '0'
    );
\pwm_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \pwm_out[3]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
size_sel_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \prsc_reg[2]_0\,
      D => \pwm_ch_reg[1][7]_0\(5),
      Q => size_sel,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_reg_file is
  port (
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    imem_up_en : out STD_LOGIC;
    \sreg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sreg_reg[8]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \rst_gen_reg[3]\ : out STD_LOGIC;
    data_o0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \sreg_reg[4]_0\ : out STD_LOGIC;
    sreg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cpu_bus[wr_en]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ctrl_reg[8]\ : in STD_LOGIC;
    mem_data_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sreg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_i : in STD_LOGIC;
    in_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \sreg_reg[4]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sreg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sreg_reg[4]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_neo430_reg_file : entity is "neo430_reg_file";
end SystemTop_neo430_reg_file;

architecture STRUCTURE of SystemTop_neo430_reg_file is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \ctrl[8]_i_8_n_0\ : STD_LOGIC;
  signal \^imem_up_en\ : STD_LOGIC;
  signal \^rst_gen_reg[3]\ : STD_LOGIC;
  signal \^sreg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sreg[15]_i_1_n_0\ : STD_LOGIC;
  signal \sreg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sreg[4]_i_1_n_0\ : STD_LOGIC;
  signal \^sreg_reg[4]_0\ : STD_LOGIC;
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_0_0 : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_0_0 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_0_0 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_0_0 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_0_0 : label is "GND:A4";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of reg_file_reg_0_15_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of reg_file_reg_0_15_0_0 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of reg_file_reg_0_15_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of reg_file_reg_0_15_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of reg_file_reg_0_15_0_0 : label is 0;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_10_10 : label is 256;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_10_10 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_10_10 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_10_10 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_10_10 : label is "GND:A4";
  attribute ram_addr_begin of reg_file_reg_0_15_10_10 : label is 0;
  attribute ram_addr_end of reg_file_reg_0_15_10_10 : label is 15;
  attribute ram_offset of reg_file_reg_0_15_10_10 : label is 0;
  attribute ram_slice_begin of reg_file_reg_0_15_10_10 : label is 10;
  attribute ram_slice_end of reg_file_reg_0_15_10_10 : label is 10;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_11_11 : label is 256;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_11_11 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_11_11 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_11_11 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_11_11 : label is "GND:A4";
  attribute ram_addr_begin of reg_file_reg_0_15_11_11 : label is 0;
  attribute ram_addr_end of reg_file_reg_0_15_11_11 : label is 15;
  attribute ram_offset of reg_file_reg_0_15_11_11 : label is 0;
  attribute ram_slice_begin of reg_file_reg_0_15_11_11 : label is 11;
  attribute ram_slice_end of reg_file_reg_0_15_11_11 : label is 11;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_12_12 : label is 256;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_12_12 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_12_12 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_12_12 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_12_12 : label is "GND:A4";
  attribute ram_addr_begin of reg_file_reg_0_15_12_12 : label is 0;
  attribute ram_addr_end of reg_file_reg_0_15_12_12 : label is 15;
  attribute ram_offset of reg_file_reg_0_15_12_12 : label is 0;
  attribute ram_slice_begin of reg_file_reg_0_15_12_12 : label is 12;
  attribute ram_slice_end of reg_file_reg_0_15_12_12 : label is 12;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_13_13 : label is 256;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_13_13 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_13_13 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_13_13 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_13_13 : label is "GND:A4";
  attribute ram_addr_begin of reg_file_reg_0_15_13_13 : label is 0;
  attribute ram_addr_end of reg_file_reg_0_15_13_13 : label is 15;
  attribute ram_offset of reg_file_reg_0_15_13_13 : label is 0;
  attribute ram_slice_begin of reg_file_reg_0_15_13_13 : label is 13;
  attribute ram_slice_end of reg_file_reg_0_15_13_13 : label is 13;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_14_14 : label is 256;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_14_14 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_14_14 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_14_14 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_14_14 : label is "GND:A4";
  attribute ram_addr_begin of reg_file_reg_0_15_14_14 : label is 0;
  attribute ram_addr_end of reg_file_reg_0_15_14_14 : label is 15;
  attribute ram_offset of reg_file_reg_0_15_14_14 : label is 0;
  attribute ram_slice_begin of reg_file_reg_0_15_14_14 : label is 14;
  attribute ram_slice_end of reg_file_reg_0_15_14_14 : label is 14;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_15_15 : label is 256;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_15_15 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_15_15 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_15_15 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_15_15 : label is "GND:A4";
  attribute ram_addr_begin of reg_file_reg_0_15_15_15 : label is 0;
  attribute ram_addr_end of reg_file_reg_0_15_15_15 : label is 15;
  attribute ram_offset of reg_file_reg_0_15_15_15 : label is 0;
  attribute ram_slice_begin of reg_file_reg_0_15_15_15 : label is 15;
  attribute ram_slice_end of reg_file_reg_0_15_15_15 : label is 15;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_1_1 : label is 256;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_1_1 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_1_1 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_1_1 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_1_1 : label is "GND:A4";
  attribute ram_addr_begin of reg_file_reg_0_15_1_1 : label is 0;
  attribute ram_addr_end of reg_file_reg_0_15_1_1 : label is 15;
  attribute ram_offset of reg_file_reg_0_15_1_1 : label is 0;
  attribute ram_slice_begin of reg_file_reg_0_15_1_1 : label is 1;
  attribute ram_slice_end of reg_file_reg_0_15_1_1 : label is 1;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_2_2 : label is 256;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_2_2 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_2_2 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_2_2 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_2_2 : label is "GND:A4";
  attribute ram_addr_begin of reg_file_reg_0_15_2_2 : label is 0;
  attribute ram_addr_end of reg_file_reg_0_15_2_2 : label is 15;
  attribute ram_offset of reg_file_reg_0_15_2_2 : label is 0;
  attribute ram_slice_begin of reg_file_reg_0_15_2_2 : label is 2;
  attribute ram_slice_end of reg_file_reg_0_15_2_2 : label is 2;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_3_3 : label is 256;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_3_3 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_3_3 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_3_3 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_3_3 : label is "GND:A4";
  attribute ram_addr_begin of reg_file_reg_0_15_3_3 : label is 0;
  attribute ram_addr_end of reg_file_reg_0_15_3_3 : label is 15;
  attribute ram_offset of reg_file_reg_0_15_3_3 : label is 0;
  attribute ram_slice_begin of reg_file_reg_0_15_3_3 : label is 3;
  attribute ram_slice_end of reg_file_reg_0_15_3_3 : label is 3;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_4_4 : label is 256;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_4_4 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_4_4 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_4_4 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_4_4 : label is "GND:A4";
  attribute ram_addr_begin of reg_file_reg_0_15_4_4 : label is 0;
  attribute ram_addr_end of reg_file_reg_0_15_4_4 : label is 15;
  attribute ram_offset of reg_file_reg_0_15_4_4 : label is 0;
  attribute ram_slice_begin of reg_file_reg_0_15_4_4 : label is 4;
  attribute ram_slice_end of reg_file_reg_0_15_4_4 : label is 4;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_5_5 : label is 256;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_5_5 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_5_5 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_5_5 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_5_5 : label is "GND:A4";
  attribute ram_addr_begin of reg_file_reg_0_15_5_5 : label is 0;
  attribute ram_addr_end of reg_file_reg_0_15_5_5 : label is 15;
  attribute ram_offset of reg_file_reg_0_15_5_5 : label is 0;
  attribute ram_slice_begin of reg_file_reg_0_15_5_5 : label is 5;
  attribute ram_slice_end of reg_file_reg_0_15_5_5 : label is 5;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_6_6 : label is 256;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_6_6 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_6_6 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_6_6 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_6_6 : label is "GND:A4";
  attribute ram_addr_begin of reg_file_reg_0_15_6_6 : label is 0;
  attribute ram_addr_end of reg_file_reg_0_15_6_6 : label is 15;
  attribute ram_offset of reg_file_reg_0_15_6_6 : label is 0;
  attribute ram_slice_begin of reg_file_reg_0_15_6_6 : label is 6;
  attribute ram_slice_end of reg_file_reg_0_15_6_6 : label is 6;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_7_7 : label is 256;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_7_7 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_7_7 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_7_7 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_7_7 : label is "GND:A4";
  attribute ram_addr_begin of reg_file_reg_0_15_7_7 : label is 0;
  attribute ram_addr_end of reg_file_reg_0_15_7_7 : label is 15;
  attribute ram_offset of reg_file_reg_0_15_7_7 : label is 0;
  attribute ram_slice_begin of reg_file_reg_0_15_7_7 : label is 7;
  attribute ram_slice_end of reg_file_reg_0_15_7_7 : label is 7;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_8_8 : label is 256;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_8_8 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_8_8 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_8_8 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_8_8 : label is "GND:A4";
  attribute ram_addr_begin of reg_file_reg_0_15_8_8 : label is 0;
  attribute ram_addr_end of reg_file_reg_0_15_8_8 : label is 15;
  attribute ram_offset of reg_file_reg_0_15_8_8 : label is 0;
  attribute ram_slice_begin of reg_file_reg_0_15_8_8 : label is 8;
  attribute ram_slice_end of reg_file_reg_0_15_8_8 : label is 8;
  attribute RTL_RAM_BITS of reg_file_reg_0_15_9_9 : label is 256;
  attribute RTL_RAM_NAME of reg_file_reg_0_15_9_9 : label is "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file";
  attribute RTL_RAM_TYPE of reg_file_reg_0_15_9_9 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of reg_file_reg_0_15_9_9 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of reg_file_reg_0_15_9_9 : label is "GND:A4";
  attribute ram_addr_begin of reg_file_reg_0_15_9_9 : label is 0;
  attribute ram_addr_end of reg_file_reg_0_15_9_9 : label is 15;
  attribute ram_offset of reg_file_reg_0_15_9_9 : label is 0;
  attribute ram_slice_begin of reg_file_reg_0_15_9_9 : label is 9;
  attribute ram_slice_end of reg_file_reg_0_15_9_9 : label is 9;
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  imem_up_en <= \^imem_up_en\;
  \rst_gen_reg[3]\ <= \^rst_gen_reg[3]\;
  sreg(0) <= \^sreg\(0);
  \sreg_reg[4]_0\ <= \^sreg_reg[4]_0\;
\FSM_sequential_state[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sreg_reg[0]_0\(0),
      O => \^rst_gen_reg[3]\
    );
\ctrl[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"787B7B787B4B4878"
    )
        port map (
      I0 => \ctrl[8]_i_8_n_0\,
      I1 => \ctrl_reg[8]\,
      I2 => mem_data_i(0),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => mem_data_i(1),
      O => \sreg_reg[8]_0\
    );
\ctrl[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \^q\(0),
      I1 => mem_data_i(1),
      I2 => \^q\(1),
      O => \ctrl[8]_i_8_n_0\
    );
imem_file_ram_h_reg_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^imem_up_en\,
      I1 => \cpu_bus[wr_en]\(1),
      O => WEA(0)
    );
imem_file_ram_l_reg_0_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^imem_up_en\,
      I1 => \cpu_bus[wr_en]\(0),
      O => \sreg_reg[15]_0\(0)
    );
reg_file_reg_0_15_0_0: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(0),
      O => data_o0(0),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
reg_file_reg_0_15_10_10: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(10),
      O => data_o0(10),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
reg_file_reg_0_15_11_11: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(11),
      O => data_o0(11),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
reg_file_reg_0_15_12_12: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(12),
      O => data_o0(12),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
reg_file_reg_0_15_13_13: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(13),
      O => data_o0(13),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
reg_file_reg_0_15_14_14: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(14),
      O => data_o0(14),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
reg_file_reg_0_15_15_15: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(15),
      O => data_o0(15),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
reg_file_reg_0_15_1_1: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(1),
      O => data_o0(1),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
reg_file_reg_0_15_2_2: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(2),
      O => data_o0(2),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
reg_file_reg_0_15_3_3: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(3),
      O => data_o0(3),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
reg_file_reg_0_15_4_4: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(4),
      O => data_o0(4),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
reg_file_reg_0_15_5_5: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(5),
      O => data_o0(5),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
reg_file_reg_0_15_6_6: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(6),
      O => data_o0(6),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
reg_file_reg_0_15_7_7: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(7),
      O => data_o0(7),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
reg_file_reg_0_15_8_8: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(8),
      O => data_o0(8),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
reg_file_reg_0_15_9_9: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \sreg_reg[4]_1\(0),
      A1 => \sreg_reg[4]_1\(1),
      A2 => \sreg_reg[4]_1\(2),
      A3 => \sreg_reg[4]_1\(3),
      A4 => '0',
      D => in_data(9),
      O => data_o0(9),
      WCLK => clk_i,
      WE => \sreg_reg[4]_1\(4)
    );
\sreg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => in_data(15),
      I1 => \sreg_reg[4]_2\,
      I2 => \sreg_reg[4]_1\(4),
      I3 => \sreg_reg[4]_1\(0),
      I4 => \^imem_up_en\,
      O => \sreg[15]_i_1_n_0\
    );
\sreg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333A3300000A00"
    )
        port map (
      I0 => in_data(3),
      I1 => \sreg_reg[3]_0\(1),
      I2 => \sreg_reg[4]_1\(0),
      I3 => \sreg_reg[4]_1\(4),
      I4 => \sreg_reg[4]_2\,
      I5 => \^sreg\(0),
      O => \sreg[3]_i_1_n_0\
    );
\sreg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333A3300000A00"
    )
        port map (
      I0 => in_data(4),
      I1 => \sreg_reg[3]_0\(0),
      I2 => \sreg_reg[4]_1\(0),
      I3 => \sreg_reg[4]_1\(4),
      I4 => \sreg_reg[4]_2\,
      I5 => \^sreg_reg[4]_0\,
      O => \sreg[4]_i_1_n_0\
    );
\sreg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => E(0),
      CLR => \^rst_gen_reg[3]\,
      D => D(0),
      Q => \^q\(0)
    );
\sreg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rst_gen_reg[3]\,
      D => D(4),
      Q => \^q\(4)
    );
\sreg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rst_gen_reg[3]\,
      D => \sreg[15]_i_1_n_0\,
      Q => \^imem_up_en\
    );
\sreg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => E(0),
      CLR => \^rst_gen_reg[3]\,
      D => D(1),
      Q => \^q\(1)
    );
\sreg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => E(0),
      CLR => \^rst_gen_reg[3]\,
      D => D(2),
      Q => \^q\(2)
    );
\sreg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rst_gen_reg[3]\,
      D => \sreg[3]_i_1_n_0\,
      Q => \^sreg\(0)
    );
\sreg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rst_gen_reg[3]\,
      D => \sreg[4]_i_1_n_0\,
      Q => \^sreg_reg[4]_0\
    );
\sreg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => E(0),
      CLR => \^rst_gen_reg[3]\,
      D => D(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_sysconfig is
  port (
    dio_swap_reg : out STD_LOGIC;
    \data_o_reg[13]_0\ : out STD_LOGIC;
    dio_swap_reg_0 : out STD_LOGIC;
    \data_o_reg[8]_0\ : out STD_LOGIC;
    \data_o_reg[8]_1\ : out STD_LOGIC;
    dio_swap_reg_1 : out STD_LOGIC;
    \data_o_reg[6]_0\ : out STD_LOGIC;
    dio_swap_reg_2 : out STD_LOGIC;
    \data_o_reg[6]_1\ : out STD_LOGIC;
    dio_swap_reg_3 : out STD_LOGIC;
    dio_swap_reg_4 : out STD_LOGIC;
    \data_o_reg[3]_0\ : out STD_LOGIC;
    dio_swap_reg_5 : out STD_LOGIC;
    \data_o_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dio_swap_reg_6 : out STD_LOGIC;
    \data_o_reg[2]_0\ : out STD_LOGIC;
    dio_swap_reg_7 : out STD_LOGIC;
    dio_swap_reg_8 : out STD_LOGIC;
    \data_o_reg[1]_0\ : out STD_LOGIC;
    \data_o_reg[1]_1\ : out STD_LOGIC;
    dio_swap_reg_9 : out STD_LOGIC;
    \data_o_reg[0]_0\ : out STD_LOGIC;
    dio_swap_reg_10 : out STD_LOGIC;
    \data_o_reg[5]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_o_reg[7]\ : out STD_LOGIC;
    \data_o_reg[1]_2\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    \data_o_reg[12]\ : out STD_LOGIC;
    \data_o_reg[13]_1\ : out STD_LOGIC;
    \data_o_reg[13]_2\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    dio_swap : in STD_LOGIC;
    \am_reg[1]\ : in STD_LOGIC;
    \src_reg[3]\ : in STD_LOGIC;
    mem_data_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_state_reg[4]\ : in STD_LOGIC;
    \am_reg[2]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[4]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC;
    \ir_reg[13]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ir_reg[13]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \ir_reg[13]_1\ : in STD_LOGIC;
    \ir_reg[13]_2\ : in STD_LOGIC;
    uart_rdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ir_reg[9]\ : in STD_LOGIC;
    \ir_reg[9]_0\ : in STD_LOGIC;
    timer_rdata : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \am_reg[1]_0\ : in STD_LOGIC;
    \am_reg[1]_1\ : in STD_LOGIC;
    \ir_reg[6]\ : in STD_LOGIC;
    \ir_reg[6]_0\ : in STD_LOGIC;
    \am_reg[1]_2\ : in STD_LOGIC;
    \am_reg[1]_3\ : in STD_LOGIC;
    \ir_reg[3]\ : in STD_LOGIC;
    \ir_reg[3]_0\ : in STD_LOGIC;
    \ir_reg[2]\ : in STD_LOGIC;
    \ir_reg[2]_0\ : in STD_LOGIC;
    \ir_reg[1]\ : in STD_LOGIC;
    \ir_reg[1]_0\ : in STD_LOGIC;
    \ir_reg[0]\ : in STD_LOGIC;
    \ir_reg[0]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_neo430_sysconfig : entity is "neo430_sysconfig";
end SystemTop_neo430_sysconfig;

architecture STRUCTURE of SystemTop_neo430_sysconfig is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \am[2]_i_2_n_0\ : STD_LOGIC;
  signal \am[2]_i_3_n_0\ : STD_LOGIC;
  signal \^data_o_reg[0]_0\ : STD_LOGIC;
  signal \^data_o_reg[13]_0\ : STD_LOGIC;
  signal \^data_o_reg[1]_0\ : STD_LOGIC;
  signal \^data_o_reg[1]_1\ : STD_LOGIC;
  signal \^data_o_reg[1]_2\ : STD_LOGIC;
  signal \^data_o_reg[2]_0\ : STD_LOGIC;
  signal \^data_o_reg[3]_0\ : STD_LOGIC;
  signal \^data_o_reg[6]_0\ : STD_LOGIC;
  signal \^data_o_reg[6]_1\ : STD_LOGIC;
  signal \^data_o_reg[8]_1\ : STD_LOGIC;
  signal sysconfig_rdata : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_4\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \FSM_sequential_state[4]_i_10\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \am[1]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \am[2]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \am[2]_i_2\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \ctrl[16]_i_3\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \ctrl[17]_i_4\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \ir[13]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \ir[1]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \ir[2]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \ir[3]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \ir[6]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \mem_addr_reg0_carry__0_i_12\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of mem_addr_reg0_carry_i_9 : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \op_b_ff[10]_i_2\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \op_b_ff[11]_i_2\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \op_b_ff[12]_i_2\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \op_b_ff[13]_i_2\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \op_b_ff[1]_i_2\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \op_b_ff[2]_i_2\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \op_b_ff[5]_i_2\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \op_b_ff[6]_i_2\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \op_b_ff[8]_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \op_b_ff[9]_i_2\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \src[0]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \src[1]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \src[2]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \src[3]_i_2\ : label is "soft_lutpair107";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \data_o_reg[0]_0\ <= \^data_o_reg[0]_0\;
  \data_o_reg[13]_0\ <= \^data_o_reg[13]_0\;
  \data_o_reg[1]_0\ <= \^data_o_reg[1]_0\;
  \data_o_reg[1]_1\ <= \^data_o_reg[1]_1\;
  \data_o_reg[1]_2\ <= \^data_o_reg[1]_2\;
  \data_o_reg[2]_0\ <= \^data_o_reg[2]_0\;
  \data_o_reg[3]_0\ <= \^data_o_reg[3]_0\;
  \data_o_reg[6]_0\ <= \^data_o_reg[6]_0\;
  \data_o_reg[6]_1\ <= \^data_o_reg[6]_1\;
  \data_o_reg[8]_1\ <= \^data_o_reg[8]_1\;
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]\,
      I1 => \^data_o_reg[1]_2\,
      I2 => \am_reg[2]\,
      I3 => \^data_o_reg[13]_0\,
      I4 => \FSM_sequential_state_reg[4]\,
      O => \FSM_sequential_state_reg[1]\
    );
\FSM_sequential_state[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0FD"
    )
        port map (
      I0 => \^data_o_reg[13]_0\,
      I1 => \am_reg[2]\,
      I2 => \FSM_sequential_state_reg[4]\,
      I3 => mem_data_i(3),
      O => \data_o_reg[13]_1\
    );
\FSM_sequential_state[4]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_o_reg[1]_1\,
      I1 => \^data_o_reg[8]_1\,
      O => \^data_o_reg[1]_2\
    );
\FSM_sequential_state[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \src_reg[3]\,
      I1 => \^data_o_reg[1]_2\,
      I2 => \FSM_sequential_state_reg[4]_0\,
      I3 => \am_reg[2]\,
      I4 => \^data_o_reg[13]_0\,
      I5 => \FSM_sequential_state_reg[4]\,
      O => \data_o_reg[7]\
    );
\am[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000008F"
    )
        port map (
      I0 => \^data_o_reg[8]_1\,
      I1 => \am_reg[1]\,
      I2 => \am[2]_i_2_n_0\,
      I3 => \am[2]_i_3_n_0\,
      I4 => \^data_o_reg[6]_1\,
      O => \data_o_reg[5]\(0)
    );
\am[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \am[2]_i_2_n_0\,
      I1 => \am_reg[1]\,
      I2 => \am[2]_i_3_n_0\,
      O => \data_o_reg[5]\(1)
    );
\am[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^data_o_reg[1]_1\,
      I1 => \src_reg[3]\,
      I2 => \am_reg[2]\,
      O => \am[2]_i_2_n_0\
    );
\am[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100010001000"
    )
        port map (
      I0 => \src_reg[3]\,
      I1 => \^data_o_reg[1]_0\,
      I2 => \^data_o_reg[3]_0\,
      I3 => \^data_o_reg[2]_0\,
      I4 => \am_reg[1]\,
      I5 => \^data_o_reg[0]_0\,
      O => \am[2]_i_3_n_0\
    );
\ctrl[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \^data_o_reg[8]_1\,
      I1 => \^data_o_reg[13]_0\,
      I2 => \src_reg[3]\,
      O => \data_o_reg[8]_0\
    );
\ctrl[17]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]\,
      I1 => \^data_o_reg[13]_0\,
      I2 => \am_reg[2]\,
      I3 => \src_reg[3]\,
      I4 => \^data_o_reg[1]_1\,
      O => \data_o_reg[12]\
    );
\data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(0),
      Q => sysconfig_rdata(0),
      R => SR(0)
    );
\data_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(6),
      Q => \^q\(1),
      R => SR(0)
    );
\data_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(7),
      Q => \^q\(2),
      R => SR(0)
    );
\data_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(8),
      Q => sysconfig_rdata(13),
      R => SR(0)
    );
\data_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(9),
      Q => \^q\(3),
      R => SR(0)
    );
\data_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(10),
      Q => \^q\(4),
      R => SR(0)
    );
\data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(1),
      Q => sysconfig_rdata(1),
      R => SR(0)
    );
\data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(2),
      Q => sysconfig_rdata(2),
      R => SR(0)
    );
\data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(3),
      Q => sysconfig_rdata(3),
      R => SR(0)
    );
\data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(4),
      Q => \^q\(0),
      R => SR(0)
    );
\data_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => D(5),
      Q => sysconfig_rdata(8),
      R => SR(0)
    );
\ir[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_o_reg[0]_0\,
      O => \data_o_reg[13]_2\(0)
    );
\ir[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_o_reg[13]_0\,
      O => \data_o_reg[13]_2\(8)
    );
\ir[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_o_reg[1]_0\,
      O => \data_o_reg[13]_2\(1)
    );
\ir[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_o_reg[2]_0\,
      O => \data_o_reg[13]_2\(2)
    );
\ir[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_o_reg[3]_0\,
      O => \data_o_reg[13]_2\(3)
    );
\ir[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_o_reg[6]_1\,
      O => \data_o_reg[13]_2\(4)
    );
\ir[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_o_reg[6]_0\,
      O => \data_o_reg[13]_2\(5)
    );
\ir[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ir_reg[13]_0\(5),
      I2 => \ir_reg[13]\(0),
      I3 => uart_rdata(5),
      I4 => \ir_reg[6]\,
      I5 => \ir_reg[6]_0\,
      O => \^data_o_reg[6]_0\
    );
\ir[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_o_reg[8]_1\,
      O => \data_o_reg[13]_2\(6)
    );
\ir[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_o_reg[1]_1\,
      O => \data_o_reg[13]_2\(7)
    );
\mem_addr_reg0_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \^data_o_reg[6]_1\,
      I1 => \FSM_sequential_state_reg[4]\,
      I2 => dio_swap,
      O => dio_swap_reg_2
    );
mem_addr_reg0_carry_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^data_o_reg[3]_0\,
      I1 => mem_data_i(1),
      I2 => dio_swap,
      O => dio_swap_reg_4
    );
\op_b_ff[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \^data_o_reg[2]_0\,
      I1 => dio_swap,
      I2 => mem_data_i(0),
      O => dio_swap_reg_7
    );
\op_b_ff[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \^data_o_reg[3]_0\,
      I1 => dio_swap,
      I2 => mem_data_i(1),
      O => dio_swap_reg_5
    );
\op_b_ff[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \^data_o_reg[6]_1\,
      I1 => dio_swap,
      I2 => \FSM_sequential_state_reg[4]\,
      O => dio_swap_reg_3
    );
\op_b_ff[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \^data_o_reg[13]_0\,
      I1 => \am_reg[1]\,
      I2 => dio_swap,
      O => dio_swap_reg_0
    );
\op_b_ff[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \^data_o_reg[1]_0\,
      I1 => \^data_o_reg[1]_1\,
      I2 => dio_swap,
      O => dio_swap_reg_9
    );
\op_b_ff[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^data_o_reg[2]_0\,
      I1 => mem_data_i(0),
      I2 => dio_swap,
      O => dio_swap_reg_6
    );
\op_b_ff[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \^data_o_reg[13]_0\,
      I1 => dio_swap,
      I2 => \am_reg[1]\,
      O => dio_swap_reg
    );
\op_b_ff[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^data_o_reg[6]_0\,
      I1 => mem_data_i(2),
      I2 => dio_swap,
      O => dio_swap_reg_1
    );
\op_b_ff[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \^data_o_reg[0]_0\,
      I1 => \^data_o_reg[8]_1\,
      I2 => dio_swap,
      O => dio_swap_reg_10
    );
\op_b_ff[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \^data_o_reg[1]_0\,
      I1 => \^data_o_reg[1]_1\,
      I2 => dio_swap,
      O => dio_swap_reg_8
    );
\sam[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ir_reg[13]_0\(4),
      I2 => timer_rdata(4),
      I3 => uart_rdata(4),
      I4 => \am_reg[1]_2\,
      I5 => \am_reg[1]_3\,
      O => \^data_o_reg[6]_1\
    );
\src[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \^data_o_reg[0]_0\,
      I1 => \^data_o_reg[8]_1\,
      I2 => \src_reg[3]\,
      O => \data_o_reg[3]_1\(0)
    );
\src[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sysconfig_rdata(0),
      I1 => \ir_reg[13]_0\(0),
      I2 => timer_rdata(0),
      I3 => uart_rdata(0),
      I4 => \ir_reg[0]\,
      I5 => \ir_reg[0]_0\,
      O => \^data_o_reg[0]_0\
    );
\src[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sysconfig_rdata(8),
      I1 => \ir_reg[13]_0\(6),
      I2 => timer_rdata(5),
      I3 => uart_rdata(6),
      I4 => \am_reg[1]_0\,
      I5 => \am_reg[1]_1\,
      O => \^data_o_reg[8]_1\
    );
\src[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \^data_o_reg[1]_0\,
      I1 => \src_reg[3]\,
      I2 => \^data_o_reg[1]_1\,
      O => \data_o_reg[3]_1\(1)
    );
\src[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sysconfig_rdata(1),
      I1 => \ir_reg[13]_0\(1),
      I2 => timer_rdata(1),
      I3 => uart_rdata(1),
      I4 => \ir_reg[1]\,
      I5 => \ir_reg[1]_0\,
      O => \^data_o_reg[1]_0\
    );
\src[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sysconfig_rdata(1),
      I1 => \ir_reg[13]_0\(7),
      I2 => \ir_reg[13]\(1),
      I3 => uart_rdata(7),
      I4 => \ir_reg[9]\,
      I5 => \ir_reg[9]_0\,
      O => \^data_o_reg[1]_1\
    );
\src[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^data_o_reg[2]_0\,
      I1 => mem_data_i(0),
      I2 => \src_reg[3]\,
      O => \data_o_reg[3]_1\(2)
    );
\src[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sysconfig_rdata(2),
      I1 => \ir_reg[13]_0\(2),
      I2 => timer_rdata(2),
      I3 => uart_rdata(2),
      I4 => \ir_reg[2]\,
      I5 => \ir_reg[2]_0\,
      O => \^data_o_reg[2]_0\
    );
\src[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^data_o_reg[3]_0\,
      I1 => mem_data_i(1),
      I2 => \src_reg[3]\,
      O => \data_o_reg[3]_1\(3)
    );
\src[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sysconfig_rdata(13),
      I1 => \ir_reg[13]\(2),
      I2 => \ir_reg[13]_0\(8),
      I3 => \ir_reg[13]_1\,
      I4 => \ir_reg[13]_2\,
      O => \^data_o_reg[13]_0\
    );
\src[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sysconfig_rdata(3),
      I1 => \ir_reg[13]_0\(3),
      I2 => timer_rdata(3),
      I3 => uart_rdata(3),
      I4 => \ir_reg[3]\,
      I5 => \ir_reg[3]_0\,
      O => \^data_o_reg[3]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_timer is
  port (
    irq_fire_ff : out STD_LOGIC;
    p_2_in3_in : out STD_LOGIC;
    cnt_reg : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk_div0 : out STD_LOGIC;
    timer_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_i : in STD_LOGIC;
    prsc_tick_reg_0 : in STD_LOGIC;
    prsc_tick_reg_1 : in STD_LOGIC;
    prsc_tick_reg_2 : in STD_LOGIC;
    prsc_tick_reg_3 : in STD_LOGIC;
    prsc_tick_reg_4 : in STD_LOGIC;
    prsc_tick_reg_5 : in STD_LOGIC;
    prsc_tick_reg_6 : in STD_LOGIC;
    prsc_tick_reg_7 : in STD_LOGIC;
    \clk_div_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    freq_gen_cg_en : in STD_LOGIC;
    pwm_cg_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \thres_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \thres_reg[15]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_o_reg[0]_0\ : in STD_LOGIC;
    \data_o_reg[15]_0\ : in STD_LOGIC;
    \data_o_reg[14]_0\ : in STD_LOGIC;
    \data_o_reg[13]_0\ : in STD_LOGIC;
    \data_o_reg[12]_0\ : in STD_LOGIC;
    \data_o_reg[11]_0\ : in STD_LOGIC;
    \data_o_reg[10]_0\ : in STD_LOGIC;
    \data_o_reg[9]_0\ : in STD_LOGIC;
    \data_o_reg[8]_0\ : in STD_LOGIC;
    \data_o_reg[7]_0\ : in STD_LOGIC;
    \data_o_reg[6]_0\ : in STD_LOGIC;
    \data_o_reg[5]_0\ : in STD_LOGIC;
    \data_o_reg[4]_0\ : in STD_LOGIC;
    \data_o_reg[3]_0\ : in STD_LOGIC;
    \data_o_reg[2]_0\ : in STD_LOGIC;
    \data_o_reg[1]_0\ : in STD_LOGIC;
    \data_o_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_neo430_timer : entity is "neo430_timer";
end SystemTop_neo430_timer;

architecture STRUCTURE of SystemTop_neo430_timer is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal cnt : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \^cnt_reg\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \irq_fire1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \irq_fire1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \irq_fire1_carry__0_n_3\ : STD_LOGIC;
  signal irq_fire1_carry_i_1_n_0 : STD_LOGIC;
  signal irq_fire1_carry_i_2_n_0 : STD_LOGIC;
  signal irq_fire1_carry_i_3_n_0 : STD_LOGIC;
  signal irq_fire1_carry_i_4_n_0 : STD_LOGIC;
  signal irq_fire1_carry_n_0 : STD_LOGIC;
  signal irq_fire1_carry_n_1 : STD_LOGIC;
  signal irq_fire1_carry_n_2 : STD_LOGIC;
  signal irq_fire1_carry_n_3 : STD_LOGIC;
  signal match : STD_LOGIC;
  signal \^p_2_in3_in\ : STD_LOGIC;
  signal prsc_tick : STD_LOGIC;
  signal prsc_tick_i_2_n_0 : STD_LOGIC;
  signal prsc_tick_i_3_n_0 : STD_LOGIC;
  signal prsc_tick_reg_i_1_n_0 : STD_LOGIC;
  signal \thres_reg_n_0_[0]\ : STD_LOGIC;
  signal \thres_reg_n_0_[10]\ : STD_LOGIC;
  signal \thres_reg_n_0_[11]\ : STD_LOGIC;
  signal \thres_reg_n_0_[12]\ : STD_LOGIC;
  signal \thres_reg_n_0_[13]\ : STD_LOGIC;
  signal \thres_reg_n_0_[14]\ : STD_LOGIC;
  signal \thres_reg_n_0_[15]\ : STD_LOGIC;
  signal \thres_reg_n_0_[1]\ : STD_LOGIC;
  signal \thres_reg_n_0_[2]\ : STD_LOGIC;
  signal \thres_reg_n_0_[3]\ : STD_LOGIC;
  signal \thres_reg_n_0_[4]\ : STD_LOGIC;
  signal \thres_reg_n_0_[5]\ : STD_LOGIC;
  signal \thres_reg_n_0_[6]\ : STD_LOGIC;
  signal \thres_reg_n_0_[7]\ : STD_LOGIC;
  signal \thres_reg_n_0_[8]\ : STD_LOGIC;
  signal \thres_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_irq_fire1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_irq_fire1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_irq_fire1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_1\ : label is 11;
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  cnt_reg(15 downto 0) <= \^cnt_reg\(15 downto 0);
  p_2_in3_in <= \^p_2_in3_in\;
\clk_div[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \clk_div_reg[0]\(0),
      I2 => freq_gen_cg_en,
      I3 => pwm_cg_en,
      O => clk_div0
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D555"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => match,
      I3 => \^q\(3),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(3),
      I1 => prsc_tick,
      I2 => match,
      O => cnt
    );
\cnt[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cnt_reg\(0),
      O => \cnt[0]_i_4_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[0]_i_3_n_7\,
      Q => \^cnt_reg\(0),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[0]_i_3_n_0\,
      CO(2) => \cnt_reg[0]_i_3_n_1\,
      CO(1) => \cnt_reg[0]_i_3_n_2\,
      CO(0) => \cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_reg[0]_i_3_n_4\,
      O(2) => \cnt_reg[0]_i_3_n_5\,
      O(1) => \cnt_reg[0]_i_3_n_6\,
      O(0) => \cnt_reg[0]_i_3_n_7\,
      S(3 downto 1) => \^cnt_reg\(3 downto 1),
      S(0) => \cnt[0]_i_4_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[8]_i_1_n_5\,
      Q => \^cnt_reg\(10),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[8]_i_1_n_4\,
      Q => \^cnt_reg\(11),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[12]_i_1_n_7\,
      Q => \^cnt_reg\(12),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_reg[12]_i_1_n_1\,
      CO(1) => \cnt_reg[12]_i_1_n_2\,
      CO(0) => \cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[12]_i_1_n_4\,
      O(2) => \cnt_reg[12]_i_1_n_5\,
      O(1) => \cnt_reg[12]_i_1_n_6\,
      O(0) => \cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => \^cnt_reg\(15 downto 12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[12]_i_1_n_6\,
      Q => \^cnt_reg\(13),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[12]_i_1_n_5\,
      Q => \^cnt_reg\(14),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[12]_i_1_n_4\,
      Q => \^cnt_reg\(15),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[0]_i_3_n_6\,
      Q => \^cnt_reg\(1),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[0]_i_3_n_5\,
      Q => \^cnt_reg\(2),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[0]_i_3_n_4\,
      Q => \^cnt_reg\(3),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[4]_i_1_n_7\,
      Q => \^cnt_reg\(4),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_3_n_0\,
      CO(3) => \cnt_reg[4]_i_1_n_0\,
      CO(2) => \cnt_reg[4]_i_1_n_1\,
      CO(1) => \cnt_reg[4]_i_1_n_2\,
      CO(0) => \cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_1_n_4\,
      O(2) => \cnt_reg[4]_i_1_n_5\,
      O(1) => \cnt_reg[4]_i_1_n_6\,
      O(0) => \cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^cnt_reg\(7 downto 4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[4]_i_1_n_6\,
      Q => \^cnt_reg\(5),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[4]_i_1_n_5\,
      Q => \^cnt_reg\(6),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[4]_i_1_n_4\,
      Q => \^cnt_reg\(7),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[8]_i_1_n_7\,
      Q => \^cnt_reg\(8),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_1_n_0\,
      CO(3) => \cnt_reg[8]_i_1_n_0\,
      CO(2) => \cnt_reg[8]_i_1_n_1\,
      CO(1) => \cnt_reg[8]_i_1_n_2\,
      CO(0) => \cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[8]_i_1_n_4\,
      O(2) => \cnt_reg[8]_i_1_n_5\,
      O(1) => \cnt_reg[8]_i_1_n_6\,
      O(0) => \cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => \^cnt_reg\(11 downto 8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => cnt,
      D => \cnt_reg[8]_i_1_n_6\,
      Q => \^cnt_reg\(9),
      R => \cnt[0]_i_1_n_0\
    );
\ctrl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \thres_reg[15]_0\(0),
      Q => \^q\(0),
      R => '0'
    );
\ctrl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \thres_reg[15]_0\(1),
      Q => \^q\(1),
      R => '0'
    );
\ctrl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \thres_reg[15]_0\(2),
      Q => \^q\(2),
      R => '0'
    );
\ctrl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \thres_reg[15]_0\(3),
      Q => \^q\(3),
      R => '0'
    );
\ctrl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \thres_reg[15]_0\(4),
      Q => \^q\(4),
      R => '0'
    );
\ctrl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \thres_reg[15]_0\(5),
      Q => \^q\(5),
      R => '0'
    );
\ctrl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \thres_reg[15]_0\(6),
      Q => \^q\(6),
      R => '0'
    );
\data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[0]_1\,
      Q => timer_rdata(0),
      R => \data_o_reg[0]_0\
    );
\data_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[10]_0\,
      Q => timer_rdata(10),
      R => \data_o_reg[0]_0\
    );
\data_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[11]_0\,
      Q => timer_rdata(11),
      R => \data_o_reg[0]_0\
    );
\data_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[12]_0\,
      Q => timer_rdata(12),
      R => \data_o_reg[0]_0\
    );
\data_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[13]_0\,
      Q => timer_rdata(13),
      R => \data_o_reg[0]_0\
    );
\data_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[14]_0\,
      Q => timer_rdata(14),
      R => \data_o_reg[0]_0\
    );
\data_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[15]_0\,
      Q => timer_rdata(15),
      R => \data_o_reg[0]_0\
    );
\data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[1]_0\,
      Q => timer_rdata(1),
      R => \data_o_reg[0]_0\
    );
\data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[2]_0\,
      Q => timer_rdata(2),
      R => \data_o_reg[0]_0\
    );
\data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[3]_0\,
      Q => timer_rdata(3),
      R => \data_o_reg[0]_0\
    );
\data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[4]_0\,
      Q => timer_rdata(4),
      R => \data_o_reg[0]_0\
    );
\data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[5]_0\,
      Q => timer_rdata(5),
      R => \data_o_reg[0]_0\
    );
\data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[6]_0\,
      Q => timer_rdata(6),
      R => \data_o_reg[0]_0\
    );
\data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[7]_0\,
      Q => timer_rdata(7),
      R => \data_o_reg[0]_0\
    );
\data_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[8]_0\,
      Q => timer_rdata(8),
      R => \data_o_reg[0]_0\
    );
\data_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[9]_0\,
      Q => timer_rdata(9),
      R => \data_o_reg[0]_0\
    );
irq_fire1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => irq_fire1_carry_n_0,
      CO(2) => irq_fire1_carry_n_1,
      CO(1) => irq_fire1_carry_n_2,
      CO(0) => irq_fire1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_fire1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => irq_fire1_carry_i_1_n_0,
      S(2) => irq_fire1_carry_i_2_n_0,
      S(1) => irq_fire1_carry_i_3_n_0,
      S(0) => irq_fire1_carry_i_4_n_0
    );
\irq_fire1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => irq_fire1_carry_n_0,
      CO(3 downto 2) => \NLW_irq_fire1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => match,
      CO(0) => \irq_fire1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_irq_fire1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \irq_fire1_carry__0_i_1_n_0\,
      S(0) => \irq_fire1_carry__0_i_2_n_0\
    );
\irq_fire1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \thres_reg_n_0_[15]\,
      I1 => \^cnt_reg\(15),
      O => \irq_fire1_carry__0_i_1_n_0\
    );
\irq_fire1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \thres_reg_n_0_[13]\,
      I1 => \^cnt_reg\(13),
      I2 => \thres_reg_n_0_[14]\,
      I3 => \^cnt_reg\(14),
      I4 => \^cnt_reg\(12),
      I5 => \thres_reg_n_0_[12]\,
      O => \irq_fire1_carry__0_i_2_n_0\
    );
irq_fire1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \thres_reg_n_0_[10]\,
      I1 => \^cnt_reg\(10),
      I2 => \thres_reg_n_0_[11]\,
      I3 => \^cnt_reg\(11),
      I4 => \^cnt_reg\(9),
      I5 => \thres_reg_n_0_[9]\,
      O => irq_fire1_carry_i_1_n_0
    );
irq_fire1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \thres_reg_n_0_[6]\,
      I1 => \^cnt_reg\(6),
      I2 => \thres_reg_n_0_[8]\,
      I3 => \^cnt_reg\(8),
      I4 => \^cnt_reg\(7),
      I5 => \thres_reg_n_0_[7]\,
      O => irq_fire1_carry_i_2_n_0
    );
irq_fire1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \thres_reg_n_0_[3]\,
      I1 => \^cnt_reg\(3),
      I2 => \thres_reg_n_0_[5]\,
      I3 => \^cnt_reg\(5),
      I4 => \^cnt_reg\(4),
      I5 => \thres_reg_n_0_[4]\,
      O => irq_fire1_carry_i_3_n_0
    );
irq_fire1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^cnt_reg\(0),
      I1 => \thres_reg_n_0_[0]\,
      I2 => \thres_reg_n_0_[1]\,
      I3 => \^cnt_reg\(1),
      I4 => \^cnt_reg\(2),
      I5 => \thres_reg_n_0_[2]\,
      O => irq_fire1_carry_i_4_n_0
    );
irq_fire_ff_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(2),
      I1 => match,
      I2 => \^q\(0),
      O => \^p_2_in3_in\
    );
irq_fire_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \^p_2_in3_in\,
      Q => irq_fire_ff,
      R => '0'
    );
prsc_tick_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000FFF55335533"
    )
        port map (
      I0 => prsc_tick_reg_0,
      I1 => prsc_tick_reg_1,
      I2 => prsc_tick_reg_2,
      I3 => \^q\(4),
      I4 => prsc_tick_reg_3,
      I5 => \^q\(5),
      O => prsc_tick_i_2_n_0
    );
prsc_tick_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000FFF55335533"
    )
        port map (
      I0 => prsc_tick_reg_4,
      I1 => prsc_tick_reg_5,
      I2 => prsc_tick_reg_6,
      I3 => \^q\(4),
      I4 => prsc_tick_reg_7,
      I5 => \^q\(5),
      O => prsc_tick_i_3_n_0
    );
prsc_tick_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => prsc_tick_reg_i_1_n_0,
      Q => prsc_tick,
      R => '0'
    );
prsc_tick_reg_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => prsc_tick_i_2_n_0,
      I1 => prsc_tick_i_3_n_0,
      O => prsc_tick_reg_i_1_n_0,
      S => \^q\(6)
    );
\thres_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(0),
      Q => \thres_reg_n_0_[0]\,
      R => '0'
    );
\thres_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(10),
      Q => \thres_reg_n_0_[10]\,
      R => '0'
    );
\thres_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(11),
      Q => \thres_reg_n_0_[11]\,
      R => '0'
    );
\thres_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(12),
      Q => \thres_reg_n_0_[12]\,
      R => '0'
    );
\thres_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(13),
      Q => \thres_reg_n_0_[13]\,
      R => '0'
    );
\thres_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(14),
      Q => \thres_reg_n_0_[14]\,
      R => '0'
    );
\thres_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(15),
      Q => \thres_reg_n_0_[15]\,
      R => '0'
    );
\thres_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(1),
      Q => \thres_reg_n_0_[1]\,
      R => '0'
    );
\thres_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(2),
      Q => \thres_reg_n_0_[2]\,
      R => '0'
    );
\thres_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(3),
      Q => \thres_reg_n_0_[3]\,
      R => '0'
    );
\thres_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(4),
      Q => \thres_reg_n_0_[4]\,
      R => '0'
    );
\thres_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(5),
      Q => \thres_reg_n_0_[5]\,
      R => '0'
    );
\thres_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(6),
      Q => \thres_reg_n_0_[6]\,
      R => '0'
    );
\thres_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(7),
      Q => \thres_reg_n_0_[7]\,
      R => '0'
    );
\thres_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(8),
      Q => \thres_reg_n_0_[8]\,
      R => '0'
    );
\thres_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \thres_reg[15]_1\(0),
      D => \thres_reg[15]_0\(9),
      Q => \thres_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_uart is
  port (
    \data_o_reg[15]_0\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    uart_txd_o : out STD_LOGIC;
    uart_tx_busy_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \uart_tx_baud_cnt_reg[7]_0\ : out STD_LOGIC;
    \clk_div_ff_reg[5]\ : out STD_LOGIC;
    \clk_div_ff_reg[2]\ : out STD_LOGIC;
    \clk_div_ff_reg[1]\ : out STD_LOGIC;
    \clk_div_ff_reg[0]\ : out STD_LOGIC;
    \clk_div_ff_reg[11]\ : out STD_LOGIC;
    \clk_div_ff_reg[10]\ : out STD_LOGIC;
    \clk_div_ff_reg[9]\ : out STD_LOGIC;
    \clk_div_ff_reg[6]\ : out STD_LOGIC;
    uart_rx_busy_ff_reg_0 : out STD_LOGIC;
    \data_o_reg[11]_0\ : out STD_LOGIC;
    \data_o_reg[10]_0\ : out STD_LOGIC;
    \uart_tx_sreg_reg[7]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \uart_tx_sreg_reg[8]_0\ : out STD_LOGIC;
    clk_i : in STD_LOGIC;
    \data_o_reg[15]_1\ : in STD_LOGIC;
    \data_o_reg[12]_0\ : in STD_LOGIC;
    \data_o_reg[9]_0\ : in STD_LOGIC;
    \data_o_reg[8]_0\ : in STD_LOGIC;
    uart_tx_busy0 : in STD_LOGIC;
    \data_o_reg[0]_0\ : in STD_LOGIC;
    \nco_prsc_tick[0]_i_3\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \irq_buf_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    timer_rdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ir_reg[11]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ir_reg[11]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[14]_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    uart_rxd_i : in STD_LOGIC;
    \uart_rx_avail_reg[1]_0\ : in STD_LOGIC;
    \uart_rx_avail_reg[1]_1\ : in STD_LOGIC;
    \uart_tx_sreg_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \uart_tx_sreg_reg[7]_2\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_neo430_uart : entity is "neo430_uart";
end SystemTop_neo430_uart;

architecture STRUCTURE of SystemTop_neo430_uart is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^clk_div_ff_reg[0]\ : STD_LOGIC;
  signal \^clk_div_ff_reg[10]\ : STD_LOGIC;
  signal \^clk_div_ff_reg[11]\ : STD_LOGIC;
  signal \^clk_div_ff_reg[1]\ : STD_LOGIC;
  signal \^clk_div_ff_reg[2]\ : STD_LOGIC;
  signal \^clk_div_ff_reg[5]\ : STD_LOGIC;
  signal \^clk_div_ff_reg[6]\ : STD_LOGIC;
  signal \^clk_div_ff_reg[9]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_o[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_o[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_o[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_o[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_o[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_o[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_o[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_o[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_o[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_o[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_o[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_o[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_o[7]_i_1_n_0\ : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \minusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 2 to 2 );
  signal p_0_in11_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in13_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal uart_rdata : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal uart_rx_avail19_out : STD_LOGIC;
  signal \uart_rx_avail[0]_i_1_n_0\ : STD_LOGIC;
  signal \uart_rx_avail[1]_i_1_n_0\ : STD_LOGIC;
  signal \uart_rx_avail[1]_i_2_n_0\ : STD_LOGIC;
  signal \uart_rx_avail[1]_i_5_n_0\ : STD_LOGIC;
  signal \uart_rx_avail_reg_n_0_[0]\ : STD_LOGIC;
  signal \uart_rx_avail_reg_n_0_[1]\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[2]_i_4_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[7]_i_5_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[7]_i_6_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[7]_i_7_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt[7]_i_8_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \uart_rx_baud_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \uart_rx_baud_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \uart_rx_baud_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \uart_rx_baud_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \uart_rx_baud_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \uart_rx_baud_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \uart_rx_baud_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \uart_rx_baud_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \uart_rx_bitcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \uart_rx_bitcnt[3]_i_2_n_0\ : STD_LOGIC;
  signal uart_rx_bitcnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal uart_rx_busy1 : STD_LOGIC;
  signal uart_rx_busy_ff : STD_LOGIC;
  signal uart_rx_busy_i_1_n_0 : STD_LOGIC;
  signal uart_rx_busy_reg_n_0 : STD_LOGIC;
  signal \uart_rx_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \uart_rx_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \uart_rx_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \uart_rx_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \uart_rx_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \uart_rx_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \uart_rx_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \uart_rx_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \uart_rx_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \uart_rx_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \uart_rx_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \uart_rx_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \uart_rx_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \uart_rx_sreg[8]_i_1_n_0\ : STD_LOGIC;
  signal uart_rx_sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \uart_tx_baud_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \^uart_tx_baud_cnt_reg[7]_0\ : STD_LOGIC;
  signal \uart_tx_baud_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \uart_tx_baud_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \uart_tx_baud_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \uart_tx_baud_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \uart_tx_baud_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \uart_tx_baud_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \uart_tx_baud_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \uart_tx_baud_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \uart_tx_bitcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal uart_tx_bitcnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal uart_tx_busy_i_1_n_0 : STD_LOGIC;
  signal uart_tx_busy_i_3_n_0 : STD_LOGIC;
  signal \^uart_tx_busy_reg_0\ : STD_LOGIC;
  signal uart_tx_done0 : STD_LOGIC;
  signal uart_tx_done_i_1_n_0 : STD_LOGIC;
  signal uart_tx_done_reg_n_0 : STD_LOGIC;
  signal \uart_tx_sreg[0]_i_1_n_0\ : STD_LOGIC;
  signal \uart_tx_sreg[8]_i_1_n_0\ : STD_LOGIC;
  signal \^uart_tx_sreg_reg[8]_0\ : STD_LOGIC;
  signal \uart_tx_sreg_reg_n_0_[0]\ : STD_LOGIC;
  signal \uart_tx_sreg_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_o[0]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \data_o[10]_i_1__0\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \data_o[11]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \data_o[13]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \data_o[14]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \data_o[15]_i_2\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \data_o[1]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \data_o[2]_i_1__0\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \data_o[3]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \data_o[4]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \data_o[5]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \data_o[6]_i_1__0\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \data_o[7]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \uart_rx_avail[0]_i_2\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \uart_rx_avail[1]_i_2\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \uart_rx_avail[1]_i_5\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \uart_rx_baud_cnt[2]_i_2\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \uart_rx_baud_cnt[2]_i_3\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \uart_rx_baud_cnt[2]_i_4\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \uart_rx_baud_cnt[3]_i_2\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \uart_rx_baud_cnt[4]_i_2\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \uart_rx_baud_cnt[7]_i_4\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \uart_rx_bitcnt[1]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \uart_rx_bitcnt[2]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \uart_rx_bitcnt[3]_i_3\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \uart_rx_reg[7]_i_4\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \uart_rx_reg[7]_i_5\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \uart_tx_baud_cnt[5]_i_2\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \uart_tx_bitcnt[0]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \uart_tx_bitcnt[2]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \uart_tx_bitcnt[3]_i_3\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of uart_tx_busy_i_1 : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of uart_tx_busy_i_3 : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \uart_tx_sreg[8]_i_1\ : label is "soft_lutpair110";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \clk_div_ff_reg[0]\ <= \^clk_div_ff_reg[0]\;
  \clk_div_ff_reg[10]\ <= \^clk_div_ff_reg[10]\;
  \clk_div_ff_reg[11]\ <= \^clk_div_ff_reg[11]\;
  \clk_div_ff_reg[1]\ <= \^clk_div_ff_reg[1]\;
  \clk_div_ff_reg[2]\ <= \^clk_div_ff_reg[2]\;
  \clk_div_ff_reg[5]\ <= \^clk_div_ff_reg[5]\;
  \clk_div_ff_reg[6]\ <= \^clk_div_ff_reg[6]\;
  \clk_div_ff_reg[9]\ <= \^clk_div_ff_reg[9]\;
  \uart_tx_baud_cnt_reg[7]_0\ <= \^uart_tx_baud_cnt_reg[7]_0\;
  uart_tx_busy_reg_0 <= \^uart_tx_busy_reg_0\;
  \uart_tx_sreg_reg[8]_0\ <= \^uart_tx_sreg_reg[8]_0\;
\ctrl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \ctrl_reg[14]_0\(0),
      Q => \ctrl_reg_n_0_[0]\,
      R => '0'
    );
\ctrl_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \ctrl_reg[14]_0\(10),
      Q => p_0_in(2),
      R => '0'
    );
\ctrl_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \ctrl_reg[14]_0\(11),
      Q => \^q\(2),
      R => '0'
    );
\ctrl_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \ctrl_reg[14]_0\(12),
      Q => p_1_in13_in,
      R => '0'
    );
\ctrl_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \ctrl_reg[14]_0\(13),
      Q => p_0_in11_in,
      R => '0'
    );
\ctrl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \ctrl_reg[14]_0\(1),
      Q => p_2_in(0),
      R => '0'
    );
\ctrl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \ctrl_reg[14]_0\(2),
      Q => p_2_in(1),
      R => '0'
    );
\ctrl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \ctrl_reg[14]_0\(3),
      Q => p_2_in(2),
      R => '0'
    );
\ctrl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \ctrl_reg[14]_0\(4),
      Q => p_2_in(3),
      R => '0'
    );
\ctrl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \ctrl_reg[14]_0\(5),
      Q => p_2_in(4),
      R => '0'
    );
\ctrl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \ctrl_reg[14]_0\(6),
      Q => p_2_in(5),
      R => '0'
    );
\ctrl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \ctrl_reg[14]_0\(7),
      Q => p_2_in(6),
      R => '0'
    );
\ctrl_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \ctrl_reg[14]_0\(8),
      Q => \^q\(0),
      R => '0'
    );
\ctrl_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => E(0),
      D => \ctrl_reg[14]_0\(9),
      Q => \^q\(1),
      R => '0'
    );
\data_o[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctrl_reg_n_0_[0]\,
      I1 => \data_o_reg[0]_0\,
      I2 => \uart_rx_reg_reg_n_0_[0]\,
      O => \data_o[0]_i_1_n_0\
    );
\data_o[10]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \data_o_reg[0]_0\,
      O => \data_o[10]_i_1__0_n_0\
    );
\data_o[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \data_o_reg[0]_0\,
      I1 => \uart_rx_avail_reg_n_0_[1]\,
      I2 => \uart_rx_avail_reg_n_0_[0]\,
      O => \data_o[11]_i_1_n_0\
    );
\data_o[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in13_in,
      I1 => \data_o_reg[0]_0\,
      O => \data_o[13]_i_1_n_0\
    );
\data_o[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in11_in,
      I1 => \data_o_reg[0]_0\,
      O => \data_o[14]_i_1_n_0\
    );
\data_o[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^uart_tx_busy_reg_0\,
      I1 => \data_o_reg[0]_0\,
      I2 => \uart_rx_avail_reg_n_0_[0]\,
      O => \data_o[15]_i_2_n_0\
    );
\data_o[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(0),
      I1 => \data_o_reg[0]_0\,
      I2 => \uart_rx_reg_reg_n_0_[1]\,
      O => \data_o[1]_i_1_n_0\
    );
\data_o[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(1),
      I1 => \data_o_reg[0]_0\,
      I2 => \uart_rx_reg_reg_n_0_[2]\,
      O => \data_o[2]_i_1__0_n_0\
    );
\data_o[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(2),
      I1 => \data_o_reg[0]_0\,
      I2 => \uart_rx_reg_reg_n_0_[3]\,
      O => \data_o[3]_i_1_n_0\
    );
\data_o[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(3),
      I1 => \data_o_reg[0]_0\,
      I2 => \uart_rx_reg_reg_n_0_[4]\,
      O => \data_o[4]_i_1_n_0\
    );
\data_o[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(4),
      I1 => \data_o_reg[0]_0\,
      I2 => \uart_rx_reg_reg_n_0_[5]\,
      O => \data_o[5]_i_1_n_0\
    );
\data_o[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(5),
      I1 => \data_o_reg[0]_0\,
      I2 => \uart_rx_reg_reg_n_0_[6]\,
      O => \data_o[6]_i_1__0_n_0\
    );
\data_o[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(6),
      I1 => \data_o_reg[0]_0\,
      I2 => \uart_rx_reg_reg_n_0_[7]\,
      O => \data_o[7]_i_1_n_0\
    );
\data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o[0]_i_1_n_0\,
      Q => \data_o_reg[15]_0\(0),
      R => \data_o_reg[15]_1\
    );
\data_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o[10]_i_1__0_n_0\,
      Q => uart_rdata(10),
      R => \data_o_reg[15]_1\
    );
\data_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o[11]_i_1_n_0\,
      Q => uart_rdata(11),
      R => \data_o_reg[15]_1\
    );
\data_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[12]_0\,
      Q => \data_o_reg[15]_0\(10),
      R => \data_o_reg[15]_1\
    );
\data_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o[13]_i_1_n_0\,
      Q => \data_o_reg[15]_0\(11),
      R => \data_o_reg[15]_1\
    );
\data_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o[14]_i_1_n_0\,
      Q => \data_o_reg[15]_0\(12),
      R => \data_o_reg[15]_1\
    );
\data_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o[15]_i_2_n_0\,
      Q => \data_o_reg[15]_0\(13),
      R => \data_o_reg[15]_1\
    );
\data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o[1]_i_1_n_0\,
      Q => \data_o_reg[15]_0\(1),
      R => \data_o_reg[15]_1\
    );
\data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o[2]_i_1__0_n_0\,
      Q => \data_o_reg[15]_0\(2),
      R => \data_o_reg[15]_1\
    );
\data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o[3]_i_1_n_0\,
      Q => \data_o_reg[15]_0\(3),
      R => \data_o_reg[15]_1\
    );
\data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o[4]_i_1_n_0\,
      Q => \data_o_reg[15]_0\(4),
      R => \data_o_reg[15]_1\
    );
\data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o[5]_i_1_n_0\,
      Q => \data_o_reg[15]_0\(5),
      R => \data_o_reg[15]_1\
    );
\data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o[6]_i_1__0_n_0\,
      Q => \data_o_reg[15]_0\(6),
      R => \data_o_reg[15]_1\
    );
\data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o[7]_i_1_n_0\,
      Q => \data_o_reg[15]_0\(7),
      R => \data_o_reg[15]_1\
    );
\data_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[8]_0\,
      Q => \data_o_reg[15]_0\(8),
      R => \data_o_reg[15]_1\
    );
\data_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \data_o_reg[9]_0\,
      Q => \data_o_reg[15]_0\(9),
      R => \data_o_reg[15]_1\
    );
\ir[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => uart_rdata(10),
      I1 => timer_rdata(0),
      I2 => \ir_reg[11]\(0),
      I3 => \ir_reg[11]_0\(0),
      O => \data_o_reg[10]_0\
    );
\ir[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => uart_rdata(11),
      I1 => timer_rdata(1),
      I2 => \ir_reg[11]\(1),
      I3 => \ir_reg[11]_0\(1),
      O => \data_o_reg[11]_0\
    );
\irq_buf[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000DFDFDF"
    )
        port map (
      I0 => uart_rx_busy_ff,
      I1 => uart_rx_busy_reg_n_0,
      I2 => p_1_in13_in,
      I3 => uart_tx_done_reg_n_0,
      I4 => p_0_in11_in,
      I5 => \irq_buf_reg[1]\(0),
      O => uart_rx_busy_ff_reg_0
    );
prsc_tick_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \nco_prsc_tick[0]_i_3\(7),
      I1 => D(7),
      O => \^clk_div_ff_reg[11]\
    );
prsc_tick_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \nco_prsc_tick[0]_i_3\(6),
      I1 => D(6),
      O => \^clk_div_ff_reg[10]\
    );
prsc_tick_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \nco_prsc_tick[0]_i_3\(1),
      I1 => D(1),
      O => \^clk_div_ff_reg[1]\
    );
prsc_tick_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \nco_prsc_tick[0]_i_3\(0),
      I1 => D(0),
      O => \^clk_div_ff_reg[0]\
    );
prsc_tick_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \nco_prsc_tick[0]_i_3\(3),
      I1 => D(3),
      O => \^clk_div_ff_reg[5]\
    );
prsc_tick_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \nco_prsc_tick[0]_i_3\(2),
      I1 => D(2),
      O => \^clk_div_ff_reg[2]\
    );
prsc_tick_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \nco_prsc_tick[0]_i_3\(5),
      I1 => D(5),
      O => \^clk_div_ff_reg[9]\
    );
prsc_tick_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \nco_prsc_tick[0]_i_3\(4),
      I1 => D(4),
      O => \^clk_div_ff_reg[6]\
    );
\uart_rx_avail[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0E000E0E0"
    )
        port map (
      I0 => \uart_rx_avail_reg_n_0_[0]\,
      I1 => uart_rx_avail19_out,
      I2 => \^q\(2),
      I3 => \uart_rx_avail_reg[1]_0\,
      I4 => \uart_rx_avail_reg[1]_1\,
      I5 => \uart_rx_avail[1]_i_5_n_0\,
      O => \uart_rx_avail[0]_i_1_n_0\
    );
\uart_rx_avail[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => uart_rx_busy_ff,
      I1 => uart_rx_busy_reg_n_0,
      O => uart_rx_avail19_out
    );
\uart_rx_avail[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888088"
    )
        port map (
      I0 => \uart_rx_avail[1]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \uart_rx_avail_reg[1]_0\,
      I3 => \uart_rx_avail_reg[1]_1\,
      I4 => \uart_rx_avail[1]_i_5_n_0\,
      O => \uart_rx_avail[1]_i_1_n_0\
    );
\uart_rx_avail[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \uart_rx_avail_reg_n_0_[0]\,
      I1 => uart_rx_busy_ff,
      I2 => uart_rx_busy_reg_n_0,
      I3 => \uart_rx_avail_reg_n_0_[1]\,
      O => \uart_rx_avail[1]_i_2_n_0\
    );
\uart_rx_avail[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \data_o_reg[0]_0\,
      I1 => \uart_rx_avail_reg_n_0_[1]\,
      I2 => \uart_rx_avail_reg_n_0_[0]\,
      O => \uart_rx_avail[1]_i_5_n_0\
    );
\uart_rx_avail_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \uart_rx_avail[0]_i_1_n_0\,
      Q => \uart_rx_avail_reg_n_0_[0]\,
      R => '0'
    );
\uart_rx_avail_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \uart_rx_avail[1]_i_1_n_0\,
      Q => \uart_rx_avail_reg_n_0_[1]\,
      R => '0'
    );
\uart_rx_baud_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54FFFFFF54000000"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg_n_0_[0]\,
      I1 => \ctrl_reg_n_0_[0]\,
      I2 => \uart_rx_baud_cnt[2]_i_2_n_0\,
      I3 => uart_rx_busy_reg_n_0,
      I4 => \^q\(2),
      I5 => p_2_in(0),
      O => \uart_rx_baud_cnt[0]_i_1_n_0\
    );
\uart_rx_baud_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF90FFFFFF900000"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg_n_0_[1]\,
      I1 => \uart_rx_baud_cnt_reg_n_0_[0]\,
      I2 => \uart_rx_baud_cnt[2]_i_2_n_0\,
      I3 => \uart_rx_baud_cnt[1]_i_2_n_0\,
      I4 => \uart_rx_baud_cnt[7]_i_4_n_0\,
      I5 => p_2_in(1),
      O => \uart_rx_baud_cnt[1]_i_1_n_0\
    );
\uart_rx_baud_cnt[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D00000"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg_n_0_[3]\,
      I1 => \uart_rx_baud_cnt_reg_n_0_[4]\,
      I2 => p_2_in(0),
      I3 => \uart_rx_baud_cnt[2]_i_4_n_0\,
      I4 => \uart_rx_baud_cnt[3]_i_2_n_0\,
      O => \uart_rx_baud_cnt[1]_i_2_n_0\
    );
\uart_rx_baud_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3288FFFF32880000"
    )
        port map (
      I0 => \uart_rx_baud_cnt[2]_i_2_n_0\,
      I1 => \uart_rx_baud_cnt_reg_n_0_[2]\,
      I2 => p_2_in(1),
      I3 => \uart_rx_baud_cnt[2]_i_3_n_0\,
      I4 => \uart_rx_baud_cnt[7]_i_4_n_0\,
      I5 => p_2_in(2),
      O => \uart_rx_baud_cnt[2]_i_1_n_0\
    );
\uart_rx_baud_cnt[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg_n_0_[1]\,
      I1 => \uart_rx_baud_cnt_reg_n_0_[2]\,
      I2 => \uart_rx_baud_cnt[2]_i_4_n_0\,
      I3 => \uart_rx_baud_cnt_reg_n_0_[3]\,
      O => \uart_rx_baud_cnt[2]_i_2_n_0\
    );
\uart_rx_baud_cnt[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg_n_0_[1]\,
      I1 => \uart_rx_baud_cnt_reg_n_0_[0]\,
      O => \uart_rx_baud_cnt[2]_i_3_n_0\
    );
\uart_rx_baud_cnt[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg_n_0_[4]\,
      I1 => \uart_rx_baud_cnt_reg_n_0_[5]\,
      I2 => \uart_rx_baud_cnt_reg_n_0_[6]\,
      I3 => \uart_rx_baud_cnt_reg_n_0_[7]\,
      O => \uart_rx_baud_cnt[2]_i_4_n_0\
    );
\uart_rx_baud_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6660FFFF66600000"
    )
        port map (
      I0 => \uart_rx_baud_cnt[3]_i_2_n_0\,
      I1 => \uart_rx_baud_cnt_reg_n_0_[3]\,
      I2 => p_2_in(2),
      I3 => \uart_rx_baud_cnt[7]_i_6_n_0\,
      I4 => \uart_rx_baud_cnt[7]_i_4_n_0\,
      I5 => p_2_in(3),
      O => \uart_rx_baud_cnt[3]_i_1_n_0\
    );
\uart_rx_baud_cnt[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg_n_0_[0]\,
      I1 => \uart_rx_baud_cnt_reg_n_0_[1]\,
      I2 => \uart_rx_baud_cnt_reg_n_0_[2]\,
      O => \uart_rx_baud_cnt[3]_i_2_n_0\
    );
\uart_rx_baud_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6660FFFF66600000"
    )
        port map (
      I0 => \uart_rx_baud_cnt[4]_i_2_n_0\,
      I1 => \uart_rx_baud_cnt_reg_n_0_[4]\,
      I2 => p_2_in(3),
      I3 => \uart_rx_baud_cnt[7]_i_6_n_0\,
      I4 => \uart_rx_baud_cnt[7]_i_4_n_0\,
      I5 => p_2_in(4),
      O => \uart_rx_baud_cnt[4]_i_1_n_0\
    );
\uart_rx_baud_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg_n_0_[2]\,
      I1 => \uart_rx_baud_cnt_reg_n_0_[1]\,
      I2 => \uart_rx_baud_cnt_reg_n_0_[0]\,
      I3 => \uart_rx_baud_cnt_reg_n_0_[3]\,
      O => \uart_rx_baud_cnt[4]_i_2_n_0\
    );
\uart_rx_baud_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF40FF40FF400000"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg_n_0_[6]\,
      I1 => \uart_rx_baud_cnt[7]_i_5_n_0\,
      I2 => p_2_in(4),
      I3 => \uart_rx_baud_cnt[5]_i_2_n_0\,
      I4 => \uart_rx_baud_cnt[7]_i_4_n_0\,
      I5 => p_2_in(5),
      O => \uart_rx_baud_cnt[5]_i_1_n_0\
    );
\uart_rx_baud_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F0FEFFF0FFF0F"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg_n_0_[7]\,
      I1 => \uart_rx_baud_cnt_reg_n_0_[6]\,
      I2 => \uart_rx_baud_cnt[7]_i_4_n_0\,
      I3 => \uart_rx_baud_cnt_reg_n_0_[5]\,
      I4 => \uart_rx_baud_cnt_reg_n_0_[4]\,
      I5 => \uart_rx_baud_cnt[4]_i_2_n_0\,
      O => \uart_rx_baud_cnt[5]_i_2_n_0\
    );
\uart_rx_baud_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE0FFFF0FE00000"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg_n_0_[7]\,
      I1 => p_2_in(5),
      I2 => \uart_rx_baud_cnt[7]_i_5_n_0\,
      I3 => \uart_rx_baud_cnt_reg_n_0_[6]\,
      I4 => \uart_rx_baud_cnt[7]_i_4_n_0\,
      I5 => p_2_in(6),
      O => \uart_rx_baud_cnt[6]_i_1_n_0\
    );
\uart_rx_baud_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg[7]_i_3_n_0\,
      I1 => \^q\(2),
      I2 => uart_rx_busy_reg_n_0,
      O => \uart_rx_baud_cnt[7]_i_1_n_0\
    );
\uart_rx_baud_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8088AAAA80888088"
    )
        port map (
      I0 => \uart_rx_baud_cnt[7]_i_4_n_0\,
      I1 => \uart_rx_baud_cnt_reg_n_0_[7]\,
      I2 => \uart_rx_baud_cnt_reg_n_0_[6]\,
      I3 => \uart_rx_baud_cnt[7]_i_5_n_0\,
      I4 => \uart_rx_baud_cnt[7]_i_6_n_0\,
      I5 => p_2_in(6),
      O => \uart_rx_baud_cnt[7]_i_2_n_0\
    );
\uart_rx_baud_cnt[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => uart_rx_busy_reg_n_0,
      I1 => \^q\(2),
      O => \uart_rx_baud_cnt[7]_i_4_n_0\
    );
\uart_rx_baud_cnt[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg_n_0_[3]\,
      I1 => \uart_rx_baud_cnt_reg_n_0_[0]\,
      I2 => \uart_rx_baud_cnt_reg_n_0_[1]\,
      I3 => \uart_rx_baud_cnt_reg_n_0_[2]\,
      I4 => \uart_rx_baud_cnt_reg_n_0_[4]\,
      I5 => \uart_rx_baud_cnt_reg_n_0_[5]\,
      O => \uart_rx_baud_cnt[7]_i_5_n_0\
    );
\uart_rx_baud_cnt[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg_n_0_[7]\,
      I1 => \uart_rx_baud_cnt_reg_n_0_[6]\,
      I2 => \uart_rx_baud_cnt_reg_n_0_[5]\,
      I3 => \uart_rx_baud_cnt_reg_n_0_[4]\,
      I4 => \uart_rx_baud_cnt[4]_i_2_n_0\,
      O => \uart_rx_baud_cnt[7]_i_6_n_0\
    );
\uart_rx_baud_cnt[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \^clk_div_ff_reg[5]\,
      I1 => \^clk_div_ff_reg[2]\,
      I2 => \^clk_div_ff_reg[1]\,
      I3 => \^q\(0),
      I4 => \^clk_div_ff_reg[0]\,
      I5 => \^q\(1),
      O => \uart_rx_baud_cnt[7]_i_7_n_0\
    );
\uart_rx_baud_cnt[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \^clk_div_ff_reg[11]\,
      I1 => \^clk_div_ff_reg[10]\,
      I2 => \^clk_div_ff_reg[9]\,
      I3 => \^q\(0),
      I4 => \^clk_div_ff_reg[6]\,
      I5 => \^q\(1),
      O => \uart_rx_baud_cnt[7]_i_8_n_0\
    );
\uart_rx_baud_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_baud_cnt[7]_i_1_n_0\,
      D => \uart_rx_baud_cnt[0]_i_1_n_0\,
      Q => \uart_rx_baud_cnt_reg_n_0_[0]\,
      R => '0'
    );
\uart_rx_baud_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_baud_cnt[7]_i_1_n_0\,
      D => \uart_rx_baud_cnt[1]_i_1_n_0\,
      Q => \uart_rx_baud_cnt_reg_n_0_[1]\,
      R => '0'
    );
\uart_rx_baud_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_baud_cnt[7]_i_1_n_0\,
      D => \uart_rx_baud_cnt[2]_i_1_n_0\,
      Q => \uart_rx_baud_cnt_reg_n_0_[2]\,
      R => '0'
    );
\uart_rx_baud_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_baud_cnt[7]_i_1_n_0\,
      D => \uart_rx_baud_cnt[3]_i_1_n_0\,
      Q => \uart_rx_baud_cnt_reg_n_0_[3]\,
      R => '0'
    );
\uart_rx_baud_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_baud_cnt[7]_i_1_n_0\,
      D => \uart_rx_baud_cnt[4]_i_1_n_0\,
      Q => \uart_rx_baud_cnt_reg_n_0_[4]\,
      R => '0'
    );
\uart_rx_baud_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_baud_cnt[7]_i_1_n_0\,
      D => \uart_rx_baud_cnt[5]_i_1_n_0\,
      Q => \uart_rx_baud_cnt_reg_n_0_[5]\,
      R => '0'
    );
\uart_rx_baud_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_baud_cnt[7]_i_1_n_0\,
      D => \uart_rx_baud_cnt[6]_i_1_n_0\,
      Q => \uart_rx_baud_cnt_reg_n_0_[6]\,
      R => '0'
    );
\uart_rx_baud_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_baud_cnt[7]_i_1_n_0\,
      D => \uart_rx_baud_cnt[7]_i_2_n_0\,
      Q => \uart_rx_baud_cnt_reg_n_0_[7]\,
      R => '0'
    );
\uart_rx_baud_cnt_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \uart_rx_baud_cnt[7]_i_7_n_0\,
      I1 => \uart_rx_baud_cnt[7]_i_8_n_0\,
      O => \uart_rx_baud_cnt_reg[7]_i_3_n_0\,
      S => p_0_in(2)
    );
\uart_rx_bitcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => uart_rx_bitcnt_reg(0),
      O => minusOp(0)
    );
\uart_rx_bitcnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => uart_rx_bitcnt_reg(1),
      I1 => uart_rx_bitcnt_reg(0),
      O => \uart_rx_bitcnt[1]_i_1_n_0\
    );
\uart_rx_bitcnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => uart_rx_bitcnt_reg(2),
      I1 => uart_rx_bitcnt_reg(0),
      I2 => uart_rx_bitcnt_reg(1),
      O => minusOp(2)
    );
\uart_rx_bitcnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(2),
      I1 => uart_rx_busy_reg_n_0,
      O => uart_rx_busy1
    );
\uart_rx_bitcnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg[7]_i_3_n_0\,
      I1 => \uart_rx_baud_cnt[4]_i_2_n_0\,
      I2 => \uart_rx_baud_cnt_reg_n_0_[4]\,
      I3 => \uart_rx_baud_cnt_reg_n_0_[5]\,
      I4 => \uart_rx_baud_cnt_reg_n_0_[6]\,
      I5 => \uart_rx_baud_cnt_reg_n_0_[7]\,
      O => \uart_rx_bitcnt[3]_i_2_n_0\
    );
\uart_rx_bitcnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => uart_rx_bitcnt_reg(3),
      I1 => uart_rx_bitcnt_reg(2),
      I2 => uart_rx_bitcnt_reg(1),
      I3 => uart_rx_bitcnt_reg(0),
      O => minusOp(3)
    );
\uart_rx_bitcnt_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk_i,
      CE => \uart_rx_bitcnt[3]_i_2_n_0\,
      D => minusOp(0),
      Q => uart_rx_bitcnt_reg(0),
      S => uart_rx_busy1
    );
\uart_rx_bitcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_bitcnt[3]_i_2_n_0\,
      D => \uart_rx_bitcnt[1]_i_1_n_0\,
      Q => uart_rx_bitcnt_reg(1),
      R => uart_rx_busy1
    );
\uart_rx_bitcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_bitcnt[3]_i_2_n_0\,
      D => minusOp(2),
      Q => uart_rx_bitcnt_reg(2),
      R => uart_rx_busy1
    );
\uart_rx_bitcnt_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk_i,
      CE => \uart_rx_bitcnt[3]_i_2_n_0\,
      D => minusOp(3),
      Q => uart_rx_bitcnt_reg(3),
      S => uart_rx_busy1
    );
uart_rx_busy_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uart_rx_busy_reg_n_0,
      Q => uart_rx_busy_ff,
      R => '0'
    );
uart_rx_busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808084C08"
    )
        port map (
      I0 => uart_rx_busy_reg_n_0,
      I1 => \^q\(2),
      I2 => \uart_rx_reg[7]_i_3_n_0\,
      I3 => uart_rx_sync(0),
      I4 => uart_rx_sync(2),
      I5 => uart_rx_sync(1),
      O => uart_rx_busy_i_1_n_0
    );
uart_rx_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uart_rx_busy_i_1_n_0,
      Q => uart_rx_busy_reg_n_0,
      R => '0'
    );
\uart_rx_reg[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \uart_rx_reg[7]_i_1_n_0\
    );
\uart_rx_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \uart_rx_reg[7]_i_3_n_0\,
      I1 => uart_rx_busy_reg_n_0,
      O => \uart_rx_reg[7]_i_2_n_0\
    );
\uart_rx_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg[7]_i_3_n_0\,
      I1 => \uart_rx_reg[7]_i_4_n_0\,
      I2 => uart_rx_bitcnt_reg(3),
      I3 => \uart_rx_baud_cnt[3]_i_2_n_0\,
      I4 => \uart_rx_baud_cnt_reg_n_0_[5]\,
      I5 => \uart_rx_reg[7]_i_5_n_0\,
      O => \uart_rx_reg[7]_i_3_n_0\
    );
\uart_rx_reg[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => uart_rx_bitcnt_reg(0),
      I1 => uart_rx_bitcnt_reg(1),
      I2 => uart_rx_bitcnt_reg(2),
      O => \uart_rx_reg[7]_i_4_n_0\
    );
\uart_rx_reg[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg_n_0_[3]\,
      I1 => \uart_rx_baud_cnt_reg_n_0_[7]\,
      I2 => \uart_rx_baud_cnt_reg_n_0_[6]\,
      I3 => \uart_rx_baud_cnt_reg_n_0_[5]\,
      I4 => \uart_rx_baud_cnt_reg_n_0_[4]\,
      O => \uart_rx_reg[7]_i_5_n_0\
    );
\uart_rx_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_reg[7]_i_2_n_0\,
      D => p_1_in(0),
      Q => \uart_rx_reg_reg_n_0_[0]\,
      R => \uart_rx_reg[7]_i_1_n_0\
    );
\uart_rx_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_reg[7]_i_2_n_0\,
      D => p_1_in(1),
      Q => \uart_rx_reg_reg_n_0_[1]\,
      R => \uart_rx_reg[7]_i_1_n_0\
    );
\uart_rx_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_reg[7]_i_2_n_0\,
      D => p_1_in(2),
      Q => \uart_rx_reg_reg_n_0_[2]\,
      R => \uart_rx_reg[7]_i_1_n_0\
    );
\uart_rx_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_reg[7]_i_2_n_0\,
      D => p_1_in(3),
      Q => \uart_rx_reg_reg_n_0_[3]\,
      R => \uart_rx_reg[7]_i_1_n_0\
    );
\uart_rx_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_reg[7]_i_2_n_0\,
      D => p_1_in(4),
      Q => \uart_rx_reg_reg_n_0_[4]\,
      R => \uart_rx_reg[7]_i_1_n_0\
    );
\uart_rx_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_reg[7]_i_2_n_0\,
      D => p_1_in(5),
      Q => \uart_rx_reg_reg_n_0_[5]\,
      R => \uart_rx_reg[7]_i_1_n_0\
    );
\uart_rx_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_reg[7]_i_2_n_0\,
      D => p_1_in(6),
      Q => \uart_rx_reg_reg_n_0_[6]\,
      R => \uart_rx_reg[7]_i_1_n_0\
    );
\uart_rx_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_reg[7]_i_2_n_0\,
      D => p_1_in(7),
      Q => \uart_rx_reg_reg_n_0_[7]\,
      R => \uart_rx_reg[7]_i_1_n_0\
    );
\uart_rx_sreg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_rx_bitcnt[3]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => uart_rx_busy_reg_n_0,
      O => \uart_rx_sreg[8]_i_1_n_0\
    );
\uart_rx_sreg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_sreg[8]_i_1_n_0\,
      D => p_1_in(1),
      Q => p_1_in(0),
      R => '0'
    );
\uart_rx_sreg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_sreg[8]_i_1_n_0\,
      D => p_1_in(2),
      Q => p_1_in(1),
      R => '0'
    );
\uart_rx_sreg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_sreg[8]_i_1_n_0\,
      D => p_1_in(3),
      Q => p_1_in(2),
      R => '0'
    );
\uart_rx_sreg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_sreg[8]_i_1_n_0\,
      D => p_1_in(4),
      Q => p_1_in(3),
      R => '0'
    );
\uart_rx_sreg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_sreg[8]_i_1_n_0\,
      D => p_1_in(5),
      Q => p_1_in(4),
      R => '0'
    );
\uart_rx_sreg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_sreg[8]_i_1_n_0\,
      D => p_1_in(6),
      Q => p_1_in(5),
      R => '0'
    );
\uart_rx_sreg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_sreg[8]_i_1_n_0\,
      D => p_1_in(7),
      Q => p_1_in(6),
      R => '0'
    );
\uart_rx_sreg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_rx_sreg[8]_i_1_n_0\,
      D => uart_rx_sync(0),
      Q => p_1_in(7),
      R => '0'
    );
\uart_rx_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uart_rx_sync(1),
      Q => uart_rx_sync(0),
      R => '0'
    );
\uart_rx_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uart_rx_sync(2),
      Q => uart_rx_sync(1),
      R => '0'
    );
\uart_rx_sync_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => uart_rx_sync(2),
      R => '0'
    );
\uart_rx_sync_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \p_0_in__0\(2),
      R => '0'
    );
\uart_rx_sync_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uart_rxd_i,
      Q => \p_0_in__0\(3),
      R => '0'
    );
\uart_tx_baud_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7F7F00"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^uart_tx_busy_reg_0\,
      I2 => \uart_tx_baud_cnt_reg_n_0_[0]\,
      I3 => \uart_tx_baud_cnt[2]_i_2_n_0\,
      I4 => \ctrl_reg_n_0_[0]\,
      O => \uart_tx_baud_cnt[0]_i_1_n_0\
    );
\uart_tx_baud_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F44F4444"
    )
        port map (
      I0 => \uart_tx_baud_cnt[4]_i_3_n_0\,
      I1 => p_2_in(0),
      I2 => \uart_tx_baud_cnt_reg_n_0_[0]\,
      I3 => \uart_tx_baud_cnt_reg_n_0_[1]\,
      I4 => \uart_tx_baud_cnt[2]_i_2_n_0\,
      O => \uart_tx_baud_cnt[1]_i_1_n_0\
    );
\uart_tx_baud_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F44F4444444C"
    )
        port map (
      I0 => \uart_tx_baud_cnt[5]_i_2_n_0\,
      I1 => p_2_in(1),
      I2 => \uart_tx_baud_cnt_reg_n_0_[2]\,
      I3 => \uart_tx_baud_cnt_reg_n_0_[1]\,
      I4 => \uart_tx_baud_cnt_reg_n_0_[0]\,
      I5 => \uart_tx_baud_cnt[2]_i_2_n_0\,
      O => \uart_tx_baud_cnt[2]_i_1_n_0\
    );
\uart_tx_baud_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => \uart_tx_baud_cnt[5]_i_2_n_0\,
      I1 => \uart_tx_baud_cnt_reg_n_0_[2]\,
      I2 => \uart_tx_baud_cnt_reg_n_0_[1]\,
      I3 => \uart_tx_baud_cnt_reg_n_0_[6]\,
      I4 => \uart_tx_baud_cnt_reg_n_0_[7]\,
      I5 => \uart_tx_baud_cnt[2]_i_3_n_0\,
      O => \uart_tx_baud_cnt[2]_i_2_n_0\
    );
\uart_tx_baud_cnt[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \uart_tx_baud_cnt_reg_n_0_[3]\,
      I1 => \uart_tx_baud_cnt_reg_n_0_[4]\,
      I2 => \uart_tx_baud_cnt_reg_n_0_[5]\,
      O => \uart_tx_baud_cnt[2]_i_3_n_0\
    );
\uart_tx_baud_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => \uart_tx_baud_cnt_reg_n_0_[3]\,
      I1 => \uart_tx_baud_cnt_reg_n_0_[2]\,
      I2 => \uart_tx_baud_cnt_reg_n_0_[0]\,
      I3 => \uart_tx_baud_cnt_reg_n_0_[1]\,
      I4 => \uart_tx_baud_cnt[4]_i_3_n_0\,
      I5 => p_2_in(2),
      O => \uart_tx_baud_cnt[3]_i_1_n_0\
    );
\uart_tx_baud_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9A00"
    )
        port map (
      I0 => \uart_tx_baud_cnt_reg_n_0_[4]\,
      I1 => \uart_tx_baud_cnt_reg_n_0_[3]\,
      I2 => \uart_tx_baud_cnt[4]_i_2_n_0\,
      I3 => \uart_tx_baud_cnt[4]_i_3_n_0\,
      I4 => p_2_in(3),
      O => \uart_tx_baud_cnt[4]_i_1_n_0\
    );
\uart_tx_baud_cnt[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \uart_tx_baud_cnt_reg_n_0_[1]\,
      I1 => \uart_tx_baud_cnt_reg_n_0_[0]\,
      I2 => \uart_tx_baud_cnt_reg_n_0_[2]\,
      O => \uart_tx_baud_cnt[4]_i_2_n_0\
    );
\uart_tx_baud_cnt[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808888"
    )
        port map (
      I0 => \^uart_tx_busy_reg_0\,
      I1 => \^q\(2),
      I2 => \uart_tx_baud_cnt_reg_n_0_[7]\,
      I3 => \uart_tx_baud_cnt_reg_n_0_[6]\,
      I4 => \uart_tx_baud_cnt[7]_i_3_n_0\,
      O => \uart_tx_baud_cnt[4]_i_3_n_0\
    );
\uart_tx_baud_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD8880FFFFAAAA"
    )
        port map (
      I0 => \uart_tx_baud_cnt[5]_i_2_n_0\,
      I1 => \uart_tx_baud_cnt[7]_i_3_n_0\,
      I2 => \uart_tx_baud_cnt_reg_n_0_[7]\,
      I3 => \uart_tx_baud_cnt_reg_n_0_[6]\,
      I4 => p_2_in(4),
      I5 => \uart_tx_baud_cnt[5]_i_3_n_0\,
      O => \uart_tx_baud_cnt[5]_i_1_n_0\
    );
\uart_tx_baud_cnt[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^uart_tx_busy_reg_0\,
      O => \uart_tx_baud_cnt[5]_i_2_n_0\
    );
\uart_tx_baud_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => \uart_tx_baud_cnt_reg_n_0_[4]\,
      I1 => \uart_tx_baud_cnt_reg_n_0_[2]\,
      I2 => \uart_tx_baud_cnt_reg_n_0_[0]\,
      I3 => \uart_tx_baud_cnt_reg_n_0_[1]\,
      I4 => \uart_tx_baud_cnt_reg_n_0_[3]\,
      I5 => \uart_tx_baud_cnt_reg_n_0_[5]\,
      O => \uart_tx_baud_cnt[5]_i_3_n_0\
    );
\uart_tx_baud_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AAACAAA2AAACAAA"
    )
        port map (
      I0 => p_2_in(5),
      I1 => \uart_tx_baud_cnt_reg_n_0_[6]\,
      I2 => \^q\(2),
      I3 => \^uart_tx_busy_reg_0\,
      I4 => \uart_tx_baud_cnt[7]_i_3_n_0\,
      I5 => \uart_tx_baud_cnt_reg_n_0_[7]\,
      O => \uart_tx_baud_cnt[6]_i_1_n_0\
    );
\uart_tx_baud_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg[7]_i_3_n_0\,
      I1 => \^uart_tx_busy_reg_0\,
      I2 => \^q\(2),
      O => \uart_tx_baud_cnt[7]_i_1_n_0\
    );
\uart_tx_baud_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F77FF7F780008080"
    )
        port map (
      I0 => \^uart_tx_busy_reg_0\,
      I1 => \^q\(2),
      I2 => \uart_tx_baud_cnt_reg_n_0_[7]\,
      I3 => \uart_tx_baud_cnt_reg_n_0_[6]\,
      I4 => \uart_tx_baud_cnt[7]_i_3_n_0\,
      I5 => p_2_in(6),
      O => \uart_tx_baud_cnt[7]_i_2_n_0\
    );
\uart_tx_baud_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \uart_tx_baud_cnt_reg_n_0_[2]\,
      I1 => \uart_tx_baud_cnt_reg_n_0_[0]\,
      I2 => \uart_tx_baud_cnt_reg_n_0_[1]\,
      I3 => \uart_tx_baud_cnt_reg_n_0_[5]\,
      I4 => \uart_tx_baud_cnt_reg_n_0_[4]\,
      I5 => \uart_tx_baud_cnt_reg_n_0_[3]\,
      O => \uart_tx_baud_cnt[7]_i_3_n_0\
    );
\uart_tx_baud_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_baud_cnt[7]_i_1_n_0\,
      D => \uart_tx_baud_cnt[0]_i_1_n_0\,
      Q => \uart_tx_baud_cnt_reg_n_0_[0]\,
      R => '0'
    );
\uart_tx_baud_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_baud_cnt[7]_i_1_n_0\,
      D => \uart_tx_baud_cnt[1]_i_1_n_0\,
      Q => \uart_tx_baud_cnt_reg_n_0_[1]\,
      R => '0'
    );
\uart_tx_baud_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_baud_cnt[7]_i_1_n_0\,
      D => \uart_tx_baud_cnt[2]_i_1_n_0\,
      Q => \uart_tx_baud_cnt_reg_n_0_[2]\,
      R => '0'
    );
\uart_tx_baud_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_baud_cnt[7]_i_1_n_0\,
      D => \uart_tx_baud_cnt[3]_i_1_n_0\,
      Q => \uart_tx_baud_cnt_reg_n_0_[3]\,
      R => '0'
    );
\uart_tx_baud_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_baud_cnt[7]_i_1_n_0\,
      D => \uart_tx_baud_cnt[4]_i_1_n_0\,
      Q => \uart_tx_baud_cnt_reg_n_0_[4]\,
      R => '0'
    );
\uart_tx_baud_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_baud_cnt[7]_i_1_n_0\,
      D => \uart_tx_baud_cnt[5]_i_1_n_0\,
      Q => \uart_tx_baud_cnt_reg_n_0_[5]\,
      R => '0'
    );
\uart_tx_baud_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_baud_cnt[7]_i_1_n_0\,
      D => \uart_tx_baud_cnt[6]_i_1_n_0\,
      Q => \uart_tx_baud_cnt_reg_n_0_[6]\,
      R => '0'
    );
\uart_tx_baud_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_baud_cnt[7]_i_1_n_0\,
      D => \uart_tx_baud_cnt[7]_i_2_n_0\,
      Q => \uart_tx_baud_cnt_reg_n_0_[7]\,
      R => '0'
    );
\uart_tx_bitcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => uart_tx_bitcnt_reg(0),
      O => \minusOp__0\(0)
    );
\uart_tx_bitcnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => uart_tx_bitcnt_reg(1),
      I1 => uart_tx_bitcnt_reg(0),
      O => \uart_tx_bitcnt[1]_i_1_n_0\
    );
\uart_tx_bitcnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => uart_tx_bitcnt_reg(2),
      I1 => uart_tx_bitcnt_reg(0),
      I2 => uart_tx_bitcnt_reg(1),
      O => \minusOp__0\(2)
    );
\uart_tx_bitcnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^uart_tx_busy_reg_0\,
      I1 => \^q\(2),
      O => uart_tx_done0
    );
\uart_tx_bitcnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \uart_rx_baud_cnt_reg[7]_i_3_n_0\,
      I1 => \uart_tx_baud_cnt_reg_n_0_[7]\,
      I2 => \uart_tx_baud_cnt_reg_n_0_[6]\,
      I3 => \uart_tx_baud_cnt[7]_i_3_n_0\,
      O => \^uart_tx_baud_cnt_reg[7]_0\
    );
\uart_tx_bitcnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => uart_tx_bitcnt_reg(3),
      I1 => uart_tx_bitcnt_reg(2),
      I2 => uart_tx_bitcnt_reg(1),
      I3 => uart_tx_bitcnt_reg(0),
      O => \minusOp__0\(3)
    );
\uart_tx_bitcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^uart_tx_baud_cnt_reg[7]_0\,
      D => \minusOp__0\(0),
      Q => uart_tx_bitcnt_reg(0),
      R => uart_tx_done0
    );
\uart_tx_bitcnt_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk_i,
      CE => \^uart_tx_baud_cnt_reg[7]_0\,
      D => \uart_tx_bitcnt[1]_i_1_n_0\,
      Q => uart_tx_bitcnt_reg(1),
      S => uart_tx_done0
    );
\uart_tx_bitcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^uart_tx_baud_cnt_reg[7]_0\,
      D => \minusOp__0\(2),
      Q => uart_tx_bitcnt_reg(2),
      R => uart_tx_done0
    );
\uart_tx_bitcnt_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk_i,
      CE => \^uart_tx_baud_cnt_reg[7]_0\,
      D => \minusOp__0\(3),
      Q => uart_tx_bitcnt_reg(3),
      S => uart_tx_done0
    );
uart_tx_busy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AEA"
    )
        port map (
      I0 => uart_tx_busy0,
      I1 => \^q\(2),
      I2 => \^uart_tx_busy_reg_0\,
      I3 => uart_tx_busy_i_3_n_0,
      O => uart_tx_busy_i_1_n_0
    );
uart_tx_busy_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^uart_tx_baud_cnt_reg[7]_0\,
      I1 => uart_tx_bitcnt_reg(0),
      I2 => uart_tx_bitcnt_reg(1),
      I3 => uart_tx_bitcnt_reg(2),
      I4 => uart_tx_bitcnt_reg(3),
      O => uart_tx_busy_i_3_n_0
    );
uart_tx_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uart_tx_busy_i_1_n_0,
      Q => \^uart_tx_busy_reg_0\,
      R => '0'
    );
uart_tx_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => uart_tx_bitcnt_reg(3),
      I1 => uart_tx_bitcnt_reg(2),
      I2 => uart_tx_bitcnt_reg(1),
      I3 => uart_tx_bitcnt_reg(0),
      I4 => \^uart_tx_baud_cnt_reg[7]_0\,
      I5 => \uart_tx_baud_cnt[5]_i_2_n_0\,
      O => uart_tx_done_i_1_n_0
    );
uart_tx_done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uart_tx_done_i_1_n_0,
      Q => uart_tx_done_reg_n_0,
      R => '0'
    );
\uart_tx_sreg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \uart_tx_sreg_reg_n_0_[1]\,
      I1 => \^uart_tx_busy_reg_0\,
      O => \uart_tx_sreg[0]_i_1_n_0\
    );
\uart_tx_sreg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACACACA"
    )
        port map (
      I0 => \^uart_tx_sreg_reg[8]_0\,
      I1 => \ctrl_reg[14]_0\(7),
      I2 => \uart_tx_sreg_reg[7]_1\(0),
      I3 => \^q\(2),
      I4 => \^uart_tx_busy_reg_0\,
      O => \uart_tx_sreg[8]_i_1_n_0\
    );
\uart_tx_sreg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_sreg_reg[7]_1\(0),
      D => \uart_tx_sreg[0]_i_1_n_0\,
      Q => \uart_tx_sreg_reg_n_0_[0]\,
      R => '0'
    );
\uart_tx_sreg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_sreg_reg[7]_1\(0),
      D => \uart_tx_sreg_reg[7]_2\(0),
      Q => \uart_tx_sreg_reg_n_0_[1]\,
      R => '0'
    );
\uart_tx_sreg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_sreg_reg[7]_1\(0),
      D => \uart_tx_sreg_reg[7]_2\(1),
      Q => \uart_tx_sreg_reg[7]_0\(0),
      R => '0'
    );
\uart_tx_sreg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_sreg_reg[7]_1\(0),
      D => \uart_tx_sreg_reg[7]_2\(2),
      Q => \uart_tx_sreg_reg[7]_0\(1),
      R => '0'
    );
\uart_tx_sreg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_sreg_reg[7]_1\(0),
      D => \uart_tx_sreg_reg[7]_2\(3),
      Q => \uart_tx_sreg_reg[7]_0\(2),
      R => '0'
    );
\uart_tx_sreg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_sreg_reg[7]_1\(0),
      D => \uart_tx_sreg_reg[7]_2\(4),
      Q => \uart_tx_sreg_reg[7]_0\(3),
      R => '0'
    );
\uart_tx_sreg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_sreg_reg[7]_1\(0),
      D => \uart_tx_sreg_reg[7]_2\(5),
      Q => \uart_tx_sreg_reg[7]_0\(4),
      R => '0'
    );
\uart_tx_sreg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \uart_tx_sreg_reg[7]_1\(0),
      D => \uart_tx_sreg_reg[7]_2\(6),
      Q => \uart_tx_sreg_reg[7]_0\(5),
      R => '0'
    );
\uart_tx_sreg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \uart_tx_sreg[8]_i_1_n_0\,
      Q => \^uart_tx_sreg_reg[8]_0\,
      R => '0'
    );
uart_txd_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \uart_tx_sreg_reg_n_0_[0]\,
      Q => uart_txd_o,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_reg_async_rst is
  port (
    seg_segment_o : out STD_LOGIC_VECTOR ( 6 downto 0 );
    en_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_reg_async_rst : entity is "reg_async_rst";
end SystemTop_reg_async_rst;

architecture STRUCTURE of SystemTop_reg_async_rst is
begin
\register_sr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => D(0),
      Q => seg_segment_o(0)
    );
\register_sr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => D(1),
      Q => seg_segment_o(1)
    );
\register_sr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => D(2),
      Q => seg_segment_o(2)
    );
\register_sr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => D(3),
      Q => seg_segment_o(3)
    );
\register_sr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => D(4),
      Q => seg_segment_o(4)
    );
\register_sr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => D(5),
      Q => seg_segment_o(5)
    );
\register_sr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => D(6),
      Q => seg_segment_o(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SystemTop_reg_async_rst__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    en_i : in STD_LOGIC;
    bcd_vector_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SystemTop_reg_async_rst__parameterized0\ : entity is "reg_async_rst";
end \SystemTop_reg_async_rst__parameterized0\;

architecture STRUCTURE of \SystemTop_reg_async_rst__parameterized0\ is
begin
\register_sr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(0),
      Q => Q(0)
    );
\register_sr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(1),
      Q => Q(1)
    );
\register_sr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(2),
      Q => Q(2)
    );
\register_sr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(3),
      Q => Q(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SystemTop_reg_async_rst__parameterized0_0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    en_i : in STD_LOGIC;
    bcd_vector_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SystemTop_reg_async_rst__parameterized0_0\ : entity is "reg_async_rst";
end \SystemTop_reg_async_rst__parameterized0_0\;

architecture STRUCTURE of \SystemTop_reg_async_rst__parameterized0_0\ is
begin
\register_sr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(0),
      Q => Q(0)
    );
\register_sr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(1),
      Q => Q(1)
    );
\register_sr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(2),
      Q => Q(2)
    );
\register_sr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(3),
      Q => Q(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SystemTop_reg_async_rst__parameterized0_1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    en_i : in STD_LOGIC;
    bcd_vector_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SystemTop_reg_async_rst__parameterized0_1\ : entity is "reg_async_rst";
end \SystemTop_reg_async_rst__parameterized0_1\;

architecture STRUCTURE of \SystemTop_reg_async_rst__parameterized0_1\ is
begin
\register_sr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(0),
      Q => Q(0)
    );
\register_sr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(1),
      Q => Q(1)
    );
\register_sr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(2),
      Q => Q(2)
    );
\register_sr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(3),
      Q => Q(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SystemTop_reg_async_rst__parameterized0_2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    en_i : in STD_LOGIC;
    bcd_vector_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SystemTop_reg_async_rst__parameterized0_2\ : entity is "reg_async_rst";
end \SystemTop_reg_async_rst__parameterized0_2\;

architecture STRUCTURE of \SystemTop_reg_async_rst__parameterized0_2\ is
begin
\register_sr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(0),
      Q => Q(0)
    );
\register_sr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(1),
      Q => Q(1)
    );
\register_sr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(2),
      Q => Q(2)
    );
\register_sr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => bcd_vector_i(3),
      Q => Q(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_reg_shift_async_rst is
  port (
    seg_module_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    en_i : in STD_LOGIC;
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_reg_shift_async_rst : entity is "reg_shift_async_rst";
end SystemTop_reg_shift_async_rst;

architecture STRUCTURE of SystemTop_reg_shift_async_rst is
  signal \^seg_module_o\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  seg_module_o(3 downto 0) <= \^seg_module_o\(3 downto 0);
\reg_shift_sr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_i,
      CLR => rst_i,
      D => \^seg_module_o\(3),
      Q => \^seg_module_o\(0)
    );
\reg_shift_sr_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_i,
      CE => en_i,
      D => \^seg_module_o\(0),
      PRE => rst_i,
      Q => \^seg_module_o\(1)
    );
\reg_shift_sr_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_i,
      CE => en_i,
      D => \^seg_module_o\(1),
      PRE => rst_i,
      Q => \^seg_module_o\(2)
    );
\reg_shift_sr_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_i,
      CE => en_i,
      D => \^seg_module_o\(2),
      PRE => rst_i,
      Q => \^seg_module_o\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SystemTop_util_vector_logic_0_0 : entity is "SystemTop_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SystemTop_util_vector_logic_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of SystemTop_util_vector_logic_0_0 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.2";
end SystemTop_util_vector_logic_0_0;

architecture STRUCTURE of SystemTop_util_vector_logic_0_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SystemTop_xlslice_0_0 : entity is "SystemTop_xlslice_0_0,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SystemTop_xlslice_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of SystemTop_xlslice_0_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2021.2";
end SystemTop_xlslice_0_0;

architecture STRUCTURE of SystemTop_xlslice_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SystemTop_xlslice_1_0 : entity is "SystemTop_xlslice_1_0,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SystemTop_xlslice_1_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of SystemTop_xlslice_1_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2021.2";
end SystemTop_xlslice_1_0;

architecture STRUCTURE of SystemTop_xlslice_1_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SystemTop_xlslice_2_0 : entity is "SystemTop_xlslice_2_0,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SystemTop_xlslice_2_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of SystemTop_xlslice_2_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2021.2";
end SystemTop_xlslice_2_0;

architecture STRUCTURE of SystemTop_xlslice_2_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_cpu is
  port (
    dio_swap : out STD_LOGIC;
    \ctrl_reg[12]\ : out STD_LOGIC;
    \mem_addr_reg_reg[1]\ : out STD_LOGIC;
    \ctrl_reg[9]\ : out STD_LOGIC;
    \ctrl_reg[8]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \cpu_bus[addr]\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \ctrl_reg[25]\ : out STD_LOGIC;
    \ctrl_reg[28]\ : out STD_LOGIC;
    \mem_addr_reg_reg[11]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[3]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    dio_swap_reg_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \mem_addr_reg_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_addr_reg_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \din_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \pwm_ch_reg[1][7]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \mem_addr_reg_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_addr_reg_reg[2]_2\ : out STD_LOGIC;
    \mem_addr_reg_reg[2]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    cnt_reg_15_sp_1 : out STD_LOGIC;
    cnt_reg_14_sp_1 : out STD_LOGIC;
    cnt_reg_13_sp_1 : out STD_LOGIC;
    cnt_reg_12_sp_1 : out STD_LOGIC;
    cnt_reg_11_sp_1 : out STD_LOGIC;
    cnt_reg_10_sp_1 : out STD_LOGIC;
    cnt_reg_9_sp_1 : out STD_LOGIC;
    cnt_reg_8_sp_1 : out STD_LOGIC;
    cnt_reg_7_sp_1 : out STD_LOGIC;
    \ctrl_reg[6]\ : out STD_LOGIC;
    \ctrl_reg[5]\ : out STD_LOGIC;
    \ctrl_reg[4]\ : out STD_LOGIC;
    \ctrl_reg[3]\ : out STD_LOGIC;
    \ctrl_reg[2]\ : out STD_LOGIC;
    \ctrl_reg[1]\ : out STD_LOGIC;
    \ctrl_reg[0]\ : out STD_LOGIC;
    \mem_addr_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_addr_reg_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[27]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[27]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[27]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[28]_0\ : out STD_LOGIC;
    \mem_addr_reg_reg[15]\ : out STD_LOGIC;
    \mem_addr_reg_reg[11]_0\ : out STD_LOGIC;
    \ctrl_reg[28]_1\ : out STD_LOGIC;
    dio_swap_reg_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \irq_buf_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[12]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[25]_0\ : out STD_LOGIC;
    uart_tx_busy0 : out STD_LOGIC;
    \ctrl_reg[28]_2\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[28]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[25]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    acc_en : out STD_LOGIC;
    acc_en_0 : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cpu_bus[wr_en]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sreg_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rst_gen_reg[3]\ : out STD_LOGIC;
    clk_i : in STD_LOGIC;
    \op_b_ff_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    mem_addr_reg0_carry : in STD_LOGIC;
    \op_b_ff_reg[5]\ : in STD_LOGIC;
    \op_b_ff_reg[6]\ : in STD_LOGIC;
    \mem_addr_reg_reg[7]\ : in STD_LOGIC;
    \op_b_ff_reg[9]\ : in STD_LOGIC;
    \op_b_ff_reg[7]\ : in STD_LOGIC;
    \op_b_ff_reg[12]\ : in STD_LOGIC;
    \mem_addr_reg0_carry__2\ : in STD_LOGIC;
    \am_reg[3]\ : in STD_LOGIC;
    \ctrl_reg[17]\ : in STD_LOGIC;
    \uart_tx_sreg_reg[6]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \uart_tx_sreg_reg[1]\ : in STD_LOGIC;
    \uart_tx_sreg_reg[7]\ : in STD_LOGIC;
    \data_o_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_o_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    p_1_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_o_reg[15]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_o_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cnt_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_o_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \op_b_ff_reg[15]\ : in STD_LOGIC;
    mem_data_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \ctrl_reg[17]_0\ : in STD_LOGIC;
    \op_b_ff_reg[4]\ : in STD_LOGIC;
    \sam_reg[1]\ : in STD_LOGIC;
    \op_b_ff_reg[14]\ : in STD_LOGIC;
    \op_b_ff_reg[4]_0\ : in STD_LOGIC;
    \op_b_ff_reg[3]\ : in STD_LOGIC;
    \mem_addr_reg_reg[11]_1\ : in STD_LOGIC;
    \i__carry__1_i_5\ : in STD_LOGIC;
    \i__carry__1_i_5_0\ : in STD_LOGIC;
    \op_b_ff_reg[0]\ : in STD_LOGIC;
    \op_b_ff_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC;
    \uart_tx_sreg_reg[7]_0\ : in STD_LOGIC;
    \op_b_ff_reg[2]\ : in STD_LOGIC;
    \op_b_ff_reg[8]\ : in STD_LOGIC;
    \op_b_ff_reg[10]\ : in STD_LOGIC;
    \op_b_ff_reg[11]\ : in STD_LOGIC;
    \op_b_ff_reg[13]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[3]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[3]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[3]_2\ : in STD_LOGIC;
    \FSM_sequential_state_reg[4]\ : in STD_LOGIC;
    \ctrl_reg[17]_1\ : in STD_LOGIC;
    \ctrl_reg[15]\ : in STD_LOGIC;
    \ctrl_reg[16]\ : in STD_LOGIC;
    \irq_buf_reg[1]_0\ : in STD_LOGIC;
    irq_fire_ff : in STD_LOGIC;
    p_2_in3_in : in STD_LOGIC;
    irq_o : in STD_LOGIC;
    \sreg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \am_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \src_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \am_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_neo430_cpu : entity is "neo430_cpu";
end SystemTop_neo430_cpu;

architecture STRUCTURE of SystemTop_neo430_cpu is
  signal addr_add : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal bw_ff : STD_LOGIC;
  signal cnt_reg_10_sn_1 : STD_LOGIC;
  signal cnt_reg_11_sn_1 : STD_LOGIC;
  signal cnt_reg_12_sn_1 : STD_LOGIC;
  signal cnt_reg_13_sn_1 : STD_LOGIC;
  signal cnt_reg_14_sn_1 : STD_LOGIC;
  signal cnt_reg_15_sn_1 : STD_LOGIC;
  signal cnt_reg_7_sn_1 : STD_LOGIC;
  signal cnt_reg_8_sn_1 : STD_LOGIC;
  signal cnt_reg_9_sn_1 : STD_LOGIC;
  signal \^cpu_bus[wr_en]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ctrl_bus : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal data1 : STD_LOGIC;
  signal data_o0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^dio_swap\ : STD_LOGIC;
  signal dio_swap0 : STD_LOGIC;
  signal imem_up_en : STD_LOGIC;
  signal in_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mem_addr_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal neo430_alu_inst_n_0 : STD_LOGIC;
  signal neo430_alu_inst_n_1 : STD_LOGIC;
  signal neo430_alu_inst_n_13 : STD_LOGIC;
  signal neo430_alu_inst_n_14 : STD_LOGIC;
  signal neo430_alu_inst_n_15 : STD_LOGIC;
  signal neo430_alu_inst_n_16 : STD_LOGIC;
  signal neo430_alu_inst_n_17 : STD_LOGIC;
  signal neo430_alu_inst_n_18 : STD_LOGIC;
  signal neo430_alu_inst_n_19 : STD_LOGIC;
  signal neo430_alu_inst_n_2 : STD_LOGIC;
  signal neo430_alu_inst_n_21 : STD_LOGIC;
  signal neo430_alu_inst_n_22 : STD_LOGIC;
  signal neo430_alu_inst_n_23 : STD_LOGIC;
  signal neo430_alu_inst_n_25 : STD_LOGIC;
  signal neo430_alu_inst_n_26 : STD_LOGIC;
  signal neo430_alu_inst_n_27 : STD_LOGIC;
  signal neo430_alu_inst_n_28 : STD_LOGIC;
  signal neo430_alu_inst_n_29 : STD_LOGIC;
  signal neo430_alu_inst_n_3 : STD_LOGIC;
  signal neo430_alu_inst_n_30 : STD_LOGIC;
  signal neo430_alu_inst_n_31 : STD_LOGIC;
  signal neo430_alu_inst_n_32 : STD_LOGIC;
  signal neo430_alu_inst_n_33 : STD_LOGIC;
  signal neo430_alu_inst_n_35 : STD_LOGIC;
  signal neo430_alu_inst_n_36 : STD_LOGIC;
  signal neo430_alu_inst_n_37 : STD_LOGIC;
  signal neo430_alu_inst_n_38 : STD_LOGIC;
  signal neo430_alu_inst_n_39 : STD_LOGIC;
  signal neo430_alu_inst_n_40 : STD_LOGIC;
  signal neo430_alu_inst_n_41 : STD_LOGIC;
  signal neo430_alu_inst_n_42 : STD_LOGIC;
  signal neo430_alu_inst_n_43 : STD_LOGIC;
  signal neo430_alu_inst_n_44 : STD_LOGIC;
  signal neo430_alu_inst_n_45 : STD_LOGIC;
  signal neo430_alu_inst_n_46 : STD_LOGIC;
  signal neo430_alu_inst_n_47 : STD_LOGIC;
  signal neo430_alu_inst_n_48 : STD_LOGIC;
  signal neo430_alu_inst_n_49 : STD_LOGIC;
  signal neo430_alu_inst_n_50 : STD_LOGIC;
  signal neo430_alu_inst_n_51 : STD_LOGIC;
  signal neo430_alu_inst_n_52 : STD_LOGIC;
  signal neo430_alu_inst_n_53 : STD_LOGIC;
  signal neo430_alu_inst_n_54 : STD_LOGIC;
  signal neo430_alu_inst_n_55 : STD_LOGIC;
  signal neo430_alu_inst_n_56 : STD_LOGIC;
  signal neo430_alu_inst_n_57 : STD_LOGIC;
  signal neo430_alu_inst_n_58 : STD_LOGIC;
  signal neo430_alu_inst_n_59 : STD_LOGIC;
  signal neo430_alu_inst_n_60 : STD_LOGIC;
  signal neo430_alu_inst_n_61 : STD_LOGIC;
  signal neo430_control_inst_n_10 : STD_LOGIC;
  signal neo430_control_inst_n_11 : STD_LOGIC;
  signal neo430_control_inst_n_12 : STD_LOGIC;
  signal neo430_control_inst_n_13 : STD_LOGIC;
  signal neo430_control_inst_n_14 : STD_LOGIC;
  signal neo430_control_inst_n_15 : STD_LOGIC;
  signal neo430_control_inst_n_16 : STD_LOGIC;
  signal neo430_control_inst_n_17 : STD_LOGIC;
  signal neo430_control_inst_n_177 : STD_LOGIC;
  signal neo430_control_inst_n_18 : STD_LOGIC;
  signal neo430_control_inst_n_217 : STD_LOGIC;
  signal neo430_control_inst_n_38 : STD_LOGIC;
  signal neo430_control_inst_n_39 : STD_LOGIC;
  signal neo430_control_inst_n_40 : STD_LOGIC;
  signal neo430_control_inst_n_41 : STD_LOGIC;
  signal neo430_control_inst_n_42 : STD_LOGIC;
  signal neo430_control_inst_n_43 : STD_LOGIC;
  signal neo430_control_inst_n_44 : STD_LOGIC;
  signal neo430_control_inst_n_45 : STD_LOGIC;
  signal neo430_control_inst_n_46 : STD_LOGIC;
  signal neo430_control_inst_n_47 : STD_LOGIC;
  signal neo430_control_inst_n_48 : STD_LOGIC;
  signal neo430_control_inst_n_49 : STD_LOGIC;
  signal neo430_control_inst_n_50 : STD_LOGIC;
  signal neo430_control_inst_n_51 : STD_LOGIC;
  signal neo430_control_inst_n_52 : STD_LOGIC;
  signal neo430_control_inst_n_53 : STD_LOGIC;
  signal neo430_control_inst_n_54 : STD_LOGIC;
  signal neo430_control_inst_n_55 : STD_LOGIC;
  signal neo430_control_inst_n_56 : STD_LOGIC;
  signal neo430_control_inst_n_58 : STD_LOGIC;
  signal neo430_control_inst_n_59 : STD_LOGIC;
  signal neo430_control_inst_n_60 : STD_LOGIC;
  signal neo430_control_inst_n_61 : STD_LOGIC;
  signal neo430_control_inst_n_62 : STD_LOGIC;
  signal neo430_control_inst_n_63 : STD_LOGIC;
  signal neo430_control_inst_n_64 : STD_LOGIC;
  signal neo430_control_inst_n_65 : STD_LOGIC;
  signal neo430_control_inst_n_66 : STD_LOGIC;
  signal neo430_control_inst_n_67 : STD_LOGIC;
  signal neo430_control_inst_n_68 : STD_LOGIC;
  signal neo430_control_inst_n_69 : STD_LOGIC;
  signal neo430_control_inst_n_70 : STD_LOGIC;
  signal neo430_control_inst_n_71 : STD_LOGIC;
  signal neo430_control_inst_n_72 : STD_LOGIC;
  signal neo430_reg_file_inst_n_26 : STD_LOGIC;
  signal neo430_reg_file_inst_n_3 : STD_LOGIC;
  signal neo430_reg_file_inst_n_4 : STD_LOGIC;
  signal op_a_v1 : STD_LOGIC;
  signal op_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in10_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal reg_i : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \^rst_gen_reg[3]\ : STD_LOGIC;
  signal sreg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \sreg__0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
begin
  cnt_reg_10_sp_1 <= cnt_reg_10_sn_1;
  cnt_reg_11_sp_1 <= cnt_reg_11_sn_1;
  cnt_reg_12_sp_1 <= cnt_reg_12_sn_1;
  cnt_reg_13_sp_1 <= cnt_reg_13_sn_1;
  cnt_reg_14_sp_1 <= cnt_reg_14_sn_1;
  cnt_reg_15_sp_1 <= cnt_reg_15_sn_1;
  cnt_reg_7_sp_1 <= cnt_reg_7_sn_1;
  cnt_reg_8_sp_1 <= cnt_reg_8_sn_1;
  cnt_reg_9_sp_1 <= cnt_reg_9_sn_1;
  \cpu_bus[wr_en]\(1 downto 0) <= \^cpu_bus[wr_en]\(1 downto 0);
  dio_swap <= \^dio_swap\;
  \rst_gen_reg[3]\ <= \^rst_gen_reg[3]\;
bw_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => ctrl_bus(19),
      Q => bw_ff,
      R => '0'
    );
dio_swap_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => dio_swap0,
      Q => \^dio_swap\,
      R => '0'
    );
neo430_addr_gen_inst: entity work.SystemTop_neo430_addr_gen
     port map (
      DI(1) => neo430_control_inst_n_55,
      DI(0) => neo430_control_inst_n_56,
      Q(15 downto 0) => mem_addr_reg(15 downto 0),
      S(3) => neo430_control_inst_n_11,
      S(2) => neo430_control_inst_n_12,
      S(1) => neo430_control_inst_n_13,
      S(0) => neo430_control_inst_n_14,
      addr_add(15 downto 0) => addr_add(15 downto 0),
      clk_i => clk_i,
      \mem_addr_reg_reg[0]_0\(0) => neo430_control_inst_n_58,
      \mem_addr_reg_reg[11]_0\(3) => neo430_control_inst_n_51,
      \mem_addr_reg_reg[11]_0\(2) => neo430_control_inst_n_52,
      \mem_addr_reg_reg[11]_0\(1) => neo430_control_inst_n_53,
      \mem_addr_reg_reg[11]_0\(0) => neo430_control_inst_n_54,
      \mem_addr_reg_reg[15]_0\(1) => neo430_control_inst_n_71,
      \mem_addr_reg_reg[15]_0\(0) => neo430_control_inst_n_72,
      \mem_addr_reg_reg[15]_1\(3) => neo430_control_inst_n_67,
      \mem_addr_reg_reg[15]_1\(2) => neo430_control_inst_n_68,
      \mem_addr_reg_reg[15]_1\(1) => neo430_control_inst_n_69,
      \mem_addr_reg_reg[15]_1\(0) => neo430_control_inst_n_70,
      \mem_addr_reg_reg[3]_0\(3) => neo430_control_inst_n_15,
      \mem_addr_reg_reg[3]_0\(2) => neo430_control_inst_n_16,
      \mem_addr_reg_reg[3]_0\(1) => neo430_control_inst_n_17,
      \mem_addr_reg_reg[3]_0\(0) => neo430_control_inst_n_18,
      \mem_addr_reg_reg[7]_0\(3) => neo430_control_inst_n_42,
      \mem_addr_reg_reg[7]_0\(2) => neo430_control_inst_n_43,
      \mem_addr_reg_reg[7]_0\(1) => neo430_control_inst_n_44,
      \mem_addr_reg_reg[7]_0\(0) => neo430_control_inst_n_45,
      reg_file_reg_0_15_12_12_i_1(3) => neo430_control_inst_n_63,
      reg_file_reg_0_15_12_12_i_1(2) => neo430_control_inst_n_64,
      reg_file_reg_0_15_12_12_i_1(1) => neo430_control_inst_n_65,
      reg_file_reg_0_15_12_12_i_1(0) => neo430_control_inst_n_66,
      reg_file_reg_0_15_4_4_i_1(3) => neo430_control_inst_n_38,
      reg_file_reg_0_15_4_4_i_1(2) => neo430_control_inst_n_39,
      reg_file_reg_0_15_4_4_i_1(1) => neo430_control_inst_n_40,
      reg_file_reg_0_15_4_4_i_1(0) => neo430_control_inst_n_41,
      reg_file_reg_0_15_8_8_i_1(3) => neo430_control_inst_n_47,
      reg_file_reg_0_15_8_8_i_1(2) => neo430_control_inst_n_48,
      reg_file_reg_0_15_8_8_i_1(1) => neo430_control_inst_n_49,
      reg_file_reg_0_15_8_8_i_1(0) => neo430_control_inst_n_50,
      reg_i(14 downto 0) => reg_i(14 downto 0)
    );
neo430_alu_inst: entity work.SystemTop_neo430_alu
     port map (
      CO(0) => neo430_control_inst_n_177,
      D(15 downto 0) => op_data(15 downto 0),
      O(3) => neo430_alu_inst_n_0,
      O(2) => neo430_alu_inst_n_1,
      O(1) => neo430_alu_inst_n_2,
      O(0) => neo430_alu_inst_n_3,
      Q(15 downto 8) => p_0_in(7 downto 0),
      Q(7) => p_0_in0_in,
      Q(6) => neo430_alu_inst_n_13,
      Q(5) => neo430_alu_inst_n_14,
      Q(4) => neo430_alu_inst_n_15,
      Q(3) => neo430_alu_inst_n_16,
      Q(2) => neo430_alu_inst_n_17,
      Q(1) => neo430_alu_inst_n_18,
      Q(0) => neo430_alu_inst_n_19,
      S(0) => neo430_control_inst_n_10,
      clk_i => clk_i,
      ctrl_bus(0) => ctrl_bus(19),
      \ctrl_reg[18]\(3) => neo430_alu_inst_n_55,
      \ctrl_reg[18]\(2) => neo430_alu_inst_n_56,
      \ctrl_reg[18]\(1) => neo430_alu_inst_n_57,
      \ctrl_reg[18]\(0) => neo430_alu_inst_n_58,
      \ctrl_reg[18]_0\(2) => neo430_alu_inst_n_59,
      \ctrl_reg[18]_0\(1) => neo430_alu_inst_n_60,
      \ctrl_reg[18]_0\(0) => neo430_alu_inst_n_61,
      \op_a_ff_reg[0]_0\ => neo430_alu_inst_n_53,
      \op_a_ff_reg[11]_0\ => neo430_alu_inst_n_47,
      \op_a_ff_reg[13]_0\ => neo430_alu_inst_n_49,
      \op_a_ff_reg[15]_0\(15) => neo430_alu_inst_n_26,
      \op_a_ff_reg[15]_0\(14) => neo430_alu_inst_n_27,
      \op_a_ff_reg[15]_0\(13) => neo430_alu_inst_n_28,
      \op_a_ff_reg[15]_0\(12) => neo430_alu_inst_n_29,
      \op_a_ff_reg[15]_0\(11) => neo430_alu_inst_n_30,
      \op_a_ff_reg[15]_0\(10) => neo430_alu_inst_n_31,
      \op_a_ff_reg[15]_0\(9) => neo430_alu_inst_n_32,
      \op_a_ff_reg[15]_0\(8) => neo430_alu_inst_n_33,
      \op_a_ff_reg[15]_0\(7) => p_1_in1_in,
      \op_a_ff_reg[15]_0\(6) => neo430_alu_inst_n_35,
      \op_a_ff_reg[15]_0\(5) => neo430_alu_inst_n_36,
      \op_a_ff_reg[15]_0\(4) => neo430_alu_inst_n_37,
      \op_a_ff_reg[15]_0\(3) => neo430_alu_inst_n_38,
      \op_a_ff_reg[15]_0\(2) => neo430_alu_inst_n_39,
      \op_a_ff_reg[15]_0\(1) => neo430_alu_inst_n_40,
      \op_a_ff_reg[15]_0\(0) => neo430_alu_inst_n_41,
      \op_a_ff_reg[1]_0\ => neo430_alu_inst_n_52,
      \op_a_ff_reg[1]_1\ => neo430_alu_inst_n_54,
      \op_a_ff_reg[2]_0\ => neo430_alu_inst_n_46,
      \op_a_ff_reg[4]_0\ => neo430_alu_inst_n_48,
      \op_a_ff_reg[6]_0\ => neo430_alu_inst_n_50,
      \op_a_ff_reg[7]_0\ => neo430_alu_inst_n_25,
      \op_a_ff_reg[7]_1\ => neo430_alu_inst_n_43,
      \op_a_ff_reg[7]_2\ => neo430_alu_inst_n_44,
      \op_a_ff_reg[7]_3\ => neo430_alu_inst_n_51,
      \op_a_ff_reg[9]_0\ => neo430_alu_inst_n_45,
      op_a_v1 => op_a_v1,
      \op_b_ff_reg[11]_0\ => neo430_alu_inst_n_42,
      \op_b_ff_reg[15]_0\(3) => p_0_in3_in,
      \op_b_ff_reg[15]_0\(2) => neo430_alu_inst_n_21,
      \op_b_ff_reg[15]_0\(1) => neo430_alu_inst_n_22,
      \op_b_ff_reg[15]_0\(0) => neo430_alu_inst_n_23,
      \op_b_ff_reg[15]_1\(0) => p_3_in,
      reg_file_reg_0_15_0_0_i_3(0) => sreg(0),
      reg_file_reg_0_15_12_12_i_5_0(5 downto 2) => ctrl_bus(18 downto 15),
      reg_file_reg_0_15_12_12_i_5_0(1) => neo430_control_inst_n_60,
      reg_file_reg_0_15_12_12_i_5_0(0) => neo430_control_inst_n_61,
      \sreg[8]_i_4\(0) => p_0_in10_in
    );
neo430_control_inst: entity work.SystemTop_neo430_control
     port map (
      CO(0) => neo430_control_inst_n_177,
      D(10 downto 0) => D(10 downto 0),
      DI(1) => neo430_control_inst_n_55,
      DI(0) => neo430_control_inst_n_56,
      E(0) => E(0),
      \FSM_sequential_state_reg[0]_0\ => \FSM_sequential_state_reg[0]\,
      \FSM_sequential_state_reg[0]_1\ => neo430_reg_file_inst_n_26,
      \FSM_sequential_state_reg[1]_0\ => \FSM_sequential_state_reg[1]\,
      \FSM_sequential_state_reg[3]_0\(1 downto 0) => \FSM_sequential_state_reg[3]\(1 downto 0),
      \FSM_sequential_state_reg[3]_1\ => \FSM_sequential_state_reg[3]_0\,
      \FSM_sequential_state_reg[3]_2\ => \FSM_sequential_state_reg[3]_1\,
      \FSM_sequential_state_reg[3]_3\ => \FSM_sequential_state_reg[3]_2\,
      \FSM_sequential_state_reg[4]_0\ => \FSM_sequential_state_reg[4]\,
      \FSM_sequential_state_reg[4]_1\ => \^rst_gen_reg[3]\,
      O(3) => neo430_alu_inst_n_0,
      O(2) => neo430_alu_inst_n_1,
      O(1) => neo430_alu_inst_n_2,
      O(0) => neo430_alu_inst_n_3,
      Q(15 downto 8) => p_0_in(7 downto 0),
      Q(7) => p_0_in0_in,
      Q(6) => neo430_alu_inst_n_13,
      Q(5) => neo430_alu_inst_n_14,
      Q(4) => neo430_alu_inst_n_15,
      Q(3) => neo430_alu_inst_n_16,
      Q(2) => neo430_alu_inst_n_17,
      Q(1) => neo430_alu_inst_n_18,
      Q(0) => neo430_alu_inst_n_19,
      S(0) => neo430_control_inst_n_10,
      SR(0) => SR(0),
      acc_en => acc_en,
      acc_en_0 => acc_en_0,
      addr_add(15 downto 0) => addr_add(15 downto 0),
      \am_reg[0]_0\(0) => \am_reg[0]\(0),
      \am_reg[3]_0\(3) => \am_reg[3]\,
      \am_reg[3]_0\(2 downto 0) => \am_reg[2]\(2 downto 0),
      bw_ff => bw_ff,
      clk_i => clk_i,
      cnt_reg(15 downto 0) => cnt_reg(15 downto 0),
      cnt_reg_10_sp_1 => cnt_reg_10_sn_1,
      cnt_reg_11_sp_1 => cnt_reg_11_sn_1,
      cnt_reg_12_sp_1 => cnt_reg_12_sn_1,
      cnt_reg_13_sp_1 => cnt_reg_13_sn_1,
      cnt_reg_14_sp_1 => cnt_reg_14_sn_1,
      cnt_reg_15_sp_1 => cnt_reg_15_sn_1,
      cnt_reg_7_sp_1 => cnt_reg_7_sn_1,
      cnt_reg_8_sp_1 => cnt_reg_8_sn_1,
      cnt_reg_9_sp_1 => cnt_reg_9_sn_1,
      \cpu_bus[addr]\(11 downto 2) => \cpu_bus[addr]\(13 downto 4),
      \cpu_bus[addr]\(1 downto 0) => \cpu_bus[addr]\(1 downto 0),
      \cpu_bus[wr_en]\(1 downto 0) => \^cpu_bus[wr_en]\(1 downto 0),
      \ctrl_reg[0]_0\ => \ctrl_reg[0]\,
      \ctrl_reg[12]_0\ => \ctrl_reg[12]\,
      \ctrl_reg[12]_1\(0) => \ctrl_reg[12]_0\(0),
      \ctrl_reg[15]_0\ => \ctrl_reg[15]\,
      \ctrl_reg[16]_0\ => \ctrl_reg[16]\,
      \ctrl_reg[17]_0\ => \ctrl_reg[17]\,
      \ctrl_reg[17]_1\ => \ctrl_reg[17]_0\,
      \ctrl_reg[17]_2\ => \ctrl_reg[17]_1\,
      \ctrl_reg[19]_0\(9 downto 5) => ctrl_bus(19 downto 15),
      \ctrl_reg[19]_0\(4) => ctrl_bus(8),
      \ctrl_reg[19]_0\(3 downto 0) => ctrl_bus(4 downto 1),
      \ctrl_reg[1]_0\(3) => neo430_control_inst_n_47,
      \ctrl_reg[1]_0\(2) => neo430_control_inst_n_48,
      \ctrl_reg[1]_0\(1) => neo430_control_inst_n_49,
      \ctrl_reg[1]_0\(0) => neo430_control_inst_n_50,
      \ctrl_reg[1]_1\(3) => neo430_control_inst_n_51,
      \ctrl_reg[1]_1\(2) => neo430_control_inst_n_52,
      \ctrl_reg[1]_1\(1) => neo430_control_inst_n_53,
      \ctrl_reg[1]_1\(0) => neo430_control_inst_n_54,
      \ctrl_reg[1]_2\ => \ctrl_reg[1]\,
      \ctrl_reg[1]_3\(4) => \sreg__0\(14),
      \ctrl_reg[1]_3\(3) => \sreg__0\(8),
      \ctrl_reg[1]_3\(2 downto 0) => \sreg__0\(2 downto 0),
      \ctrl_reg[21]_0\(3) => neo430_control_inst_n_11,
      \ctrl_reg[21]_0\(2) => neo430_control_inst_n_12,
      \ctrl_reg[21]_0\(1) => neo430_control_inst_n_13,
      \ctrl_reg[21]_0\(0) => neo430_control_inst_n_14,
      \ctrl_reg[21]_1\(3) => neo430_control_inst_n_38,
      \ctrl_reg[21]_1\(2) => neo430_control_inst_n_39,
      \ctrl_reg[21]_1\(1) => neo430_control_inst_n_40,
      \ctrl_reg[21]_1\(0) => neo430_control_inst_n_41,
      \ctrl_reg[22]_0\(3) => neo430_control_inst_n_63,
      \ctrl_reg[22]_0\(2) => neo430_control_inst_n_64,
      \ctrl_reg[22]_0\(1) => neo430_control_inst_n_65,
      \ctrl_reg[22]_0\(0) => neo430_control_inst_n_66,
      \ctrl_reg[22]_1\(1) => neo430_control_inst_n_71,
      \ctrl_reg[22]_1\(0) => neo430_control_inst_n_72,
      \ctrl_reg[23]_0\(3) => neo430_control_inst_n_15,
      \ctrl_reg[23]_0\(2) => neo430_control_inst_n_16,
      \ctrl_reg[23]_0\(1) => neo430_control_inst_n_17,
      \ctrl_reg[23]_0\(0) => neo430_control_inst_n_18,
      \ctrl_reg[23]_1\(3) => neo430_control_inst_n_42,
      \ctrl_reg[23]_1\(2) => neo430_control_inst_n_43,
      \ctrl_reg[23]_1\(1) => neo430_control_inst_n_44,
      \ctrl_reg[23]_1\(0) => neo430_control_inst_n_45,
      \ctrl_reg[23]_2\(3) => neo430_control_inst_n_67,
      \ctrl_reg[23]_2\(2) => neo430_control_inst_n_68,
      \ctrl_reg[23]_2\(1) => neo430_control_inst_n_69,
      \ctrl_reg[23]_2\(0) => neo430_control_inst_n_70,
      \ctrl_reg[25]_0\ => \cpu_bus[addr]\(2),
      \ctrl_reg[25]_1\ => \ctrl_reg[25]\,
      \ctrl_reg[25]_2\ => \cpu_bus[addr]\(3),
      \ctrl_reg[25]_3\ => \ctrl_reg[25]_0\,
      \ctrl_reg[25]_4\(0) => \ctrl_reg[25]_1\(0),
      \ctrl_reg[26]_0\(4) => neo430_control_inst_n_58,
      \ctrl_reg[26]_0\(3) => neo430_control_inst_n_59,
      \ctrl_reg[26]_0\(2) => neo430_control_inst_n_60,
      \ctrl_reg[26]_0\(1) => neo430_control_inst_n_61,
      \ctrl_reg[26]_0\(0) => neo430_control_inst_n_62,
      \ctrl_reg[27]_0\(0) => \ctrl_reg[27]\(0),
      \ctrl_reg[27]_1\(0) => \ctrl_reg[27]_0\(0),
      \ctrl_reg[27]_2\(0) => \ctrl_reg[27]_1\(0),
      \ctrl_reg[28]_0\ => \ctrl_reg[28]\,
      \ctrl_reg[28]_1\ => \ctrl_reg[28]_0\,
      \ctrl_reg[28]_2\ => \ctrl_reg[28]_1\,
      \ctrl_reg[28]_3\ => \ctrl_reg[28]_2\,
      \ctrl_reg[28]_4\(0) => \ctrl_reg[28]_3\(0),
      \ctrl_reg[2]_0\ => \ctrl_reg[2]\,
      \ctrl_reg[3]_0\ => neo430_control_inst_n_46,
      \ctrl_reg[3]_1\ => \ctrl_reg[3]\,
      \ctrl_reg[4]_0\ => \ctrl_reg[4]\,
      \ctrl_reg[5]_0\ => \ctrl_reg[5]\,
      \ctrl_reg[6]_0\ => \ctrl_reg[6]\,
      \ctrl_reg[7]_0\(0) => neo430_control_inst_n_217,
      \ctrl_reg[7]_1\ => neo430_alu_inst_n_51,
      \ctrl_reg[7]_2\ => neo430_alu_inst_n_25,
      \ctrl_reg[8]_0\ => \ctrl_reg[8]\,
      \ctrl_reg[8]_1\ => neo430_reg_file_inst_n_3,
      \ctrl_reg[9]_0\ => \ctrl_reg[9]\,
      data_o0(15 downto 0) => data_o0(15 downto 0),
      \data_o_reg[15]\(15 downto 0) => \data_o_reg[15]\(15 downto 0),
      \data_o_reg[15]_0\(15 downto 0) => \data_o_reg[15]_0\(15 downto 0),
      \data_o_reg[15]_1\(7 downto 0) => \data_o_reg[15]_1\(7 downto 0),
      \data_o_reg[6]\(6 downto 0) => \data_o_reg[6]\(6 downto 0),
      \data_o_reg[7]\(7 downto 0) => \data_o_reg[7]\(7 downto 0),
      \din_reg[15]\(15 downto 0) => \din_reg[15]\(15 downto 0),
      dio_swap0 => dio_swap0,
      dio_swap_reg(6 downto 0) => dio_swap_reg_0(6 downto 0),
      dio_swap_reg_0(15 downto 0) => op_data(15 downto 0),
      dio_swap_reg_1(15 downto 0) => dio_swap_reg_1(15 downto 0),
      \i__carry__1_i_5_0\ => \i__carry__1_i_5\,
      \i__carry__1_i_5_1\ => \i__carry__1_i_5_0\,
      imem_file_ram_l_reg_3(15 downto 0) => mem_addr_reg(15 downto 0),
      imem_up_en => imem_up_en,
      in_data(15 downto 0) => in_data(15 downto 0),
      \irq_buf_reg[1]_0\(0) => \irq_buf_reg[1]\(0),
      \irq_buf_reg[1]_1\(1) => neo430_reg_file_inst_n_4,
      \irq_buf_reg[1]_1\(0) => data1,
      \irq_buf_reg[1]_2\ => \irq_buf_reg[1]_0\,
      irq_fire_ff => irq_fire_ff,
      irq_o => irq_o,
      mem_addr_reg0_carry => mem_addr_reg0_carry,
      \mem_addr_reg0_carry__2\ => \mem_addr_reg0_carry__2\,
      \mem_addr_reg_reg[11]\ => \mem_addr_reg_reg[11]\,
      \mem_addr_reg_reg[11]_0\ => \mem_addr_reg_reg[11]_0\,
      \mem_addr_reg_reg[11]_1\ => \mem_addr_reg_reg[11]_1\,
      \mem_addr_reg_reg[15]\ => \mem_addr_reg_reg[15]\,
      \mem_addr_reg_reg[1]\ => \mem_addr_reg_reg[1]\,
      \mem_addr_reg_reg[1]_0\(0) => \mem_addr_reg_reg[1]_0\(0),
      \mem_addr_reg_reg[1]_1\(0) => \mem_addr_reg_reg[1]_1\(0),
      \mem_addr_reg_reg[2]\(0) => \mem_addr_reg_reg[2]\(0),
      \mem_addr_reg_reg[2]_0\(0) => \mem_addr_reg_reg[2]_0\(0),
      \mem_addr_reg_reg[2]_1\(0) => \mem_addr_reg_reg[2]_1\(0),
      \mem_addr_reg_reg[2]_2\ => \mem_addr_reg_reg[2]_2\,
      \mem_addr_reg_reg[2]_3\(0) => \mem_addr_reg_reg[2]_3\(0),
      \mem_addr_reg_reg[7]\ => \mem_addr_reg_reg[7]\,
      mem_data_i(15 downto 0) => mem_data_i(15 downto 0),
      op_a_v1 => op_a_v1,
      \op_b_ff_reg[0]\ => \op_b_ff_reg[0]\,
      \op_b_ff_reg[0]_0\ => \op_b_ff_reg[0]_0\,
      \op_b_ff_reg[10]\ => \op_b_ff_reg[10]\,
      \op_b_ff_reg[11]\ => \op_b_ff_reg[11]\,
      \op_b_ff_reg[12]\ => \op_b_ff_reg[12]\,
      \op_b_ff_reg[13]\ => \op_b_ff_reg[13]\,
      \op_b_ff_reg[14]\ => \op_b_ff_reg[14]\,
      \op_b_ff_reg[15]\ => \op_b_ff_reg[15]\,
      \op_b_ff_reg[1]\ => \op_b_ff_reg[1]\,
      \op_b_ff_reg[2]\ => \op_b_ff_reg[2]\,
      \op_b_ff_reg[3]\ => \op_b_ff_reg[3]\,
      \op_b_ff_reg[4]\ => \op_b_ff_reg[4]\,
      \op_b_ff_reg[4]_0\ => \op_b_ff_reg[4]_0\,
      \op_b_ff_reg[5]\ => \op_b_ff_reg[5]\,
      \op_b_ff_reg[6]\ => \op_b_ff_reg[6]\,
      \op_b_ff_reg[7]\(0) => p_0_in10_in,
      \op_b_ff_reg[7]_0\ => \op_b_ff_reg[7]\,
      \op_b_ff_reg[8]\ => \op_b_ff_reg[8]\,
      \op_b_ff_reg[9]\ => \op_b_ff_reg[9]\,
      p_1_in(15 downto 0) => p_1_in(15 downto 0),
      p_2_in3_in => p_2_in3_in,
      \pwm_ch_reg[1][7]\(15 downto 0) => \pwm_ch_reg[1][7]\(15 downto 0),
      reg_file_reg_0_15_0_0_i_2_0(3) => neo430_alu_inst_n_55,
      reg_file_reg_0_15_0_0_i_2_0(2) => neo430_alu_inst_n_56,
      reg_file_reg_0_15_0_0_i_2_0(1) => neo430_alu_inst_n_57,
      reg_file_reg_0_15_0_0_i_2_0(0) => neo430_alu_inst_n_58,
      reg_file_reg_0_15_0_0_i_2_1 => neo430_alu_inst_n_54,
      reg_file_reg_0_15_15_15_i_2_0(3) => p_0_in3_in,
      reg_file_reg_0_15_15_15_i_2_0(2) => neo430_alu_inst_n_21,
      reg_file_reg_0_15_15_15_i_2_0(1) => neo430_alu_inst_n_22,
      reg_file_reg_0_15_15_15_i_2_0(0) => neo430_alu_inst_n_23,
      reg_file_reg_0_15_1_1_i_2_0 => neo430_alu_inst_n_45,
      reg_file_reg_0_15_2_2_i_2_0 => neo430_alu_inst_n_46,
      reg_file_reg_0_15_3_3_i_2_0 => neo430_alu_inst_n_47,
      reg_file_reg_0_15_4_4_i_2_0 => neo430_alu_inst_n_48,
      reg_file_reg_0_15_4_4_i_5_0(2) => neo430_alu_inst_n_59,
      reg_file_reg_0_15_4_4_i_5_0(1) => neo430_alu_inst_n_60,
      reg_file_reg_0_15_4_4_i_5_0(0) => neo430_alu_inst_n_61,
      reg_file_reg_0_15_5_5_i_2_0 => neo430_alu_inst_n_49,
      reg_file_reg_0_15_6_6_i_2_0 => neo430_alu_inst_n_50,
      reg_file_reg_0_15_7_7_i_11_0(15) => neo430_alu_inst_n_26,
      reg_file_reg_0_15_7_7_i_11_0(14) => neo430_alu_inst_n_27,
      reg_file_reg_0_15_7_7_i_11_0(13) => neo430_alu_inst_n_28,
      reg_file_reg_0_15_7_7_i_11_0(12) => neo430_alu_inst_n_29,
      reg_file_reg_0_15_7_7_i_11_0(11) => neo430_alu_inst_n_30,
      reg_file_reg_0_15_7_7_i_11_0(10) => neo430_alu_inst_n_31,
      reg_file_reg_0_15_7_7_i_11_0(9) => neo430_alu_inst_n_32,
      reg_file_reg_0_15_7_7_i_11_0(8) => neo430_alu_inst_n_33,
      reg_file_reg_0_15_7_7_i_11_0(7) => p_1_in1_in,
      reg_file_reg_0_15_7_7_i_11_0(6) => neo430_alu_inst_n_35,
      reg_file_reg_0_15_7_7_i_11_0(5) => neo430_alu_inst_n_36,
      reg_file_reg_0_15_7_7_i_11_0(4) => neo430_alu_inst_n_37,
      reg_file_reg_0_15_7_7_i_11_0(3) => neo430_alu_inst_n_38,
      reg_file_reg_0_15_7_7_i_11_0(2) => neo430_alu_inst_n_39,
      reg_file_reg_0_15_7_7_i_11_0(1) => neo430_alu_inst_n_40,
      reg_file_reg_0_15_7_7_i_11_0(0) => neo430_alu_inst_n_41,
      reg_i(14 downto 0) => reg_i(14 downto 0),
      \sam_reg[1]_0\ => \sam_reg[1]\,
      \src_reg[3]_0\(3 downto 0) => \src_reg[3]\(3 downto 0),
      sreg(3) => sreg(8),
      sreg(2 downto 1) => sreg(3 downto 2),
      sreg(0) => sreg(0),
      \sreg_reg[0]\(0) => p_3_in,
      \sreg_reg[8]\ => neo430_alu_inst_n_43,
      \sreg_reg[8]_0\ => neo430_alu_inst_n_44,
      uart_tx_busy0 => uart_tx_busy0,
      \uart_tx_sreg_reg[1]\ => \^dio_swap\,
      \uart_tx_sreg_reg[1]_0\ => \uart_tx_sreg_reg[1]\,
      \uart_tx_sreg_reg[1]_1\ => neo430_alu_inst_n_53,
      \uart_tx_sreg_reg[2]\ => neo430_alu_inst_n_52,
      \uart_tx_sreg_reg[4]\ => neo430_alu_inst_n_42,
      \uart_tx_sreg_reg[6]\(5 downto 0) => \uart_tx_sreg_reg[6]\(5 downto 0),
      \uart_tx_sreg_reg[7]\(2 downto 0) => Q(2 downto 0),
      \uart_tx_sreg_reg[7]_0\ => \uart_tx_sreg_reg[7]\,
      \uart_tx_sreg_reg[7]_1\ => \uart_tx_sreg_reg[7]_0\
    );
neo430_reg_file_inst: entity work.SystemTop_neo430_reg_file
     port map (
      D(4) => \sreg__0\(14),
      D(3) => \sreg__0\(8),
      D(2 downto 0) => \sreg__0\(2 downto 0),
      E(0) => neo430_control_inst_n_217,
      Q(4) => neo430_reg_file_inst_n_4,
      Q(3) => sreg(8),
      Q(2) => sreg(2),
      Q(1) => data1,
      Q(0) => sreg(0),
      WEA(0) => WEA(0),
      clk_i => clk_i,
      \cpu_bus[wr_en]\(1 downto 0) => \^cpu_bus[wr_en]\(1 downto 0),
      \ctrl_reg[8]\ => \op_b_ff_reg[4]\,
      data_o0(15 downto 0) => data_o0(15 downto 0),
      imem_up_en => imem_up_en,
      in_data(15 downto 0) => in_data(15 downto 0),
      mem_data_i(1 downto 0) => mem_data_i(11 downto 10),
      \rst_gen_reg[3]\ => \^rst_gen_reg[3]\,
      sreg(0) => sreg(3),
      \sreg_reg[0]_0\(0) => \sreg_reg[0]\(0),
      \sreg_reg[15]_0\(0) => \sreg_reg[15]\(0),
      \sreg_reg[3]_0\(1) => neo430_control_inst_n_59,
      \sreg_reg[3]_0\(0) => neo430_control_inst_n_62,
      \sreg_reg[4]_0\ => neo430_reg_file_inst_n_26,
      \sreg_reg[4]_1\(4) => ctrl_bus(8),
      \sreg_reg[4]_1\(3 downto 0) => ctrl_bus(4 downto 1),
      \sreg_reg[4]_2\ => neo430_control_inst_n_46,
      \sreg_reg[8]_0\ => neo430_reg_file_inst_n_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_seven_seg_driver is
  port (
    seg_module_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_segment_o : out STD_LOGIC_VECTOR ( 6 downto 0 );
    en_i : in STD_LOGIC;
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    bcd_vector_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_seven_seg_driver : entity is "seven_seg_driver";
end SystemTop_seven_seg_driver;

architecture STRUCTURE of SystemTop_seven_seg_driver is
  signal \BCD_TO_SEG_Inst/seg_o\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal CNT_MODULE_SELECT_Inst_n_0 : STD_LOGIC;
  signal \DIGIT_REGs_Inst[2].REG_Inst_n_0\ : STD_LOGIC;
  signal \DIGIT_REGs_Inst[2].REG_Inst_n_1\ : STD_LOGIC;
  signal \DIGIT_REGs_Inst[2].REG_Inst_n_2\ : STD_LOGIC;
  signal \DIGIT_REGs_Inst[2].REG_Inst_n_3\ : STD_LOGIC;
  signal \DIGIT_REGs_Inst[3].REG_Inst_n_0\ : STD_LOGIC;
  signal \DIGIT_REGs_Inst[3].REG_Inst_n_1\ : STD_LOGIC;
  signal \DIGIT_REGs_Inst[3].REG_Inst_n_2\ : STD_LOGIC;
  signal \DIGIT_REGs_Inst[3].REG_Inst_n_3\ : STD_LOGIC;
  signal \DIGIT_REGs_Inst[4].REG_Inst_n_0\ : STD_LOGIC;
  signal \DIGIT_REGs_Inst[4].REG_Inst_n_1\ : STD_LOGIC;
  signal \DIGIT_REGs_Inst[4].REG_Inst_n_2\ : STD_LOGIC;
  signal \DIGIT_REGs_Inst[4].REG_Inst_n_3\ : STD_LOGIC;
  signal register_sr : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
CNT_MODULE_SELECT_Inst: entity work.SystemTop_counter_up
     port map (
      D(6) => CNT_MODULE_SELECT_Inst_n_0,
      D(5 downto 0) => \BCD_TO_SEG_Inst/seg_o\(5 downto 0),
      Q(3) => \DIGIT_REGs_Inst[3].REG_Inst_n_0\,
      Q(2) => \DIGIT_REGs_Inst[3].REG_Inst_n_1\,
      Q(1) => \DIGIT_REGs_Inst[3].REG_Inst_n_2\,
      Q(0) => \DIGIT_REGs_Inst[3].REG_Inst_n_3\,
      clk_i => clk_i,
      en_i => en_i,
      \register_sr_reg[5]\(3) => \DIGIT_REGs_Inst[2].REG_Inst_n_0\,
      \register_sr_reg[5]\(2) => \DIGIT_REGs_Inst[2].REG_Inst_n_1\,
      \register_sr_reg[5]\(1) => \DIGIT_REGs_Inst[2].REG_Inst_n_2\,
      \register_sr_reg[5]\(0) => \DIGIT_REGs_Inst[2].REG_Inst_n_3\,
      \register_sr_reg[5]_0\(3 downto 0) => register_sr(3 downto 0),
      \register_sr_reg[5]_1\(3) => \DIGIT_REGs_Inst[4].REG_Inst_n_0\,
      \register_sr_reg[5]_1\(2) => \DIGIT_REGs_Inst[4].REG_Inst_n_1\,
      \register_sr_reg[5]_1\(1) => \DIGIT_REGs_Inst[4].REG_Inst_n_2\,
      \register_sr_reg[5]_1\(0) => \DIGIT_REGs_Inst[4].REG_Inst_n_3\,
      rst_i => rst_i
    );
\DIGIT_REGs_Inst[1].REG_Inst\: entity work.\SystemTop_reg_async_rst__parameterized0\
     port map (
      Q(3 downto 0) => register_sr(3 downto 0),
      bcd_vector_i(3 downto 0) => bcd_vector_i(3 downto 0),
      clk_i => clk_i,
      en_i => en_i,
      rst_i => rst_i
    );
\DIGIT_REGs_Inst[2].REG_Inst\: entity work.\SystemTop_reg_async_rst__parameterized0_0\
     port map (
      Q(3) => \DIGIT_REGs_Inst[2].REG_Inst_n_0\,
      Q(2) => \DIGIT_REGs_Inst[2].REG_Inst_n_1\,
      Q(1) => \DIGIT_REGs_Inst[2].REG_Inst_n_2\,
      Q(0) => \DIGIT_REGs_Inst[2].REG_Inst_n_3\,
      bcd_vector_i(3 downto 0) => bcd_vector_i(7 downto 4),
      clk_i => clk_i,
      en_i => en_i,
      rst_i => rst_i
    );
\DIGIT_REGs_Inst[3].REG_Inst\: entity work.\SystemTop_reg_async_rst__parameterized0_1\
     port map (
      Q(3) => \DIGIT_REGs_Inst[3].REG_Inst_n_0\,
      Q(2) => \DIGIT_REGs_Inst[3].REG_Inst_n_1\,
      Q(1) => \DIGIT_REGs_Inst[3].REG_Inst_n_2\,
      Q(0) => \DIGIT_REGs_Inst[3].REG_Inst_n_3\,
      bcd_vector_i(3 downto 0) => bcd_vector_i(11 downto 8),
      clk_i => clk_i,
      en_i => en_i,
      rst_i => rst_i
    );
\DIGIT_REGs_Inst[4].REG_Inst\: entity work.\SystemTop_reg_async_rst__parameterized0_2\
     port map (
      Q(3) => \DIGIT_REGs_Inst[4].REG_Inst_n_0\,
      Q(2) => \DIGIT_REGs_Inst[4].REG_Inst_n_1\,
      Q(1) => \DIGIT_REGs_Inst[4].REG_Inst_n_2\,
      Q(0) => \DIGIT_REGs_Inst[4].REG_Inst_n_3\,
      bcd_vector_i(3 downto 0) => bcd_vector_i(15 downto 12),
      clk_i => clk_i,
      en_i => en_i,
      rst_i => rst_i
    );
SEG_MODULE_DRV_Inst: entity work.SystemTop_reg_shift_async_rst
     port map (
      clk_i => clk_i,
      en_i => en_i,
      rst_i => rst_i,
      seg_module_o(3 downto 0) => seg_module_o(3 downto 0)
    );
SEG_SEGMENT_OUT_REG_Inst: entity work.SystemTop_reg_async_rst
     port map (
      D(6) => CNT_MODULE_SELECT_Inst_n_0,
      D(5 downto 0) => \BCD_TO_SEG_Inst/seg_o\(5 downto 0),
      clk_i => clk_i,
      en_i => en_i,
      rst_i => rst_i,
      seg_segment_o(6 downto 0) => seg_segment_o(6 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_top is
  port (
    uart_txd_o : out STD_LOGIC;
    freq_gen_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_i : in STD_LOGIC;
    uart_rxd_i : in STD_LOGIC;
    gpio_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SystemTop_neo430_top : entity is "neo430_top";
end SystemTop_neo430_top;

architecture STRUCTURE of SystemTop_neo430_top is
  signal acc_en : STD_LOGIC;
  signal acc_en_0 : STD_LOGIC;
  signal clk_div0 : STD_LOGIC;
  signal \clk_div[0]_i_3_n_0\ : STD_LOGIC;
  signal \clk_div_ff_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_div_ff_reg_n_0_[11]\ : STD_LOGIC;
  signal clk_div_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \clk_div_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[3]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[4]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[7]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[8]\ : STD_LOGIC;
  signal clkgen_en_o : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cpu_bus[addr]\ : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \cpu_bus[wdata]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cpu_bus[wr_en]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dio_swap : STD_LOGIC;
  signal freq_gen_cg_en : STD_LOGIC;
  signal freq_gen_rdata : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gpio_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal irq_fire_ff : STD_LOGIC;
  signal irq_o : STD_LOGIC;
  signal mem_data_i : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_13\ : STD_LOGIC;
  signal \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_14\ : STD_LOGIC;
  signal \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_15\ : STD_LOGIC;
  signal \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_16\ : STD_LOGIC;
  signal \neo430_control_inst/p_5_in\ : STD_LOGIC;
  signal \neo430_control_inst/src_nxt\ : STD_LOGIC;
  signal \neo430_control_inst/state\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal neo430_cpu_inst_n_1 : STD_LOGIC;
  signal neo430_cpu_inst_n_100 : STD_LOGIC;
  signal neo430_cpu_inst_n_101 : STD_LOGIC;
  signal neo430_cpu_inst_n_102 : STD_LOGIC;
  signal neo430_cpu_inst_n_103 : STD_LOGIC;
  signal neo430_cpu_inst_n_104 : STD_LOGIC;
  signal neo430_cpu_inst_n_12 : STD_LOGIC;
  signal neo430_cpu_inst_n_122 : STD_LOGIC;
  signal neo430_cpu_inst_n_123 : STD_LOGIC;
  signal neo430_cpu_inst_n_125 : STD_LOGIC;
  signal neo430_cpu_inst_n_126 : STD_LOGIC;
  signal neo430_cpu_inst_n_127 : STD_LOGIC;
  signal neo430_cpu_inst_n_128 : STD_LOGIC;
  signal neo430_cpu_inst_n_135 : STD_LOGIC;
  signal neo430_cpu_inst_n_15 : STD_LOGIC;
  signal neo430_cpu_inst_n_2 : STD_LOGIC;
  signal neo430_cpu_inst_n_3 : STD_LOGIC;
  signal neo430_cpu_inst_n_30 : STD_LOGIC;
  signal neo430_cpu_inst_n_31 : STD_LOGIC;
  signal neo430_cpu_inst_n_32 : STD_LOGIC;
  signal neo430_cpu_inst_n_35 : STD_LOGIC;
  signal neo430_cpu_inst_n_36 : STD_LOGIC;
  signal neo430_cpu_inst_n_37 : STD_LOGIC;
  signal neo430_cpu_inst_n_38 : STD_LOGIC;
  signal neo430_cpu_inst_n_39 : STD_LOGIC;
  signal neo430_cpu_inst_n_4 : STD_LOGIC;
  signal neo430_cpu_inst_n_40 : STD_LOGIC;
  signal neo430_cpu_inst_n_41 : STD_LOGIC;
  signal neo430_cpu_inst_n_42 : STD_LOGIC;
  signal neo430_cpu_inst_n_43 : STD_LOGIC;
  signal neo430_cpu_inst_n_44 : STD_LOGIC;
  signal neo430_cpu_inst_n_45 : STD_LOGIC;
  signal neo430_cpu_inst_n_46 : STD_LOGIC;
  signal neo430_cpu_inst_n_47 : STD_LOGIC;
  signal neo430_cpu_inst_n_48 : STD_LOGIC;
  signal neo430_cpu_inst_n_49 : STD_LOGIC;
  signal neo430_cpu_inst_n_50 : STD_LOGIC;
  signal neo430_cpu_inst_n_51 : STD_LOGIC;
  signal neo430_cpu_inst_n_52 : STD_LOGIC;
  signal neo430_cpu_inst_n_53 : STD_LOGIC;
  signal neo430_cpu_inst_n_54 : STD_LOGIC;
  signal neo430_cpu_inst_n_55 : STD_LOGIC;
  signal neo430_cpu_inst_n_56 : STD_LOGIC;
  signal neo430_cpu_inst_n_57 : STD_LOGIC;
  signal neo430_cpu_inst_n_58 : STD_LOGIC;
  signal neo430_cpu_inst_n_59 : STD_LOGIC;
  signal neo430_cpu_inst_n_60 : STD_LOGIC;
  signal neo430_cpu_inst_n_61 : STD_LOGIC;
  signal neo430_cpu_inst_n_62 : STD_LOGIC;
  signal neo430_cpu_inst_n_63 : STD_LOGIC;
  signal neo430_cpu_inst_n_64 : STD_LOGIC;
  signal neo430_cpu_inst_n_65 : STD_LOGIC;
  signal neo430_cpu_inst_n_66 : STD_LOGIC;
  signal neo430_cpu_inst_n_67 : STD_LOGIC;
  signal neo430_cpu_inst_n_68 : STD_LOGIC;
  signal neo430_cpu_inst_n_69 : STD_LOGIC;
  signal neo430_cpu_inst_n_7 : STD_LOGIC;
  signal neo430_cpu_inst_n_70 : STD_LOGIC;
  signal neo430_cpu_inst_n_71 : STD_LOGIC;
  signal neo430_cpu_inst_n_72 : STD_LOGIC;
  signal neo430_cpu_inst_n_73 : STD_LOGIC;
  signal neo430_cpu_inst_n_74 : STD_LOGIC;
  signal neo430_cpu_inst_n_75 : STD_LOGIC;
  signal neo430_cpu_inst_n_76 : STD_LOGIC;
  signal neo430_cpu_inst_n_77 : STD_LOGIC;
  signal neo430_cpu_inst_n_78 : STD_LOGIC;
  signal neo430_cpu_inst_n_79 : STD_LOGIC;
  signal neo430_cpu_inst_n_80 : STD_LOGIC;
  signal neo430_cpu_inst_n_81 : STD_LOGIC;
  signal neo430_cpu_inst_n_82 : STD_LOGIC;
  signal neo430_cpu_inst_n_83 : STD_LOGIC;
  signal neo430_cpu_inst_n_84 : STD_LOGIC;
  signal neo430_cpu_inst_n_85 : STD_LOGIC;
  signal neo430_cpu_inst_n_86 : STD_LOGIC;
  signal neo430_cpu_inst_n_87 : STD_LOGIC;
  signal neo430_cpu_inst_n_88 : STD_LOGIC;
  signal neo430_cpu_inst_n_89 : STD_LOGIC;
  signal neo430_cpu_inst_n_90 : STD_LOGIC;
  signal neo430_cpu_inst_n_91 : STD_LOGIC;
  signal neo430_cpu_inst_n_92 : STD_LOGIC;
  signal neo430_cpu_inst_n_93 : STD_LOGIC;
  signal neo430_cpu_inst_n_94 : STD_LOGIC;
  signal neo430_cpu_inst_n_95 : STD_LOGIC;
  signal neo430_cpu_inst_n_96 : STD_LOGIC;
  signal neo430_cpu_inst_n_97 : STD_LOGIC;
  signal neo430_cpu_inst_n_98 : STD_LOGIC;
  signal neo430_cpu_inst_n_99 : STD_LOGIC;
  signal neo430_dmem_inst_n_10 : STD_LOGIC;
  signal neo430_dmem_inst_n_11 : STD_LOGIC;
  signal neo430_dmem_inst_n_12 : STD_LOGIC;
  signal neo430_dmem_inst_n_13 : STD_LOGIC;
  signal neo430_dmem_inst_n_14 : STD_LOGIC;
  signal neo430_dmem_inst_n_15 : STD_LOGIC;
  signal neo430_dmem_inst_n_16 : STD_LOGIC;
  signal neo430_dmem_inst_n_17 : STD_LOGIC;
  signal neo430_dmem_inst_n_18 : STD_LOGIC;
  signal neo430_dmem_inst_n_6 : STD_LOGIC;
  signal neo430_dmem_inst_n_7 : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_1\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_19\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_2\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_36\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_37\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_38\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_39\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_40\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_41\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_42\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_43\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_44\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_45\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_46\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_47\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_48\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_49\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_50\ : STD_LOGIC;
  signal \neo430_gpio_inst_true.neo430_gpio_inst_n_51\ : STD_LOGIC;
  signal neo430_imem_inst_n_1 : STD_LOGIC;
  signal neo430_imem_inst_n_10 : STD_LOGIC;
  signal neo430_imem_inst_n_11 : STD_LOGIC;
  signal neo430_imem_inst_n_12 : STD_LOGIC;
  signal neo430_imem_inst_n_13 : STD_LOGIC;
  signal neo430_imem_inst_n_14 : STD_LOGIC;
  signal neo430_imem_inst_n_15 : STD_LOGIC;
  signal neo430_imem_inst_n_16 : STD_LOGIC;
  signal neo430_imem_inst_n_17 : STD_LOGIC;
  signal neo430_imem_inst_n_18 : STD_LOGIC;
  signal neo430_imem_inst_n_19 : STD_LOGIC;
  signal neo430_imem_inst_n_20 : STD_LOGIC;
  signal neo430_imem_inst_n_4 : STD_LOGIC;
  signal neo430_imem_inst_n_5 : STD_LOGIC;
  signal neo430_imem_inst_n_6 : STD_LOGIC;
  signal neo430_imem_inst_n_8 : STD_LOGIC;
  signal neo430_imem_inst_n_9 : STD_LOGIC;
  signal \neo430_pwm_inst_true.neo430_pwm_inst_n_26\ : STD_LOGIC;
  signal \neo430_pwm_inst_true.neo430_pwm_inst_n_27\ : STD_LOGIC;
  signal \neo430_pwm_inst_true.neo430_pwm_inst_n_28\ : STD_LOGIC;
  signal \neo430_pwm_inst_true.neo430_pwm_inst_n_29\ : STD_LOGIC;
  signal neo430_sysconfig_inst_n_0 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_1 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_10 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_11 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_12 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_13 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_14 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_15 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_16 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_17 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_18 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_19 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_2 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_20 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_21 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_22 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_23 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_24 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_25 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_26 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_27 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_28 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_29 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_3 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_30 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_31 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_32 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_4 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_5 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_6 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_7 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_8 : STD_LOGIC;
  signal neo430_sysconfig_inst_n_9 : STD_LOGIC;
  signal \neo430_timer_inst_true.neo430_timer_inst_n_23\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_15\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_19\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_20\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_21\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_22\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_23\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_24\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_25\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_26\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_27\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_28\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_29\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_30\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_31\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_32\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_33\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_34\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_35\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_36\ : STD_LOGIC;
  signal \neo430_uart_inst_true.neo430_uart_inst_n_37\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in_7 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in_8 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_out : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_1_in_5 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_out : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_2_in3_in : STD_LOGIC;
  signal p_2_in_6 : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal pwm_cg_en : STD_LOGIC;
  signal \pwm_ch_reg[2]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \pwm_ch_reg[3]_2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pwm_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rdata_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rdata_reg_2 : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal rdata_reg_3 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal rden : STD_LOGIC;
  signal rden_1 : STD_LOGIC;
  signal rden_4 : STD_LOGIC;
  signal rst_gen : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rst_i_sync0 : STD_LOGIC;
  signal rst_i_sync1 : STD_LOGIC;
  signal sysconfig_rdata : STD_LOGIC_VECTOR ( 15 downto 6 );
  signal \sysinfo_mem[0]_0\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal timer_cg_en : STD_LOGIC;
  signal timer_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal uart_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal uart_tx_busy0 : STD_LOGIC;
  signal \NLW_clk_div_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \clk_div_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_div_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_div_reg[8]_i_1\ : label is 11;
begin
\clk_div[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_div_reg(0),
      O => \clk_div[0]_i_3_n_0\
    );
\clk_div_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => clk_div_reg(0),
      Q => \clk_div_ff_reg_n_0_[0]\,
      R => '0'
    );
\clk_div_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => clk_div_reg(10),
      Q => p_12_in,
      R => '0'
    );
\clk_div_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => clk_div_reg(11),
      Q => \clk_div_ff_reg_n_0_[11]\,
      R => '0'
    );
\clk_div_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => clk_div_reg(1),
      Q => p_2_in,
      R => '0'
    );
\clk_div_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => clk_div_reg(2),
      Q => p_4_in,
      R => '0'
    );
\clk_div_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => clk_div_reg(5),
      Q => p_6_in,
      R => '0'
    );
\clk_div_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => clk_div_reg(6),
      Q => p_8_in,
      R => '0'
    );
\clk_div_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => clk_div_reg(9),
      Q => p_10_in,
      R => '0'
    );
\clk_div_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => clk_div0,
      CLR => neo430_cpu_inst_n_135,
      D => \clk_div_reg[0]_i_2_n_7\,
      Q => clk_div_reg(0)
    );
\clk_div_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_div_reg[0]_i_2_n_0\,
      CO(2) => \clk_div_reg[0]_i_2_n_1\,
      CO(1) => \clk_div_reg[0]_i_2_n_2\,
      CO(0) => \clk_div_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clk_div_reg[0]_i_2_n_4\,
      O(2) => \clk_div_reg[0]_i_2_n_5\,
      O(1) => \clk_div_reg[0]_i_2_n_6\,
      O(0) => \clk_div_reg[0]_i_2_n_7\,
      S(3) => \clk_div_reg_n_0_[3]\,
      S(2 downto 1) => clk_div_reg(2 downto 1),
      S(0) => \clk_div[0]_i_3_n_0\
    );
\clk_div_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => clk_div0,
      CLR => neo430_cpu_inst_n_135,
      D => \clk_div_reg[8]_i_1_n_5\,
      Q => clk_div_reg(10)
    );
\clk_div_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => clk_div0,
      CLR => neo430_cpu_inst_n_135,
      D => \clk_div_reg[8]_i_1_n_4\,
      Q => clk_div_reg(11)
    );
\clk_div_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => clk_div0,
      CLR => neo430_cpu_inst_n_135,
      D => \clk_div_reg[0]_i_2_n_6\,
      Q => clk_div_reg(1)
    );
\clk_div_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => clk_div0,
      CLR => neo430_cpu_inst_n_135,
      D => \clk_div_reg[0]_i_2_n_5\,
      Q => clk_div_reg(2)
    );
\clk_div_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => clk_div0,
      CLR => neo430_cpu_inst_n_135,
      D => \clk_div_reg[0]_i_2_n_4\,
      Q => \clk_div_reg_n_0_[3]\
    );
\clk_div_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => clk_div0,
      CLR => neo430_cpu_inst_n_135,
      D => \clk_div_reg[4]_i_1_n_7\,
      Q => \clk_div_reg_n_0_[4]\
    );
\clk_div_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_div_reg[0]_i_2_n_0\,
      CO(3) => \clk_div_reg[4]_i_1_n_0\,
      CO(2) => \clk_div_reg[4]_i_1_n_1\,
      CO(1) => \clk_div_reg[4]_i_1_n_2\,
      CO(0) => \clk_div_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_div_reg[4]_i_1_n_4\,
      O(2) => \clk_div_reg[4]_i_1_n_5\,
      O(1) => \clk_div_reg[4]_i_1_n_6\,
      O(0) => \clk_div_reg[4]_i_1_n_7\,
      S(3) => \clk_div_reg_n_0_[7]\,
      S(2 downto 1) => clk_div_reg(6 downto 5),
      S(0) => \clk_div_reg_n_0_[4]\
    );
\clk_div_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => clk_div0,
      CLR => neo430_cpu_inst_n_135,
      D => \clk_div_reg[4]_i_1_n_6\,
      Q => clk_div_reg(5)
    );
\clk_div_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => clk_div0,
      CLR => neo430_cpu_inst_n_135,
      D => \clk_div_reg[4]_i_1_n_5\,
      Q => clk_div_reg(6)
    );
\clk_div_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => clk_div0,
      CLR => neo430_cpu_inst_n_135,
      D => \clk_div_reg[4]_i_1_n_4\,
      Q => \clk_div_reg_n_0_[7]\
    );
\clk_div_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => clk_div0,
      CLR => neo430_cpu_inst_n_135,
      D => \clk_div_reg[8]_i_1_n_7\,
      Q => \clk_div_reg_n_0_[8]\
    );
\clk_div_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_div_reg[4]_i_1_n_0\,
      CO(3) => \NLW_clk_div_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \clk_div_reg[8]_i_1_n_1\,
      CO(1) => \clk_div_reg[8]_i_1_n_2\,
      CO(0) => \clk_div_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_div_reg[8]_i_1_n_4\,
      O(2) => \clk_div_reg[8]_i_1_n_5\,
      O(1) => \clk_div_reg[8]_i_1_n_6\,
      O(0) => \clk_div_reg[8]_i_1_n_7\,
      S(3 downto 1) => clk_div_reg(11 downto 9),
      S(0) => \clk_div_reg_n_0_[8]\
    );
\clk_div_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => clk_div0,
      CLR => neo430_cpu_inst_n_135,
      D => \clk_div_reg[8]_i_1_n_6\,
      Q => clk_div_reg(9)
    );
\neo430_boot_rom_inst_true.neo430_boot_rom_inst\: entity work.SystemTop_neo430_boot_rom
     port map (
      ADDRARDADDR(9 downto 0) => \cpu_bus[addr]\(10 downto 1),
      DOADO(11 downto 0) => rdata_reg(11 downto 0),
      clk_i => clk_i,
      \ir_reg[14]\(1) => rdata_reg_2(14),
      \ir_reg[14]\(0) => rdata_reg_2(12),
      rdata_reg(0) => rdata_reg_3(12),
      \rdata_reg__0_0\ => \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_14\,
      \rdata_reg__0_1\ => \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_15\,
      \rdata_reg__0_2\ => neo430_cpu_inst_n_32,
      rden => rden,
      rden_0 => rden_1,
      rden_1 => rden_4,
      rden_reg_0 => \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_13\,
      rden_reg_1 => \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_16\,
      rden_reg_2 => neo430_cpu_inst_n_103,
      timer_rdata(1) => timer_rdata(15),
      timer_rdata(0) => timer_rdata(13),
      uart_rdata(1) => uart_rdata(15),
      uart_rdata(0) => uart_rdata(13)
    );
neo430_cpu_inst: entity work.SystemTop_neo430_cpu
     port map (
      D(10 downto 9) => \sysinfo_mem[0]_0\(15 downto 14),
      D(8) => neo430_cpu_inst_n_7,
      D(7 downto 6) => \sysinfo_mem[0]_0\(11 downto 10),
      D(5) => \sysinfo_mem[0]_0\(8),
      D(4) => \sysinfo_mem[0]_0\(6),
      D(3) => neo430_cpu_inst_n_12,
      D(2 downto 1) => \sysinfo_mem[0]_0\(2 downto 1),
      D(0) => neo430_cpu_inst_n_15,
      E(0) => neo430_cpu_inst_n_35,
      \FSM_sequential_state_reg[0]\ => neo430_sysconfig_inst_n_30,
      \FSM_sequential_state_reg[1]\ => neo430_imem_inst_n_1,
      \FSM_sequential_state_reg[3]\(1) => \neo430_control_inst/state\(3),
      \FSM_sequential_state_reg[3]\(0) => \neo430_control_inst/state\(1),
      \FSM_sequential_state_reg[3]_0\ => neo430_sysconfig_inst_n_29,
      \FSM_sequential_state_reg[3]_1\ => neo430_imem_inst_n_5,
      \FSM_sequential_state_reg[3]_2\ => neo430_sysconfig_inst_n_32,
      \FSM_sequential_state_reg[4]\ => neo430_sysconfig_inst_n_28,
      Q(2) => clkgen_en_o,
      Q(1 downto 0) => p_0_in_8(1 downto 0),
      SR(0) => neo430_cpu_inst_n_126,
      WEA(0) => p_0_out,
      acc_en => acc_en_0,
      acc_en_0 => acc_en,
      \am_reg[0]\(0) => \neo430_control_inst/src_nxt\,
      \am_reg[2]\(2) => neo430_sysconfig_inst_n_26,
      \am_reg[2]\(1) => neo430_sysconfig_inst_n_27,
      \am_reg[2]\(0) => \neo430_pwm_inst_true.neo430_pwm_inst_n_26\,
      \am_reg[3]\ => neo430_imem_inst_n_6,
      clk_i => clk_i,
      cnt_reg(15 downto 0) => cnt_reg(15 downto 0),
      cnt_reg_10_sp_1 => neo430_cpu_inst_n_85,
      cnt_reg_11_sp_1 => neo430_cpu_inst_n_84,
      cnt_reg_12_sp_1 => neo430_cpu_inst_n_83,
      cnt_reg_13_sp_1 => neo430_cpu_inst_n_82,
      cnt_reg_14_sp_1 => neo430_cpu_inst_n_81,
      cnt_reg_15_sp_1 => neo430_cpu_inst_n_80,
      cnt_reg_7_sp_1 => neo430_cpu_inst_n_88,
      cnt_reg_8_sp_1 => neo430_cpu_inst_n_87,
      cnt_reg_9_sp_1 => neo430_cpu_inst_n_86,
      \cpu_bus[addr]\(13 downto 0) => \cpu_bus[addr]\(14 downto 1),
      \cpu_bus[wr_en]\(1 downto 0) => \cpu_bus[wr_en]\(1 downto 0),
      \ctrl_reg[0]\ => neo430_cpu_inst_n_95,
      \ctrl_reg[12]\ => neo430_cpu_inst_n_1,
      \ctrl_reg[12]_0\(0) => neo430_cpu_inst_n_122,
      \ctrl_reg[15]\ => \neo430_gpio_inst_true.neo430_gpio_inst_n_1\,
      \ctrl_reg[16]\ => neo430_sysconfig_inst_n_3,
      \ctrl_reg[17]\ => neo430_sysconfig_inst_n_1,
      \ctrl_reg[17]_0\ => neo430_dmem_inst_n_6,
      \ctrl_reg[17]_1\ => neo430_sysconfig_inst_n_31,
      \ctrl_reg[1]\ => neo430_cpu_inst_n_94,
      \ctrl_reg[25]\ => neo430_cpu_inst_n_30,
      \ctrl_reg[25]_0\ => neo430_cpu_inst_n_123,
      \ctrl_reg[25]_1\(0) => neo430_cpu_inst_n_128,
      \ctrl_reg[27]\(0) => neo430_cpu_inst_n_98,
      \ctrl_reg[27]_0\(0) => neo430_cpu_inst_n_99,
      \ctrl_reg[27]_1\(0) => neo430_cpu_inst_n_100,
      \ctrl_reg[28]\ => neo430_cpu_inst_n_31,
      \ctrl_reg[28]_0\ => neo430_cpu_inst_n_101,
      \ctrl_reg[28]_1\ => neo430_cpu_inst_n_104,
      \ctrl_reg[28]_2\ => neo430_cpu_inst_n_125,
      \ctrl_reg[28]_3\(0) => neo430_cpu_inst_n_127,
      \ctrl_reg[2]\ => neo430_cpu_inst_n_93,
      \ctrl_reg[3]\ => neo430_cpu_inst_n_92,
      \ctrl_reg[4]\ => neo430_cpu_inst_n_91,
      \ctrl_reg[5]\ => neo430_cpu_inst_n_90,
      \ctrl_reg[6]\ => neo430_cpu_inst_n_89,
      \ctrl_reg[8]\ => neo430_cpu_inst_n_4,
      \ctrl_reg[9]\ => neo430_cpu_inst_n_3,
      \data_o_reg[15]\(15 downto 0) => din(15 downto 0),
      \data_o_reg[15]_0\(15) => \neo430_gpio_inst_true.neo430_gpio_inst_n_36\,
      \data_o_reg[15]_0\(14) => \neo430_gpio_inst_true.neo430_gpio_inst_n_37\,
      \data_o_reg[15]_0\(13) => \neo430_gpio_inst_true.neo430_gpio_inst_n_38\,
      \data_o_reg[15]_0\(12) => \neo430_gpio_inst_true.neo430_gpio_inst_n_39\,
      \data_o_reg[15]_0\(11) => \neo430_gpio_inst_true.neo430_gpio_inst_n_40\,
      \data_o_reg[15]_0\(10) => \neo430_gpio_inst_true.neo430_gpio_inst_n_41\,
      \data_o_reg[15]_0\(9) => \neo430_gpio_inst_true.neo430_gpio_inst_n_42\,
      \data_o_reg[15]_0\(8) => \neo430_gpio_inst_true.neo430_gpio_inst_n_43\,
      \data_o_reg[15]_0\(7) => \neo430_gpio_inst_true.neo430_gpio_inst_n_44\,
      \data_o_reg[15]_0\(6) => \neo430_gpio_inst_true.neo430_gpio_inst_n_45\,
      \data_o_reg[15]_0\(5) => \neo430_gpio_inst_true.neo430_gpio_inst_n_46\,
      \data_o_reg[15]_0\(4) => \neo430_gpio_inst_true.neo430_gpio_inst_n_47\,
      \data_o_reg[15]_0\(3) => \neo430_gpio_inst_true.neo430_gpio_inst_n_48\,
      \data_o_reg[15]_0\(2) => \neo430_gpio_inst_true.neo430_gpio_inst_n_49\,
      \data_o_reg[15]_0\(1) => \neo430_gpio_inst_true.neo430_gpio_inst_n_50\,
      \data_o_reg[15]_0\(0) => \neo430_gpio_inst_true.neo430_gpio_inst_n_51\,
      \data_o_reg[15]_1\(7 downto 0) => \pwm_ch_reg[3]_2\(7 downto 0),
      \data_o_reg[6]\(6 downto 4) => p_0_in_7(2 downto 0),
      \data_o_reg[6]\(3) => p_2_in_6,
      \data_o_reg[6]\(2) => p_0_in1_in,
      \data_o_reg[6]\(1) => \neo430_timer_inst_true.neo430_timer_inst_n_23\,
      \data_o_reg[6]\(0) => timer_cg_en,
      \data_o_reg[7]\(7 downto 0) => \pwm_ch_reg[2]_1\(7 downto 0),
      \din_reg[15]\(15) => neo430_cpu_inst_n_45,
      \din_reg[15]\(14) => neo430_cpu_inst_n_46,
      \din_reg[15]\(13) => neo430_cpu_inst_n_47,
      \din_reg[15]\(12) => neo430_cpu_inst_n_48,
      \din_reg[15]\(11) => neo430_cpu_inst_n_49,
      \din_reg[15]\(10) => neo430_cpu_inst_n_50,
      \din_reg[15]\(9) => neo430_cpu_inst_n_51,
      \din_reg[15]\(8) => neo430_cpu_inst_n_52,
      \din_reg[15]\(7) => neo430_cpu_inst_n_53,
      \din_reg[15]\(6) => neo430_cpu_inst_n_54,
      \din_reg[15]\(5) => neo430_cpu_inst_n_55,
      \din_reg[15]\(4) => neo430_cpu_inst_n_56,
      \din_reg[15]\(3) => neo430_cpu_inst_n_57,
      \din_reg[15]\(2) => neo430_cpu_inst_n_58,
      \din_reg[15]\(1) => neo430_cpu_inst_n_59,
      \din_reg[15]\(0) => neo430_cpu_inst_n_60,
      dio_swap => dio_swap,
      dio_swap_reg_0(6) => neo430_cpu_inst_n_36,
      dio_swap_reg_0(5) => neo430_cpu_inst_n_37,
      dio_swap_reg_0(4) => neo430_cpu_inst_n_38,
      dio_swap_reg_0(3) => neo430_cpu_inst_n_39,
      dio_swap_reg_0(2) => neo430_cpu_inst_n_40,
      dio_swap_reg_0(1) => neo430_cpu_inst_n_41,
      dio_swap_reg_0(0) => neo430_cpu_inst_n_42,
      dio_swap_reg_1(15 downto 0) => \cpu_bus[wdata]\(15 downto 0),
      \i__carry__1_i_5\ => neo430_sysconfig_inst_n_21,
      \i__carry__1_i_5_0\ => neo430_sysconfig_inst_n_22,
      \irq_buf_reg[1]\(0) => \neo430_control_inst/p_5_in\,
      \irq_buf_reg[1]_0\ => \neo430_uart_inst_true.neo430_uart_inst_n_28\,
      irq_fire_ff => irq_fire_ff,
      irq_o => irq_o,
      mem_addr_reg0_carry => neo430_sysconfig_inst_n_10,
      \mem_addr_reg0_carry__2\ => \neo430_pwm_inst_true.neo430_pwm_inst_n_28\,
      \mem_addr_reg_reg[11]\ => neo430_cpu_inst_n_32,
      \mem_addr_reg_reg[11]_0\ => neo430_cpu_inst_n_103,
      \mem_addr_reg_reg[11]_1\ => neo430_sysconfig_inst_n_18,
      \mem_addr_reg_reg[15]\ => neo430_cpu_inst_n_102,
      \mem_addr_reg_reg[1]\ => neo430_cpu_inst_n_2,
      \mem_addr_reg_reg[1]_0\(0) => neo430_cpu_inst_n_96,
      \mem_addr_reg_reg[1]_1\(0) => neo430_cpu_inst_n_97,
      \mem_addr_reg_reg[2]\(0) => neo430_cpu_inst_n_43,
      \mem_addr_reg_reg[2]_0\(0) => neo430_cpu_inst_n_44,
      \mem_addr_reg_reg[2]_1\(0) => neo430_cpu_inst_n_77,
      \mem_addr_reg_reg[2]_2\ => neo430_cpu_inst_n_78,
      \mem_addr_reg_reg[2]_3\(0) => neo430_cpu_inst_n_79,
      \mem_addr_reg_reg[7]\ => neo430_sysconfig_inst_n_7,
      mem_data_i(15 downto 0) => mem_data_i(15 downto 0),
      \op_b_ff_reg[0]\ => neo430_sysconfig_inst_n_24,
      \op_b_ff_reg[0]_0\ => neo430_sysconfig_inst_n_4,
      \op_b_ff_reg[10]\ => neo430_sysconfig_inst_n_19,
      \op_b_ff_reg[11]\ => neo430_sysconfig_inst_n_12,
      \op_b_ff_reg[12]\ => neo430_sysconfig_inst_n_9,
      \op_b_ff_reg[13]\ => neo430_sysconfig_inst_n_2,
      \op_b_ff_reg[14]\ => neo430_sysconfig_inst_n_6,
      \op_b_ff_reg[15]\ => \neo430_pwm_inst_true.neo430_pwm_inst_n_27\,
      \op_b_ff_reg[1]\ => neo430_sysconfig_inst_n_23,
      \op_b_ff_reg[2]\ => neo430_sysconfig_inst_n_17,
      \op_b_ff_reg[3]\ => neo430_sysconfig_inst_n_11,
      \op_b_ff_reg[4]\ => \neo430_gpio_inst_true.neo430_gpio_inst_n_2\,
      \op_b_ff_reg[4]_0\ => neo430_sysconfig_inst_n_8,
      \op_b_ff_reg[5]\ => neo430_sysconfig_inst_n_0,
      \op_b_ff_reg[6]\ => neo430_sysconfig_inst_n_5,
      \op_b_ff_reg[7]\ => \neo430_pwm_inst_true.neo430_pwm_inst_n_29\,
      \op_b_ff_reg[8]\ => neo430_sysconfig_inst_n_25,
      \op_b_ff_reg[9]\ => neo430_sysconfig_inst_n_20,
      p_1_in(15 downto 0) => p_1_in_5(15 downto 0),
      p_2_in3_in => p_2_in3_in,
      \pwm_ch_reg[1][7]\(15) => neo430_cpu_inst_n_61,
      \pwm_ch_reg[1][7]\(14) => neo430_cpu_inst_n_62,
      \pwm_ch_reg[1][7]\(13) => neo430_cpu_inst_n_63,
      \pwm_ch_reg[1][7]\(12) => neo430_cpu_inst_n_64,
      \pwm_ch_reg[1][7]\(11) => neo430_cpu_inst_n_65,
      \pwm_ch_reg[1][7]\(10) => neo430_cpu_inst_n_66,
      \pwm_ch_reg[1][7]\(9) => neo430_cpu_inst_n_67,
      \pwm_ch_reg[1][7]\(8) => neo430_cpu_inst_n_68,
      \pwm_ch_reg[1][7]\(7) => neo430_cpu_inst_n_69,
      \pwm_ch_reg[1][7]\(6) => neo430_cpu_inst_n_70,
      \pwm_ch_reg[1][7]\(5) => neo430_cpu_inst_n_71,
      \pwm_ch_reg[1][7]\(4) => neo430_cpu_inst_n_72,
      \pwm_ch_reg[1][7]\(3) => neo430_cpu_inst_n_73,
      \pwm_ch_reg[1][7]\(2) => neo430_cpu_inst_n_74,
      \pwm_ch_reg[1][7]\(1) => neo430_cpu_inst_n_75,
      \pwm_ch_reg[1][7]\(0) => neo430_cpu_inst_n_76,
      \rst_gen_reg[3]\ => neo430_cpu_inst_n_135,
      \sam_reg[1]\ => \neo430_gpio_inst_true.neo430_gpio_inst_n_19\,
      \src_reg[3]\(3) => neo430_sysconfig_inst_n_13,
      \src_reg[3]\(2) => neo430_sysconfig_inst_n_14,
      \src_reg[3]\(1) => neo430_sysconfig_inst_n_15,
      \src_reg[3]\(0) => neo430_sysconfig_inst_n_16,
      \sreg_reg[0]\(0) => rst_gen(3),
      \sreg_reg[15]\(0) => p_1_out,
      uart_tx_busy0 => uart_tx_busy0,
      \uart_tx_sreg_reg[1]\ => \neo430_uart_inst_true.neo430_uart_inst_n_15\,
      \uart_tx_sreg_reg[6]\(5) => \neo430_uart_inst_true.neo430_uart_inst_n_31\,
      \uart_tx_sreg_reg[6]\(4) => \neo430_uart_inst_true.neo430_uart_inst_n_32\,
      \uart_tx_sreg_reg[6]\(3) => \neo430_uart_inst_true.neo430_uart_inst_n_33\,
      \uart_tx_sreg_reg[6]\(2) => \neo430_uart_inst_true.neo430_uart_inst_n_34\,
      \uart_tx_sreg_reg[6]\(1) => \neo430_uart_inst_true.neo430_uart_inst_n_35\,
      \uart_tx_sreg_reg[6]\(0) => \neo430_uart_inst_true.neo430_uart_inst_n_36\,
      \uart_tx_sreg_reg[7]\ => \neo430_uart_inst_true.neo430_uart_inst_n_37\,
      \uart_tx_sreg_reg[7]_0\ => \neo430_uart_inst_true.neo430_uart_inst_n_19\
    );
neo430_dmem_inst: entity work.SystemTop_neo430_dmem
     port map (
      DOADO(3 downto 0) => rdata_reg_2(15 downto 12),
      E(0) => neo430_cpu_inst_n_35,
      Q(0) => gpio_rdata(7),
      acc_en => acc_en_0,
      \am_reg[0]\ => neo430_sysconfig_inst_n_1,
      \am_reg[0]_0\ => \neo430_gpio_inst_true.neo430_gpio_inst_n_2\,
      \am_reg[0]_1\ => neo430_imem_inst_n_6,
      clk_i => clk_i,
      \cpu_bus[addr]\(9 downto 0) => \cpu_bus[addr]\(10 downto 1),
      \cpu_bus[wr_en]\(1 downto 0) => \cpu_bus[wr_en]\(1 downto 0),
      \data_o_reg[13]\(0) => \neo430_control_inst/src_nxt\,
      dmem_file_h_reg_0 => neo430_dmem_inst_n_6,
      dmem_file_h_reg_1 => neo430_dmem_inst_n_10,
      dmem_file_h_reg_2 => neo430_dmem_inst_n_11,
      dmem_file_h_reg_3(15 downto 0) => \cpu_bus[wdata]\(15 downto 0),
      dmem_file_l_reg_0 => neo430_dmem_inst_n_7,
      dmem_file_l_reg_1 => neo430_dmem_inst_n_12,
      dmem_file_l_reg_2 => neo430_dmem_inst_n_13,
      dmem_file_l_reg_3 => neo430_dmem_inst_n_14,
      dmem_file_l_reg_4 => neo430_dmem_inst_n_15,
      dmem_file_l_reg_5 => neo430_dmem_inst_n_16,
      dmem_file_l_reg_6 => neo430_dmem_inst_n_17,
      dmem_file_l_reg_7 => neo430_dmem_inst_n_18,
      freq_gen_rdata(11 downto 0) => freq_gen_rdata(11 downto 0),
      \ir_reg[10]\ => neo430_imem_inst_n_11,
      \ir_reg[10]_0\ => \neo430_uart_inst_true.neo430_uart_inst_n_30\,
      \ir_reg[11]\ => neo430_imem_inst_n_10,
      \ir_reg[11]_0\(8 downto 7) => pwm_rdata(11 downto 10),
      \ir_reg[11]_0\(6) => pwm_rdata(8),
      \ir_reg[11]_0\(5 downto 0) => pwm_rdata(5 downto 0),
      \ir_reg[11]_1\ => \neo430_uart_inst_true.neo430_uart_inst_n_29\,
      mem_data_i(1 downto 0) => mem_data_i(11 downto 10),
      rden => rden_1,
      rden_reg_0 => neo430_cpu_inst_n_101,
      timer_rdata(1) => timer_rdata(9),
      timer_rdata(0) => timer_rdata(6)
    );
\neo430_freq_gen_inst_true.neo430_freq_gen_inst\: entity work.SystemTop_neo430_freq_gen
     port map (
      D(15 downto 0) => \cpu_bus[wdata]\(15 downto 0),
      E(0) => neo430_cpu_inst_n_79,
      clk_i => clk_i,
      \data_o_reg[11]_0\ => neo430_cpu_inst_n_125,
      freq_gen_cg_en => freq_gen_cg_en,
      freq_gen_o(0) => freq_gen_o(0),
      freq_gen_rdata(11 downto 0) => freq_gen_rdata(11 downto 0),
      \nco_prsc_tick_reg[0]_0\ => \neo430_uart_inst_true.neo430_uart_inst_n_20\,
      \nco_prsc_tick_reg[0]_1\ => \neo430_uart_inst_true.neo430_uart_inst_n_21\,
      \nco_prsc_tick_reg[0]_2\ => \neo430_uart_inst_true.neo430_uart_inst_n_22\,
      \nco_prsc_tick_reg[0]_3\ => \neo430_uart_inst_true.neo430_uart_inst_n_23\,
      \nco_prsc_tick_reg[0]_4\ => \neo430_uart_inst_true.neo430_uart_inst_n_24\,
      \nco_prsc_tick_reg[0]_5\ => \neo430_uart_inst_true.neo430_uart_inst_n_25\,
      \nco_prsc_tick_reg[0]_6\ => \neo430_uart_inst_true.neo430_uart_inst_n_26\,
      \nco_prsc_tick_reg[0]_7\ => \neo430_uart_inst_true.neo430_uart_inst_n_27\,
      \tuning_word_reg[0][15]_0\(0) => neo430_cpu_inst_n_44
    );
\neo430_gpio_inst_true.neo430_gpio_inst\: entity work.SystemTop_neo430_gpio
     port map (
      D(15) => neo430_cpu_inst_n_45,
      D(14) => neo430_cpu_inst_n_46,
      D(13) => neo430_cpu_inst_n_47,
      D(12) => neo430_cpu_inst_n_48,
      D(11) => neo430_cpu_inst_n_49,
      D(10) => neo430_cpu_inst_n_50,
      D(9) => neo430_cpu_inst_n_51,
      D(8) => neo430_cpu_inst_n_52,
      D(7) => neo430_cpu_inst_n_53,
      D(6) => neo430_cpu_inst_n_54,
      D(5) => neo430_cpu_inst_n_55,
      D(4) => neo430_cpu_inst_n_56,
      D(3) => neo430_cpu_inst_n_57,
      D(2) => neo430_cpu_inst_n_58,
      D(1) => neo430_cpu_inst_n_59,
      D(0) => neo430_cpu_inst_n_60,
      E(0) => neo430_cpu_inst_n_97,
      Q(13 downto 11) => gpio_rdata(15 downto 13),
      Q(10 downto 5) => gpio_rdata(11 downto 6),
      Q(4 downto 0) => gpio_rdata(4 downto 0),
      SR(0) => neo430_cpu_inst_n_126,
      clk_i => clk_i,
      \ctrl_reg[15]\ => neo430_imem_inst_n_6,
      \ctrl_reg[15]_0\ => \neo430_pwm_inst_true.neo430_pwm_inst_n_27\,
      \data_o_reg[12]_0\ => \neo430_gpio_inst_true.neo430_gpio_inst_n_1\,
      \data_o_reg[12]_1\ => \neo430_gpio_inst_true.neo430_gpio_inst_n_2\,
      \data_o_reg[5]_0\ => \neo430_gpio_inst_true.neo430_gpio_inst_n_19\,
      \din_reg[15]_0\(15 downto 0) => din(15 downto 0),
      \dout_reg[15]_0\(15) => \neo430_gpio_inst_true.neo430_gpio_inst_n_36\,
      \dout_reg[15]_0\(14) => \neo430_gpio_inst_true.neo430_gpio_inst_n_37\,
      \dout_reg[15]_0\(13) => \neo430_gpio_inst_true.neo430_gpio_inst_n_38\,
      \dout_reg[15]_0\(12) => \neo430_gpio_inst_true.neo430_gpio_inst_n_39\,
      \dout_reg[15]_0\(11) => \neo430_gpio_inst_true.neo430_gpio_inst_n_40\,
      \dout_reg[15]_0\(10) => \neo430_gpio_inst_true.neo430_gpio_inst_n_41\,
      \dout_reg[15]_0\(9) => \neo430_gpio_inst_true.neo430_gpio_inst_n_42\,
      \dout_reg[15]_0\(8) => \neo430_gpio_inst_true.neo430_gpio_inst_n_43\,
      \dout_reg[15]_0\(7) => \neo430_gpio_inst_true.neo430_gpio_inst_n_44\,
      \dout_reg[15]_0\(6) => \neo430_gpio_inst_true.neo430_gpio_inst_n_45\,
      \dout_reg[15]_0\(5) => \neo430_gpio_inst_true.neo430_gpio_inst_n_46\,
      \dout_reg[15]_0\(4) => \neo430_gpio_inst_true.neo430_gpio_inst_n_47\,
      \dout_reg[15]_0\(3) => \neo430_gpio_inst_true.neo430_gpio_inst_n_48\,
      \dout_reg[15]_0\(2) => \neo430_gpio_inst_true.neo430_gpio_inst_n_49\,
      \dout_reg[15]_0\(1) => \neo430_gpio_inst_true.neo430_gpio_inst_n_50\,
      \dout_reg[15]_0\(0) => \neo430_gpio_inst_true.neo430_gpio_inst_n_51\,
      \dout_reg[15]_1\(15 downto 0) => \cpu_bus[wdata]\(15 downto 0),
      gpio_i(15 downto 0) => gpio_i(15 downto 0),
      \ir_reg[12]\(0) => pwm_rdata(12),
      \ir_reg[12]_0\ => \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_16\,
      \ir_reg[5]\(0) => sysconfig_rdata(6),
      \ir_reg[5]_0\ => neo430_imem_inst_n_15,
      \ir_reg[5]_1\ => neo430_dmem_inst_n_13,
      \irq_mask_reg[15]_0\(0) => neo430_cpu_inst_n_77,
      irq_o => irq_o,
      mem_data_i(1) => mem_data_i(12),
      mem_data_i(0) => mem_data_i(5),
      timer_rdata(1) => timer_rdata(12),
      timer_rdata(0) => timer_rdata(5),
      uart_rdata(1) => uart_rdata(12),
      uart_rdata(0) => uart_rdata(5)
    );
neo430_imem_inst: entity work.SystemTop_neo430_imem
     port map (
      DOADO(1) => rdata_reg_2(15),
      DOADO(0) => rdata_reg_2(13),
      \FSM_sequential_state_reg[1]\ => neo430_imem_inst_n_4,
      \FSM_sequential_state_reg[1]_0\ => \neo430_gpio_inst_true.neo430_gpio_inst_n_2\,
      \FSM_sequential_state_reg[1]_1\ => neo430_dmem_inst_n_6,
      \FSM_sequential_state_reg[1]_2\(1) => \neo430_control_inst/state\(3),
      \FSM_sequential_state_reg[1]_2\(0) => \neo430_control_inst/state\(1),
      \FSM_sequential_state_reg[1]_3\ => neo430_sysconfig_inst_n_1,
      \FSM_sequential_state_reg[3]\ => neo430_imem_inst_n_1,
      Q(1 downto 0) => sysconfig_rdata(15 downto 14),
      WEA(0) => p_0_out,
      acc_en => acc_en,
      clk_i => clk_i,
      \cpu_bus[addr]\(13 downto 0) => \cpu_bus[addr]\(14 downto 1),
      \data_o_reg[13]\ => neo430_imem_inst_n_5,
      \data_o_reg[15]\ => neo430_imem_inst_n_6,
      imem_file_ram_h_reg_0_0 => neo430_imem_inst_n_12,
      imem_file_ram_h_reg_0_1 => neo430_imem_inst_n_13,
      imem_file_ram_h_reg_1_0 => neo430_imem_inst_n_10,
      imem_file_ram_h_reg_1_1 => neo430_imem_inst_n_11,
      imem_file_ram_h_reg_2_0 => neo430_imem_inst_n_9,
      imem_file_ram_h_reg_3_0(15 downto 0) => \cpu_bus[wdata]\(15 downto 0),
      imem_file_ram_l_reg_0_0 => neo430_imem_inst_n_19,
      imem_file_ram_l_reg_0_1 => neo430_imem_inst_n_20,
      imem_file_ram_l_reg_1_0 => neo430_imem_inst_n_17,
      imem_file_ram_l_reg_1_1 => neo430_imem_inst_n_18,
      imem_file_ram_l_reg_2_0 => neo430_imem_inst_n_15,
      imem_file_ram_l_reg_2_1 => neo430_imem_inst_n_16,
      imem_file_ram_l_reg_3_0 => neo430_imem_inst_n_8,
      imem_file_ram_l_reg_3_1 => neo430_imem_inst_n_14,
      imem_file_ram_l_reg_3_2(0) => p_1_out,
      \ir_reg[11]\(11 downto 0) => rdata_reg(11 downto 0),
      \ir_reg[14]\ => \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_14\,
      \ir_reg[15]\ => \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_13\,
      \ir_reg[15]_0\(1 downto 0) => pwm_rdata(15 downto 14),
      \ir_reg[15]_1\(1 downto 0) => gpio_rdata(15 downto 14),
      mem_data_i(1 downto 0) => mem_data_i(15 downto 14),
      rdata_reg(0) => rdata_reg_3(12),
      rden => rden_4,
      rden_0 => rden_1,
      rden_1 => rden,
      rden_reg_0 => neo430_cpu_inst_n_102,
      timer_rdata(0) => timer_rdata(14),
      uart_rdata(0) => uart_rdata(14)
    );
\neo430_pwm_inst_true.neo430_pwm_inst\: entity work.SystemTop_neo430_pwm
     port map (
      D(15) => neo430_cpu_inst_n_61,
      D(14) => neo430_cpu_inst_n_62,
      D(13) => neo430_cpu_inst_n_63,
      D(12) => neo430_cpu_inst_n_64,
      D(11) => neo430_cpu_inst_n_65,
      D(10) => neo430_cpu_inst_n_66,
      D(9) => neo430_cpu_inst_n_67,
      D(8) => neo430_cpu_inst_n_68,
      D(7) => neo430_cpu_inst_n_69,
      D(6) => neo430_cpu_inst_n_70,
      D(5) => neo430_cpu_inst_n_71,
      D(4) => neo430_cpu_inst_n_72,
      D(3) => neo430_cpu_inst_n_73,
      D(2) => neo430_cpu_inst_n_74,
      D(1) => neo430_cpu_inst_n_75,
      D(0) => neo430_cpu_inst_n_76,
      E(0) => neo430_cpu_inst_n_43,
      Q(7 downto 0) => \pwm_ch_reg[3]_2\(7 downto 0),
      SR(0) => neo430_cpu_inst_n_127,
      \am_reg[0]\ => neo430_imem_inst_n_6,
      \am_reg[0]_0\ => \neo430_gpio_inst_true.neo430_gpio_inst_n_19\,
      \am_reg[0]_1\ => neo430_sysconfig_inst_n_8,
      clk_i => clk_i,
      \data_o_reg[15]_0\(14 downto 7) => pwm_rdata(15 downto 8),
      \data_o_reg[15]_0\(6 downto 0) => pwm_rdata(6 downto 0),
      \data_o_reg[7]_0\(0) => \neo430_pwm_inst_true.neo430_pwm_inst_n_26\,
      \data_o_reg[7]_1\ => \neo430_pwm_inst_true.neo430_pwm_inst_n_27\,
      \data_o_reg[7]_2\(0) => mem_data_i(7),
      dio_swap => dio_swap,
      dio_swap_reg => \neo430_pwm_inst_true.neo430_pwm_inst_n_28\,
      dio_swap_reg_0 => \neo430_pwm_inst_true.neo430_pwm_inst_n_29\,
      gpio_o(15 downto 0) => gpio_o(15 downto 0),
      \ir_reg[7]\(0) => sysconfig_rdata(6),
      \ir_reg[7]_0\ => neo430_imem_inst_n_8,
      \ir_reg[7]_1\ => neo430_dmem_inst_n_7,
      mem_data_i(0) => mem_data_i(15),
      p_1_in(15 downto 0) => p_1_in_5(15 downto 0),
      \prsc_reg[2]_0\ => neo430_cpu_inst_n_78,
      pwm_cg_en => pwm_cg_en,
      \pwm_ch_reg[1][7]_0\(15 downto 0) => \cpu_bus[wdata]\(15 downto 0),
      \pwm_ch_reg[2][0]_0\(0) => neo430_cpu_inst_n_96,
      \pwm_ch_reg[2][7]_0\(7 downto 0) => \pwm_ch_reg[2]_1\(7 downto 0),
      \pwm_cnt_reg[0]_0\ => \neo430_uart_inst_true.neo430_uart_inst_n_22\,
      \pwm_cnt_reg[0]_1\ => \neo430_uart_inst_true.neo430_uart_inst_n_23\,
      \pwm_cnt_reg[0]_2\ => \neo430_uart_inst_true.neo430_uart_inst_n_20\,
      \pwm_cnt_reg[0]_3\ => \neo430_uart_inst_true.neo430_uart_inst_n_21\,
      \pwm_cnt_reg[0]_4\ => \neo430_uart_inst_true.neo430_uart_inst_n_24\,
      \pwm_cnt_reg[0]_5\ => \neo430_uart_inst_true.neo430_uart_inst_n_25\,
      \pwm_cnt_reg[0]_6\ => \neo430_uart_inst_true.neo430_uart_inst_n_26\,
      \pwm_cnt_reg[0]_7\ => \neo430_uart_inst_true.neo430_uart_inst_n_27\,
      pwm_o(0) => pwm_o(0),
      \register_sr_reg[3]\(15) => \neo430_gpio_inst_true.neo430_gpio_inst_n_36\,
      \register_sr_reg[3]\(14) => \neo430_gpio_inst_true.neo430_gpio_inst_n_37\,
      \register_sr_reg[3]\(13) => \neo430_gpio_inst_true.neo430_gpio_inst_n_38\,
      \register_sr_reg[3]\(12) => \neo430_gpio_inst_true.neo430_gpio_inst_n_39\,
      \register_sr_reg[3]\(11) => \neo430_gpio_inst_true.neo430_gpio_inst_n_40\,
      \register_sr_reg[3]\(10) => \neo430_gpio_inst_true.neo430_gpio_inst_n_41\,
      \register_sr_reg[3]\(9) => \neo430_gpio_inst_true.neo430_gpio_inst_n_42\,
      \register_sr_reg[3]\(8) => \neo430_gpio_inst_true.neo430_gpio_inst_n_43\,
      \register_sr_reg[3]\(7) => \neo430_gpio_inst_true.neo430_gpio_inst_n_44\,
      \register_sr_reg[3]\(6) => \neo430_gpio_inst_true.neo430_gpio_inst_n_45\,
      \register_sr_reg[3]\(5) => \neo430_gpio_inst_true.neo430_gpio_inst_n_46\,
      \register_sr_reg[3]\(4) => \neo430_gpio_inst_true.neo430_gpio_inst_n_47\,
      \register_sr_reg[3]\(3) => \neo430_gpio_inst_true.neo430_gpio_inst_n_48\,
      \register_sr_reg[3]\(2) => \neo430_gpio_inst_true.neo430_gpio_inst_n_49\,
      \register_sr_reg[3]\(1) => \neo430_gpio_inst_true.neo430_gpio_inst_n_50\,
      \register_sr_reg[3]\(0) => \neo430_gpio_inst_true.neo430_gpio_inst_n_51\,
      timer_rdata(0) => timer_rdata(7),
      uart_rdata(0) => uart_rdata(7)
    );
neo430_sysconfig_inst: entity work.SystemTop_neo430_sysconfig
     port map (
      D(10 downto 9) => \sysinfo_mem[0]_0\(15 downto 14),
      D(8) => neo430_cpu_inst_n_7,
      D(7 downto 6) => \sysinfo_mem[0]_0\(11 downto 10),
      D(5) => \sysinfo_mem[0]_0\(8),
      D(4) => \sysinfo_mem[0]_0\(6),
      D(3) => neo430_cpu_inst_n_12,
      D(2 downto 1) => \sysinfo_mem[0]_0\(2 downto 1),
      D(0) => neo430_cpu_inst_n_15,
      \FSM_sequential_state_reg[0]\ => neo430_imem_inst_n_4,
      \FSM_sequential_state_reg[1]\ => neo430_sysconfig_inst_n_30,
      \FSM_sequential_state_reg[4]\ => \neo430_gpio_inst_true.neo430_gpio_inst_n_2\,
      \FSM_sequential_state_reg[4]_0\ => \neo430_pwm_inst_true.neo430_pwm_inst_n_27\,
      Q(4 downto 3) => sysconfig_rdata(15 downto 14),
      Q(2 downto 1) => sysconfig_rdata(11 downto 10),
      Q(0) => sysconfig_rdata(6),
      SR(0) => neo430_cpu_inst_n_128,
      \am_reg[1]\ => \neo430_gpio_inst_true.neo430_gpio_inst_n_19\,
      \am_reg[1]_0\ => neo430_imem_inst_n_13,
      \am_reg[1]_1\ => neo430_dmem_inst_n_11,
      \am_reg[1]_2\ => neo430_imem_inst_n_16,
      \am_reg[1]_3\ => neo430_dmem_inst_n_14,
      \am_reg[2]\ => neo430_dmem_inst_n_6,
      clk_i => clk_i,
      \data_o_reg[0]_0\ => neo430_sysconfig_inst_n_24,
      \data_o_reg[12]\ => neo430_sysconfig_inst_n_31,
      \data_o_reg[13]_0\ => neo430_sysconfig_inst_n_1,
      \data_o_reg[13]_1\ => neo430_sysconfig_inst_n_32,
      \data_o_reg[13]_2\(8) => mem_data_i(13),
      \data_o_reg[13]_2\(7 downto 6) => mem_data_i(9 downto 8),
      \data_o_reg[13]_2\(5) => mem_data_i(6),
      \data_o_reg[13]_2\(4 downto 0) => mem_data_i(4 downto 0),
      \data_o_reg[1]_0\ => neo430_sysconfig_inst_n_21,
      \data_o_reg[1]_1\ => neo430_sysconfig_inst_n_22,
      \data_o_reg[1]_2\ => neo430_sysconfig_inst_n_29,
      \data_o_reg[2]_0\ => neo430_sysconfig_inst_n_18,
      \data_o_reg[3]_0\ => neo430_sysconfig_inst_n_11,
      \data_o_reg[3]_1\(3) => neo430_sysconfig_inst_n_13,
      \data_o_reg[3]_1\(2) => neo430_sysconfig_inst_n_14,
      \data_o_reg[3]_1\(1) => neo430_sysconfig_inst_n_15,
      \data_o_reg[3]_1\(0) => neo430_sysconfig_inst_n_16,
      \data_o_reg[5]\(1) => neo430_sysconfig_inst_n_26,
      \data_o_reg[5]\(0) => neo430_sysconfig_inst_n_27,
      \data_o_reg[6]_0\ => neo430_sysconfig_inst_n_6,
      \data_o_reg[6]_1\ => neo430_sysconfig_inst_n_8,
      \data_o_reg[7]\ => neo430_sysconfig_inst_n_28,
      \data_o_reg[8]_0\ => neo430_sysconfig_inst_n_3,
      \data_o_reg[8]_1\ => neo430_sysconfig_inst_n_4,
      dio_swap => dio_swap,
      dio_swap_reg => neo430_sysconfig_inst_n_0,
      dio_swap_reg_0 => neo430_sysconfig_inst_n_2,
      dio_swap_reg_1 => neo430_sysconfig_inst_n_5,
      dio_swap_reg_10 => neo430_sysconfig_inst_n_25,
      dio_swap_reg_2 => neo430_sysconfig_inst_n_7,
      dio_swap_reg_3 => neo430_sysconfig_inst_n_9,
      dio_swap_reg_4 => neo430_sysconfig_inst_n_10,
      dio_swap_reg_5 => neo430_sysconfig_inst_n_12,
      dio_swap_reg_6 => neo430_sysconfig_inst_n_17,
      dio_swap_reg_7 => neo430_sysconfig_inst_n_19,
      dio_swap_reg_8 => neo430_sysconfig_inst_n_20,
      dio_swap_reg_9 => neo430_sysconfig_inst_n_23,
      \ir_reg[0]\ => neo430_imem_inst_n_20,
      \ir_reg[0]_0\ => neo430_dmem_inst_n_18,
      \ir_reg[13]\(2) => pwm_rdata(13),
      \ir_reg[13]\(1) => pwm_rdata(9),
      \ir_reg[13]\(0) => pwm_rdata(6),
      \ir_reg[13]_0\(8) => gpio_rdata(13),
      \ir_reg[13]_0\(7 downto 6) => gpio_rdata(9 downto 8),
      \ir_reg[13]_0\(5) => gpio_rdata(6),
      \ir_reg[13]_0\(4 downto 0) => gpio_rdata(4 downto 0),
      \ir_reg[13]_1\ => neo430_imem_inst_n_9,
      \ir_reg[13]_2\ => \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_15\,
      \ir_reg[1]\ => neo430_imem_inst_n_19,
      \ir_reg[1]_0\ => neo430_dmem_inst_n_17,
      \ir_reg[2]\ => neo430_imem_inst_n_18,
      \ir_reg[2]_0\ => neo430_dmem_inst_n_16,
      \ir_reg[3]\ => neo430_imem_inst_n_17,
      \ir_reg[3]_0\ => neo430_dmem_inst_n_15,
      \ir_reg[6]\ => neo430_imem_inst_n_14,
      \ir_reg[6]_0\ => neo430_dmem_inst_n_12,
      \ir_reg[9]\ => neo430_imem_inst_n_12,
      \ir_reg[9]_0\ => neo430_dmem_inst_n_10,
      mem_data_i(3 downto 2) => mem_data_i(15 downto 14),
      mem_data_i(1 downto 0) => mem_data_i(11 downto 10),
      \src_reg[3]\ => neo430_imem_inst_n_6,
      timer_rdata(5) => timer_rdata(8),
      timer_rdata(4 downto 0) => timer_rdata(4 downto 0),
      uart_rdata(7 downto 6) => uart_rdata(9 downto 8),
      uart_rdata(5) => uart_rdata(6),
      uart_rdata(4 downto 0) => uart_rdata(4 downto 0)
    );
\neo430_timer_inst_true.neo430_timer_inst\: entity work.SystemTop_neo430_timer
     port map (
      E(0) => neo430_cpu_inst_n_99,
      Q(6 downto 4) => p_0_in_7(2 downto 0),
      Q(3) => p_2_in_6,
      Q(2) => p_0_in1_in,
      Q(1) => \neo430_timer_inst_true.neo430_timer_inst_n_23\,
      Q(0) => timer_cg_en,
      clk_div0 => clk_div0,
      \clk_div_reg[0]\(0) => clkgen_en_o,
      clk_i => clk_i,
      cnt_reg(15 downto 0) => cnt_reg(15 downto 0),
      \data_o_reg[0]_0\ => neo430_cpu_inst_n_30,
      \data_o_reg[0]_1\ => neo430_cpu_inst_n_95,
      \data_o_reg[10]_0\ => neo430_cpu_inst_n_85,
      \data_o_reg[11]_0\ => neo430_cpu_inst_n_84,
      \data_o_reg[12]_0\ => neo430_cpu_inst_n_83,
      \data_o_reg[13]_0\ => neo430_cpu_inst_n_82,
      \data_o_reg[14]_0\ => neo430_cpu_inst_n_81,
      \data_o_reg[15]_0\ => neo430_cpu_inst_n_80,
      \data_o_reg[1]_0\ => neo430_cpu_inst_n_94,
      \data_o_reg[2]_0\ => neo430_cpu_inst_n_93,
      \data_o_reg[3]_0\ => neo430_cpu_inst_n_92,
      \data_o_reg[4]_0\ => neo430_cpu_inst_n_91,
      \data_o_reg[5]_0\ => neo430_cpu_inst_n_90,
      \data_o_reg[6]_0\ => neo430_cpu_inst_n_89,
      \data_o_reg[7]_0\ => neo430_cpu_inst_n_88,
      \data_o_reg[8]_0\ => neo430_cpu_inst_n_87,
      \data_o_reg[9]_0\ => neo430_cpu_inst_n_86,
      freq_gen_cg_en => freq_gen_cg_en,
      irq_fire_ff => irq_fire_ff,
      p_2_in3_in => p_2_in3_in,
      prsc_tick_reg_0 => \neo430_uart_inst_true.neo430_uart_inst_n_22\,
      prsc_tick_reg_1 => \neo430_uart_inst_true.neo430_uart_inst_n_23\,
      prsc_tick_reg_2 => \neo430_uart_inst_true.neo430_uart_inst_n_20\,
      prsc_tick_reg_3 => \neo430_uart_inst_true.neo430_uart_inst_n_21\,
      prsc_tick_reg_4 => \neo430_uart_inst_true.neo430_uart_inst_n_26\,
      prsc_tick_reg_5 => \neo430_uart_inst_true.neo430_uart_inst_n_27\,
      prsc_tick_reg_6 => \neo430_uart_inst_true.neo430_uart_inst_n_24\,
      prsc_tick_reg_7 => \neo430_uart_inst_true.neo430_uart_inst_n_25\,
      pwm_cg_en => pwm_cg_en,
      \thres_reg[15]_0\(15 downto 0) => \cpu_bus[wdata]\(15 downto 0),
      \thres_reg[15]_1\(0) => neo430_cpu_inst_n_98,
      timer_rdata(15 downto 0) => timer_rdata(15 downto 0)
    );
\neo430_uart_inst_true.neo430_uart_inst\: entity work.SystemTop_neo430_uart
     port map (
      D(7 downto 5) => clk_div_reg(11 downto 9),
      D(4 downto 3) => clk_div_reg(6 downto 5),
      D(2 downto 0) => clk_div_reg(2 downto 0),
      E(0) => neo430_cpu_inst_n_100,
      Q(2) => clkgen_en_o,
      Q(1 downto 0) => p_0_in_8(1 downto 0),
      \clk_div_ff_reg[0]\ => \neo430_uart_inst_true.neo430_uart_inst_n_23\,
      \clk_div_ff_reg[10]\ => \neo430_uart_inst_true.neo430_uart_inst_n_25\,
      \clk_div_ff_reg[11]\ => \neo430_uart_inst_true.neo430_uart_inst_n_24\,
      \clk_div_ff_reg[1]\ => \neo430_uart_inst_true.neo430_uart_inst_n_22\,
      \clk_div_ff_reg[2]\ => \neo430_uart_inst_true.neo430_uart_inst_n_21\,
      \clk_div_ff_reg[5]\ => \neo430_uart_inst_true.neo430_uart_inst_n_20\,
      \clk_div_ff_reg[6]\ => \neo430_uart_inst_true.neo430_uart_inst_n_27\,
      \clk_div_ff_reg[9]\ => \neo430_uart_inst_true.neo430_uart_inst_n_26\,
      clk_i => clk_i,
      \ctrl_reg[14]_0\(13 downto 11) => \cpu_bus[wdata]\(14 downto 12),
      \ctrl_reg[14]_0\(10 downto 0) => \cpu_bus[wdata]\(10 downto 0),
      \data_o_reg[0]_0\ => neo430_cpu_inst_n_2,
      \data_o_reg[10]_0\ => \neo430_uart_inst_true.neo430_uart_inst_n_30\,
      \data_o_reg[11]_0\ => \neo430_uart_inst_true.neo430_uart_inst_n_29\,
      \data_o_reg[12]_0\ => neo430_cpu_inst_n_1,
      \data_o_reg[15]_0\(13 downto 10) => uart_rdata(15 downto 12),
      \data_o_reg[15]_0\(9 downto 0) => uart_rdata(9 downto 0),
      \data_o_reg[15]_1\ => neo430_cpu_inst_n_104,
      \data_o_reg[8]_0\ => neo430_cpu_inst_n_4,
      \data_o_reg[9]_0\ => neo430_cpu_inst_n_3,
      \ir_reg[11]\(1 downto 0) => gpio_rdata(11 downto 10),
      \ir_reg[11]_0\(1 downto 0) => sysconfig_rdata(11 downto 10),
      \irq_buf_reg[1]\(0) => \neo430_control_inst/p_5_in\,
      \nco_prsc_tick[0]_i_3\(7) => \clk_div_ff_reg_n_0_[11]\,
      \nco_prsc_tick[0]_i_3\(6) => p_12_in,
      \nco_prsc_tick[0]_i_3\(5) => p_10_in,
      \nco_prsc_tick[0]_i_3\(4) => p_8_in,
      \nco_prsc_tick[0]_i_3\(3) => p_6_in,
      \nco_prsc_tick[0]_i_3\(2) => p_4_in,
      \nco_prsc_tick[0]_i_3\(1) => p_2_in,
      \nco_prsc_tick[0]_i_3\(0) => \clk_div_ff_reg_n_0_[0]\,
      timer_rdata(1 downto 0) => timer_rdata(11 downto 10),
      \uart_rx_avail_reg[1]_0\ => neo430_cpu_inst_n_31,
      \uart_rx_avail_reg[1]_1\ => neo430_cpu_inst_n_123,
      uart_rx_busy_ff_reg_0 => \neo430_uart_inst_true.neo430_uart_inst_n_28\,
      uart_rxd_i => uart_rxd_i,
      \uart_tx_baud_cnt_reg[7]_0\ => \neo430_uart_inst_true.neo430_uart_inst_n_19\,
      uart_tx_busy0 => uart_tx_busy0,
      uart_tx_busy_reg_0 => \neo430_uart_inst_true.neo430_uart_inst_n_15\,
      \uart_tx_sreg_reg[7]_0\(5) => \neo430_uart_inst_true.neo430_uart_inst_n_31\,
      \uart_tx_sreg_reg[7]_0\(4) => \neo430_uart_inst_true.neo430_uart_inst_n_32\,
      \uart_tx_sreg_reg[7]_0\(3) => \neo430_uart_inst_true.neo430_uart_inst_n_33\,
      \uart_tx_sreg_reg[7]_0\(2) => \neo430_uart_inst_true.neo430_uart_inst_n_34\,
      \uart_tx_sreg_reg[7]_0\(1) => \neo430_uart_inst_true.neo430_uart_inst_n_35\,
      \uart_tx_sreg_reg[7]_0\(0) => \neo430_uart_inst_true.neo430_uart_inst_n_36\,
      \uart_tx_sreg_reg[7]_1\(0) => neo430_cpu_inst_n_122,
      \uart_tx_sreg_reg[7]_2\(6) => neo430_cpu_inst_n_36,
      \uart_tx_sreg_reg[7]_2\(5) => neo430_cpu_inst_n_37,
      \uart_tx_sreg_reg[7]_2\(4) => neo430_cpu_inst_n_38,
      \uart_tx_sreg_reg[7]_2\(3) => neo430_cpu_inst_n_39,
      \uart_tx_sreg_reg[7]_2\(2) => neo430_cpu_inst_n_40,
      \uart_tx_sreg_reg[7]_2\(1) => neo430_cpu_inst_n_41,
      \uart_tx_sreg_reg[7]_2\(0) => neo430_cpu_inst_n_42,
      \uart_tx_sreg_reg[8]_0\ => \neo430_uart_inst_true.neo430_uart_inst_n_37\,
      uart_txd_o => uart_txd_o
    );
\rst_gen[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_i_sync1,
      O => p_0_in
    );
\rst_gen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => '1',
      Q => p_1_in(1),
      R => p_0_in
    );
\rst_gen_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => p_1_in(1),
      Q => p_1_in(2),
      R => p_0_in
    );
\rst_gen_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => p_1_in(2),
      Q => p_1_in(3),
      R => p_0_in
    );
\rst_gen_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => p_1_in(3),
      Q => rst_gen(3),
      R => p_0_in
    );
rst_i_sync0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => rst_i,
      Q => rst_i_sync0,
      R => '0'
    );
rst_i_sync1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => rst_i_sync0,
      Q => rst_i_sync1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_seven_seg_driver_0_0 is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    en_i : in STD_LOGIC;
    bcd_vector_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    seg_segment_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg_module_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SystemTop_seven_seg_driver_0_0 : entity is "SystemTop_seven_seg_driver_0_0,seven_seg_driver,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SystemTop_seven_seg_driver_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of SystemTop_seven_seg_driver_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of SystemTop_seven_seg_driver_0_0 : entity is "seven_seg_driver,Vivado 2021.2";
end SystemTop_seven_seg_driver_0_0;

architecture STRUCTURE of SystemTop_seven_seg_driver_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^seg_segment_o\ : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
  seg_segment_o(7) <= \<const0>\;
  seg_segment_o(6 downto 0) <= \^seg_segment_o\(6 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.SystemTop_seven_seg_driver
     port map (
      bcd_vector_i(15 downto 0) => bcd_vector_i(15 downto 0),
      clk_i => clk_i,
      en_i => en_i,
      rst_i => rst_i,
      seg_module_o(3 downto 0) => seg_module_o(3 downto 0),
      seg_segment_o(6 downto 0) => \^seg_segment_o\(6 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop_neo430_top_0_0 is
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
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SystemTop_neo430_top_0_0 : entity is "SystemTop_neo430_top_0_0,neo430_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SystemTop_neo430_top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of SystemTop_neo430_top_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of SystemTop_neo430_top_0_0 : entity is "neo430_top,Vivado 2021.2";
end SystemTop_neo430_top_0_0;

architecture STRUCTURE of SystemTop_neo430_top_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^freq_gen_o\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^pwm_o\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  ext_ack_o(7) <= \<const0>\;
  ext_ack_o(6) <= \<const0>\;
  ext_ack_o(5) <= \<const0>\;
  ext_ack_o(4) <= \<const0>\;
  ext_ack_o(3) <= \<const0>\;
  ext_ack_o(2) <= \<const0>\;
  ext_ack_o(1) <= \<const0>\;
  ext_ack_o(0) <= \<const0>\;
  freq_gen_o(2) <= \<const0>\;
  freq_gen_o(1) <= \<const0>\;
  freq_gen_o(0) <= \^freq_gen_o\(0);
  pwm_o(3) <= \<const0>\;
  pwm_o(2) <= \<const0>\;
  pwm_o(1) <= \<const0>\;
  pwm_o(0) <= \^pwm_o\(0);
  spi_cs_o(5) <= \<const0>\;
  spi_cs_o(4) <= \<const0>\;
  spi_cs_o(3) <= \<const0>\;
  spi_cs_o(2) <= \<const0>\;
  spi_cs_o(1) <= \<const0>\;
  spi_cs_o(0) <= \<const0>\;
  spi_mosi_o <= \<const0>\;
  spi_sclk_o <= \<const0>\;
  wb_adr_o(31) <= \<const0>\;
  wb_adr_o(30) <= \<const0>\;
  wb_adr_o(29) <= \<const0>\;
  wb_adr_o(28) <= \<const0>\;
  wb_adr_o(27) <= \<const0>\;
  wb_adr_o(26) <= \<const0>\;
  wb_adr_o(25) <= \<const0>\;
  wb_adr_o(24) <= \<const0>\;
  wb_adr_o(23) <= \<const0>\;
  wb_adr_o(22) <= \<const0>\;
  wb_adr_o(21) <= \<const0>\;
  wb_adr_o(20) <= \<const0>\;
  wb_adr_o(19) <= \<const0>\;
  wb_adr_o(18) <= \<const0>\;
  wb_adr_o(17) <= \<const0>\;
  wb_adr_o(16) <= \<const0>\;
  wb_adr_o(15) <= \<const0>\;
  wb_adr_o(14) <= \<const0>\;
  wb_adr_o(13) <= \<const0>\;
  wb_adr_o(12) <= \<const0>\;
  wb_adr_o(11) <= \<const0>\;
  wb_adr_o(10) <= \<const0>\;
  wb_adr_o(9) <= \<const0>\;
  wb_adr_o(8) <= \<const0>\;
  wb_adr_o(7) <= \<const0>\;
  wb_adr_o(6) <= \<const0>\;
  wb_adr_o(5) <= \<const0>\;
  wb_adr_o(4) <= \<const0>\;
  wb_adr_o(3) <= \<const0>\;
  wb_adr_o(2) <= \<const0>\;
  wb_adr_o(1) <= \<const0>\;
  wb_adr_o(0) <= \<const0>\;
  wb_cyc_o <= \<const0>\;
  wb_dat_o(31) <= \<const0>\;
  wb_dat_o(30) <= \<const0>\;
  wb_dat_o(29) <= \<const0>\;
  wb_dat_o(28) <= \<const0>\;
  wb_dat_o(27) <= \<const0>\;
  wb_dat_o(26) <= \<const0>\;
  wb_dat_o(25) <= \<const0>\;
  wb_dat_o(24) <= \<const0>\;
  wb_dat_o(23) <= \<const0>\;
  wb_dat_o(22) <= \<const0>\;
  wb_dat_o(21) <= \<const0>\;
  wb_dat_o(20) <= \<const0>\;
  wb_dat_o(19) <= \<const0>\;
  wb_dat_o(18) <= \<const0>\;
  wb_dat_o(17) <= \<const0>\;
  wb_dat_o(16) <= \<const0>\;
  wb_dat_o(15) <= \<const0>\;
  wb_dat_o(14) <= \<const0>\;
  wb_dat_o(13) <= \<const0>\;
  wb_dat_o(12) <= \<const0>\;
  wb_dat_o(11) <= \<const0>\;
  wb_dat_o(10) <= \<const0>\;
  wb_dat_o(9) <= \<const0>\;
  wb_dat_o(8) <= \<const0>\;
  wb_dat_o(7) <= \<const0>\;
  wb_dat_o(6) <= \<const0>\;
  wb_dat_o(5) <= \<const0>\;
  wb_dat_o(4) <= \<const0>\;
  wb_dat_o(3) <= \<const0>\;
  wb_dat_o(2) <= \<const0>\;
  wb_dat_o(1) <= \<const0>\;
  wb_dat_o(0) <= \<const0>\;
  wb_sel_o(3) <= \<const0>\;
  wb_sel_o(2) <= \<const0>\;
  wb_sel_o(1) <= \<const0>\;
  wb_sel_o(0) <= \<const0>\;
  wb_stb_o <= \<const0>\;
  wb_we_o <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.SystemTop_neo430_top
     port map (
      clk_i => clk_i,
      freq_gen_o(0) => \^freq_gen_o\(0),
      gpio_i(15 downto 0) => gpio_i(15 downto 0),
      gpio_o(15 downto 0) => gpio_o(15 downto 0),
      pwm_o(0) => \^pwm_o\(0),
      rst_i => rst_i,
      uart_rxd_i => uart_rxd_i,
      uart_txd_o => uart_txd_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemTop is
  port (
    clk_i : in STD_LOGIC;
    led_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_n_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    seg_module_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_segment_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sw_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    uart_rxd_i : in STD_LOGIC;
    uart_txd_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SystemTop : entity is true;
  attribute hw_handoff : string;
  attribute hw_handoff of SystemTop : entity is "SystemTop.hwdef";
end SystemTop;

architecture STRUCTURE of SystemTop is
  signal \<const1>\ : STD_LOGIC;
  signal Din : STD_LOGIC_VECTOR ( 0 to 0 );
  signal neo430_top_0_gpio_o_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal neo430_top_0_n_22 : STD_LOGIC;
  signal \^seg_segment_o\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal util_vector_logic_0_Res : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC;
  signal xlslice_1_Dout : STD_LOGIC;
  signal xlslice_2_Dout : STD_LOGIC;
  signal NLW_neo430_top_0_spi_mosi_o_UNCONNECTED : STD_LOGIC;
  signal NLW_neo430_top_0_spi_sclk_o_UNCONNECTED : STD_LOGIC;
  signal NLW_neo430_top_0_twi_scl_io_UNCONNECTED : STD_LOGIC;
  signal NLW_neo430_top_0_twi_sda_io_UNCONNECTED : STD_LOGIC;
  signal NLW_neo430_top_0_wb_cyc_o_UNCONNECTED : STD_LOGIC;
  signal NLW_neo430_top_0_wb_stb_o_UNCONNECTED : STD_LOGIC;
  signal NLW_neo430_top_0_wb_we_o_UNCONNECTED : STD_LOGIC;
  signal NLW_neo430_top_0_ext_ack_o_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_neo430_top_0_freq_gen_o_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal NLW_neo430_top_0_pwm_o_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_neo430_top_0_spi_cs_o_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_neo430_top_0_wb_adr_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_neo430_top_0_wb_dat_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_neo430_top_0_wb_sel_o_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_seven_seg_driver_0_seg_segment_o_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of led_dimmer_0 : label is "SystemTop_led_dimmer_0_0,led_dimmer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of led_dimmer_0 : label is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of led_dimmer_0 : label is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of led_dimmer_0 : label is "led_dimmer,Vivado 2021.2";
  attribute CHECK_LICENSE_TYPE of neo430_top_0 : label is "SystemTop_neo430_top_0_0,neo430_top,{}";
  attribute downgradeipidentifiedwarnings of neo430_top_0 : label is "yes";
  attribute ip_definition_source of neo430_top_0 : label is "module_ref";
  attribute x_core_info of neo430_top_0 : label is "neo430_top,Vivado 2021.2";
  attribute CHECK_LICENSE_TYPE of seven_seg_driver_0 : label is "SystemTop_seven_seg_driver_0_0,seven_seg_driver,{}";
  attribute downgradeipidentifiedwarnings of seven_seg_driver_0 : label is "yes";
  attribute ip_definition_source of seven_seg_driver_0 : label is "module_ref";
  attribute x_core_info of seven_seg_driver_0 : label is "seven_seg_driver,Vivado 2021.2";
  attribute CHECK_LICENSE_TYPE of util_vector_logic_0 : label is "SystemTop_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute downgradeipidentifiedwarnings of util_vector_logic_0 : label is "yes";
  attribute x_core_info of util_vector_logic_0 : label is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.2";
  attribute CHECK_LICENSE_TYPE of xlslice_0 : label is "SystemTop_xlslice_0_0,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings of xlslice_0 : label is "yes";
  attribute x_core_info of xlslice_0 : label is "xlslice_v1_0_2_xlslice,Vivado 2021.2";
  attribute CHECK_LICENSE_TYPE of xlslice_1 : label is "SystemTop_xlslice_1_0,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings of xlslice_1 : label is "yes";
  attribute x_core_info of xlslice_1 : label is "xlslice_v1_0_2_xlslice,Vivado 2021.2";
  attribute CHECK_LICENSE_TYPE of xlslice_2 : label is "SystemTop_xlslice_2_0,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings of xlslice_2 : label is "yes";
  attribute x_core_info of xlslice_2 : label is "xlslice_v1_0_2_xlslice,Vivado 2021.2";
  attribute x_interface_info : string;
  attribute x_interface_info of clk_i : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_I CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk_i : signal is "XIL_INTERFACENAME CLK.CLK_I, CLK_DOMAIN SystemTop_clk_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of uart_rxd_i : signal is "xilinx.com:signal:data:1.0 DATA.UART_RXD_I DATA";
  attribute x_interface_parameter of uart_rxd_i : signal is "XIL_INTERFACENAME DATA.UART_RXD_I, LAYERED_METADATA undef";
  attribute x_interface_info of uart_txd_o : signal is "xilinx.com:signal:data:1.0 DATA.UART_TXD_O DATA";
  attribute x_interface_parameter of uart_txd_o : signal is "XIL_INTERFACENAME DATA.UART_TXD_O, LAYERED_METADATA undef";
  attribute x_interface_info of led_o : signal is "xilinx.com:signal:data:1.0 DATA.LED_O DATA";
  attribute x_interface_parameter of led_o : signal is "XIL_INTERFACENAME DATA.LED_O, LAYERED_METADATA undef";
  attribute x_interface_info of rst_n_i : signal is "xilinx.com:signal:reset:1.0 RST.RST_N_I RST";
  attribute x_interface_parameter of rst_n_i : signal is "XIL_INTERFACENAME RST.RST_N_I, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of seg_module_o : signal is "xilinx.com:signal:data:1.0 DATA.SEG_MODULE_O DATA";
  attribute x_interface_parameter of seg_module_o : signal is "XIL_INTERFACENAME DATA.SEG_MODULE_O, LAYERED_METADATA undef";
  attribute x_interface_info of seg_segment_o : signal is "xilinx.com:signal:data:1.0 DATA.SEG_SEGMENT_O DATA";
  attribute x_interface_parameter of seg_segment_o : signal is "XIL_INTERFACENAME DATA.SEG_SEGMENT_O, LAYERED_METADATA undef";
  attribute x_interface_info of sw_i : signal is "xilinx.com:signal:data:1.0 DATA.SW_I DATA";
  attribute x_interface_parameter of sw_i : signal is "XIL_INTERFACENAME DATA.SW_I, LAYERED_METADATA undef";
begin
  seg_segment_o(7) <= \<const1>\;
  seg_segment_o(6 downto 0) <= \^seg_segment_o\(6 downto 0);
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
led_dimmer_0: entity work.SystemTop_led_dimmer_0_0
     port map (
      led_i(15 downto 0) => neo430_top_0_gpio_o_0(15 downto 0),
      led_o(15 downto 0) => led_o(15 downto 0),
      pwm_i => xlslice_0_Dout
    );
neo430_top_0: entity work.SystemTop_neo430_top_0_0
     port map (
      clk_i => clk_i,
      ext_ack_o(7 downto 0) => NLW_neo430_top_0_ext_ack_o_UNCONNECTED(7 downto 0),
      ext_irq_i(7 downto 0) => B"00000000",
      freq_gen_o(2 downto 1) => NLW_neo430_top_0_freq_gen_o_UNCONNECTED(2 downto 1),
      freq_gen_o(0) => neo430_top_0_n_22,
      gpio_i(15 downto 0) => sw_i(15 downto 0),
      gpio_o(15 downto 0) => neo430_top_0_gpio_o_0(15 downto 0),
      pwm_o(3 downto 1) => NLW_neo430_top_0_pwm_o_UNCONNECTED(3 downto 1),
      pwm_o(0) => Din(0),
      rst_i => util_vector_logic_0_Res,
      spi_cs_o(5 downto 0) => NLW_neo430_top_0_spi_cs_o_UNCONNECTED(5 downto 0),
      spi_miso_i => '0',
      spi_mosi_o => NLW_neo430_top_0_spi_mosi_o_UNCONNECTED,
      spi_sclk_o => NLW_neo430_top_0_spi_sclk_o_UNCONNECTED,
      twi_scl_io => NLW_neo430_top_0_twi_scl_io_UNCONNECTED,
      twi_sda_io => NLW_neo430_top_0_twi_sda_io_UNCONNECTED,
      uart_rxd_i => uart_rxd_i,
      uart_txd_o => uart_txd_o,
      wb_ack_i => '0',
      wb_adr_o(31 downto 0) => NLW_neo430_top_0_wb_adr_o_UNCONNECTED(31 downto 0),
      wb_cyc_o => NLW_neo430_top_0_wb_cyc_o_UNCONNECTED,
      wb_dat_i(31 downto 0) => B"00000000000000000000000000000000",
      wb_dat_o(31 downto 0) => NLW_neo430_top_0_wb_dat_o_UNCONNECTED(31 downto 0),
      wb_sel_o(3 downto 0) => NLW_neo430_top_0_wb_sel_o_UNCONNECTED(3 downto 0),
      wb_stb_o => NLW_neo430_top_0_wb_stb_o_UNCONNECTED,
      wb_we_o => NLW_neo430_top_0_wb_we_o_UNCONNECTED
    );
seven_seg_driver_0: entity work.SystemTop_seven_seg_driver_0_0
     port map (
      bcd_vector_i(15 downto 0) => neo430_top_0_gpio_o_0(15 downto 0),
      clk_i => xlslice_2_Dout,
      en_i => xlslice_1_Dout,
      rst_i => rst_n_i(0),
      seg_module_o(3 downto 0) => seg_module_o(3 downto 0),
      seg_segment_o(7) => NLW_seven_seg_driver_0_seg_segment_o_UNCONNECTED(7),
      seg_segment_o(6 downto 0) => \^seg_segment_o\(6 downto 0)
    );
util_vector_logic_0: entity work.SystemTop_util_vector_logic_0_0
     port map (
      Op1(0) => rst_n_i(0),
      Res(0) => util_vector_logic_0_Res
    );
xlslice_0: entity work.SystemTop_xlslice_0_0
     port map (
      Din(3 downto 1) => B"000",
      Din(0) => Din(0),
      Dout(0) => xlslice_0_Dout
    );
xlslice_1: entity work.SystemTop_xlslice_1_0
     port map (
      Din(15 downto 1) => B"000000000000000",
      Din(0) => sw_i(0),
      Dout(0) => xlslice_1_Dout
    );
xlslice_2: entity work.SystemTop_xlslice_2_0
     port map (
      Din(2 downto 1) => B"00",
      Din(0) => neo430_top_0_n_22,
      Dout(0) => xlslice_2_Dout
    );
end STRUCTURE;
