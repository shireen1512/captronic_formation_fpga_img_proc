library ieee;
use ieee.std_logic_1164.all;

entity hps_out_32bit is
	port 
	(
		clk		    : in std_logic;
		reset	       : in std_logic;
		avs_s0_write : in std_logic;
		avs_s0_writedata	: in  std_logic_vector(31 downto 0) ;
		pio_out				: out std_logic_vector(31 downto 0)
	);

end entity;

architecture rtl of hps_out_32bit is
begin

	process (clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				pio_out <= "00000000000000000000000000000000" ;
			elsif (avs_s0_write = '1') then
				pio_out <= avs_s0_writedata ;
			else
				pio_out <= "00000000000000000000000000000000" ;
			end if;
		end if;
	end process;
end rtl;
