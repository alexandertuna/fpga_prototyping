library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file is
  generic (
    NBITS: integer := 8;
    NADDR: integer := 2
    );
  port (
    clk, reset :  in std_logic;
    write_en   :  in std_logic;
    write_addr :  in std_logic_vector(NADDR-1 downto 0);
    read_addr  :  in std_logic_vector(NADDR-1 downto 0);
    write_data :  in std_logic_vector(NBITS-1 downto 0);
    read_data  : out std_logic_vector(NBITS-1 downto 0)
    );
end register_file;

architecture arch of register_file is

  type register_file_type is array (2**NADDR-1 downto 0) of std_logic_vector(NBITS-1 downto 0);
  signal array_register: register_file_type;

begin

  process(clk, reset)
  begin

    if (reset='1') then
      array_register <= (others => (others => '0'));

    elsif (rising_edge(clk)) then
      if write_en='1' then
        array_register(to_integer(unsigned(write_addr))) <= write_data;
      end if;
    end if;

  end process;

  read_data <= array_register(to_integer(unsigned(read_addr)));

end arch;

