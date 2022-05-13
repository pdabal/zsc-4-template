library ieee;
use ieee.std_logic_1164.all;
entity gate_vector_and is
  generic (
    length_g : natural
  );
  port (
    a_i : in std_logic_vector((length_g - 1) downto 0);
    b_i : in std_logic_vector((length_g - 1) downto 0);
    o_o : out std_logic_vector((length_g - 1) downto 0)
  );
end entity;

architecture rtl of gate_vector_and is
  signal output_s : std_logic_vector((length_g - 1) downto 0);
begin

  GateInstLoop : for i in 0 to (length_g - 1) generate
    GATE_inst : entity work.gate_and
      port map(
        a => a_i(i),
        b => b_i(i),
        o => output_s(i)
      );
  end generate;

    o_o <= output_s;

end architecture;