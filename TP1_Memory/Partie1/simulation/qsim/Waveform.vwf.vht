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
-- Generated on "05/15/2023 22:00:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          partie1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY partie1_vhd_vec_tst IS
END partie1_vhd_vec_tst;
ARCHITECTURE partie1_arch OF partie1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL datain : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataout : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL wren : STD_LOGIC;
COMPONENT partie1
	PORT (
	address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	clock : IN STD_LOGIC;
	datain : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	wren : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : partie1
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	clock => clock,
	datain => datain,
	dataout => dataout,
	wren => wren
	);
-- address[4]
t_prcs_address_4: PROCESS
BEGIN
	address(4) <= '0';
	WAIT FOR 320000 ps;
	address(4) <= '1';
	WAIT FOR 320000 ps;
	address(4) <= '0';
	WAIT FOR 320000 ps;
	address(4) <= '1';
WAIT;
END PROCESS t_prcs_address_4;
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		address(3) <= '0';
		WAIT FOR 160000 ps;
		address(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	address(3) <= '0';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		address(2) <= '0';
		WAIT FOR 80000 ps;
		address(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	address(2) <= '0';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		address(1) <= '0';
		WAIT FOR 40000 ps;
		address(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	address(1) <= '0';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
LOOP
	address(0) <= '0';
	WAIT FOR 20000 ps;
	address(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_address_0;

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
-- datain[3]
t_prcs_datain_3: PROCESS
BEGIN
	datain(3) <= '0';
	WAIT FOR 40000 ps;
	datain(3) <= '1';
	WAIT FOR 40000 ps;
	datain(3) <= '0';
	WAIT FOR 20000 ps;
	datain(3) <= '1';
	WAIT FOR 20000 ps;
	datain(3) <= '0';
	WAIT FOR 20000 ps;
	datain(3) <= '1';
	WAIT FOR 20000 ps;
	datain(3) <= '0';
	WAIT FOR 20000 ps;
	datain(3) <= '1';
	WAIT FOR 20000 ps;
	datain(3) <= '0';
	WAIT FOR 20000 ps;
	datain(3) <= '1';
	WAIT FOR 20000 ps;
	datain(3) <= '0';
	WAIT FOR 20000 ps;
	datain(3) <= '1';
	WAIT FOR 20000 ps;
	datain(3) <= '0';
	WAIT FOR 40000 ps;
	datain(3) <= '1';
	WAIT FOR 20000 ps;
	datain(3) <= '0';
	WAIT FOR 40000 ps;
	datain(3) <= '1';
	WAIT FOR 20000 ps;
	datain(3) <= '0';
	WAIT FOR 20000 ps;
	datain(3) <= '1';
	WAIT FOR 20000 ps;
	datain(3) <= '0';
	WAIT FOR 20000 ps;
	datain(3) <= '1';
	WAIT FOR 60000 ps;
	datain(3) <= '0';
	WAIT FOR 20000 ps;
	datain(3) <= '1';
	WAIT FOR 60000 ps;
	datain(3) <= '0';
	WAIT FOR 20000 ps;
	datain(3) <= '1';
	WAIT FOR 20000 ps;
	datain(3) <= '0';
	WAIT FOR 80000 ps;
	datain(3) <= '1';
	WAIT FOR 40000 ps;
	datain(3) <= '0';
	WAIT FOR 20000 ps;
	datain(3) <= '1';
	WAIT FOR 40000 ps;
	datain(3) <= '0';
	WAIT FOR 120000 ps;
	datain(3) <= '1';
WAIT;
END PROCESS t_prcs_datain_3;
-- datain[2]
t_prcs_datain_2: PROCESS
BEGIN
	datain(2) <= '0';
	WAIT FOR 60000 ps;
	datain(2) <= '1';
	WAIT FOR 20000 ps;
	datain(2) <= '0';
	WAIT FOR 20000 ps;
	datain(2) <= '1';
	WAIT FOR 40000 ps;
	datain(2) <= '0';
	WAIT FOR 60000 ps;
	datain(2) <= '1';
	WAIT FOR 40000 ps;
	datain(2) <= '0';
	WAIT FOR 20000 ps;
	datain(2) <= '1';
	WAIT FOR 40000 ps;
	datain(2) <= '0';
	WAIT FOR 20000 ps;
	datain(2) <= '1';
	WAIT FOR 140000 ps;
	datain(2) <= '0';
	WAIT FOR 60000 ps;
	datain(2) <= '1';
	WAIT FOR 60000 ps;
	datain(2) <= '0';
	WAIT FOR 40000 ps;
	datain(2) <= '1';
	WAIT FOR 20000 ps;
	datain(2) <= '0';
	WAIT FOR 20000 ps;
	datain(2) <= '1';
	WAIT FOR 40000 ps;
	datain(2) <= '0';
	WAIT FOR 20000 ps;
	datain(2) <= '1';
	WAIT FOR 20000 ps;
	datain(2) <= '0';
	WAIT FOR 60000 ps;
	datain(2) <= '1';
	WAIT FOR 20000 ps;
	datain(2) <= '0';
	WAIT FOR 40000 ps;
	datain(2) <= '1';
	WAIT FOR 20000 ps;
	datain(2) <= '0';
	WAIT FOR 60000 ps;
	datain(2) <= '1';
WAIT;
END PROCESS t_prcs_datain_2;
-- datain[1]
t_prcs_datain_1: PROCESS
BEGIN
	datain(1) <= '1';
	WAIT FOR 20000 ps;
	datain(1) <= '0';
	WAIT FOR 80000 ps;
	datain(1) <= '1';
	WAIT FOR 20000 ps;
	datain(1) <= '0';
	WAIT FOR 120000 ps;
	datain(1) <= '1';
	WAIT FOR 20000 ps;
	datain(1) <= '0';
	WAIT FOR 40000 ps;
	datain(1) <= '1';
	WAIT FOR 40000 ps;
	datain(1) <= '0';
	WAIT FOR 40000 ps;
	datain(1) <= '1';
	WAIT FOR 40000 ps;
	datain(1) <= '0';
	WAIT FOR 20000 ps;
	datain(1) <= '1';
	WAIT FOR 20000 ps;
	datain(1) <= '0';
	WAIT FOR 80000 ps;
	datain(1) <= '1';
	WAIT FOR 40000 ps;
	datain(1) <= '0';
	WAIT FOR 40000 ps;
	datain(1) <= '1';
	WAIT FOR 40000 ps;
	datain(1) <= '0';
	WAIT FOR 20000 ps;
	datain(1) <= '1';
	WAIT FOR 80000 ps;
	datain(1) <= '0';
	WAIT FOR 40000 ps;
	datain(1) <= '1';
	WAIT FOR 40000 ps;
	datain(1) <= '0';
	WAIT FOR 40000 ps;
	datain(1) <= '1';
	WAIT FOR 20000 ps;
	datain(1) <= '0';
	WAIT FOR 40000 ps;
	datain(1) <= '1';
	WAIT FOR 20000 ps;
	datain(1) <= '0';
	WAIT FOR 20000 ps;
	datain(1) <= '1';
WAIT;
END PROCESS t_prcs_datain_1;
-- datain[0]
t_prcs_datain_0: PROCESS
BEGIN
	datain(0) <= '1';
	WAIT FOR 40000 ps;
	datain(0) <= '0';
	WAIT FOR 20000 ps;
	datain(0) <= '1';
	WAIT FOR 20000 ps;
	datain(0) <= '0';
	WAIT FOR 20000 ps;
	datain(0) <= '1';
	WAIT FOR 40000 ps;
	datain(0) <= '0';
	WAIT FOR 60000 ps;
	datain(0) <= '1';
	WAIT FOR 20000 ps;
	datain(0) <= '0';
	WAIT FOR 20000 ps;
	datain(0) <= '1';
	WAIT FOR 80000 ps;
	datain(0) <= '0';
	WAIT FOR 20000 ps;
	datain(0) <= '1';
	WAIT FOR 40000 ps;
	datain(0) <= '0';
	WAIT FOR 20000 ps;
	datain(0) <= '1';
	WAIT FOR 40000 ps;
	datain(0) <= '0';
	WAIT FOR 20000 ps;
	datain(0) <= '1';
	WAIT FOR 120000 ps;
	datain(0) <= '0';
	WAIT FOR 40000 ps;
	datain(0) <= '1';
	WAIT FOR 20000 ps;
	datain(0) <= '0';
	WAIT FOR 20000 ps;
	datain(0) <= '1';
	WAIT FOR 20000 ps;
	datain(0) <= '0';
	WAIT FOR 40000 ps;
	datain(0) <= '1';
	WAIT FOR 40000 ps;
	datain(0) <= '0';
	WAIT FOR 40000 ps;
	datain(0) <= '1';
	WAIT FOR 20000 ps;
	datain(0) <= '0';
	WAIT FOR 20000 ps;
	datain(0) <= '1';
	WAIT FOR 20000 ps;
	datain(0) <= '0';
	WAIT FOR 60000 ps;
	datain(0) <= '1';
	WAIT FOR 60000 ps;
	datain(0) <= '0';
WAIT;
END PROCESS t_prcs_datain_0;

-- wren
t_prcs_wren: PROCESS
BEGIN
	wren <= '1';
	WAIT FOR 640000 ps;
	wren <= '0';
WAIT;
END PROCESS t_prcs_wren;
END partie1_arch;
