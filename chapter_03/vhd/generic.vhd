library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_with_generic is

  generic(NBITS: integer := 4);

  port (
    input1, input2 :  in std_logic_vector(NBITS-1 downto 0);
    output         : out std_logic_vector(NBITS   downto 0)
    );

end adder_with_generic;
  
architecture arch of adder_with_generic is

  signal input1_lead0, input2_lead0: unsigned(NBITS downto 0);

begin
    
  input1_lead0 <= unsigned('0' & input1);
  input2_lead0 <= unsigned('0' & input2);

  output <= std_logic_vector(input1_lead0 + input2_lead0);

end arch;


