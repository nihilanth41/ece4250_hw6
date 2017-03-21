library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- write a vhdl function to create the 2's complement of an n-bit vector. 
-- call like: comlement(a, 4);

entity comlement_tb is
end comlement_tb;

architecture comlement_tb_arch of comlement_tb is

-- datavec is bit vector, n is size of bit vector (# of bits)
  function comlement(datavec : std_logic_vector; n : integer) return std_logic_vector is 
    variable result : std_logic_vector(n-1 downto 0) := (others => '0');
  begin
    result := std_logic_vector(unsigned(not(datavec)) + 1);
    return result;
  end comlement;
  
  signal result1 : std_logic_vector(3 downto 0) := (others => '0');
  signal result2 : std_logic_vector(7 downto 0) := (others => '0');
begin

  result1 <= comlement("1101", 4);
  result2 <= comlement("11010001", 8) after 500 ns;

end comlement_tb_arch;
