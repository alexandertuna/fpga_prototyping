library ieee;
use ieee.std_logic_1164.all;

entity decoder_elif is

  port (
    en     :  in std_logic;
    input  :  in std_logic_vector(1 downto 0);
    output : out std_logic_vector(3 downto 0)
    );

end decoder_elif;

architecture arch of decoder_elif is

begin

  process(en, input)
  begin

    if    (en='0')     then output <= "0000";
    elsif (input="00") then output <= "0001";
    elsif (input="01") then output <= "0010";
    elsif (input="10") then output <= "0100";
    elsif (input="11") then output <= "1000";

    end if;

  end process;
                       
end arch;

