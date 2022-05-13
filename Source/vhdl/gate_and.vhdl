library ieee;
use ieee.std_logic_1164.all;

entity gate_and is
    port (
        a   : in std_logic;
        b : in std_logic;
        o : out std_logic         
    );
end entity;

architecture rtl of gate_and is
    signal output_s :std_logic;
begin

    output_s <= a AND b;
    
    o <= output_s;

end architecture;
