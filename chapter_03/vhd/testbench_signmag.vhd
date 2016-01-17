library ieee;
use ieee.std_logic_1164.all;

entity testbench_signmag is
end testbench_signmag;

architecture arch of testbench_signmag is

  signal input1, input2 : std_logic_vector(3 downto 0);
  signal output         : std_logic_vector(3 downto 0);

begin

  unit_under_test: entity work.sign_magnitude_adder(arch)
    generic map (NBITS => 4)
    port map(input1 => input1,
             input2 => input2,
             output => output
             );

  process
  begin

    input1 <= "0000"; input2 <= "0000"; wait for 100 ns;
    input1 <= "0011"; input2 <= "0001"; wait for 100 ns;
    input1 <= "0011"; input2 <= "1001"; wait for 100 ns;
    input1 <= "0111"; input2 <= "1001"; wait for 100 ns;
  
  end process;
  
end arch;

