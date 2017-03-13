-- write a vhdl function to create the 2's complement of an n-bit vector. 
-- call like: comlement(a, 4);
function comlement(datavec: std_logic_vector, n: integer) std_logic_vector is 
	-- declarations
	variable result: std_logic_vector(n-1 downto 0) := (others => '0');
begin
	-- sequential statements
	-- invert datavec, cast to unsigned
	-- add 1, cast to std_logic_vector
	result := std_logic_vector(unsigned(not(datavec) + 1));
	return result;
end comlement;
