library ieee;
use ieee.std_logic_1164.all;

entity encoder_elif is

  port (
    input:   in std_logic_vector(3 downto 0);
    output: out std_logic_vector(2 downto 0)
    );

end encoder_elif;

architecture arch of encoder_elif is

begin

  process(input)
  begin

    if    (input(3)='1') then output <= "100";
    elsif (input(2)='1') then output <= "011";
    elsif (input(1)='1') then output <= "010";
    elsif (input(0)='1') then output <= "001";
    else                      output <= "000";
    end if;

  end process;
                              
end arch;

