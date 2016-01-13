library ieee;
use ieee.std_logic_1164.all;

entity decoder_3to8 is

  port (
    en:      in std_logic;
    input:   in std_logic_vector(2 downto 0);
    output: out std_logic_vector(7 downto 0)
    );

end decoder_3to8;

architecture arch of decoder_3to8 is

  signal en_and_input2 : std_logic;
  signal en_not_input2 : std_logic;
  signal output_MSB    : std_logic_vector(3 downto 0);
  signal output_LSB    : std_logic_vector(3 downto 0);
  
begin

  en_and_input2 <= en and     input(2);
  en_not_input2 <= en and not input(2);
  
  decoder_MSB: entity work.decoder_2to4(arch)
    port map(en     => en_and_input2,
             input  => input(1 downto 0),
             output => output_MSB);
  
  decoder_LSB: entity work.decoder_2to4(arch)
    port map(en     => en_not_input2,
             input  => input(1 downto 0),
             output => output_LSB);
  
  output <= output_MSB & output_LSB;
  
end arch;

