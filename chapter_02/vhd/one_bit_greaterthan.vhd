library ieee;
use ieee.std_logic_1164.all;

entity one_bit_greaterthan is

  port (
    a, b:   in  std_logic;
    a_gt_b: out std_logic
    );

end one_bit_greaterthan;

architecture arch of one_bit_greaterthan is

begin

  a_gt_b <= a and not b;
  
end arch;

