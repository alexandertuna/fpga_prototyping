library ieee;
use ieee.std_logic_1164.all;

entity decoder_1to2 is

  port (
    en:      in std_logic;
    input:   in std_logic;
    output: out std_logic_vector(1 downto 0)
    );

end decoder_1to2;

architecture arch of decoder_1to2 is

begin

  output(0) <= en and not input;
  output(1) <= en and     input;
  
end arch;

