library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_4_to_1 is
  generic (
    lenght_g : natural := 8
  );
  port (
    d_i_0 : in std_logic_vector((lenght_g - 1) downto 0);
    d_i_1 : in std_logic_vector((lenght_g - 1) downto 0);
    d_i_2 : in std_logic_vector((lenght_g - 1) downto 0);
    d_i_3 : in std_logic_vector((lenght_g - 1) downto 0);
    sel_i : in std_logic_vector(1 downto 0);
    q_o : out std_logic_vector((lenght_g - 1) downto 0)
  );
end mux_4_to_1;

architecture arch of mux_4_to_1 is

begin
    q_o <=  d_i_0 when (sel_i = "00") else 
            d_i_1 when (sel_i = "01") else
            d_i_2 when (sel_i = "10") else
            d_i_3 when (sel_i = "11");

end architecture; -- arch