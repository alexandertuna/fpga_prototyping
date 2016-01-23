library ieee;
use ieee.std_logic_1164.all;

entity reverser is

  port(
    en     :  in std_logic;
    input  :  in std_logic_vector(7 downto 0);
    output : out std_logic_vector(7 downto 0)
    );

end reverser;

architecture arch of reverser is

begin
  
  output <= input when en='0' else input(0) &
                                   input(1) &
                                   input(2) &
                                   input(3) &
                                   input(4) &
                                   input(5) &
                                   input(6) &
                                   input(7);

end arch;

