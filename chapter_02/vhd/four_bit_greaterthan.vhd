library ieee;
use ieee.std_logic_1164.all;

entity four_bit_greaterthan is

  port (
    a, b:   in  std_logic_vector(3 downto 0);
    a_gt_b: out std_logic
    );

end four_bit_greaterthan;

architecture arch of four_bit_greaterthan is

  signal a32_gt_b32, a32_eq_b32 : std_logic;
  signal a10_gt_b10, a10_eq_b10 : std_logic;

begin

  bit32_eq: entity work.two_bit_comparator(arch)
    port map(a => a(3 downto 2), b => b(3 downto 2), a_eq_b => a32_eq_b32);

  bit10_eq: entity work.two_bit_comparator(arch)
    port map(a => a(1 downto 0), b => b(1 downto 0), a_eq_b => a10_eq_b10);

  bit32_gt: entity work.two_bit_greaterthan(arch)
    port map(a => a(3 downto 2), b => b(3 downto 2), a_gt_b => a32_gt_b32);

  bit10_gt: entity work.two_bit_greaterthan(arch)
    port map(a => a(1 downto 0), b => b(1 downto 0), a_gt_b => a10_gt_b10);

  a_gt_b <= a32_gt_b32 or (a32_eq_b32 and a10_gt_b10);
  
end arch;

