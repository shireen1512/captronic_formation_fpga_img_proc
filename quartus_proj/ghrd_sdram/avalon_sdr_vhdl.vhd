-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- Generated by Quartus Prime Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition
-- Created on Wed Apr 20 15:06:23 2022

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY avalon_sdr_vhdl IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        start_process : IN STD_LOGIC := '0';
        avm_m0_waitrequest : IN STD_LOGIC := '0';
        avm_m0_readdatavalid : IN STD_LOGIC := '0';
        avm_m0_readdata : IN STD_LOGIC_VECTOR(255 DOWNTO 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
        avm_m0_address : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        avm_m0_read : OUT STD_LOGIC;
        avm_m0_byteenable : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        avm_m0_burstcount : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
        out_data : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
        avm_m0_write : OUT STD_LOGIC;
        avm_m0_writedata : OUT STD_LOGIC_VECTOR(255 DOWNTO 0)
    );
END avalon_sdr_vhdl;

ARCHITECTURE BEHAVIOR OF avalon_sdr_vhdl IS
    TYPE type_fstate IS (init,wait_read,write_start,ask_read,write_end);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
    constant ramp_v : std_logic_vector (255 downto 0) := X"0123456789ABCDEF0123456789ABCDEF";

 BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,start_process,avm_m0_waitrequest,avm_m0_readdatavalid,avm_m0_readdata)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= init;
            avm_m0_address <= "00000000000000000000000000000000";
            avm_m0_read <= '0';
            avm_m0_byteenable <= "00000000000000000000000000000000";
            avm_m0_burstcount <= "00000000000";
            out_data <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
            avm_m0_write <= '0';
            avm_m0_writedata <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
        ELSE
            avm_m0_address <= "00000000000000000000000000000000";
            avm_m0_read <= '0';
            avm_m0_byteenable <= "00000000000000000000000000000000";
            avm_m0_burstcount <= "00000000000";
            out_data <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
            avm_m0_write <= '0';
            avm_m0_writedata <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
            CASE fstate IS
                WHEN init =>
                    IF ((start_process = '1')) THEN
                        reg_fstate <= ask_read;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= init;
                    END IF;
                WHEN wait_read =>
                    IF ((avm_m0_readdatavalid = '1')) THEN
                        reg_fstate <= write_start;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= wait_read;
                    END IF;

                    IF ((avm_m0_readdatavalid = '1')) THEN
                        out_data <= avm_m0_readdata(255 DOWNTO 0);
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        out_data <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
                    END IF;
                WHEN write_start =>
                    IF ((avm_m0_waitrequest = '0')) THEN
                        reg_fstate <= write_end;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= write_start;
                    END IF;

                    avm_m0_burstcount <= "00000000001";

                    avm_m0_write <= '1';

 
							avm_m0_writedata <= ramp_v(255 downto 0); -- "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010110";
						  --avm_m0_writedata <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010110";

                    avm_m0_byteenable <= "11111111111111111111111111111111";

                    avm_m0_address <= "00100000000000000000000000000000";
                WHEN ask_read =>
                    IF ((avm_m0_waitrequest = '0')) THEN
                        reg_fstate <= wait_read;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= ask_read;
                    END IF;

                    avm_m0_read <= '1';

                    avm_m0_burstcount <= "00000000001";

                    out_data <= avm_m0_readdata(255 DOWNTO 0);

                    avm_m0_byteenable <= "11111111111111111111111111111111";

                    avm_m0_address <= "00100000000000000000000000000000";
                WHEN write_end =>
                    reg_fstate <= init;

                    out_data <= avm_m0_readdata(255 DOWNTO 0);
                WHEN OTHERS => 
                    avm_m0_address <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
                    avm_m0_read <= 'X';
                    avm_m0_byteenable <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
                    avm_m0_burstcount <= "XXXXXXXXXXX";
                    out_data <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
                    avm_m0_write <= 'X';
                    avm_m0_writedata <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
