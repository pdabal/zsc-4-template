library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity led_dimmer is
  generic (
    length_g : natural
  );
  port (
    led_i : in std_logic_vector((length_g - 1) downto 0);
    led_o : out std_logic_vector((length_g - 1) downto 0);
    pwm_i : in std_logic
  );
end entity;

architecture rtl of led_dimmer is
  signal pwm_s : std_logic_vector((length_g - 1) downto 0);
begin

  SetPWM : for i in 0 to (length_g - 1) generate
    pwm_s(i) <= pwm_i;
  end generate;

  VectorGate : entity work.gate_vector_and
    generic map(
      length_g => length_g    )
    port map(
      a_i => led_i,
      b_i => pwm_s,
      o_o => led_o);

end architecture;