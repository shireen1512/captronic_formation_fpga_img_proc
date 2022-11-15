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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "11/15/2022 14:47:02"

-- 
-- Device: Altera 5CSEBA6U23I7 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	simple_3 IS
    PORT (
	pix1_mean : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	pix1 : IN std_logic_vector(7 DOWNTO 0);
	pix2 : IN std_logic_vector(7 DOWNTO 0);
	pix3 : IN std_logic_vector(7 DOWNTO 0);
	pix4 : IN std_logic_vector(7 DOWNTO 0);
	pix2_mean : OUT std_logic_vector(7 DOWNTO 0);
	pix3_mean : OUT std_logic_vector(7 DOWNTO 0);
	pix4_mean : OUT std_logic_vector(7 DOWNTO 0)
	);
END simple_3;

-- Design Ports Information
-- pix1_mean[7]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix1_mean[6]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix1_mean[5]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix1_mean[4]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix1_mean[3]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix1_mean[2]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix1_mean[1]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix1_mean[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2_mean[7]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2_mean[6]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2_mean[5]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2_mean[4]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2_mean[3]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2_mean[2]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2_mean[1]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2_mean[0]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3_mean[7]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3_mean[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3_mean[5]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3_mean[4]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3_mean[3]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3_mean[2]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3_mean[1]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3_mean[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4_mean[7]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4_mean[6]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4_mean[5]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4_mean[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4_mean[3]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4_mean[2]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4_mean[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4_mean[0]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix1[7]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix1[6]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix1[5]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix1[4]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix1[3]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix1[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix1[1]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix1[0]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3[7]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2[7]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4[6]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3[6]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2[6]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3[5]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2[5]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4[3]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3[3]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2[3]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4[2]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3[2]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4[1]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3[1]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2[1]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix4[0]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix3[0]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pix2[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF simple_3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pix1_mean : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_pix1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pix2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pix3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pix4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pix2_mean : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pix3_mean : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pix4_mean : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \pix4[7]~input_o\ : std_logic;
SIGNAL \inst1|inst5[7]~feeder_combout\ : std_logic;
SIGNAL \pix3[7]~input_o\ : std_logic;
SIGNAL \inst1|inst4[7]~feeder_combout\ : std_logic;
SIGNAL \pix3[6]~input_o\ : std_logic;
SIGNAL \inst1|inst4[6]~feeder_combout\ : std_logic;
SIGNAL \pix4[6]~input_o\ : std_logic;
SIGNAL \inst1|inst5[6]~feeder_combout\ : std_logic;
SIGNAL \pix4[5]~input_o\ : std_logic;
SIGNAL \pix3[5]~input_o\ : std_logic;
SIGNAL \inst1|inst4[5]~feeder_combout\ : std_logic;
SIGNAL \pix3[4]~input_o\ : std_logic;
SIGNAL \inst1|inst4[4]~feeder_combout\ : std_logic;
SIGNAL \pix4[4]~input_o\ : std_logic;
SIGNAL \inst1|inst5[4]~feeder_combout\ : std_logic;
SIGNAL \pix3[3]~input_o\ : std_logic;
SIGNAL \pix4[3]~input_o\ : std_logic;
SIGNAL \inst1|inst5[3]~feeder_combout\ : std_logic;
SIGNAL \pix4[2]~input_o\ : std_logic;
SIGNAL \pix3[2]~input_o\ : std_logic;
SIGNAL \pix4[1]~input_o\ : std_logic;
SIGNAL \inst1|inst5[1]~feeder_combout\ : std_logic;
SIGNAL \pix3[1]~input_o\ : std_logic;
SIGNAL \pix4[0]~input_o\ : std_logic;
SIGNAL \inst1|inst5[0]~feeder_combout\ : std_logic;
SIGNAL \pix3[0]~input_o\ : std_logic;
SIGNAL \inst1|inst4[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~30\ : std_logic;
SIGNAL \inst1|inst1|Add0~26\ : std_logic;
SIGNAL \inst1|inst1|Add0~22\ : std_logic;
SIGNAL \inst1|inst1|Add0~18\ : std_logic;
SIGNAL \inst1|inst1|Add0~14\ : std_logic;
SIGNAL \inst1|inst1|Add0~10\ : std_logic;
SIGNAL \inst1|inst1|Add0~6\ : std_logic;
SIGNAL \inst1|inst1|Add0~1_sumout\ : std_logic;
SIGNAL \pix1[7]~input_o\ : std_logic;
SIGNAL \pix2[7]~input_o\ : std_logic;
SIGNAL \pix1[6]~input_o\ : std_logic;
SIGNAL \pix2[6]~input_o\ : std_logic;
SIGNAL \pix2[5]~input_o\ : std_logic;
SIGNAL \pix1[5]~input_o\ : std_logic;
SIGNAL \pix1[4]~input_o\ : std_logic;
SIGNAL \pix2[4]~input_o\ : std_logic;
SIGNAL \pix1[3]~input_o\ : std_logic;
SIGNAL \pix2[3]~input_o\ : std_logic;
SIGNAL \pix1[2]~input_o\ : std_logic;
SIGNAL \pix2[2]~input_o\ : std_logic;
SIGNAL \pix2[1]~input_o\ : std_logic;
SIGNAL \pix1[1]~input_o\ : std_logic;
SIGNAL \pix1[0]~input_o\ : std_logic;
SIGNAL \pix2[0]~input_o\ : std_logic;
SIGNAL \inst1|inst|Add0~30\ : std_logic;
SIGNAL \inst1|inst|Add0~26\ : std_logic;
SIGNAL \inst1|inst|Add0~22\ : std_logic;
SIGNAL \inst1|inst|Add0~18\ : std_logic;
SIGNAL \inst1|inst|Add0~14\ : std_logic;
SIGNAL \inst1|inst|Add0~10\ : std_logic;
SIGNAL \inst1|inst|Add0~6\ : std_logic;
SIGNAL \inst1|inst|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst1|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst1|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst1|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst7[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst1|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst1|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst7[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst7[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst7[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add0~30\ : std_logic;
SIGNAL \inst1|inst2|Add0~26\ : std_logic;
SIGNAL \inst1|inst2|Add0~22\ : std_logic;
SIGNAL \inst1|inst2|Add0~18\ : std_logic;
SIGNAL \inst1|inst2|Add0~14\ : std_logic;
SIGNAL \inst1|inst2|Add0~10\ : std_logic;
SIGNAL \inst1|inst2|Add0~6\ : std_logic;
SIGNAL \inst1|inst2|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Add0~29_sumout\ : std_logic;
SIGNAL \inst|inst3|result[0]~30\ : std_logic;
SIGNAL \inst|inst3|result[0]~31\ : std_logic;
SIGNAL \inst|inst3|result[1]~26\ : std_logic;
SIGNAL \inst|inst3|result[1]~27\ : std_logic;
SIGNAL \inst|inst3|result[2]~22\ : std_logic;
SIGNAL \inst|inst3|result[2]~23\ : std_logic;
SIGNAL \inst|inst3|result[3]~18\ : std_logic;
SIGNAL \inst|inst3|result[3]~19\ : std_logic;
SIGNAL \inst|inst3|result[4]~14\ : std_logic;
SIGNAL \inst|inst3|result[4]~15\ : std_logic;
SIGNAL \inst|inst3|result[5]~10\ : std_logic;
SIGNAL \inst|inst3|result[5]~11\ : std_logic;
SIGNAL \inst|inst3|result[6]~6\ : std_logic;
SIGNAL \inst|inst3|result[6]~7\ : std_logic;
SIGNAL \inst|inst3|result[7]~1_sumout\ : std_logic;
SIGNAL \inst|inst3|result[6]~5_sumout\ : std_logic;
SIGNAL \inst|inst3|result[5]~9_sumout\ : std_logic;
SIGNAL \inst|inst3|result[4]~13_sumout\ : std_logic;
SIGNAL \inst|inst10[4]~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|result[3]~17_sumout\ : std_logic;
SIGNAL \inst|inst10[3]~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|result[2]~21_sumout\ : std_logic;
SIGNAL \inst|inst3|result[1]~25_sumout\ : std_logic;
SIGNAL \inst|inst3|result[0]~29_sumout\ : std_logic;
SIGNAL \inst1|inst10[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst10[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst10[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst10[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst10[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst10[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst10[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst10[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst6\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst7\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst9\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst8\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst10\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst10\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst5\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst10\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst4\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst10\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_pix2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix3[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix4[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix4[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix4[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix3[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix4[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix3[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix3[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix4[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix3[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix4[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_pix1[7]~input_o\ : std_logic;
SIGNAL \inst1|ALT_INV_inst4\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ALT_INV_inst5\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ALT_INV_inst6\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ALT_INV_inst7\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ALT_INV_inst8\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ALT_INV_inst9\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst3|ALT_INV_result[3]~17_sumout\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_result[4]~13_sumout\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_result[6]~5_sumout\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_result[7]~1_sumout\ : std_logic;

BEGIN

pix1_mean <= ww_pix1_mean;
ww_clk <= clk;
ww_pix1 <= pix1;
ww_pix2 <= pix2;
ww_pix3 <= pix3;
ww_pix4 <= pix4;
pix2_mean <= ww_pix2_mean;
pix3_mean <= ww_pix3_mean;
pix4_mean <= ww_pix4_mean;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_pix2[0]~input_o\ <= NOT \pix2[0]~input_o\;
\ALT_INV_pix3[0]~input_o\ <= NOT \pix3[0]~input_o\;
\ALT_INV_pix4[0]~input_o\ <= NOT \pix4[0]~input_o\;
\ALT_INV_pix2[1]~input_o\ <= NOT \pix2[1]~input_o\;
\ALT_INV_pix4[1]~input_o\ <= NOT \pix4[1]~input_o\;
\ALT_INV_pix2[2]~input_o\ <= NOT \pix2[2]~input_o\;
\ALT_INV_pix2[3]~input_o\ <= NOT \pix2[3]~input_o\;
\ALT_INV_pix4[3]~input_o\ <= NOT \pix4[3]~input_o\;
\ALT_INV_pix2[4]~input_o\ <= NOT \pix2[4]~input_o\;
\ALT_INV_pix3[4]~input_o\ <= NOT \pix3[4]~input_o\;
\ALT_INV_pix4[4]~input_o\ <= NOT \pix4[4]~input_o\;
\ALT_INV_pix2[5]~input_o\ <= NOT \pix2[5]~input_o\;
\ALT_INV_pix3[5]~input_o\ <= NOT \pix3[5]~input_o\;
\ALT_INV_pix2[6]~input_o\ <= NOT \pix2[6]~input_o\;
\ALT_INV_pix3[6]~input_o\ <= NOT \pix3[6]~input_o\;
\ALT_INV_pix4[6]~input_o\ <= NOT \pix4[6]~input_o\;
\ALT_INV_pix2[7]~input_o\ <= NOT \pix2[7]~input_o\;
\ALT_INV_pix3[7]~input_o\ <= NOT \pix3[7]~input_o\;
\ALT_INV_pix4[7]~input_o\ <= NOT \pix4[7]~input_o\;
\ALT_INV_pix1[0]~input_o\ <= NOT \pix1[0]~input_o\;
\ALT_INV_pix1[1]~input_o\ <= NOT \pix1[1]~input_o\;
\ALT_INV_pix1[2]~input_o\ <= NOT \pix1[2]~input_o\;
\ALT_INV_pix1[3]~input_o\ <= NOT \pix1[3]~input_o\;
\ALT_INV_pix1[4]~input_o\ <= NOT \pix1[4]~input_o\;
\ALT_INV_pix1[5]~input_o\ <= NOT \pix1[5]~input_o\;
\ALT_INV_pix1[6]~input_o\ <= NOT \pix1[6]~input_o\;
\ALT_INV_pix1[7]~input_o\ <= NOT \pix1[7]~input_o\;
\inst1|ALT_INV_inst4\(0) <= NOT \inst1|inst4\(0);
\inst1|ALT_INV_inst5\(0) <= NOT \inst1|inst5\(0);
\inst1|ALT_INV_inst4\(1) <= NOT \inst1|inst4\(1);
\inst1|ALT_INV_inst5\(1) <= NOT \inst1|inst5\(1);
\inst1|ALT_INV_inst4\(2) <= NOT \inst1|inst4\(2);
\inst1|ALT_INV_inst5\(2) <= NOT \inst1|inst5\(2);
\inst1|ALT_INV_inst4\(3) <= NOT \inst1|inst4\(3);
\inst1|ALT_INV_inst5\(3) <= NOT \inst1|inst5\(3);
\inst1|ALT_INV_inst4\(4) <= NOT \inst1|inst4\(4);
\inst1|ALT_INV_inst5\(4) <= NOT \inst1|inst5\(4);
\inst1|ALT_INV_inst4\(5) <= NOT \inst1|inst4\(5);
\inst1|ALT_INV_inst5\(5) <= NOT \inst1|inst5\(5);
\inst1|ALT_INV_inst4\(6) <= NOT \inst1|inst4\(6);
\inst1|ALT_INV_inst5\(6) <= NOT \inst1|inst5\(6);
\inst1|ALT_INV_inst4\(7) <= NOT \inst1|inst4\(7);
\inst1|ALT_INV_inst5\(7) <= NOT \inst1|inst5\(7);
\inst1|ALT_INV_inst6\(0) <= NOT \inst1|inst6\(0);
\inst1|ALT_INV_inst6\(1) <= NOT \inst1|inst6\(1);
\inst1|ALT_INV_inst6\(2) <= NOT \inst1|inst6\(2);
\inst1|ALT_INV_inst6\(4) <= NOT \inst1|inst6\(4);
\inst1|ALT_INV_inst7\(0) <= NOT \inst1|inst7\(0);
\inst1|ALT_INV_inst8\(0) <= NOT \inst1|inst8\(0);
\inst1|ALT_INV_inst7\(1) <= NOT \inst1|inst7\(1);
\inst1|ALT_INV_inst8\(1) <= NOT \inst1|inst8\(1);
\inst1|ALT_INV_inst7\(2) <= NOT \inst1|inst7\(2);
\inst1|ALT_INV_inst8\(2) <= NOT \inst1|inst8\(2);
\inst1|ALT_INV_inst7\(3) <= NOT \inst1|inst7\(3);
\inst1|ALT_INV_inst8\(3) <= NOT \inst1|inst8\(3);
\inst1|ALT_INV_inst7\(4) <= NOT \inst1|inst7\(4);
\inst1|ALT_INV_inst8\(4) <= NOT \inst1|inst8\(4);
\inst1|ALT_INV_inst7\(5) <= NOT \inst1|inst7\(5);
\inst1|ALT_INV_inst8\(5) <= NOT \inst1|inst8\(5);
\inst1|ALT_INV_inst7\(6) <= NOT \inst1|inst7\(6);
\inst1|ALT_INV_inst8\(6) <= NOT \inst1|inst8\(6);
\inst1|ALT_INV_inst7\(7) <= NOT \inst1|inst7\(7);
\inst1|ALT_INV_inst8\(7) <= NOT \inst1|inst8\(7);
\inst1|ALT_INV_inst9\(0) <= NOT \inst1|inst9\(0);
\inst1|ALT_INV_inst9\(1) <= NOT \inst1|inst9\(1);
\inst1|ALT_INV_inst9\(2) <= NOT \inst1|inst9\(2);
\inst1|ALT_INV_inst9\(3) <= NOT \inst1|inst9\(3);
\inst1|ALT_INV_inst9\(4) <= NOT \inst1|inst9\(4);
\inst1|ALT_INV_inst9\(5) <= NOT \inst1|inst9\(5);
\inst1|ALT_INV_inst9\(6) <= NOT \inst1|inst9\(6);
\inst1|ALT_INV_inst9\(7) <= NOT \inst1|inst9\(7);
\inst|inst3|ALT_INV_result[3]~17_sumout\ <= NOT \inst|inst3|result[3]~17_sumout\;
\inst|inst3|ALT_INV_result[4]~13_sumout\ <= NOT \inst|inst3|result[4]~13_sumout\;
\inst|inst3|ALT_INV_result[6]~5_sumout\ <= NOT \inst|inst3|result[6]~5_sumout\;
\inst|inst3|ALT_INV_result[7]~1_sumout\ <= NOT \inst|inst3|result[7]~1_sumout\;

-- Location: IOOBUF_X54_Y0_N19
\pix1_mean[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst10\(7),
	devoe => ww_devoe,
	o => ww_pix1_mean(7));

-- Location: IOOBUF_X54_Y0_N36
\pix1_mean[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst10\(6),
	devoe => ww_devoe,
	o => ww_pix1_mean(6));

-- Location: IOOBUF_X26_Y0_N59
\pix1_mean[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst10\(5),
	devoe => ww_devoe,
	o => ww_pix1_mean(5));

-- Location: IOOBUF_X8_Y0_N53
\pix1_mean[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst10\(4),
	devoe => ww_devoe,
	o => ww_pix1_mean(4));

-- Location: IOOBUF_X40_Y0_N53
\pix1_mean[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst10\(3),
	devoe => ww_devoe,
	o => ww_pix1_mean(3));

-- Location: IOOBUF_X6_Y0_N53
\pix1_mean[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst10\(2),
	devoe => ww_devoe,
	o => ww_pix1_mean(2));

-- Location: IOOBUF_X4_Y0_N53
\pix1_mean[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst10\(1),
	devoe => ww_devoe,
	o => ww_pix1_mean(1));

-- Location: IOOBUF_X4_Y0_N19
\pix1_mean[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst10\(0),
	devoe => ww_devoe,
	o => ww_pix1_mean(0));

-- Location: IOOBUF_X52_Y0_N53
\pix2_mean[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10\(7),
	devoe => ww_devoe,
	o => ww_pix2_mean(7));

-- Location: IOOBUF_X40_Y0_N19
\pix2_mean[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10\(6),
	devoe => ww_devoe,
	o => ww_pix2_mean(6));

-- Location: IOOBUF_X50_Y0_N42
\pix2_mean[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10\(5),
	devoe => ww_devoe,
	o => ww_pix2_mean(5));

-- Location: IOOBUF_X6_Y0_N2
\pix2_mean[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10\(4),
	devoe => ww_devoe,
	o => ww_pix2_mean(4));

-- Location: IOOBUF_X26_Y0_N42
\pix2_mean[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10\(3),
	devoe => ww_devoe,
	o => ww_pix2_mean(3));

-- Location: IOOBUF_X26_Y0_N93
\pix2_mean[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10\(2),
	devoe => ww_devoe,
	o => ww_pix2_mean(2));

-- Location: IOOBUF_X32_Y0_N19
\pix2_mean[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10\(1),
	devoe => ww_devoe,
	o => ww_pix2_mean(1));

-- Location: IOOBUF_X8_Y0_N36
\pix2_mean[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10\(0),
	devoe => ww_devoe,
	o => ww_pix2_mean(0));

-- Location: IOOBUF_X54_Y0_N53
\pix3_mean[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst10\(7),
	devoe => ww_devoe,
	o => ww_pix3_mean(7));

-- Location: IOOBUF_X56_Y0_N19
\pix3_mean[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst10\(6),
	devoe => ww_devoe,
	o => ww_pix3_mean(6));

-- Location: IOOBUF_X50_Y0_N93
\pix3_mean[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst10\(5),
	devoe => ww_devoe,
	o => ww_pix3_mean(5));

-- Location: IOOBUF_X38_Y0_N36
\pix3_mean[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst10\(4),
	devoe => ww_devoe,
	o => ww_pix3_mean(4));

-- Location: IOOBUF_X40_Y0_N36
\pix3_mean[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst10\(3),
	devoe => ww_devoe,
	o => ww_pix3_mean(3));

-- Location: IOOBUF_X4_Y0_N2
\pix3_mean[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst10\(2),
	devoe => ww_devoe,
	o => ww_pix3_mean(2));

-- Location: IOOBUF_X2_Y0_N59
\pix3_mean[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst10\(1),
	devoe => ww_devoe,
	o => ww_pix3_mean(1));

-- Location: IOOBUF_X6_Y0_N19
\pix3_mean[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst10\(0),
	devoe => ww_devoe,
	o => ww_pix3_mean(0));

-- Location: IOOBUF_X54_Y0_N2
\pix4_mean[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst10\(7),
	devoe => ww_devoe,
	o => ww_pix4_mean(7));

-- Location: IOOBUF_X50_Y0_N59
\pix4_mean[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst10\(6),
	devoe => ww_devoe,
	o => ww_pix4_mean(6));

-- Location: IOOBUF_X38_Y0_N2
\pix4_mean[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst10\(5),
	devoe => ww_devoe,
	o => ww_pix4_mean(5));

-- Location: IOOBUF_X8_Y0_N2
\pix4_mean[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst10\(4),
	devoe => ww_devoe,
	o => ww_pix4_mean(4));

-- Location: IOOBUF_X4_Y0_N36
\pix4_mean[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst10\(3),
	devoe => ww_devoe,
	o => ww_pix4_mean(3));

-- Location: IOOBUF_X6_Y0_N36
\pix4_mean[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst10\(2),
	devoe => ww_devoe,
	o => ww_pix4_mean(2));

-- Location: IOOBUF_X2_Y0_N42
\pix4_mean[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst10\(1),
	devoe => ww_devoe,
	o => ww_pix4_mean(1));

-- Location: IOOBUF_X8_Y0_N19
\pix4_mean[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst10\(0),
	devoe => ww_devoe,
	o => ww_pix4_mean(0));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N18
\pix4[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix4(7),
	o => \pix4[7]~input_o\);

-- Location: LABCELL_X24_Y3_N15
\inst1|inst5[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5[7]~feeder_combout\ = ( \pix4[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pix4[7]~input_o\,
	combout => \inst1|inst5[7]~feeder_combout\);

-- Location: FF_X24_Y3_N17
\inst1|inst5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst5[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5\(7));

-- Location: IOIBUF_X58_Y0_N58
\pix3[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix3(7),
	o => \pix3[7]~input_o\);

-- Location: LABCELL_X24_Y3_N33
\inst1|inst4[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4[7]~feeder_combout\ = ( \pix3[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pix3[7]~input_o\,
	combout => \inst1|inst4[7]~feeder_combout\);

-- Location: FF_X24_Y3_N34
\inst1|inst4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst4[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4\(7));

-- Location: IOIBUF_X32_Y0_N35
\pix3[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix3(6),
	o => \pix3[6]~input_o\);

-- Location: LABCELL_X24_Y3_N6
\inst1|inst4[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4[6]~feeder_combout\ = ( \pix3[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pix3[6]~input_o\,
	combout => \inst1|inst4[6]~feeder_combout\);

-- Location: FF_X24_Y3_N8
\inst1|inst4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst4[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4\(6));

-- Location: IOIBUF_X30_Y0_N35
\pix4[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix4(6),
	o => \pix4[6]~input_o\);

-- Location: LABCELL_X24_Y3_N3
\inst1|inst5[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5[6]~feeder_combout\ = ( \pix4[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pix4[6]~input_o\,
	combout => \inst1|inst5[6]~feeder_combout\);

-- Location: FF_X24_Y3_N5
\inst1|inst5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst5[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5\(6));

-- Location: IOIBUF_X52_Y0_N18
\pix4[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix4(5),
	o => \pix4[5]~input_o\);

-- Location: FF_X24_Y3_N50
\inst1|inst5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pix4[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5\(5));

-- Location: IOIBUF_X52_Y0_N35
\pix3[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix3(5),
	o => \pix3[5]~input_o\);

-- Location: LABCELL_X23_Y3_N0
\inst1|inst4[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4[5]~feeder_combout\ = ( \pix3[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pix3[5]~input_o\,
	combout => \inst1|inst4[5]~feeder_combout\);

-- Location: FF_X23_Y3_N2
\inst1|inst4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst4[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4\(5));

-- Location: IOIBUF_X30_Y0_N1
\pix3[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix3(4),
	o => \pix3[4]~input_o\);

-- Location: LABCELL_X24_Y3_N39
\inst1|inst4[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4[4]~feeder_combout\ = ( \pix3[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pix3[4]~input_o\,
	combout => \inst1|inst4[4]~feeder_combout\);

-- Location: FF_X24_Y3_N41
\inst1|inst4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst4[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4\(4));

-- Location: IOIBUF_X56_Y0_N1
\pix4[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix4(4),
	o => \pix4[4]~input_o\);

-- Location: LABCELL_X24_Y3_N42
\inst1|inst5[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5[4]~feeder_combout\ = ( \pix4[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pix4[4]~input_o\,
	combout => \inst1|inst5[4]~feeder_combout\);

-- Location: FF_X24_Y3_N44
\inst1|inst5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst5[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5\(4));

-- Location: IOIBUF_X58_Y0_N75
\pix3[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix3(3),
	o => \pix3[3]~input_o\);

-- Location: FF_X23_Y3_N8
\inst1|inst4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pix3[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4\(3));

-- Location: IOIBUF_X30_Y0_N18
\pix4[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix4(3),
	o => \pix4[3]~input_o\);

-- Location: LABCELL_X24_Y3_N54
\inst1|inst5[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5[3]~feeder_combout\ = ( \pix4[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pix4[3]~input_o\,
	combout => \inst1|inst5[3]~feeder_combout\);

-- Location: FF_X24_Y3_N56
\inst1|inst5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst5[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5\(3));

-- Location: IOIBUF_X36_Y0_N35
\pix4[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix4(2),
	o => \pix4[2]~input_o\);

-- Location: FF_X24_Y3_N2
\inst1|inst5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pix4[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5\(2));

-- Location: IOIBUF_X52_Y0_N1
\pix3[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix3(2),
	o => \pix3[2]~input_o\);

-- Location: FF_X23_Y3_N56
\inst1|inst4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pix3[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4\(2));

-- Location: IOIBUF_X56_Y0_N52
\pix4[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix4(1),
	o => \pix4[1]~input_o\);

-- Location: LABCELL_X24_Y3_N27
\inst1|inst5[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5[1]~feeder_combout\ = ( \pix4[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pix4[1]~input_o\,
	combout => \inst1|inst5[1]~feeder_combout\);

-- Location: FF_X24_Y3_N28
\inst1|inst5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst5[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5\(1));

-- Location: IOIBUF_X26_Y0_N75
\pix3[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix3(1),
	o => \pix3[1]~input_o\);

-- Location: FF_X23_Y3_N11
\inst1|inst4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pix3[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4\(1));

-- Location: IOIBUF_X56_Y0_N35
\pix4[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix4(0),
	o => \pix4[0]~input_o\);

-- Location: LABCELL_X24_Y3_N21
\inst1|inst5[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5[0]~feeder_combout\ = ( \pix4[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pix4[0]~input_o\,
	combout => \inst1|inst5[0]~feeder_combout\);

-- Location: FF_X24_Y3_N23
\inst1|inst5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst5[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5\(0));

-- Location: IOIBUF_X50_Y0_N75
\pix3[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix3(0),
	o => \pix3[0]~input_o\);

-- Location: LABCELL_X23_Y3_N3
\inst1|inst4[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4[0]~feeder_combout\ = ( \pix3[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pix3[0]~input_o\,
	combout => \inst1|inst4[0]~feeder_combout\);

-- Location: FF_X23_Y3_N5
\inst1|inst4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst4[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4\(0));

-- Location: LABCELL_X23_Y3_N30
\inst1|inst1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~29_sumout\ = SUM(( \inst1|inst4\(0) ) + ( \inst1|inst5\(0) ) + ( !VCC ))
-- \inst1|inst1|Add0~30\ = CARRY(( \inst1|inst4\(0) ) + ( \inst1|inst5\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst5\(0),
	datad => \inst1|ALT_INV_inst4\(0),
	cin => GND,
	sumout => \inst1|inst1|Add0~29_sumout\,
	cout => \inst1|inst1|Add0~30\);

-- Location: LABCELL_X23_Y3_N33
\inst1|inst1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~25_sumout\ = SUM(( \inst1|inst5\(1) ) + ( \inst1|inst4\(1) ) + ( \inst1|inst1|Add0~30\ ))
-- \inst1|inst1|Add0~26\ = CARRY(( \inst1|inst5\(1) ) + ( \inst1|inst4\(1) ) + ( \inst1|inst1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_inst5\(1),
	datac => \inst1|ALT_INV_inst4\(1),
	cin => \inst1|inst1|Add0~30\,
	sumout => \inst1|inst1|Add0~25_sumout\,
	cout => \inst1|inst1|Add0~26\);

-- Location: LABCELL_X23_Y3_N36
\inst1|inst1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~21_sumout\ = SUM(( \inst1|inst4\(2) ) + ( \inst1|inst5\(2) ) + ( \inst1|inst1|Add0~26\ ))
-- \inst1|inst1|Add0~22\ = CARRY(( \inst1|inst4\(2) ) + ( \inst1|inst5\(2) ) + ( \inst1|inst1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst5\(2),
	datad => \inst1|ALT_INV_inst4\(2),
	cin => \inst1|inst1|Add0~26\,
	sumout => \inst1|inst1|Add0~21_sumout\,
	cout => \inst1|inst1|Add0~22\);

-- Location: LABCELL_X23_Y3_N39
\inst1|inst1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~17_sumout\ = SUM(( \inst1|inst5\(3) ) + ( \inst1|inst4\(3) ) + ( \inst1|inst1|Add0~22\ ))
-- \inst1|inst1|Add0~18\ = CARRY(( \inst1|inst5\(3) ) + ( \inst1|inst4\(3) ) + ( \inst1|inst1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst4\(3),
	datad => \inst1|ALT_INV_inst5\(3),
	cin => \inst1|inst1|Add0~22\,
	sumout => \inst1|inst1|Add0~17_sumout\,
	cout => \inst1|inst1|Add0~18\);

-- Location: LABCELL_X23_Y3_N42
\inst1|inst1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~13_sumout\ = SUM(( \inst1|inst5\(4) ) + ( \inst1|inst4\(4) ) + ( \inst1|inst1|Add0~18\ ))
-- \inst1|inst1|Add0~14\ = CARRY(( \inst1|inst5\(4) ) + ( \inst1|inst4\(4) ) + ( \inst1|inst1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst4\(4),
	datad => \inst1|ALT_INV_inst5\(4),
	cin => \inst1|inst1|Add0~18\,
	sumout => \inst1|inst1|Add0~13_sumout\,
	cout => \inst1|inst1|Add0~14\);

-- Location: LABCELL_X23_Y3_N45
\inst1|inst1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~9_sumout\ = SUM(( \inst1|inst4\(5) ) + ( \inst1|inst5\(5) ) + ( \inst1|inst1|Add0~14\ ))
-- \inst1|inst1|Add0~10\ = CARRY(( \inst1|inst4\(5) ) + ( \inst1|inst5\(5) ) + ( \inst1|inst1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst5\(5),
	datad => \inst1|ALT_INV_inst4\(5),
	cin => \inst1|inst1|Add0~14\,
	sumout => \inst1|inst1|Add0~9_sumout\,
	cout => \inst1|inst1|Add0~10\);

-- Location: LABCELL_X23_Y3_N48
\inst1|inst1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~5_sumout\ = SUM(( \inst1|inst5\(6) ) + ( \inst1|inst4\(6) ) + ( \inst1|inst1|Add0~10\ ))
-- \inst1|inst1|Add0~6\ = CARRY(( \inst1|inst5\(6) ) + ( \inst1|inst4\(6) ) + ( \inst1|inst1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst4\(6),
	datad => \inst1|ALT_INV_inst5\(6),
	cin => \inst1|inst1|Add0~10\,
	sumout => \inst1|inst1|Add0~5_sumout\,
	cout => \inst1|inst1|Add0~6\);

-- Location: LABCELL_X23_Y3_N51
\inst1|inst1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~1_sumout\ = SUM(( \inst1|inst5\(7) ) + ( \inst1|inst4\(7) ) + ( \inst1|inst1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst5\(7),
	datac => \inst1|ALT_INV_inst4\(7),
	cin => \inst1|inst1|Add0~6\,
	sumout => \inst1|inst1|Add0~1_sumout\);

-- Location: FF_X23_Y3_N52
\inst1|inst8[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8\(7));

-- Location: IOIBUF_X32_Y0_N1
\pix1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix1(7),
	o => \pix1[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\pix2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix2(7),
	o => \pix2[7]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\pix1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix1(6),
	o => \pix1[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\pix2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix2(6),
	o => \pix2[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\pix2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix2(5),
	o => \pix2[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\pix1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix1(5),
	o => \pix1[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\pix1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix1(4),
	o => \pix1[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\pix2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix2(4),
	o => \pix2[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\pix1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix1(3),
	o => \pix1[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\pix2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix2(3),
	o => \pix2[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\pix1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix1(2),
	o => \pix1[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\pix2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix2(2),
	o => \pix2[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\pix2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix2(1),
	o => \pix2[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\pix1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix1(1),
	o => \pix1[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\pix1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix1(0),
	o => \pix1[0]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\pix2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pix2(0),
	o => \pix2[0]~input_o\);

-- Location: MLABCELL_X28_Y3_N30
\inst1|inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~29_sumout\ = SUM(( \pix1[0]~input_o\ ) + ( \pix2[0]~input_o\ ) + ( !VCC ))
-- \inst1|inst|Add0~30\ = CARRY(( \pix1[0]~input_o\ ) + ( \pix2[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pix1[0]~input_o\,
	dataf => \ALT_INV_pix2[0]~input_o\,
	cin => GND,
	sumout => \inst1|inst|Add0~29_sumout\,
	cout => \inst1|inst|Add0~30\);

-- Location: MLABCELL_X28_Y3_N33
\inst1|inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~25_sumout\ = SUM(( \pix2[1]~input_o\ ) + ( \pix1[1]~input_o\ ) + ( \inst1|inst|Add0~30\ ))
-- \inst1|inst|Add0~26\ = CARRY(( \pix2[1]~input_o\ ) + ( \pix1[1]~input_o\ ) + ( \inst1|inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pix2[1]~input_o\,
	dataf => \ALT_INV_pix1[1]~input_o\,
	cin => \inst1|inst|Add0~30\,
	sumout => \inst1|inst|Add0~25_sumout\,
	cout => \inst1|inst|Add0~26\);

-- Location: MLABCELL_X28_Y3_N36
\inst1|inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~21_sumout\ = SUM(( \pix1[2]~input_o\ ) + ( \pix2[2]~input_o\ ) + ( \inst1|inst|Add0~26\ ))
-- \inst1|inst|Add0~22\ = CARRY(( \pix1[2]~input_o\ ) + ( \pix2[2]~input_o\ ) + ( \inst1|inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pix1[2]~input_o\,
	dataf => \ALT_INV_pix2[2]~input_o\,
	cin => \inst1|inst|Add0~26\,
	sumout => \inst1|inst|Add0~21_sumout\,
	cout => \inst1|inst|Add0~22\);

-- Location: MLABCELL_X28_Y3_N39
\inst1|inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~17_sumout\ = SUM(( \pix1[3]~input_o\ ) + ( \pix2[3]~input_o\ ) + ( \inst1|inst|Add0~22\ ))
-- \inst1|inst|Add0~18\ = CARRY(( \pix1[3]~input_o\ ) + ( \pix2[3]~input_o\ ) + ( \inst1|inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pix1[3]~input_o\,
	dataf => \ALT_INV_pix2[3]~input_o\,
	cin => \inst1|inst|Add0~22\,
	sumout => \inst1|inst|Add0~17_sumout\,
	cout => \inst1|inst|Add0~18\);

-- Location: MLABCELL_X28_Y3_N42
\inst1|inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~13_sumout\ = SUM(( \pix1[4]~input_o\ ) + ( \pix2[4]~input_o\ ) + ( \inst1|inst|Add0~18\ ))
-- \inst1|inst|Add0~14\ = CARRY(( \pix1[4]~input_o\ ) + ( \pix2[4]~input_o\ ) + ( \inst1|inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pix1[4]~input_o\,
	dataf => \ALT_INV_pix2[4]~input_o\,
	cin => \inst1|inst|Add0~18\,
	sumout => \inst1|inst|Add0~13_sumout\,
	cout => \inst1|inst|Add0~14\);

-- Location: MLABCELL_X28_Y3_N45
\inst1|inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~9_sumout\ = SUM(( \pix2[5]~input_o\ ) + ( \pix1[5]~input_o\ ) + ( \inst1|inst|Add0~14\ ))
-- \inst1|inst|Add0~10\ = CARRY(( \pix2[5]~input_o\ ) + ( \pix1[5]~input_o\ ) + ( \inst1|inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pix2[5]~input_o\,
	datac => \ALT_INV_pix1[5]~input_o\,
	cin => \inst1|inst|Add0~14\,
	sumout => \inst1|inst|Add0~9_sumout\,
	cout => \inst1|inst|Add0~10\);

-- Location: MLABCELL_X28_Y3_N48
\inst1|inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~5_sumout\ = SUM(( \pix2[6]~input_o\ ) + ( \pix1[6]~input_o\ ) + ( \inst1|inst|Add0~10\ ))
-- \inst1|inst|Add0~6\ = CARRY(( \pix2[6]~input_o\ ) + ( \pix1[6]~input_o\ ) + ( \inst1|inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pix1[6]~input_o\,
	datac => \ALT_INV_pix2[6]~input_o\,
	cin => \inst1|inst|Add0~10\,
	sumout => \inst1|inst|Add0~5_sumout\,
	cout => \inst1|inst|Add0~6\);

-- Location: MLABCELL_X28_Y3_N51
\inst1|inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~1_sumout\ = SUM(( \pix2[7]~input_o\ ) + ( \pix1[7]~input_o\ ) + ( \inst1|inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pix1[7]~input_o\,
	datad => \ALT_INV_pix2[7]~input_o\,
	cin => \inst1|inst|Add0~6\,
	sumout => \inst1|inst|Add0~1_sumout\);

-- Location: FF_X28_Y3_N53
\inst1|inst6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6\(7));

-- Location: FF_X28_Y3_N1
\inst1|inst7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|inst6\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7\(7));

-- Location: FF_X28_Y3_N49
\inst1|inst6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6\(6));

-- Location: FF_X23_Y3_N17
\inst1|inst7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|inst6\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7\(6));

-- Location: FF_X23_Y3_N50
\inst1|inst8[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8\(6));

-- Location: FF_X23_Y3_N46
\inst1|inst8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8\(5));

-- Location: FF_X28_Y3_N46
\inst1|inst6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6\(5));

-- Location: FF_X23_Y3_N58
\inst1|inst7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|inst6\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7\(5));

-- Location: FF_X23_Y3_N43
\inst1|inst8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8\(4));

-- Location: FF_X28_Y3_N43
\inst1|inst6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6\(4));

-- Location: LABCELL_X23_Y3_N24
\inst1|inst7[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7[4]~feeder_combout\ = ( \inst1|inst6\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_inst6\(4),
	combout => \inst1|inst7[4]~feeder_combout\);

-- Location: FF_X23_Y3_N25
\inst1|inst7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst7[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7\(4));

-- Location: FF_X28_Y3_N40
\inst1|inst6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6\(3));

-- Location: FF_X23_Y3_N14
\inst1|inst7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|inst6\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7\(3));

-- Location: FF_X23_Y3_N40
\inst1|inst8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8\(3));

-- Location: FF_X23_Y3_N37
\inst1|inst8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8\(2));

-- Location: FF_X28_Y3_N37
\inst1|inst6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6\(2));

-- Location: LABCELL_X22_Y3_N54
\inst1|inst7[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7[2]~feeder_combout\ = \inst1|inst6\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst6\(2),
	combout => \inst1|inst7[2]~feeder_combout\);

-- Location: FF_X22_Y3_N56
\inst1|inst7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst7[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7\(2));

-- Location: FF_X23_Y3_N35
\inst1|inst8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8\(1));

-- Location: FF_X28_Y3_N34
\inst1|inst6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6\(1));

-- Location: LABCELL_X23_Y3_N21
\inst1|inst7[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7[1]~feeder_combout\ = ( \inst1|inst6\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_inst6\(1),
	combout => \inst1|inst7[1]~feeder_combout\);

-- Location: FF_X23_Y3_N23
\inst1|inst7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst7[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7\(1));

-- Location: FF_X28_Y3_N31
\inst1|inst6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6\(0));

-- Location: LABCELL_X22_Y3_N24
\inst1|inst7[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7[0]~feeder_combout\ = \inst1|inst6\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst6\(0),
	combout => \inst1|inst7[0]~feeder_combout\);

-- Location: FF_X22_Y3_N26
\inst1|inst7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst7[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7\(0));

-- Location: FF_X23_Y3_N31
\inst1|inst8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8\(0));

-- Location: LABCELL_X22_Y3_N30
\inst1|inst2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~29_sumout\ = SUM(( \inst1|inst8\(0) ) + ( \inst1|inst7\(0) ) + ( !VCC ))
-- \inst1|inst2|Add0~30\ = CARRY(( \inst1|inst8\(0) ) + ( \inst1|inst7\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst7\(0),
	datad => \inst1|ALT_INV_inst8\(0),
	cin => GND,
	sumout => \inst1|inst2|Add0~29_sumout\,
	cout => \inst1|inst2|Add0~30\);

-- Location: LABCELL_X22_Y3_N33
\inst1|inst2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~25_sumout\ = SUM(( \inst1|inst7\(1) ) + ( \inst1|inst8\(1) ) + ( \inst1|inst2|Add0~30\ ))
-- \inst1|inst2|Add0~26\ = CARRY(( \inst1|inst7\(1) ) + ( \inst1|inst8\(1) ) + ( \inst1|inst2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst8\(1),
	datad => \inst1|ALT_INV_inst7\(1),
	cin => \inst1|inst2|Add0~30\,
	sumout => \inst1|inst2|Add0~25_sumout\,
	cout => \inst1|inst2|Add0~26\);

-- Location: LABCELL_X22_Y3_N36
\inst1|inst2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~21_sumout\ = SUM(( \inst1|inst7\(2) ) + ( \inst1|inst8\(2) ) + ( \inst1|inst2|Add0~26\ ))
-- \inst1|inst2|Add0~22\ = CARRY(( \inst1|inst7\(2) ) + ( \inst1|inst8\(2) ) + ( \inst1|inst2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst8\(2),
	datad => \inst1|ALT_INV_inst7\(2),
	cin => \inst1|inst2|Add0~26\,
	sumout => \inst1|inst2|Add0~21_sumout\,
	cout => \inst1|inst2|Add0~22\);

-- Location: LABCELL_X22_Y3_N39
\inst1|inst2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~17_sumout\ = SUM(( \inst1|inst8\(3) ) + ( \inst1|inst7\(3) ) + ( \inst1|inst2|Add0~22\ ))
-- \inst1|inst2|Add0~18\ = CARRY(( \inst1|inst8\(3) ) + ( \inst1|inst7\(3) ) + ( \inst1|inst2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst7\(3),
	datad => \inst1|ALT_INV_inst8\(3),
	cin => \inst1|inst2|Add0~22\,
	sumout => \inst1|inst2|Add0~17_sumout\,
	cout => \inst1|inst2|Add0~18\);

-- Location: LABCELL_X22_Y3_N42
\inst1|inst2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~13_sumout\ = SUM(( \inst1|inst7\(4) ) + ( \inst1|inst8\(4) ) + ( \inst1|inst2|Add0~18\ ))
-- \inst1|inst2|Add0~14\ = CARRY(( \inst1|inst7\(4) ) + ( \inst1|inst8\(4) ) + ( \inst1|inst2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst8\(4),
	datad => \inst1|ALT_INV_inst7\(4),
	cin => \inst1|inst2|Add0~18\,
	sumout => \inst1|inst2|Add0~13_sumout\,
	cout => \inst1|inst2|Add0~14\);

-- Location: LABCELL_X22_Y3_N45
\inst1|inst2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~9_sumout\ = SUM(( \inst1|inst7\(5) ) + ( \inst1|inst8\(5) ) + ( \inst1|inst2|Add0~14\ ))
-- \inst1|inst2|Add0~10\ = CARRY(( \inst1|inst7\(5) ) + ( \inst1|inst8\(5) ) + ( \inst1|inst2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst8\(5),
	datad => \inst1|ALT_INV_inst7\(5),
	cin => \inst1|inst2|Add0~14\,
	sumout => \inst1|inst2|Add0~9_sumout\,
	cout => \inst1|inst2|Add0~10\);

-- Location: LABCELL_X22_Y3_N48
\inst1|inst2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~5_sumout\ = SUM(( \inst1|inst8\(6) ) + ( \inst1|inst7\(6) ) + ( \inst1|inst2|Add0~10\ ))
-- \inst1|inst2|Add0~6\ = CARRY(( \inst1|inst8\(6) ) + ( \inst1|inst7\(6) ) + ( \inst1|inst2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst7\(6),
	datad => \inst1|ALT_INV_inst8\(6),
	cin => \inst1|inst2|Add0~10\,
	sumout => \inst1|inst2|Add0~5_sumout\,
	cout => \inst1|inst2|Add0~6\);

-- Location: LABCELL_X22_Y3_N51
\inst1|inst2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~1_sumout\ = SUM(( \inst1|inst7\(7) ) + ( \inst1|inst8\(7) ) + ( \inst1|inst2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst8\(7),
	datad => \inst1|ALT_INV_inst7\(7),
	cin => \inst1|inst2|Add0~6\,
	sumout => \inst1|inst2|Add0~1_sumout\);

-- Location: FF_X22_Y3_N53
\inst1|inst9[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9\(7));

-- Location: FF_X22_Y3_N50
\inst1|inst9[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9\(6));

-- Location: FF_X22_Y3_N47
\inst1|inst9[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9\(5));

-- Location: FF_X22_Y3_N44
\inst1|inst9[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9\(4));

-- Location: FF_X22_Y3_N41
\inst1|inst9[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9\(3));

-- Location: FF_X22_Y3_N38
\inst1|inst9[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9\(2));

-- Location: FF_X22_Y3_N35
\inst1|inst9[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9\(1));

-- Location: FF_X22_Y3_N31
\inst1|inst9[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9\(0));

-- Location: LABCELL_X22_Y3_N0
\inst|inst3|result[0]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|result[0]~29_sumout\ = SUM(( !\pix1[0]~input_o\ $ (!\inst1|inst9\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst|inst3|result[0]~30\ = CARRY(( !\pix1[0]~input_o\ $ (!\inst1|inst9\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst|inst3|result[0]~31\ = SHARE((!\inst1|inst9\(0)) # (\pix1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pix1[0]~input_o\,
	datac => \inst1|ALT_INV_inst9\(0),
	cin => GND,
	sharein => GND,
	sumout => \inst|inst3|result[0]~29_sumout\,
	cout => \inst|inst3|result[0]~30\,
	shareout => \inst|inst3|result[0]~31\);

-- Location: LABCELL_X22_Y3_N3
\inst|inst3|result[1]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|result[1]~25_sumout\ = SUM(( !\inst1|inst9\(1) $ (\pix1[1]~input_o\) ) + ( \inst|inst3|result[0]~31\ ) + ( \inst|inst3|result[0]~30\ ))
-- \inst|inst3|result[1]~26\ = CARRY(( !\inst1|inst9\(1) $ (\pix1[1]~input_o\) ) + ( \inst|inst3|result[0]~31\ ) + ( \inst|inst3|result[0]~30\ ))
-- \inst|inst3|result[1]~27\ = SHARE((!\inst1|inst9\(1) & \pix1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst9\(1),
	datac => \ALT_INV_pix1[1]~input_o\,
	cin => \inst|inst3|result[0]~30\,
	sharein => \inst|inst3|result[0]~31\,
	sumout => \inst|inst3|result[1]~25_sumout\,
	cout => \inst|inst3|result[1]~26\,
	shareout => \inst|inst3|result[1]~27\);

-- Location: LABCELL_X22_Y3_N6
\inst|inst3|result[2]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|result[2]~21_sumout\ = SUM(( !\pix1[2]~input_o\ $ (\inst1|inst9\(2)) ) + ( \inst|inst3|result[1]~27\ ) + ( \inst|inst3|result[1]~26\ ))
-- \inst|inst3|result[2]~22\ = CARRY(( !\pix1[2]~input_o\ $ (\inst1|inst9\(2)) ) + ( \inst|inst3|result[1]~27\ ) + ( \inst|inst3|result[1]~26\ ))
-- \inst|inst3|result[2]~23\ = SHARE((\pix1[2]~input_o\ & !\inst1|inst9\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pix1[2]~input_o\,
	datad => \inst1|ALT_INV_inst9\(2),
	cin => \inst|inst3|result[1]~26\,
	sharein => \inst|inst3|result[1]~27\,
	sumout => \inst|inst3|result[2]~21_sumout\,
	cout => \inst|inst3|result[2]~22\,
	shareout => \inst|inst3|result[2]~23\);

-- Location: LABCELL_X22_Y3_N9
\inst|inst3|result[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|result[3]~17_sumout\ = SUM(( !\pix1[3]~input_o\ $ (\inst1|inst9\(3)) ) + ( \inst|inst3|result[2]~23\ ) + ( \inst|inst3|result[2]~22\ ))
-- \inst|inst3|result[3]~18\ = CARRY(( !\pix1[3]~input_o\ $ (\inst1|inst9\(3)) ) + ( \inst|inst3|result[2]~23\ ) + ( \inst|inst3|result[2]~22\ ))
-- \inst|inst3|result[3]~19\ = SHARE((\pix1[3]~input_o\ & !\inst1|inst9\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pix1[3]~input_o\,
	datac => \inst1|ALT_INV_inst9\(3),
	cin => \inst|inst3|result[2]~22\,
	sharein => \inst|inst3|result[2]~23\,
	sumout => \inst|inst3|result[3]~17_sumout\,
	cout => \inst|inst3|result[3]~18\,
	shareout => \inst|inst3|result[3]~19\);

-- Location: LABCELL_X22_Y3_N12
\inst|inst3|result[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|result[4]~13_sumout\ = SUM(( !\inst1|inst9\(4) $ (\pix1[4]~input_o\) ) + ( \inst|inst3|result[3]~19\ ) + ( \inst|inst3|result[3]~18\ ))
-- \inst|inst3|result[4]~14\ = CARRY(( !\inst1|inst9\(4) $ (\pix1[4]~input_o\) ) + ( \inst|inst3|result[3]~19\ ) + ( \inst|inst3|result[3]~18\ ))
-- \inst|inst3|result[4]~15\ = SHARE((!\inst1|inst9\(4) & \pix1[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_inst9\(4),
	datac => \ALT_INV_pix1[4]~input_o\,
	cin => \inst|inst3|result[3]~18\,
	sharein => \inst|inst3|result[3]~19\,
	sumout => \inst|inst3|result[4]~13_sumout\,
	cout => \inst|inst3|result[4]~14\,
	shareout => \inst|inst3|result[4]~15\);

-- Location: LABCELL_X22_Y3_N15
\inst|inst3|result[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|result[5]~9_sumout\ = SUM(( !\pix1[5]~input_o\ $ (\inst1|inst9\(5)) ) + ( \inst|inst3|result[4]~15\ ) + ( \inst|inst3|result[4]~14\ ))
-- \inst|inst3|result[5]~10\ = CARRY(( !\pix1[5]~input_o\ $ (\inst1|inst9\(5)) ) + ( \inst|inst3|result[4]~15\ ) + ( \inst|inst3|result[4]~14\ ))
-- \inst|inst3|result[5]~11\ = SHARE((\pix1[5]~input_o\ & !\inst1|inst9\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pix1[5]~input_o\,
	datac => \inst1|ALT_INV_inst9\(5),
	cin => \inst|inst3|result[4]~14\,
	sharein => \inst|inst3|result[4]~15\,
	sumout => \inst|inst3|result[5]~9_sumout\,
	cout => \inst|inst3|result[5]~10\,
	shareout => \inst|inst3|result[5]~11\);

-- Location: LABCELL_X22_Y3_N18
\inst|inst3|result[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|result[6]~5_sumout\ = SUM(( !\pix1[6]~input_o\ $ (\inst1|inst9\(6)) ) + ( \inst|inst3|result[5]~11\ ) + ( \inst|inst3|result[5]~10\ ))
-- \inst|inst3|result[6]~6\ = CARRY(( !\pix1[6]~input_o\ $ (\inst1|inst9\(6)) ) + ( \inst|inst3|result[5]~11\ ) + ( \inst|inst3|result[5]~10\ ))
-- \inst|inst3|result[6]~7\ = SHARE((\pix1[6]~input_o\ & !\inst1|inst9\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pix1[6]~input_o\,
	datac => \inst1|ALT_INV_inst9\(6),
	cin => \inst|inst3|result[5]~10\,
	sharein => \inst|inst3|result[5]~11\,
	sumout => \inst|inst3|result[6]~5_sumout\,
	cout => \inst|inst3|result[6]~6\,
	shareout => \inst|inst3|result[6]~7\);

-- Location: LABCELL_X22_Y3_N21
\inst|inst3|result[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|result[7]~1_sumout\ = SUM(( !\inst1|inst9\(7) $ (\pix1[7]~input_o\) ) + ( \inst|inst3|result[6]~7\ ) + ( \inst|inst3|result[6]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst9\(7),
	datac => \ALT_INV_pix1[7]~input_o\,
	cin => \inst|inst3|result[6]~6\,
	sharein => \inst|inst3|result[6]~7\,
	sumout => \inst|inst3|result[7]~1_sumout\);

-- Location: FF_X22_Y3_N13
\inst|inst10[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[7]~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst10\(7));

-- Location: FF_X22_Y3_N16
\inst|inst10[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[6]~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst10\(6));

-- Location: FF_X21_Y3_N4
\inst|inst10[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[5]~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst10\(5));

-- Location: MLABCELL_X21_Y3_N21
\inst|inst10[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst10[4]~feeder_combout\ = ( \inst|inst3|result[4]~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst3|ALT_INV_result[4]~13_sumout\,
	combout => \inst|inst10[4]~feeder_combout\);

-- Location: FF_X21_Y3_N22
\inst|inst10[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|inst10[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst10\(4));

-- Location: LABCELL_X23_Y3_N27
\inst|inst10[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst10[3]~feeder_combout\ = ( \inst|inst3|result[3]~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst3|ALT_INV_result[3]~17_sumout\,
	combout => \inst|inst10[3]~feeder_combout\);

-- Location: FF_X23_Y3_N28
\inst|inst10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|inst10[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst10\(3));

-- Location: FF_X21_Y3_N14
\inst|inst10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[2]~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst10\(2));

-- Location: FF_X21_Y3_N55
\inst|inst10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[1]~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst10\(1));

-- Location: FF_X21_Y3_N52
\inst|inst10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[0]~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst10\(0));

-- Location: LABCELL_X22_Y3_N27
\inst1|inst10[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10[7]~feeder_combout\ = ( \inst|inst3|result[7]~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst3|ALT_INV_result[7]~1_sumout\,
	combout => \inst1|inst10[7]~feeder_combout\);

-- Location: FF_X22_Y3_N28
\inst1|inst10[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst10[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10\(7));

-- Location: FF_X22_Y3_N4
\inst1|inst10[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[6]~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10\(6));

-- Location: FF_X22_Y3_N11
\inst1|inst10[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[5]~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10\(5));

-- Location: MLABCELL_X21_Y3_N6
\inst1|inst10[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10[4]~feeder_combout\ = ( \inst|inst3|result[4]~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst3|ALT_INV_result[4]~13_sumout\,
	combout => \inst1|inst10[4]~feeder_combout\);

-- Location: FF_X21_Y3_N7
\inst1|inst10[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst10[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10\(4));

-- Location: MLABCELL_X21_Y3_N24
\inst1|inst10[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10[3]~feeder_combout\ = ( \inst|inst3|result[3]~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst3|ALT_INV_result[3]~17_sumout\,
	combout => \inst1|inst10[3]~feeder_combout\);

-- Location: FF_X21_Y3_N25
\inst1|inst10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|inst10[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10\(3));

-- Location: FF_X21_Y3_N1
\inst1|inst10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[2]~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10\(2));

-- Location: FF_X21_Y3_N58
\inst1|inst10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[1]~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10\(1));

-- Location: FF_X21_Y3_N43
\inst1|inst10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[0]~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10\(0));

-- Location: FF_X22_Y3_N1
\inst2|inst10[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[7]~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst10\(7));

-- Location: LABCELL_X22_Y3_N57
\inst2|inst10[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst10[6]~feeder_combout\ = ( \inst|inst3|result[6]~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst3|ALT_INV_result[6]~5_sumout\,
	combout => \inst2|inst10[6]~feeder_combout\);

-- Location: FF_X22_Y3_N58
\inst2|inst10[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst2|inst10[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst10\(6));

-- Location: FF_X22_Y3_N7
\inst2|inst10[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[5]~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst10\(5));

-- Location: MLABCELL_X21_Y3_N36
\inst2|inst10[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst10[4]~feeder_combout\ = ( \inst|inst3|result[4]~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst3|ALT_INV_result[4]~13_sumout\,
	combout => \inst2|inst10[4]~feeder_combout\);

-- Location: FF_X21_Y3_N37
\inst2|inst10[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst2|inst10[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst10\(4));

-- Location: LABCELL_X23_Y3_N18
\inst2|inst10[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst10[3]~feeder_combout\ = ( \inst|inst3|result[3]~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst3|ALT_INV_result[3]~17_sumout\,
	combout => \inst2|inst10[3]~feeder_combout\);

-- Location: FF_X23_Y3_N19
\inst2|inst10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst2|inst10[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst10\(3));

-- Location: FF_X21_Y3_N49
\inst2|inst10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[2]~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst10\(2));

-- Location: FF_X21_Y3_N46
\inst2|inst10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[1]~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst10\(1));

-- Location: FF_X21_Y3_N28
\inst2|inst10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[0]~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst10\(0));

-- Location: FF_X22_Y3_N23
\inst3|inst10[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|inst3|result[7]~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10\(7));

-- Location: FF_X22_Y3_N19
\inst3|inst10[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|inst3|result[6]~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10\(6));

-- Location: FF_X21_Y3_N16
\inst3|inst10[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[5]~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10\(5));

-- Location: MLABCELL_X21_Y3_N39
\inst3|inst10[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|inst10[4]~feeder_combout\ = ( \inst|inst3|result[4]~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst3|ALT_INV_result[4]~13_sumout\,
	combout => \inst3|inst10[4]~feeder_combout\);

-- Location: FF_X21_Y3_N40
\inst3|inst10[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|inst10[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10\(4));

-- Location: MLABCELL_X21_Y3_N18
\inst3|inst10[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|inst10[3]~feeder_combout\ = ( \inst|inst3|result[3]~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst3|ALT_INV_result[3]~17_sumout\,
	combout => \inst3|inst10[3]~feeder_combout\);

-- Location: FF_X21_Y3_N19
\inst3|inst10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|inst10[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10\(3));

-- Location: FF_X21_Y3_N31
\inst3|inst10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[2]~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10\(2));

-- Location: FF_X21_Y3_N10
\inst3|inst10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[1]~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10\(1));

-- Location: FF_X21_Y3_N34
\inst3|inst10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|inst3|result[0]~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10\(0));

-- Location: LABCELL_X43_Y61_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


