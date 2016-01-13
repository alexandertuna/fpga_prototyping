library ieee;
use ieee.std_logic_1164.all;

entity decoder_2to4 is

  port (
    en:      in std_logic;
    input:   in std_logic_vector(1 downto 0);
    output: out std_logic_vector(3 downto 0)
    );

end decoder_2to4;

architecture arch of decoder_2to4 is

  signal en_and_input1 : std_logic;
  signal en_not_input1 : std_logic;
  signal output_MSB    : std_logic_vector(1 downto 0);
  signal output_LSB    : std_logic_vector(1 downto 0);
  
begin

  en_and_input1 <= en and     input(1);
  en_not_input1 <= en and not input(1);
  
  decoder_MSB: entity work.decoder_1to2(arch)
    port map(en     => en_and_input1,
             input  => input(0),
             output => output_MSB);
  
  decoder_LSB: entity work.decoder_1to2(arch)
    port map(en     => en_not_input1,
             input  => input(0),
             output => output_LSB);
  
  output <= output_MSB & output_LSB;
  
end arch;

