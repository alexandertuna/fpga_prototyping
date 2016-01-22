library ieee;
use ieee.std_logic_1164.all;

entity shifter_smart is

  port (
    amount :  in std_logic_vector(2 downto 0);
    input  :  in std_logic_vector(7 downto 0);
    output : out std_logic_vector(7 downto 0)
    );

end shifter_smart;
  
architecture arch of shifter_smart is

  signal inter_0, inter_1: std_logic_vector(7 downto 0);
  
begin

  inter_0 <= input(0)            &   input(7 downto 1) when amount(0)='1' else input;
  inter_1 <= inter_0(1 downto 0) & inter_0(7 downto 2) when amount(1)='1' else inter_0;
  output  <= inter_1(3 downto 0) & inter_1(7 downto 4) when amount(2)='1' else inter_1;

end arch;

