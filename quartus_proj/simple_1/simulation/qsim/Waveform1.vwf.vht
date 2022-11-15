-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/15/2022 14:47:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          simple_3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY simple_3_vhd_vec_tst IS
END simple_3_vhd_vec_tst;
ARCHITECTURE simple_3_arch OF simple_3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL pix1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pix1_mean : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pix2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pix2_mean : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pix3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pix3_mean : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pix4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pix4_mean : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT simple_3
	PORT (
	clk : IN STD_LOGIC;
	pix1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pix1_mean : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	pix2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pix2_mean : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	pix3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pix3_mean : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	pix4 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pix4_mean : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : simple_3
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	pix1 => pix1,
	pix1_mean => pix1_mean,
	pix2 => pix2,
	pix2_mean => pix2_mean,
	pix3 => pix3,
	pix3_mean => pix3_mean,
	pix4 => pix4,
	pix4_mean => pix4_mean
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- pix1[7]
t_prcs_pix1_7: PROCESS
BEGIN
	pix1(7) <= '0';
WAIT;
END PROCESS t_prcs_pix1_7;
-- pix1[6]
t_prcs_pix1_6: PROCESS
BEGIN
	pix1(6) <= '0';
WAIT;
END PROCESS t_prcs_pix1_6;
-- pix1[5]
t_prcs_pix1_5: PROCESS
BEGIN
	pix1(5) <= '0';
WAIT;
END PROCESS t_prcs_pix1_5;
-- pix1[4]
t_prcs_pix1_4: PROCESS
BEGIN
	pix1(4) <= '0';
WAIT;
END PROCESS t_prcs_pix1_4;
-- pix1[3]
t_prcs_pix1_3: PROCESS
BEGIN
	pix1(3) <= '0';
WAIT;
END PROCESS t_prcs_pix1_3;
-- pix1[2]
t_prcs_pix1_2: PROCESS
BEGIN
	pix1(2) <= '0';
WAIT;
END PROCESS t_prcs_pix1_2;
-- pix1[1]
t_prcs_pix1_1: PROCESS
BEGIN
	pix1(1) <= '0';
WAIT;
END PROCESS t_prcs_pix1_1;
-- pix1[0]
t_prcs_pix1_0: PROCESS
BEGIN
	pix1(0) <= '0';
WAIT;
END PROCESS t_prcs_pix1_0;
-- pix2[7]
t_prcs_pix2_7: PROCESS
BEGIN
	pix2(7) <= '0';
WAIT;
END PROCESS t_prcs_pix2_7;
-- pix2[6]
t_prcs_pix2_6: PROCESS
BEGIN
	pix2(6) <= '0';
WAIT;
END PROCESS t_prcs_pix2_6;
-- pix2[5]
t_prcs_pix2_5: PROCESS
BEGIN
	pix2(5) <= '0';
WAIT;
END PROCESS t_prcs_pix2_5;
-- pix2[4]
t_prcs_pix2_4: PROCESS
BEGIN
	pix2(4) <= '0';
WAIT;
END PROCESS t_prcs_pix2_4;
-- pix2[3]
t_prcs_pix2_3: PROCESS
BEGIN
	pix2(3) <= '0';
WAIT;
END PROCESS t_prcs_pix2_3;
-- pix2[2]
t_prcs_pix2_2: PROCESS
BEGIN
	pix2(2) <= '0';
WAIT;
END PROCESS t_prcs_pix2_2;
-- pix2[1]
t_prcs_pix2_1: PROCESS
BEGIN
	pix2(1) <= '0';
WAIT;
END PROCESS t_prcs_pix2_1;
-- pix2[0]
t_prcs_pix2_0: PROCESS
BEGIN
	pix2(0) <= '0';
WAIT;
END PROCESS t_prcs_pix2_0;
-- pix3[7]
t_prcs_pix3_7: PROCESS
BEGIN
	pix3(7) <= '0';
WAIT;
END PROCESS t_prcs_pix3_7;
-- pix3[6]
t_prcs_pix3_6: PROCESS
BEGIN
	pix3(6) <= '0';
WAIT;
END PROCESS t_prcs_pix3_6;
-- pix3[5]
t_prcs_pix3_5: PROCESS
BEGIN
	pix3(5) <= '0';
WAIT;
END PROCESS t_prcs_pix3_5;
-- pix3[4]
t_prcs_pix3_4: PROCESS
BEGIN
	pix3(4) <= '0';
WAIT;
END PROCESS t_prcs_pix3_4;
-- pix3[3]
t_prcs_pix3_3: PROCESS
BEGIN
	pix3(3) <= '0';
WAIT;
END PROCESS t_prcs_pix3_3;
-- pix3[2]
t_prcs_pix3_2: PROCESS
BEGIN
	pix3(2) <= '0';
WAIT;
END PROCESS t_prcs_pix3_2;
-- pix3[1]
t_prcs_pix3_1: PROCESS
BEGIN
	pix3(1) <= '0';
WAIT;
END PROCESS t_prcs_pix3_1;
-- pix3[0]
t_prcs_pix3_0: PROCESS
BEGIN
	pix3(0) <= '0';
WAIT;
END PROCESS t_prcs_pix3_0;
-- pix4[7]
t_prcs_pix4_7: PROCESS
BEGIN
	pix4(7) <= '0';
WAIT;
END PROCESS t_prcs_pix4_7;
-- pix4[6]
t_prcs_pix4_6: PROCESS
BEGIN
	pix4(6) <= '0';
WAIT;
END PROCESS t_prcs_pix4_6;
-- pix4[5]
t_prcs_pix4_5: PROCESS
BEGIN
	pix4(5) <= '0';
WAIT;
END PROCESS t_prcs_pix4_5;
-- pix4[4]
t_prcs_pix4_4: PROCESS
BEGIN
	pix4(4) <= '0';
WAIT;
END PROCESS t_prcs_pix4_4;
-- pix4[3]
t_prcs_pix4_3: PROCESS
BEGIN
	pix4(3) <= '0';
WAIT;
END PROCESS t_prcs_pix4_3;
-- pix4[2]
t_prcs_pix4_2: PROCESS
BEGIN
	pix4(2) <= '0';
WAIT;
END PROCESS t_prcs_pix4_2;
-- pix4[1]
t_prcs_pix4_1: PROCESS
BEGIN
	pix4(1) <= '0';
WAIT;
END PROCESS t_prcs_pix4_1;
-- pix4[0]
t_prcs_pix4_0: PROCESS
BEGIN
	pix4(0) <= '0';
WAIT;
END PROCESS t_prcs_pix4_0;
END simple_3_arch;
