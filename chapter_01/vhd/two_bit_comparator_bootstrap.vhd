library ieee;
use ieee.std_logic_1164.all;

entity two_bit_comparator_bootstrap is

  port (
    a, b:   in  std_logic_vector(1 downto 0);
    a_eq_b: out std_logic
    );

end two_bit_comparator_bootstrap;

architecture sum_of_products of two_bit_comparator_bootstrap is

  signal eq0, eq1: std_logic;
  
begin

  bit0_eq: entity work.one_bit_comparator(sum_of_products)
    port map(
      i0 => a(0),
      i1 => b(0),
      eq => eq0
      );

  bit1_eq: entity work.one_bit_comparator(sum_of_products)
    port map(
      i0 => a(1),
      i1 => b(1),
      eq => eq1
      );

  a_eq_b <= eq0 and eq1;
  
end sum_of_products;

