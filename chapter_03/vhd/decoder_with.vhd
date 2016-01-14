library ieee;
use ieee.std_logic_1164.all;

entity decoder_with is

  port (
    en     :  in std_logic;
    input  :  in std_logic_vector(1 downto 0);
    output : out std_logic_vector(3 downto 0)
    );

end decoder_with;

architecture arch of decoder_with is

  signal en_and_input: std_logic_vector(2 downto 0);
  
begin

  en_and_input <= en & input;

  with en_and_input select

    output <= "0001" when "100",
              "0010" when "101",
              "0100" when "110",
              "1000" when "111",
              "0000" when others; -- "0*"
  
                       
end arch;

