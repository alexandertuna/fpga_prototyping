library ieee;
use ieee.std_logic_1164.all;

entity encoder_else is

  port (
    input:   in std_logic_vector(3 downto 0);
    output: out std_logic_vector(2 downto 0)
    );

end encoder_else;

architecture arch of encoder_else is

begin

  output <= "100" (input(3)='1') else
            "011" (input(2)='1') else
            "010" (input(1)='1') else
            "001" (input(0)='1') else
            "000";
                       
end arch;

