library ieee;
use ieee.std_logic_1164.all;

entity testbench_reverser is
end testbench_reverser;

architecture arch of testbench_reverser is

  signal en     : std_logic;
  signal input  : std_logic_vector(7 downto 0);
  signal output : std_logic_vector(7 downto 0);

begin

  unit_under_test: entity work.reverser(arch)
    port map(en     => en,
             input  => input,
             output => output
             );

  process
  begin

    en <= '0'; input <= "00001111"; wait for 100 ns;
    en <= '1'; input <= "00001111"; wait for 100 ns;
    
  end process;
  
end arch;

