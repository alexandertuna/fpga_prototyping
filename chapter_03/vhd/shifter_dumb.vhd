library ieee;
use ieee.std_logic_1164.all;

entity shifter_dumb is

  port (
    amount :  in std_logic_vector(2 downto 0);
    input  :  in std_logic_vector(7 downto 0);
    output : out std_logic_vector(7 downto 0)
    );

end shifter_dumb;
  
architecture arch of shifter_dumb is

begin

  with amount select
    output <= input                                 when "000",
              input(0)          & input(7 downto 1) when "001",
              input(1 downto 0) & input(7 downto 2) when "010",
              input(2 downto 0) & input(7 downto 3) when "011",
              input(3 downto 0) & input(7 downto 4) when "100",
              input(4 downto 0) & input(7 downto 5) when "101",
              input(5 downto 0) & input(7 downto 6) when "110",
              input(6 downto 0) & input(7)          when others; -- "111"
  
end arch;


