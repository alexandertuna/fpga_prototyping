library ieee;
use ieee.std_logic_1164.all;

entity testbench_3to8 is
end testbench_3to8;

architecture arch of testbench_3to8 is

  signal en     : std_logic;
  signal input  : std_logic_vector(2 downto 0);
  signal output : std_logic_vector(7 downto 0);

begin

  unit_under_test: entity work.decoder_3to8(arch)
    port map(en     => en,
             input  => input,
             output => output
             );

  process
  begin

    en <= '0'; input <= "000"; wait for 100 ns;
    en <= '0'; input <= "111"; wait for 100 ns;
    
    en <= '1'; input <= "000"; wait for 100 ns;
    en <= '1'; input <= "001"; wait for 100 ns;
    en <= '1'; input <= "010"; wait for 100 ns;
    en <= '1'; input <= "011"; wait for 100 ns;
    en <= '1'; input <= "100"; wait for 100 ns;
    en <= '1'; input <= "101"; wait for 100 ns;
    en <= '1'; input <= "110"; wait for 100 ns;
    en <= '1'; input <= "111"; wait for 100 ns;
  
  end process;
  
end arch;

