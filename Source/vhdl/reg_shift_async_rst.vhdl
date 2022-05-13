library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_shift_async_rst is
  generic (
    lenght_g : natural := 4;
    init_g : integer := 0
  );
  port (
    clk_i : in std_logic;
    rst_i : in std_logic;
    en_i : in std_logic;
    d_i : in std_logic;
    d_o : out std_logic;
    q_o : out std_logic_vector((lenght_g - 1) downto 0)
  );
end entity reg_shift_async_rst;

architecture rtl of reg_shift_async_rst is
  signal reg_shift_sr : std_logic_vector((lenght_g - 1) downto 0) := std_logic_vector(to_signed(init_g, lenght_g));
begin

  q_o <= reg_shift_sr;
  d_o <= reg_shift_sr(lenght_g - 1);

  process (clk_i, rst_i)
  begin
    if rst_i = '1' then
      reg_shift_sr <= std_logic_vector(to_signed(init_g, lenght_g));
    elsif rising_edge(clk_i) then
      if (en_i = '1') then
        reg_shift_sr <= reg_shift_sr((lenght_g - 2) downto 0) & d_i;
      else
        reg_shift_sr <= reg_shift_sr;
      end if;
    end if;
  end process;

end architecture;