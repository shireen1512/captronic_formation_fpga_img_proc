library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity avalon_slave_bus32 is
	port
	(
		clk   : in std_logic ;
		reset	: in std_logic ;
		
		avs_s0_write     : in std_logic                                  ;
		avs_s0_writedata : in std_logic_vector ((32-1) downto 0) ;
		
		data_out : out std_logic_vector ((32-1) downto 0)
	);
end entity;

architecture rtl of avalon_slave_bus32 is
begin
	process (clk)
	begin
		if (rising_edge(clk)) then
			if reset = '1' then
				data_out <= (others => '0') ;

			elsif avs_s0_write = '1' then		   
				data_out <= avs_s0_writedata ;
			end if ;
		end if ;
	end process ;
end rtl ;