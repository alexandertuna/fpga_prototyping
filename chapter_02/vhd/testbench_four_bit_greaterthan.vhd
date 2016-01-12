library ieee;
use ieee.std_logic_1164.all;

entity testbench_4bit is
end testbench_4bit;

architecture arch of testbench_4bit is

  signal input_0, input_1 : std_logic_vector(3 downto 0);
  signal output           : std_logic;

begin

  unit_under_test: entity work.four_bit_greaterthan(arch)
    port map(a      => input_0,
             b      => input_1,
             a_gt_b => output
             );

  process
  begin
  
    input_0 <= "0000";
    input_1 <= "0000";
    wait for 200 ns;
  
    input_0 <= "0101";
    input_1 <= "0011";
    wait for 200 ns;
  
    input_0 <= "0110";
    input_1 <= "1100";
    wait for 200 ns;
  
    input_0 <= "1110";
    input_1 <= "1101";
    wait for 200 ns;
  
    input_0 <= "1100";
    input_1 <= "0000";
    wait for 200 ns;

  end process;
  
end arch;

