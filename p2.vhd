library ieee;
use ieee.std_logic_1164.all;

entity addmatrix_tb
end addmatrix_tb;

architecture addmatrix_tb_arch of addmatrix_tb is
--  type matrix is array(integer range <>,
                       integer range <>) of real;

    -- procedure params have direction
    -- C <= A+B (matrix)
    procedure ADDMATRIX(signal a : in matrix; 
                        signal b : in matrix;
                        signal c : out matrix) is
      -- local var declarations
      variable c_tmp : matrix(a'range, a(a'low)'range) := (others => 0);
    begin
      -- check that matricies have same # of rows
      assert(a'length=c'length) report "Error rows mismatch" severity error;
      -- check that each row has the same number of columns in both matricies
      for i in a'low to a'high loop
	-- sequential statements
        assert(a(i)'length=b(i)'length) report "Error columns mismatch" serverity error;
        for j in a(i)'low to a(i)'high loop
          c(i)(j) := a(i)(j)+b(i)(j);
        end loop
      end loop
          c <= c_tmp;
    end ADDMATRIX;

  -- signals, etc.
  constant signal input_a : matrix(3, 2) := ( (1,1), (1,3), (3,4) );
  constant signal input_b : matrix(3, 2) := ( (1,1), (1,3), (3,4) );
  constant signal input_x : matrix(3, 2) := ( (1,1), (1,3), (3,4) );
  constant signal input_y : matrix(2, 3) := ( (1,2,4), (4,5,5) );
  signal output_c : matrix(3, 2) := (others => 0);
  signal output_z : matrix(3, 2) := (others => 0);
begin

  ADDMATRIX(input_a, input_b, output_c);
  ADDMATRIX(input_x, input_y, output_z);

end addmatrix_tb_arch;
