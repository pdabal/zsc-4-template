library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd_to_seg is
  port (
    bcd_i : in std_logic_vector(3 downto 0);
    seg_o : out std_logic_vector(6 downto 0)
  );
end entity bcd_to_seg;

architecture rtl of bcd_to_seg is

begin
  process (bcd_i)
  begin
    case(bcd_i) is
      when "0000" => seg_o <= "1000000"; -- 0
      when "0001" => seg_o <= "1111001"; -- 1
      when "0010" => seg_o <= "0100100"; -- 2
      when "0011" => seg_o <= "0110000"; -- 3
      when "0100" => seg_o <= "0011001"; -- 4
      when "0101" => seg_o <= "0010010"; -- 5
      when "0110" => seg_o <= "0000010"; -- 6
      when "0111" => seg_o <= "1111000"; -- 7
      when "1000" => seg_o <= "0000000"; -- 8
      when "1001" => seg_o <= "0010000"; -- 9
      when "1010" => seg_o <= "0001000"; -- A
      when "1011" => seg_o <= "0000011"; -- b
      when "1100" => seg_o <= "0100111"; -- c
      when "1101" => seg_o <= "0100001"; -- d
      when "1110" => seg_o <= "0000110"; -- E
      when "1111" => seg_o <= "0001110"; -- F
      when others => seg_o <= "1111111"; -- error
    end case;    
  end process;
end architecture;