library ieee;
use ieee.std_logic_1164.all;

entity decoder_case is

  port (
    en     :  in std_logic;
    input  :  in std_logic_vector(1 downto 0);
    output : out std_logic_vector(3 downto 0)
    );

end decoder_case;

architecture arch of decoder_case is

  signal en_and_input: std_logic_vector(2 downto 0);
  
begin

  en_and_input <= en & input;
  
  process(en_and_input)
  begin

    case en_and_input is

      when "100"  => output <= "0001";
      when "101"  => output <= "0010";
      when "110"  => output <= "0100";
      when "111"  => output <= "1000";
      when others => output <= "0000";
                     
    end case;
  end process;
end arch;

