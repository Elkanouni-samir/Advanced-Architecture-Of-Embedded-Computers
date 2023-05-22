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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/21/2023 23:06:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          processor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY processor_vhd_vec_tst IS
END processor_vhd_vec_tst;
ARCHITECTURE processor_arch OF processor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aResetn : STD_LOGIC;
SIGNAL Bus_Wires : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL DataIn : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL Done : STD_LOGIC;
SIGNAL Run : STD_LOGIC;
COMPONENT processor
	PORT (
	aResetn : IN STD_LOGIC;
	Bus_Wires : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	clock : IN STD_LOGIC;
	DataIn : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	Done : BUFFER STD_LOGIC;
	Run : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : processor
	PORT MAP (
-- list connections between master ports and signals
	aResetn => aResetn,
	Bus_Wires => Bus_Wires,
	clock => clock,
	DataIn => DataIn,
	Done => Done,
	Run => Run
	);

-- aResetn
t_prcs_aResetn: PROCESS
BEGIN
	aResetn <= '1';
WAIT;
END PROCESS t_prcs_aResetn;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- Run
t_prcs_Run: PROCESS
BEGIN
	Run <= '0';
	WAIT FOR 40000 ps;
	Run <= '1';
	WAIT FOR 20000 ps;
	Run <= '0';
	WAIT FOR 20000 ps;
	Run <= '1';
	WAIT FOR 20000 ps;
	Run <= '0';
WAIT;
END PROCESS t_prcs_Run;
-- DataIn[8]
t_prcs_DataIn_8: PROCESS
BEGIN
	DataIn(8) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_8;
-- DataIn[7]
t_prcs_DataIn_7: PROCESS
BEGIN
	DataIn(7) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_7;
-- DataIn[6]
t_prcs_DataIn_6: PROCESS
BEGIN
	DataIn(6) <= '0';
	WAIT FOR 40000 ps;
	DataIn(6) <= '1';
	WAIT FOR 20000 ps;
	DataIn(6) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_6;
-- DataIn[5]
t_prcs_DataIn_5: PROCESS
BEGIN
	DataIn(5) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_5;
-- DataIn[4]
t_prcs_DataIn_4: PROCESS
BEGIN
	DataIn(4) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_4;
-- DataIn[3]
t_prcs_DataIn_3: PROCESS
BEGIN
	DataIn(3) <= '0';
	WAIT FOR 80000 ps;
	DataIn(3) <= '1';
	WAIT FOR 20000 ps;
	DataIn(3) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_3;
-- DataIn[2]
t_prcs_DataIn_2: PROCESS
BEGIN
	DataIn(2) <= '0';
	WAIT FOR 60000 ps;
	DataIn(2) <= '1';
	WAIT FOR 20000 ps;
	DataIn(2) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_2;
-- DataIn[1]
t_prcs_DataIn_1: PROCESS
BEGIN
	DataIn(1) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_1;
-- DataIn[0]
t_prcs_DataIn_0: PROCESS
BEGIN
	DataIn(0) <= '0';
	WAIT FOR 60000 ps;
	DataIn(0) <= '1';
	WAIT FOR 20000 ps;
	DataIn(0) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_0;
END processor_arch;
