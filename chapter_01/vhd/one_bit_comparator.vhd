library ieee;
use ieee.std_logic_1164.all;

entity one_bit_comparator is
  port(
    i0, i1: in  std_logic;
    eq:     out std_logic
    );
end one_bit_comparator;

architecture sum_of_products of one_bit_comparator is

  signal p0, p1: std_logic;
  
begin

  p0 <= (not i0) and (not i1);
  p1 <= i0 and i1;
  eq <= p0 or p1;

end sum_of_products;


