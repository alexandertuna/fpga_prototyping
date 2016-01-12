library ieee;
use ieee.std_logic_1164.all;

entity two_bit_greaterthan is

  port (
    a, b:   in  std_logic_vector(1 downto 0);
    a_gt_b: out std_logic
    );

end two_bit_greaterthan;

architecture arch of two_bit_greaterthan is

  signal a1_gt_b1 : std_logic;
  signal a1_eq_b1 : std_logic;
  signal a0_gt_b0 : std_logic;
  
begin

  bit1_eq: entity work.one_bit_comparator(arch)
    port map(a => a(1), b => b(1), a_eq_b => a1_eq_b1);

  bit1_gt: entity work.one_bit_greaterthan(arch)
    port map(a => a(1), b => b(1), a_gt_b => a1_gt_b1);

  bit0_gt: entity work.one_bit_greaterthan(arch)
    port map(a => a(0), b => b(0), a_gt_b => a0_gt_b0);

  a_gt_b <= a1_gt_b1 or (a1_eq_b1 and a0_gt_b0);
  
end arch;

