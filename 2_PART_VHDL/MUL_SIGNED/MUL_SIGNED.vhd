library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY MUL_SIGNED IS
	GENERIC (
		CONSTANT BITWIDTH : NATURAL := 16
	);
	PORT ( 
		INPUT_1  :in  STD_LOGIC_VECTOR(  BITWIDTH-1 DOWNTO 0);
		INPUT_2  :in  STD_LOGIC_VECTOR(  BITWIDTH-1 DOWNTO 0);
		OUTPUT_1 :out STD_LOGIC_VECTOR(2*BITWIDTH-1 DOWNTO 0)
		);
	END;

architecture behavior of MUL_SIGNED IS
BEGIN

	PROCESS (INPUT_1, INPUT_2)
	BEGIN
		OUTPUT_1 <= STD_LOGIC_VECTOR( SIGNED( INPUT_1 ) * SIGNED( INPUT_2 ) );
	END PROCESS;

END;
