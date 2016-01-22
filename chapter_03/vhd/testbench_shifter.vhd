library ieee;
use ieee.std_logic_1164.all;

entity testbench_shifter is
end testbench_shifter;

architecture arch of testbench_shifter is

  signal amount : std_logic_vector(2 downto 0);
  signal input  : std_logic_vector(7 downto 0);
  signal output : std_logic_vector(7 downto 0);

begin

  uut_smart: entity work.shifter_smart(arch)
  -- uut_dumb:  entity work.shifter_dumb(arch)
    port map(amount => amount,
             input  => input,
             output => output
             );

  process
  begin

    amount <= "000"; input <= "00000001"; wait for 100 ns;
    amount <= "001"; input <= "00000001"; wait for 100 ns;
    amount <= "010"; input <= "00000001"; wait for 100 ns;
    amount <= "011"; input <= "00000001"; wait for 100 ns;
    amount <= "100"; input <= "00000001"; wait for 100 ns;
    amount <= "101"; input <= "00000001"; wait for 100 ns;
    amount <= "110"; input <= "00000001"; wait for 100 ns;
    amount <= "111"; input <= "00000001"; wait for 100 ns;
  
  end process;
  
end arch;

