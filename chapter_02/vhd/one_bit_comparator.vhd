library ieee;
use ieee.std_logic_1164.all;

entity one_bit_comparator is
  port(
    a, b:   in  std_logic;
    a_eq_b: out std_logic
    );
end one_bit_comparator;

architecture arch of one_bit_comparator is

  signal p0, p1: std_logic;
  
begin

  p0     <= (not a) and (not b);
  p1     <= a and b;
  a_eq_b <= p0 or p1;

end arch;


