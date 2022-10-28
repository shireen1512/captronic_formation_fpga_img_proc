
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity add_signed8 is
	port 
	(
		a	   : in signed	((8-1) downto 0);
		b	   : in signed	((8-1) downto 0);
		result : out signed ((8-1) downto 0)
	);

end entity;

architecture rtl of add_signed8 is
begin

	result <= a + b;

end rtl;
