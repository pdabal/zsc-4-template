library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library extras;
use extras.sizing.all;
entity counter_up is
  generic (
    modulo_g : natural := 4
  );
  port (
    clk_i : in std_logic;
    rst_i : in std_logic;
    en_i : in std_logic;
    q_o : out std_logic_vector((bit_size(modulo_g - 1) - 1) downto 0)
  );
end entity counter_up;

architecture rtl of counter_up is
  signal counter_sr : std_logic_vector((bit_size(modulo_g - 1) - 1) downto 0) := (others => '0');
begin

  q_o <= counter_sr;

  process (clk_i, rst_i)
  begin
    if rst_i = '1' then
      counter_sr <= (others => '0');
    elsif rising_edge(clk_i) then
      if (en_i = '1') then
        if (counter_sr = std_logic_vector(to_signed(modulo_g - 1, counter_sr'length))) then
          counter_sr <= (others => '0');
        else
          counter_sr <= std_logic_vector(signed(counter_sr) + to_signed(1, counter_sr'length));
        end if;
      else
        counter_sr <= counter_sr;
      end if;
    end if;
  end process;

end architecture;