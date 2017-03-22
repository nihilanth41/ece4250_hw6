library ieee;
use ieee.std_logic_1164.all;

package ECE4250_HW6 is
  function comlement(datavec : std_logic_vector; n : integer) return std_logic_vector;
  --procedure ADDMATRIX(signal a : in matrix_t;
  --                    signal b : in matrix_t;
  --                    signal c : out matrix_t);
end;

package body ECE4250_HW6 is
  -- datavec is bit vector, n is size of bit vector (# of bits)
  function comlement(datavec : std_logic_vector; n : integer) return std_logic_vector is 
    variable result : std_logic_vector(n-1 downto 0) := (others => '0');
  begin
    result := std_logic_vector(unsigned(not(datavec)) + 1);
    return result;
  end comlement;
  
   --  procedure ADDMATRIX(signal a : in matrix_t; 
   --                      signal b : in matrix_t;
   --                      signal c : out matrix_t) is
   --    -- local var declarations
   --    variable c_tmp : matrix_t(a'range) := (others => 0);
   --    variable row_tmp : row_t(a'range(a'low)) := (others => 0);
   --  begin
   --    -- check that matricies have same # of rows
   --    assert(a'length=c'length) report "Error rows mismatch" severity error;
   --    -- check that each row has the same number of columns in both matricies
   --    for i in a'low to a'high loop
   --      assert(a(i)'length=b(i)'length) report "Error columns mismatch" severity;
   --        c_tmp(i)(j) := a(i)(j)+b(i)(j);
   --      end loop;
   --    end loop;
   --        c <= c_tmp;
  --  end ADDMATRIX;

end package;
