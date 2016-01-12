library ieee;
use ieee.std_logic_1164.all;

entity testbench_2bit is
end testbench_2bit;

architecture arch of testbench_2bit is

  signal input_0, input_1 : std_logic_vector(1 downto 0);
  signal output           : std_logic;

begin

  unit_under_test: entity work.two_bit_greaterthan(arch)
    port map(a      => input_0,
             b      => input_1,
             a_gt_b => output
             );

  process
  begin
  
    input_0 <= "00";
    input_1 <= "00";
    wait for 200 ns;
  
    input_0 <= "01";
    input_1 <= "00";
    wait for 200 ns;
  
    input_0 <= "01";
    input_1 <= "11";
    wait for 200 ns;
  
    input_0 <= "11";
    input_1 <= "11";
    wait for 200 ns;
  
    input_0 <= "11";
    input_1 <= "00";
    wait for 200 ns;

  end process;
  
end arch;

