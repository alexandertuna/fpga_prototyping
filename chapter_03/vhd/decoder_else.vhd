library ieee;
use ieee.std_logic_1164.all;

entity decoder_else is

  port (
    en     :  in std_logic;
    input  :  in std_logic_vector(1 downto 0);
    output : out std_logic_vector(3 downto 0)
    );

end decoder_else;

architecture arch of decoder_else is

begin

  output <= "0000"     (en='0')     else
            "0001"     (input="00") else
            "0010"     (input="01") else
            "0100"     (input="10") else
            "1000"; -- (input="11") else
                       
end arch;

