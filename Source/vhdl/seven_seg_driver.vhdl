library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seven_seg_driver is
  port (
    clk_i : in std_logic;
    rst_i : in std_logic;
    en_i : in std_logic;
    bcd_vector_i : in std_logic_vector(15 downto 0);
    seg_segment_o : out std_logic_vector(7 downto 0);
    seg_module_o : out std_logic_vector(3 downto 0)
  );
end entity seven_seg_driver;

architecture rtl of seven_seg_driver is
  signal data_shift_s : std_logic;
  signal seg_select_s : std_logic_vector(1 downto 0);
  signal seg_segment_s : std_logic_vector(6 downto 0);
  signal bcd_digit_s : std_logic_vector(3 downto 0);
  signal bcd_vector_s : std_logic_vector(15 downto 0);
begin

  SEG_MODULE_DRV_Inst : entity work.reg_shift_async_rst
    generic map(lenght_g => 4, init_g => 14)
    port map(
      clk_i => clk_i, rst_i => rst_i, en_i => en_i,
      d_i => data_shift_s, d_o => data_shift_s, q_o => seg_module_o);

  CNT_MODULE_SELECT_Inst : entity work.counter_up
    generic map(modulo_g => 4)
    port map(
      clk_i => clk_i, rst_i => rst_i, en_i => en_i,
      q_o => seg_select_s);

  SEG_SEGMENT_OUT_REG_Inst : entity work.reg_async_rst
    generic map(lenght_g => seg_segment_s'length, init_g => 0)
    port map(
      clk_i => clk_i, rst_i => rst_i, en_i => en_i,
      d_i => seg_segment_s, q_o => seg_segment_o(6 downto 0));

  BCD_TO_SEG_Inst : entity work.bcd_to_seg
    port map(bcd_i => bcd_digit_s, seg_o => seg_segment_s);

  MUX_DIGIT_Inst : entity work.mux_4_to_1
    generic map(lenght_g => bcd_digit_s'length)
    port map(
      d_i_0 => bcd_vector_s(3 downto 0), d_i_1 => bcd_vector_s(7 downto 4),
      d_i_2 => bcd_vector_s(11 downto 8), d_i_3 => bcd_vector_s(15 downto 12),
      sel_i => seg_select_s, q_o => bcd_digit_s);

  DIGIT_REGs_Inst : for i in 1 to 4 generate
    REG_Inst : entity work.reg_async_rst
      generic map(lenght_g => bcd_digit_s'length, init_g => 0)
      port map(
        clk_i => clk_i, rst_i => rst_i, en_i => en_i,
        d_i => bcd_vector_i((i * 4 - 1) downto ((i - 1) * 4)),
        q_o => bcd_vector_s((i * 4 - 1) downto ((i - 1) * 4))
      );
  end generate;

end architecture;