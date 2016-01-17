library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sign_magnitude_adder is

  generic(NBITS: integer := 4);

  port (
    input1, input2 :  in std_logic_vector(NBITS-1 downto 0);
    output         : out std_logic_vector(NBITS-1 downto 0)
    );

end sign_magnitude_adder;
  
architecture arch of sign_magnitude_adder is

  signal magnitude_input1, magnitude_input2          : unsigned(NBITS-2 downto 0);
  signal magnitude_sum, magnitude_max, magnitude_min : unsigned(NBITS-2 downto 0);
  signal sign_input1, sign_input2, sign_sum          : std_logic;
  
begin

  magnitude_input1 <= unsigned(input1(NBITS-2 downto 0));
  magnitude_input2 <= unsigned(input2(NBITS-2 downto 0));
  sign_input1 <= input1(NBITS-1);
  sign_input2 <= input2(NBITS-1);
  
  process(magnitude_input1, magnitude_input2, sign_input1, sign_input2)
  begin
    if magnitude_input1 > magnitude_input2 then
      magnitude_max <= magnitude_input1;
      magnitude_min <= magnitude_input2;
      sign_sum      <= sign_input1;
    else
      magnitude_max <= magnitude_input2;
      magnitude_min <= magnitude_input1;
      sign_sum      <= sign_input2;
    end if;
  end process;
  
  magnitude_sum <= magnitude_max + magnitude_min when sign_input1 = sign_input2 else
                   magnitude_max - magnitude_min;

  output <= std_logic_vector(sign_sum & magnitude_sum);

end arch;


