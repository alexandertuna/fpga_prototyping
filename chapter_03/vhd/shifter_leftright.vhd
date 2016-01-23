library ieee;
use ieee.std_logic_1164.all;

entity shifter_leftright is

  port (
    shiftleft:  in std_logic;
    amount:     in std_logic_vector(2 downto 0);
    input:      in std_logic_vector(7 downto 0);
    output:    out std_logic_vector(7 downto 0)
    );

end shifter_leftright;

architecture arch of shifter_leftright is

  signal reversed_0 : std_logic_vector(7 downto 0);
  signal shifted    : std_logic_vector(7 downto 0);
  signal reversed_1 : std_logic_vector(7 downto 0);
  
begin

  reverser_0: entity work.reverse(arch)
    port map(en     => shiftleft,
             input  => input,
             output => reversed_0);
  
  shifter: entity work.shifter_smart(arch)
    port map(amount => amount,
             input  => reversed_0,
             output => shifted);
  
  reverser_1: entity work.reverse(arch)
    port map(en     => shiftleft,
             input  => shifted,
             output => output);
  
end arch;

