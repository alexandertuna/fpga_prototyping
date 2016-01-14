library ieee;
use ieee.std_logic_1164.all;

entity encoder_case is

  port (
    input:   in std_logic_vector(3 downto 0);
    output: out std_logic_vector(2 downto 0)
    );

end encoder_case;

architecture arch of encoder_case is

begin

  process(input)
  begin

    case input is
      when "0000"                      => output <= "000";
      when "0001"                      => output <= "001";
      when "0010"|"0011"               => output <= "010";
      when "0100"|"0101"|"0110"|"0111" => output <= "011";
      when others                      => output <= "100";
    end case;
    
  end process;
                       
end arch;

