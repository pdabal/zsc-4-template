library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity reg_async_rst is
  generic (
    lenght_g : natural := 8;
    init_g : integer := 0
  );
  port (
    clk_i : in std_logic;
    rst_i : in std_logic;
    en_i : in std_logic;
    d_i : in std_logic_vector((lenght_g - 1) downto 0);
    q_o : out std_logic_vector((lenght_g - 1) downto 0)
  );
end entity reg_async_rst;

architecture rtl of reg_async_rst is
  signal register_sr : std_logic_vector((lenght_g - 1) downto 0) := std_logic_vector(to_signed(init_g, lenght_g));
begin
  
  q_o <= register_sr;

  process (clk_i, rst_i)
  begin
    if rst_i = '1' then
      register_sr <= std_logic_vector(to_signed(init_g, lenght_g));
    elsif rising_edge(clk_i) then
      if (en_i = '1') then
        register_sr <= d_i;
      else
        register_sr <= register_sr;
      end if;
    end if;
  end process;

end architecture;