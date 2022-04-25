-- Quartus Prime VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity avalon_control_vhdl is

	generic
	(
		DATA_WIDTH : natural := 8
	);

--  input logic clk,
--  input logic reset,
--  input logic [31:0] avs_s0_writedata,
--  input logic avs_s0_write,
--  output logic do_read
  
	port 
	(
		clk   : in std_logic ;
		reset : in std_logic ;
		avs_s0_writedata : in std_logic_vector	(31 downto 0) ;
		avs_s0_write     : in  std_logic ;
		do_read          : out std_logic
	);

end entity;

architecture rtl of avalon_control_vhdl is
begin

	do_read <= avs_s0_write;

end rtl;
