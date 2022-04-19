library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity avalon_agent_send2HPS is
	generic
	(
		DATA_WIDTH : natural := 64
	);
	port
	(
		clk   : in std_logic ;
		reset	: in std_logic ;
		
		avs_s0_read     : in  std_logic                                  ;
		avs_s0_readdata : out std_logic_vector ((DATA_WIDTH-1) downto 0) ;
		
		pio_in : in std_logic_vector ((DATA_WIDTH-1) downto 0)
	);
end entity;

architecture rtl of avalon_agent_send2HPS is
begin
	process (clk)
	begin
		if (rising_edge(clk)) then
			if reset = '1' then
				avs_s0_readdata <= (others => '0') ;

			elsif avs_s0_read = '1' then		   
				avs_s0_readdata <= pio_in ;
			end if ;
		end if ;
	end process ;
end rtl ;
