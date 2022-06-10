library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity tb_seven_seg_driver is
end entity;

architecture tb of tb_seven_seg_driver is
  signal clk_s : std_logic := '1';
  signal rst_s : std_logic := '0';
  signal en_s : std_logic := '0';
  signal bcd_vector_s : std_logic_vector(15 downto 0) := (others => '0');
  signal seg_module_s : std_logic_vector(3 downto 0) := (others => '0');
  signal seg_segment_s : std_logic_vector(7 downto 0) := (others => '0');

  constant clk_period_c : time := 10 ns;

begin

  process
  begin
    clk_s <= '1';
    wait for clk_period_c / 2;
    clk_s <= '0';
    wait for clk_period_c / 2;
  end process;

  INPUT_DATA_proc : process 
  begin
    wait for clk_period_c * 10;
    InputFor : for i in 0 to 256 loop
      bcd_vector_s <= std_logic_vector(to_unsigned(i, bcd_vector_s'length));
        wait for clk_period_c * 16;
    end loop; -- InputFor
    wait;
  end process;

  TB_Process : process 
  begin
    wait for clk_period_c * 3;
    rst_s <= '1';
    wait for clk_period_c * 3;
    rst_s <= '0';
    wait for clk_period_c * 3;
    en_s <= '1';

    wait;
  end process;

  T_inst : entity work.seven_seg_driver
    port map(
      clk_i => clk_s,
      rst_i => rst_s,
      en_i => en_s,
      bcd_vector_i => bcd_vector_s,
      seg_module_o => seg_module_s,
      seg_segment_o => seg_segment_s
    );

end architecture;