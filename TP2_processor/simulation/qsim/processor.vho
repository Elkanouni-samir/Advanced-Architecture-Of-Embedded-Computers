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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "05/21/2023 23:06:26"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processor IS
    PORT (
	clock : IN std_logic;
	aResetn : IN std_logic;
	Run : IN std_logic;
	DataIn : IN std_logic_vector(8 DOWNTO 0);
	Bus_Wires : BUFFER std_logic_vector(8 DOWNTO 0);
	Done : BUFFER std_logic
	);
END processor;

-- Design Ports Information
-- Bus_Wires[0]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_Wires[1]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_Wires[2]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_Wires[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_Wires[4]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_Wires[5]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_Wires[6]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_Wires[7]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_Wires[8]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Done	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[1]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[3]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[4]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[5]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[6]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[7]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[8]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Run	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aResetn	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF processor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_aResetn : std_logic;
SIGNAL ww_Run : std_logic;
SIGNAL ww_DataIn : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Bus_Wires : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Done : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Run~input_o\ : std_logic;
SIGNAL \DataIn[7]~input_o\ : std_logic;
SIGNAL \DataIn[8]~input_o\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \aResetn~input_o\ : std_logic;
SIGNAL \Tcycle_Q.T0~q\ : std_logic;
SIGNAL \Tcycle_D.T1~0_combout\ : std_logic;
SIGNAL \Tcycle_Q.T1~q\ : std_logic;
SIGNAL \Tcycle_D.T2~0_combout\ : std_logic;
SIGNAL \Tcycle_Q.T2~q\ : std_logic;
SIGNAL \Tcycle_Q.T3~q\ : std_logic;
SIGNAL \DataIn[1]~input_o\ : std_logic;
SIGNAL \DataIn[4]~input_o\ : std_logic;
SIGNAL \DataIn[5]~input_o\ : std_logic;
SIGNAL \DataIn[2]~input_o\ : std_logic;
SIGNAL \DataIn[3]~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \DataIn[6]~input_o\ : std_logic;
SIGNAL \DataIn[0]~input_o\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \DinOut~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \Bus_Wires~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Reg5|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Reg8|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Ain~0_combout\ : std_logic;
SIGNAL \Add0~38_cout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \Selector26~3_combout\ : std_logic;
SIGNAL \Reg1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \Reg8|Q[1]~feeder_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Reg5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Selector25~3_combout\ : std_logic;
SIGNAL \Reg1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \Reg5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \Reg6|Q[2]~feeder_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \Selector24~3_combout\ : std_logic;
SIGNAL \Reg5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \Reg6|Q[3]~feeder_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Reg8|Q[3]~feeder_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Selector23~3_combout\ : std_logic;
SIGNAL \Reg1|Q[4]~feeder_combout\ : std_logic;
SIGNAL \Reg5|Q[4]~feeder_combout\ : std_logic;
SIGNAL \Reg6|Q[4]~feeder_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \Reg8|Q[4]~feeder_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Selector22~3_combout\ : std_logic;
SIGNAL \Reg5|Q[5]~feeder_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \Reg8|Q[5]~feeder_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \Selector21~3_combout\ : std_logic;
SIGNAL \Reg7|Q[6]~feeder_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \Selector20~2_combout\ : std_logic;
SIGNAL \Selector20~3_combout\ : std_logic;
SIGNAL \Reg5|Q[7]~feeder_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Reg1|Q[8]~feeder_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \Reg6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg10|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg9|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg7|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg8|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_DinOut~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Tcycle_Q.T3~q\ : std_logic;
SIGNAL \ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \Reg9|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Tcycle_Q.T2~q\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Tcycle_Q.T1~q\ : std_logic;
SIGNAL \Reg2|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \Reg0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg7|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg10|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg1|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg3|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Selector19~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~1_combout\ : std_logic;
SIGNAL \Reg4|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg5|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reg6|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Bus_Wires~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Run~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \Reg8|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Tcycle_Q.T0~q\ : std_logic;
SIGNAL \ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~1_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_aResetn <= aResetn;
ww_Run <= Run;
ww_DataIn <= DataIn;
Bus_Wires <= ww_Bus_Wires;
Done <= ww_Done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Equal8~1_combout\ <= NOT \Equal8~1_combout\;
\ALT_INV_Equal8~0_combout\ <= NOT \Equal8~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_DinOut~0_combout\ <= NOT \DinOut~0_combout\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal4~0_combout\ <= NOT \Equal4~0_combout\;
\ALT_INV_Selector3~1_combout\ <= NOT \Selector3~1_combout\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_Selector4~0_combout\ <= NOT \Selector4~0_combout\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\ALT_INV_Selector1~1_combout\ <= NOT \Selector1~1_combout\;
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Tcycle_Q.T3~q\ <= NOT \Tcycle_Q.T3~q\;
\ALT_INV_Selector2~2_combout\ <= NOT \Selector2~2_combout\;
\ALT_INV_Selector2~1_combout\ <= NOT \Selector2~1_combout\;
\Reg9|ALT_INV_Q\(6) <= NOT \Reg9|Q\(6);
\ALT_INV_Tcycle_Q.T2~q\ <= NOT \Tcycle_Q.T2~q\;
\Reg9|ALT_INV_Q\(0) <= NOT \Reg9|Q\(0);
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\Reg9|ALT_INV_Q\(8) <= NOT \Reg9|Q\(8);
\Reg9|ALT_INV_Q\(7) <= NOT \Reg9|Q\(7);
\ALT_INV_Tcycle_Q.T1~q\ <= NOT \Tcycle_Q.T1~q\;
\Reg9|ALT_INV_Q\(3) <= NOT \Reg9|Q\(3);
\Reg9|ALT_INV_Q\(2) <= NOT \Reg9|Q\(2);
\Reg9|ALT_INV_Q\(1) <= NOT \Reg9|Q\(1);
\Reg9|ALT_INV_Q\(5) <= NOT \Reg9|Q\(5);
\Reg9|ALT_INV_Q\(4) <= NOT \Reg9|Q\(4);
\Reg2|ALT_INV_Q\(0) <= NOT \Reg2|Q\(0);
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
\Reg0|ALT_INV_Q\(8) <= NOT \Reg0|Q\(8);
\Reg7|ALT_INV_Q\(8) <= NOT \Reg7|Q\(8);
\Reg10|ALT_INV_Q\(8) <= NOT \Reg10|Q\(8);
\Reg1|ALT_INV_Q\(8) <= NOT \Reg1|Q\(8);
\Reg3|ALT_INV_Q\(8) <= NOT \Reg3|Q\(8);
\Reg2|ALT_INV_Q\(8) <= NOT \Reg2|Q\(8);
\ALT_INV_Selector19~3_combout\ <= NOT \Selector19~3_combout\;
\ALT_INV_Selector19~2_combout\ <= NOT \Selector19~2_combout\;
\ALT_INV_Selector19~1_combout\ <= NOT \Selector19~1_combout\;
\Reg4|ALT_INV_Q\(7) <= NOT \Reg4|Q\(7);
\Reg5|ALT_INV_Q\(7) <= NOT \Reg5|Q\(7);
\Reg6|ALT_INV_Q\(7) <= NOT \Reg6|Q\(7);
\ALT_INV_Selector19~0_combout\ <= NOT \Selector19~0_combout\;
\Reg0|ALT_INV_Q\(7) <= NOT \Reg0|Q\(7);
\Reg7|ALT_INV_Q\(7) <= NOT \Reg7|Q\(7);
\Reg10|ALT_INV_Q\(7) <= NOT \Reg10|Q\(7);
\Reg1|ALT_INV_Q\(7) <= NOT \Reg1|Q\(7);
\Reg3|ALT_INV_Q\(7) <= NOT \Reg3|Q\(7);
\Reg2|ALT_INV_Q\(7) <= NOT \Reg2|Q\(7);
\ALT_INV_Selector20~3_combout\ <= NOT \Selector20~3_combout\;
\ALT_INV_Selector20~2_combout\ <= NOT \Selector20~2_combout\;
\ALT_INV_Selector20~1_combout\ <= NOT \Selector20~1_combout\;
\Reg4|ALT_INV_Q\(6) <= NOT \Reg4|Q\(6);
\Reg5|ALT_INV_Q\(6) <= NOT \Reg5|Q\(6);
\Reg6|ALT_INV_Q\(6) <= NOT \Reg6|Q\(6);
\ALT_INV_Selector20~0_combout\ <= NOT \Selector20~0_combout\;
\Reg0|ALT_INV_Q\(6) <= NOT \Reg0|Q\(6);
\Reg7|ALT_INV_Q\(6) <= NOT \Reg7|Q\(6);
\Reg10|ALT_INV_Q\(6) <= NOT \Reg10|Q\(6);
\Reg1|ALT_INV_Q\(6) <= NOT \Reg1|Q\(6);
\Reg3|ALT_INV_Q\(6) <= NOT \Reg3|Q\(6);
\Reg2|ALT_INV_Q\(6) <= NOT \Reg2|Q\(6);
\ALT_INV_Selector21~3_combout\ <= NOT \Selector21~3_combout\;
\ALT_INV_Selector21~2_combout\ <= NOT \Selector21~2_combout\;
\ALT_INV_Selector21~1_combout\ <= NOT \Selector21~1_combout\;
\Reg4|ALT_INV_Q\(5) <= NOT \Reg4|Q\(5);
\Reg5|ALT_INV_Q\(5) <= NOT \Reg5|Q\(5);
\Reg6|ALT_INV_Q\(5) <= NOT \Reg6|Q\(5);
\ALT_INV_Selector21~0_combout\ <= NOT \Selector21~0_combout\;
\Reg0|ALT_INV_Q\(5) <= NOT \Reg0|Q\(5);
\Reg7|ALT_INV_Q\(5) <= NOT \Reg7|Q\(5);
\Reg10|ALT_INV_Q\(5) <= NOT \Reg10|Q\(5);
\Reg1|ALT_INV_Q\(5) <= NOT \Reg1|Q\(5);
\Reg3|ALT_INV_Q\(5) <= NOT \Reg3|Q\(5);
\Reg2|ALT_INV_Q\(5) <= NOT \Reg2|Q\(5);
\ALT_INV_Selector22~3_combout\ <= NOT \Selector22~3_combout\;
\ALT_INV_Selector22~2_combout\ <= NOT \Selector22~2_combout\;
\ALT_INV_Selector22~1_combout\ <= NOT \Selector22~1_combout\;
\Reg4|ALT_INV_Q\(4) <= NOT \Reg4|Q\(4);
\Reg5|ALT_INV_Q\(4) <= NOT \Reg5|Q\(4);
\Reg6|ALT_INV_Q\(4) <= NOT \Reg6|Q\(4);
\ALT_INV_Selector22~0_combout\ <= NOT \Selector22~0_combout\;
\Reg0|ALT_INV_Q\(4) <= NOT \Reg0|Q\(4);
\Reg7|ALT_INV_Q\(4) <= NOT \Reg7|Q\(4);
\Reg10|ALT_INV_Q\(4) <= NOT \Reg10|Q\(4);
\Reg1|ALT_INV_Q\(4) <= NOT \Reg1|Q\(4);
\Reg3|ALT_INV_Q\(4) <= NOT \Reg3|Q\(4);
\Reg2|ALT_INV_Q\(4) <= NOT \Reg2|Q\(4);
\ALT_INV_Selector23~3_combout\ <= NOT \Selector23~3_combout\;
\ALT_INV_Selector23~2_combout\ <= NOT \Selector23~2_combout\;
\ALT_INV_Selector23~1_combout\ <= NOT \Selector23~1_combout\;
\Reg4|ALT_INV_Q\(3) <= NOT \Reg4|Q\(3);
\Reg5|ALT_INV_Q\(3) <= NOT \Reg5|Q\(3);
\Reg6|ALT_INV_Q\(3) <= NOT \Reg6|Q\(3);
\ALT_INV_Selector23~0_combout\ <= NOT \Selector23~0_combout\;
\Reg0|ALT_INV_Q\(3) <= NOT \Reg0|Q\(3);
\Reg7|ALT_INV_Q\(3) <= NOT \Reg7|Q\(3);
\Reg10|ALT_INV_Q\(3) <= NOT \Reg10|Q\(3);
\Reg1|ALT_INV_Q\(3) <= NOT \Reg1|Q\(3);
\Reg3|ALT_INV_Q\(3) <= NOT \Reg3|Q\(3);
\Reg2|ALT_INV_Q\(3) <= NOT \Reg2|Q\(3);
\ALT_INV_Selector24~3_combout\ <= NOT \Selector24~3_combout\;
\ALT_INV_Selector24~2_combout\ <= NOT \Selector24~2_combout\;
\ALT_INV_Selector24~1_combout\ <= NOT \Selector24~1_combout\;
\Reg4|ALT_INV_Q\(2) <= NOT \Reg4|Q\(2);
\Reg5|ALT_INV_Q\(2) <= NOT \Reg5|Q\(2);
\Reg6|ALT_INV_Q\(2) <= NOT \Reg6|Q\(2);
\ALT_INV_Selector24~0_combout\ <= NOT \Selector24~0_combout\;
\Reg0|ALT_INV_Q\(2) <= NOT \Reg0|Q\(2);
\Reg7|ALT_INV_Q\(2) <= NOT \Reg7|Q\(2);
\Reg10|ALT_INV_Q\(2) <= NOT \Reg10|Q\(2);
\Reg1|ALT_INV_Q\(2) <= NOT \Reg1|Q\(2);
\Reg3|ALT_INV_Q\(2) <= NOT \Reg3|Q\(2);
\Reg2|ALT_INV_Q\(2) <= NOT \Reg2|Q\(2);
\ALT_INV_Selector25~3_combout\ <= NOT \Selector25~3_combout\;
\ALT_INV_Selector25~2_combout\ <= NOT \Selector25~2_combout\;
\ALT_INV_Selector25~1_combout\ <= NOT \Selector25~1_combout\;
\Reg4|ALT_INV_Q\(1) <= NOT \Reg4|Q\(1);
\Reg5|ALT_INV_Q\(1) <= NOT \Reg5|Q\(1);
\Reg6|ALT_INV_Q\(1) <= NOT \Reg6|Q\(1);
\ALT_INV_Selector25~0_combout\ <= NOT \Selector25~0_combout\;
\Reg0|ALT_INV_Q\(1) <= NOT \Reg0|Q\(1);
\Reg7|ALT_INV_Q\(1) <= NOT \Reg7|Q\(1);
\Reg10|ALT_INV_Q\(1) <= NOT \Reg10|Q\(1);
\Reg1|ALT_INV_Q\(1) <= NOT \Reg1|Q\(1);
\Reg3|ALT_INV_Q\(1) <= NOT \Reg3|Q\(1);
\Reg2|ALT_INV_Q\(1) <= NOT \Reg2|Q\(1);
\ALT_INV_Selector26~3_combout\ <= NOT \Selector26~3_combout\;
\ALT_INV_Selector26~2_combout\ <= NOT \Selector26~2_combout\;
\ALT_INV_Selector26~1_combout\ <= NOT \Selector26~1_combout\;
\Reg4|ALT_INV_Q\(0) <= NOT \Reg4|Q\(0);
\Reg5|ALT_INV_Q\(0) <= NOT \Reg5|Q\(0);
\Reg6|ALT_INV_Q\(0) <= NOT \Reg6|Q\(0);
\ALT_INV_Selector26~0_combout\ <= NOT \Selector26~0_combout\;
\Reg0|ALT_INV_Q\(0) <= NOT \Reg0|Q\(0);
\Reg7|ALT_INV_Q\(0) <= NOT \Reg7|Q\(0);
\Reg10|ALT_INV_Q\(0) <= NOT \Reg10|Q\(0);
\Reg1|ALT_INV_Q\(0) <= NOT \Reg1|Q\(0);
\Reg3|ALT_INV_Q\(0) <= NOT \Reg3|Q\(0);
\ALT_INV_Bus_Wires~0_combout\ <= NOT \Bus_Wires~0_combout\;
\ALT_INV_WideNor0~0_combout\ <= NOT \WideNor0~0_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal5~1_combout\ <= NOT \Equal5~1_combout\;
\ALT_INV_Equal5~0_combout\ <= NOT \Equal5~0_combout\;
\ALT_INV_Equal6~1_combout\ <= NOT \Equal6~1_combout\;
\ALT_INV_Equal7~1_combout\ <= NOT \Equal7~1_combout\;
\ALT_INV_Equal7~0_combout\ <= NOT \Equal7~0_combout\;
\ALT_INV_Run~input_o\ <= NOT \Run~input_o\;
\ALT_INV_DataIn[8]~input_o\ <= NOT \DataIn[8]~input_o\;
\ALT_INV_DataIn[7]~input_o\ <= NOT \DataIn[7]~input_o\;
\ALT_INV_DataIn[6]~input_o\ <= NOT \DataIn[6]~input_o\;
\ALT_INV_DataIn[5]~input_o\ <= NOT \DataIn[5]~input_o\;
\ALT_INV_DataIn[4]~input_o\ <= NOT \DataIn[4]~input_o\;
\ALT_INV_DataIn[3]~input_o\ <= NOT \DataIn[3]~input_o\;
\ALT_INV_DataIn[2]~input_o\ <= NOT \DataIn[2]~input_o\;
\ALT_INV_DataIn[1]~input_o\ <= NOT \DataIn[1]~input_o\;
\ALT_INV_DataIn[0]~input_o\ <= NOT \DataIn[0]~input_o\;
\ALT_INV_Equal4~1_combout\ <= NOT \Equal4~1_combout\;
\Reg8|ALT_INV_Q\(8) <= NOT \Reg8|Q\(8);
\Reg8|ALT_INV_Q\(7) <= NOT \Reg8|Q\(7);
\Reg8|ALT_INV_Q\(6) <= NOT \Reg8|Q\(6);
\Reg8|ALT_INV_Q\(5) <= NOT \Reg8|Q\(5);
\Reg8|ALT_INV_Q\(4) <= NOT \Reg8|Q\(4);
\Reg8|ALT_INV_Q\(3) <= NOT \Reg8|Q\(3);
\Reg8|ALT_INV_Q\(2) <= NOT \Reg8|Q\(2);
\Reg8|ALT_INV_Q\(1) <= NOT \Reg8|Q\(1);
\Reg8|ALT_INV_Q\(0) <= NOT \Reg8|Q\(0);
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_Tcycle_Q.T0~q\ <= NOT \Tcycle_Q.T0~q\;
\ALT_INV_Selector17~0_combout\ <= NOT \Selector17~0_combout\;
\ALT_INV_Selector18~3_combout\ <= NOT \Selector18~3_combout\;
\ALT_INV_Selector18~2_combout\ <= NOT \Selector18~2_combout\;
\ALT_INV_Selector18~1_combout\ <= NOT \Selector18~1_combout\;
\Reg4|ALT_INV_Q\(8) <= NOT \Reg4|Q\(8);
\Reg5|ALT_INV_Q\(8) <= NOT \Reg5|Q\(8);
\Reg6|ALT_INV_Q\(8) <= NOT \Reg6|Q\(8);

-- Location: IOOBUF_X89_Y15_N56
\Bus_Wires[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector26~3_combout\,
	devoe => ww_devoe,
	o => ww_Bus_Wires(0));

-- Location: IOOBUF_X89_Y16_N5
\Bus_Wires[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector25~3_combout\,
	devoe => ww_devoe,
	o => ww_Bus_Wires(1));

-- Location: IOOBUF_X89_Y13_N56
\Bus_Wires[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector24~3_combout\,
	devoe => ww_devoe,
	o => ww_Bus_Wires(2));

-- Location: IOOBUF_X89_Y13_N22
\Bus_Wires[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector23~3_combout\,
	devoe => ww_devoe,
	o => ww_Bus_Wires(3));

-- Location: IOOBUF_X89_Y16_N22
\Bus_Wires[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector22~3_combout\,
	devoe => ww_devoe,
	o => ww_Bus_Wires(4));

-- Location: IOOBUF_X89_Y13_N5
\Bus_Wires[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector21~3_combout\,
	devoe => ww_devoe,
	o => ww_Bus_Wires(5));

-- Location: IOOBUF_X89_Y16_N39
\Bus_Wires[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector20~3_combout\,
	devoe => ww_devoe,
	o => ww_Bus_Wires(6));

-- Location: IOOBUF_X89_Y13_N39
\Bus_Wires[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector19~3_combout\,
	devoe => ww_devoe,
	o => ww_Bus_Wires(7));

-- Location: IOOBUF_X89_Y15_N5
\Bus_Wires[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector18~3_combout\,
	devoe => ww_devoe,
	o => ww_Bus_Wires(8));

-- Location: IOOBUF_X89_Y16_N56
\Done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector17~0_combout\,
	devoe => ww_devoe,
	o => ww_Done);

-- Location: IOIBUF_X89_Y25_N21
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y15_N38
\Run~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Run,
	o => \Run~input_o\);

-- Location: IOIBUF_X89_Y11_N44
\DataIn[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(7),
	o => \DataIn[7]~input_o\);

-- Location: FF_X83_Y15_N47
\Reg9|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataIn[7]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tcycle_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg9|Q\(7));

-- Location: IOIBUF_X89_Y11_N61
\DataIn[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(8),
	o => \DataIn[8]~input_o\);

-- Location: FF_X82_Y15_N26
\Reg9|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataIn[8]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tcycle_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg9|Q\(8));

-- Location: LABCELL_X80_Y15_N48
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \Tcycle_Q.T1~q\ & ( \Tcycle_Q.T3~q\ ) ) # ( !\Tcycle_Q.T1~q\ & ( \Tcycle_Q.T3~q\ ) ) # ( \Tcycle_Q.T1~q\ & ( !\Tcycle_Q.T3~q\ & ( (!\Reg9|Q\(7) & !\Reg9|Q\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(7),
	datac => \Reg9|ALT_INV_Q\(8),
	datae => \ALT_INV_Tcycle_Q.T1~q\,
	dataf => \ALT_INV_Tcycle_Q.T3~q\,
	combout => \Selector17~0_combout\);

-- Location: LABCELL_X80_Y15_N33
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \Tcycle_Q.T0~q\ & ( !\Tcycle_Q.T3~q\ & ( (!\Selector17~0_combout\) # (!\Tcycle_Q.T1~q\) ) ) ) # ( !\Tcycle_Q.T0~q\ & ( !\Tcycle_Q.T3~q\ & ( (\Run~input_o\ & ((!\Selector17~0_combout\) # (!\Tcycle_Q.T1~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010111111111010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector17~0_combout\,
	datac => \ALT_INV_Run~input_o\,
	datad => \ALT_INV_Tcycle_Q.T1~q\,
	datae => \ALT_INV_Tcycle_Q.T0~q\,
	dataf => \ALT_INV_Tcycle_Q.T3~q\,
	combout => \Selector0~0_combout\);

-- Location: IOIBUF_X89_Y15_N21
\aResetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aResetn,
	o => \aResetn~input_o\);

-- Location: FF_X80_Y15_N35
\Tcycle_Q.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \aResetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tcycle_Q.T0~q\);

-- Location: MLABCELL_X82_Y15_N18
\Tcycle_D.T1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tcycle_D.T1~0_combout\ = ( !\Tcycle_Q.T0~q\ & ( \Run~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Run~input_o\,
	dataf => \ALT_INV_Tcycle_Q.T0~q\,
	combout => \Tcycle_D.T1~0_combout\);

-- Location: FF_X82_Y15_N17
\Tcycle_Q.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Tcycle_D.T1~0_combout\,
	clrn => \aResetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tcycle_Q.T1~q\);

-- Location: MLABCELL_X82_Y15_N21
\Tcycle_D.T2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tcycle_D.T2~0_combout\ = (\Tcycle_Q.T1~q\ & !\Selector17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Tcycle_Q.T1~q\,
	datad => \ALT_INV_Selector17~0_combout\,
	combout => \Tcycle_D.T2~0_combout\);

-- Location: FF_X82_Y15_N23
\Tcycle_Q.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tcycle_D.T2~0_combout\,
	clrn => \aResetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tcycle_Q.T2~q\);

-- Location: FF_X82_Y15_N20
\Tcycle_Q.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Tcycle_Q.T2~q\,
	clrn => \aResetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tcycle_Q.T3~q\);

-- Location: IOIBUF_X89_Y9_N38
\DataIn[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(1),
	o => \DataIn[1]~input_o\);

-- Location: FF_X83_Y15_N32
\Reg9|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataIn[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tcycle_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg9|Q\(1));

-- Location: IOIBUF_X89_Y11_N95
\DataIn[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(4),
	o => \DataIn[4]~input_o\);

-- Location: FF_X83_Y15_N14
\Reg9|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataIn[4]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tcycle_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg9|Q\(4));

-- Location: IOIBUF_X89_Y9_N21
\DataIn[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(5),
	o => \DataIn[5]~input_o\);

-- Location: FF_X82_Y15_N59
\Reg9|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataIn[5]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tcycle_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg9|Q\(5));

-- Location: IOIBUF_X89_Y20_N44
\DataIn[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(2),
	o => \DataIn[2]~input_o\);

-- Location: FF_X83_Y15_N8
\Reg9|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataIn[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tcycle_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg9|Q\(2));

-- Location: IOIBUF_X89_Y20_N61
\DataIn[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(3),
	o => \DataIn[3]~input_o\);

-- Location: FF_X82_Y15_N47
\Reg9|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataIn[3]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tcycle_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg9|Q\(3));

-- Location: MLABCELL_X82_Y15_N51
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \Reg9|Q\(7) & ( (\Tcycle_Q.T1~q\ & \Reg9|Q\(3)) ) ) # ( !\Reg9|Q\(7) & ( (\Reg9|Q\(8) & (\Tcycle_Q.T1~q\ & \Reg9|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(8),
	datac => \ALT_INV_Tcycle_Q.T1~q\,
	datad => \Reg9|ALT_INV_Q\(3),
	dataf => \Reg9|ALT_INV_Q\(7),
	combout => \Selector2~0_combout\);

-- Location: IOIBUF_X89_Y11_N78
\DataIn[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(6),
	o => \DataIn[6]~input_o\);

-- Location: FF_X82_Y15_N8
\Reg9|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataIn[6]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tcycle_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg9|Q\(6));

-- Location: IOIBUF_X89_Y20_N78
\DataIn[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(0),
	o => \DataIn[0]~input_o\);

-- Location: FF_X82_Y15_N2
\Reg9|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataIn[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tcycle_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg9|Q\(0));

-- Location: MLABCELL_X82_Y15_N42
\Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = ( \Reg9|Q\(0) & ( \Reg9|Q\(7) & ( \Tcycle_Q.T2~q\ ) ) ) # ( \Reg9|Q\(0) & ( !\Reg9|Q\(7) & ( ((!\Reg9|Q\(8) & (!\Reg9|Q\(6) & \Tcycle_Q.T1~q\))) # (\Tcycle_Q.T2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(8),
	datab => \Reg9|ALT_INV_Q\(6),
	datac => \ALT_INV_Tcycle_Q.T2~q\,
	datad => \ALT_INV_Tcycle_Q.T1~q\,
	datae => \Reg9|ALT_INV_Q\(0),
	dataf => \Reg9|ALT_INV_Q\(7),
	combout => \Selector2~1_combout\);

-- Location: MLABCELL_X82_Y15_N3
\Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = ( \Selector2~0_combout\ & ( \Selector2~1_combout\ & ( (!\Reg9|Q\(1) & ((!\Reg9|Q\(2)) # ((!\Reg9|Q\(4) & !\Reg9|Q\(5))))) # (\Reg9|Q\(1) & (!\Reg9|Q\(4) & (!\Reg9|Q\(5)))) ) ) ) # ( !\Selector2~0_combout\ & ( \Selector2~1_combout\ 
-- & ( (!\Reg9|Q\(1) & !\Reg9|Q\(2)) ) ) ) # ( \Selector2~0_combout\ & ( !\Selector2~1_combout\ & ( (!\Reg9|Q\(4) & !\Reg9|Q\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000010101010000000001110101011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(1),
	datab => \Reg9|ALT_INV_Q\(4),
	datac => \Reg9|ALT_INV_Q\(5),
	datad => \Reg9|ALT_INV_Q\(2),
	datae => \ALT_INV_Selector2~0_combout\,
	dataf => \ALT_INV_Selector2~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: LABCELL_X83_Y15_N42
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\Tcycle_Q.T3~q\ & ( (((!\Reg9|Q\(6)) # (!\Tcycle_Q.T1~q\)) # (\Reg9|Q\(7))) # (\Reg9|Q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(8),
	datab => \Reg9|ALT_INV_Q\(7),
	datac => \Reg9|ALT_INV_Q\(6),
	datad => \ALT_INV_Tcycle_Q.T1~q\,
	dataf => \ALT_INV_Tcycle_Q.T3~q\,
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X82_Y15_N9
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( !\Reg9|Q\(0) & ( \Reg9|Q\(7) & ( \Tcycle_Q.T2~q\ ) ) ) # ( !\Reg9|Q\(0) & ( !\Reg9|Q\(7) & ( ((\Tcycle_Q.T1~q\ & (!\Reg9|Q\(6) & !\Reg9|Q\(8)))) # (\Tcycle_Q.T2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Tcycle_Q.T2~q\,
	datab => \ALT_INV_Tcycle_Q.T1~q\,
	datac => \Reg9|ALT_INV_Q\(6),
	datad => \Reg9|ALT_INV_Q\(8),
	datae => \Reg9|ALT_INV_Q\(0),
	dataf => \Reg9|ALT_INV_Q\(7),
	combout => \Selector1~0_combout\);

-- Location: LABCELL_X83_Y15_N39
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \Tcycle_Q.T1~q\ & ( (\Reg9|Q\(5) & ((\Reg9|Q\(7)) # (\Reg9|Q\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(8),
	datac => \Reg9|ALT_INV_Q\(7),
	datad => \Reg9|ALT_INV_Q\(5),
	dataf => \ALT_INV_Tcycle_Q.T1~q\,
	combout => \Selector7~0_combout\);

-- Location: LABCELL_X83_Y15_N3
\Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ( \Selector7~0_combout\ & ( (!\Reg9|Q\(3)) # ((\Reg9|Q\(2) & \Selector1~0_combout\)) ) ) # ( !\Selector7~0_combout\ & ( (\Reg9|Q\(2) & \Selector1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111111111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Reg9|ALT_INV_Q\(2),
	datac => \ALT_INV_Selector1~0_combout\,
	datad => \Reg9|ALT_INV_Q\(3),
	dataf => \ALT_INV_Selector7~0_combout\,
	combout => \Equal6~0_combout\);

-- Location: MLABCELL_X82_Y15_N12
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \Selector2~0_combout\ & ( \Selector2~1_combout\ & ( (!\Reg9|Q\(1) & (((\Reg9|Q\(5) & !\Reg9|Q\(4))) # (\Reg9|Q\(2)))) # (\Reg9|Q\(1) & (\Reg9|Q\(5) & ((!\Reg9|Q\(4))))) ) ) ) # ( !\Selector2~0_combout\ & ( \Selector2~1_combout\ & 
-- ( (!\Reg9|Q\(1) & \Reg9|Q\(2)) ) ) ) # ( \Selector2~0_combout\ & ( !\Selector2~1_combout\ & ( (\Reg9|Q\(5) & !\Reg9|Q\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000001010000010100011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(1),
	datab => \Reg9|ALT_INV_Q\(5),
	datac => \Reg9|ALT_INV_Q\(2),
	datad => \Reg9|ALT_INV_Q\(4),
	datae => \ALT_INV_Selector2~0_combout\,
	dataf => \ALT_INV_Selector2~1_combout\,
	combout => \Selector6~0_combout\);

-- Location: MLABCELL_X82_Y15_N54
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \Reg9|Q\(3) & ( \Reg9|Q\(4) & ( (\Reg9|Q\(5) & (\Tcycle_Q.T1~q\ & ((\Reg9|Q\(7)) # (\Reg9|Q\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(8),
	datab => \Reg9|ALT_INV_Q\(5),
	datac => \Reg9|ALT_INV_Q\(7),
	datad => \ALT_INV_Tcycle_Q.T1~q\,
	datae => \Reg9|ALT_INV_Q\(3),
	dataf => \Reg9|ALT_INV_Q\(4),
	combout => \Selector8~0_combout\);

-- Location: MLABCELL_X82_Y15_N27
\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( !\Reg9|Q\(3) & ( !\Reg9|Q\(4) & ( (\Tcycle_Q.T1~q\ & (!\Reg9|Q\(5) & ((\Reg9|Q\(7)) # (\Reg9|Q\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(8),
	datab => \ALT_INV_Tcycle_Q.T1~q\,
	datac => \Reg9|ALT_INV_Q\(5),
	datad => \Reg9|ALT_INV_Q\(7),
	datae => \Reg9|ALT_INV_Q\(3),
	dataf => \Reg9|ALT_INV_Q\(4),
	combout => \Selector1~1_combout\);

-- Location: MLABCELL_X82_Y15_N30
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !\Selector1~1_combout\ & ( \Selector1~0_combout\ & ( (!\Selector8~0_combout\ & ((!\Reg9|Q\(1) & (\Reg9|Q\(2))) # (\Reg9|Q\(1) & ((!\Reg9|Q\(2)) # (!\Selector2~1_combout\))))) ) ) ) # ( !\Selector1~1_combout\ & ( 
-- !\Selector1~0_combout\ & ( (!\Selector8~0_combout\ & ((!\Reg9|Q\(1)) # ((!\Reg9|Q\(2)) # (!\Selector2~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000000000000000000001110000011000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(1),
	datab => \Reg9|ALT_INV_Q\(2),
	datac => \ALT_INV_Selector8~0_combout\,
	datad => \ALT_INV_Selector2~1_combout\,
	datae => \ALT_INV_Selector1~1_combout\,
	dataf => \ALT_INV_Selector1~0_combout\,
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X81_Y15_N27
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \Reg9|Q\(7) & ( \Reg9|Q\(4) & ( (\Tcycle_Q.T1~q\ & (!\Reg9|Q\(5) & \Reg9|Q\(3))) ) ) ) # ( !\Reg9|Q\(7) & ( \Reg9|Q\(4) & ( (\Tcycle_Q.T1~q\ & (\Reg9|Q\(8) & (!\Reg9|Q\(5) & \Reg9|Q\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Tcycle_Q.T1~q\,
	datab => \Reg9|ALT_INV_Q\(8),
	datac => \Reg9|ALT_INV_Q\(5),
	datad => \Reg9|ALT_INV_Q\(3),
	datae => \Reg9|ALT_INV_Q\(7),
	dataf => \Reg9|ALT_INV_Q\(4),
	combout => \Selector4~0_combout\);

-- Location: LABCELL_X83_Y15_N15
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \Reg9|Q\(8) & ( \Tcycle_Q.T1~q\ & ( (!\Reg9|Q\(5) & (\Reg9|Q\(4) & !\Reg9|Q\(3))) ) ) ) # ( !\Reg9|Q\(8) & ( \Tcycle_Q.T1~q\ & ( (!\Reg9|Q\(5) & (\Reg9|Q\(4) & (\Reg9|Q\(7) & !\Reg9|Q\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(5),
	datab => \Reg9|ALT_INV_Q\(4),
	datac => \Reg9|ALT_INV_Q\(7),
	datad => \Reg9|ALT_INV_Q\(3),
	datae => \Reg9|ALT_INV_Q\(8),
	dataf => \ALT_INV_Tcycle_Q.T1~q\,
	combout => \Selector3~0_combout\);

-- Location: LABCELL_X83_Y15_N54
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( !\Selector4~0_combout\ & ( \Selector3~0_combout\ & ( ((!\Selector2~1_combout\) # (!\Reg9|Q\(1))) # (\Reg9|Q\(2)) ) ) ) # ( !\Selector4~0_combout\ & ( !\Selector3~0_combout\ & ( (!\Reg9|Q\(2) & (!\Selector2~1_combout\ & (\Reg9|Q\(1) 
-- & \Selector1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000011111101111111010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(2),
	datab => \ALT_INV_Selector2~1_combout\,
	datac => \Reg9|ALT_INV_Q\(1),
	datad => \ALT_INV_Selector1~0_combout\,
	datae => \ALT_INV_Selector4~0_combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \Equal3~0_combout\);

-- Location: MLABCELL_X84_Y15_N45
\Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( \Equal2~0_combout\ & ( \Equal3~0_combout\ & ( (!\Selector2~2_combout\ & (\Equal1~0_combout\ & (!\Equal6~0_combout\ & !\Selector6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector2~2_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal6~0_combout\,
	datad => \ALT_INV_Selector6~0_combout\,
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LABCELL_X83_Y15_N36
\Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ( !\Selector3~0_combout\ & ( (!\Selector1~0_combout\) # ((!\Reg9|Q\(1)) # (\Reg9|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111111111111001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector1~0_combout\,
	datac => \Reg9|ALT_INV_Q\(1),
	datad => \Reg9|ALT_INV_Q\(2),
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: LABCELL_X81_Y15_N57
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( \Selector2~1_combout\ & ( \Selector2~0_combout\ & ( (!\Reg9|Q\(5) & (!\Reg9|Q\(4) & ((!\Reg9|Q\(1)) # (\Reg9|Q\(2))))) # (\Reg9|Q\(5) & (!\Reg9|Q\(1) & ((!\Reg9|Q\(2))))) ) ) ) # ( !\Selector2~1_combout\ & ( \Selector2~0_combout\ & 
-- ( (!\Reg9|Q\(4) & !\Reg9|Q\(5)) ) ) ) # ( \Selector2~1_combout\ & ( !\Selector2~0_combout\ & ( (!\Reg9|Q\(1) & !\Reg9|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000011000000110000001000101011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(1),
	datab => \Reg9|ALT_INV_Q\(4),
	datac => \Reg9|ALT_INV_Q\(5),
	datad => \Reg9|ALT_INV_Q\(2),
	datae => \ALT_INV_Selector2~1_combout\,
	dataf => \ALT_INV_Selector2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LABCELL_X83_Y15_N27
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( !\Equal6~0_combout\ & ( \Equal2~1_combout\ & ( (\Equal2~0_combout\ & (\Equal1~0_combout\ & (!\Selector6~0_combout\ & \Selector3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Selector6~0_combout\,
	datad => \ALT_INV_Selector3~1_combout\,
	datae => \ALT_INV_Equal6~0_combout\,
	dataf => \ALT_INV_Equal2~1_combout\,
	combout => \Equal2~2_combout\);

-- Location: LABCELL_X83_Y15_N0
\Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = ( \Equal1~0_combout\ & ( ((\Reg9|Q\(1) & (!\Reg9|Q\(2) & \Selector2~1_combout\))) # (\Selector4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111010011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(1),
	datab => \Reg9|ALT_INV_Q\(2),
	datac => \ALT_INV_Selector4~0_combout\,
	datad => \ALT_INV_Selector2~1_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Equal4~1_combout\);

-- Location: MLABCELL_X84_Y15_N9
\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ( !\Selector2~2_combout\ & ( \Equal4~1_combout\ & ( (\Equal2~0_combout\ & (!\Equal6~0_combout\ & (!\Selector6~0_combout\ & \Selector3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Equal6~0_combout\,
	datac => \ALT_INV_Selector6~0_combout\,
	datad => \ALT_INV_Selector3~1_combout\,
	datae => \ALT_INV_Selector2~2_combout\,
	dataf => \ALT_INV_Equal4~1_combout\,
	combout => \Equal4~0_combout\);

-- Location: MLABCELL_X82_Y15_N48
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( \Selector2~1_combout\ & ( (!\Reg9|Q\(2)) # ((!\Reg9|Q\(5) & \Selector2~0_combout\)) ) ) # ( !\Selector2~1_combout\ & ( (!\Reg9|Q\(5) & \Selector2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011111111000011001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Reg9|ALT_INV_Q\(5),
	datac => \ALT_INV_Selector2~0_combout\,
	datad => \Reg9|ALT_INV_Q\(2),
	dataf => \ALT_INV_Selector2~1_combout\,
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X83_Y15_N45
\DinOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DinOut~0_combout\ = ( \Tcycle_Q.T1~q\ & ( (!\Reg9|Q\(8) & (\Reg9|Q\(6) & !\Reg9|Q\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(8),
	datac => \Reg9|ALT_INV_Q\(6),
	datad => \Reg9|ALT_INV_Q\(7),
	dataf => \ALT_INV_Tcycle_Q.T1~q\,
	combout => \DinOut~0_combout\);

-- Location: MLABCELL_X84_Y15_N6
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\Equal1~1_combout\ & ( \DinOut~0_combout\ & ( (\Equal2~0_combout\ & (!\Equal6~0_combout\ & (\Selector3~1_combout\ & !\Selector6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Equal6~0_combout\,
	datac => \ALT_INV_Selector3~1_combout\,
	datad => \ALT_INV_Selector6~0_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_DinOut~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X82_Y15_N36
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !\Selector8~0_combout\ & ( \Selector2~1_combout\ & ( (!\Reg9|Q\(1) & (((!\Reg9|Q\(2) & \Selector1~0_combout\)) # (\Selector1~1_combout\))) # (\Reg9|Q\(1) & (!\Reg9|Q\(2) & (\Selector1~1_combout\))) ) ) ) # ( !\Selector8~0_combout\ & 
-- ( !\Selector2~1_combout\ & ( ((!\Reg9|Q\(1) & (!\Reg9|Q\(2) & \Selector1~0_combout\))) # (\Selector1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110001111000000000000000000001110100011100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(1),
	datab => \Reg9|ALT_INV_Q\(2),
	datac => \ALT_INV_Selector1~1_combout\,
	datad => \ALT_INV_Selector1~0_combout\,
	datae => \ALT_INV_Selector8~0_combout\,
	dataf => \ALT_INV_Selector2~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: MLABCELL_X84_Y15_N54
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( \Equal1~0_combout\ & ( \Equal1~2_combout\ & ( (\Selector3~1_combout\ & (!\Selector6~0_combout\ & (!\Equal1~1_combout\ & !\Equal6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector3~1_combout\,
	datab => \ALT_INV_Selector6~0_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Equal6~0_combout\,
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: LABCELL_X83_Y15_N18
\Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = ( !\Equal6~0_combout\ & ( \Selector6~0_combout\ & ( (\Equal2~0_combout\ & (\Equal1~0_combout\ & (\Selector3~1_combout\ & !\Equal1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Selector3~1_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	datae => \ALT_INV_Equal6~0_combout\,
	dataf => \ALT_INV_Selector6~0_combout\,
	combout => \Equal6~1_combout\);

-- Location: LABCELL_X83_Y15_N9
\Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = ( \Reg9|Q\(2) & ( \Selector7~0_combout\ & ( (!\Reg9|Q\(3) & (!\Reg9|Q\(4) & ((!\Reg9|Q\(1)) # (!\Selector1~0_combout\)))) # (\Reg9|Q\(3) & (!\Reg9|Q\(1) & (\Selector1~0_combout\))) ) ) ) # ( !\Reg9|Q\(2) & ( \Selector7~0_combout\ & ( 
-- (!\Reg9|Q\(3) & !\Reg9|Q\(4)) ) ) ) # ( \Reg9|Q\(2) & ( !\Selector7~0_combout\ & ( (!\Reg9|Q\(1) & \Selector1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110010101010000000001010110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(3),
	datab => \Reg9|ALT_INV_Q\(1),
	datac => \ALT_INV_Selector1~0_combout\,
	datad => \Reg9|ALT_INV_Q\(4),
	datae => \Reg9|ALT_INV_Q\(2),
	dataf => \ALT_INV_Selector7~0_combout\,
	combout => \Equal5~0_combout\);

-- Location: LABCELL_X83_Y15_N21
\Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = ( !\Selector6~0_combout\ & ( \Equal5~0_combout\ & ( (\Equal2~0_combout\ & (\Equal1~0_combout\ & (!\Equal1~1_combout\ & \Selector3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Selector3~1_combout\,
	datae => \ALT_INV_Selector6~0_combout\,
	dataf => \ALT_INV_Equal5~0_combout\,
	combout => \Equal5~1_combout\);

-- Location: LABCELL_X81_Y15_N12
\Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = ( \Selector1~0_combout\ & ( !\Selector1~1_combout\ & ( (!\Reg9|Q\(2) & (\Selector8~0_combout\ & (\Reg9|Q\(1)))) # (\Reg9|Q\(2) & (((\Reg9|Q\(1) & \Selector2~1_combout\)) # (\Selector8~0_combout\))) ) ) ) # ( !\Selector1~0_combout\ & ( 
-- !\Selector1~1_combout\ & ( ((\Reg9|Q\(2) & (\Reg9|Q\(1) & \Selector2~1_combout\))) # (\Selector8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110111000100110001011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(2),
	datab => \ALT_INV_Selector8~0_combout\,
	datac => \Reg9|ALT_INV_Q\(1),
	datad => \ALT_INV_Selector2~1_combout\,
	datae => \ALT_INV_Selector1~0_combout\,
	dataf => \ALT_INV_Selector1~1_combout\,
	combout => \Equal8~0_combout\);

-- Location: MLABCELL_X84_Y15_N57
\Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = ( \Equal1~0_combout\ & ( \Equal8~0_combout\ & ( (\Selector3~1_combout\ & (!\Selector6~0_combout\ & (!\Equal6~0_combout\ & !\Equal1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector3~1_combout\,
	datab => \ALT_INV_Selector6~0_combout\,
	datac => \ALT_INV_Equal6~0_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Equal8~0_combout\,
	combout => \Equal8~1_combout\);

-- Location: LABCELL_X83_Y15_N33
\Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = ( \Reg9|Q\(2) & ( \Selector7~0_combout\ & ( (!\Reg9|Q\(3) & (\Reg9|Q\(4) & ((!\Selector1~0_combout\) # (\Reg9|Q\(1))))) # (\Reg9|Q\(3) & (\Reg9|Q\(1) & (\Selector1~0_combout\))) ) ) ) # ( !\Reg9|Q\(2) & ( \Selector7~0_combout\ & ( 
-- (!\Reg9|Q\(3) & \Reg9|Q\(4)) ) ) ) # ( \Reg9|Q\(2) & ( !\Selector7~0_combout\ & ( (\Reg9|Q\(1) & \Selector1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000101010100000000110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(3),
	datab => \Reg9|ALT_INV_Q\(1),
	datac => \ALT_INV_Selector1~0_combout\,
	datad => \Reg9|ALT_INV_Q\(4),
	datae => \Reg9|ALT_INV_Q\(2),
	dataf => \ALT_INV_Selector7~0_combout\,
	combout => \Equal7~0_combout\);

-- Location: LABCELL_X83_Y15_N24
\Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = ( !\Equal1~1_combout\ & ( \Equal7~0_combout\ & ( (\Equal2~0_combout\ & (\Equal1~0_combout\ & (\Selector3~1_combout\ & !\Selector6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Selector3~1_combout\,
	datad => \ALT_INV_Selector6~0_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal7~0_combout\,
	combout => \Equal7~1_combout\);

-- Location: MLABCELL_X84_Y15_N33
\WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = ( !\Equal8~1_combout\ & ( !\Equal7~1_combout\ & ( (!\Equal1~3_combout\ & (!\Equal6~1_combout\ & !\Equal5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~3_combout\,
	datac => \ALT_INV_Equal6~1_combout\,
	datad => \ALT_INV_Equal5~1_combout\,
	datae => \ALT_INV_Equal8~1_combout\,
	dataf => \ALT_INV_Equal7~1_combout\,
	combout => \WideNor0~0_combout\);

-- Location: MLABCELL_X84_Y15_N48
\Bus_Wires~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Bus_Wires~0_combout\ = ( !\Equal0~0_combout\ & ( \WideNor0~0_combout\ & ( (((\Equal4~0_combout\) # (\Equal2~2_combout\)) # (\Equal3~1_combout\)) # (\Tcycle_Q.T3~q\) ) ) ) # ( !\Equal0~0_combout\ & ( !\WideNor0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000001111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Tcycle_Q.T3~q\,
	datab => \ALT_INV_Equal3~1_combout\,
	datac => \ALT_INV_Equal2~2_combout\,
	datad => \ALT_INV_Equal4~0_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_WideNor0~0_combout\,
	combout => \Bus_Wires~0_combout\);

-- Location: LABCELL_X83_Y14_N6
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \Selector17~0_combout\ & ( !\Reg9|Q\(5) & ( (!\Reg9|Q\(3) & \Reg9|Q\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(3),
	datab => \Reg9|ALT_INV_Q\(4),
	datae => \ALT_INV_Selector17~0_combout\,
	dataf => \Reg9|ALT_INV_Q\(5),
	combout => \Selector11~0_combout\);

-- Location: FF_X84_Y14_N41
\Reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector26~3_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|Q\(0));

-- Location: LABCELL_X83_Y14_N15
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \Selector17~0_combout\ & ( (\Reg9|Q\(3) & (!\Reg9|Q\(4) & !\Reg9|Q\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100000000000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(3),
	datab => \Reg9|ALT_INV_Q\(4),
	datac => \Reg9|ALT_INV_Q\(5),
	datae => \ALT_INV_Selector17~0_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X83_Y14_N52
\Reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector26~3_combout\,
	sload => VCC,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|Q\(0));

-- Location: MLABCELL_X82_Y14_N27
\Reg5|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg5|Q[0]~feeder_combout\ = ( \Selector26~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector26~3_combout\,
	combout => \Reg5|Q[0]~feeder_combout\);

-- Location: LABCELL_X83_Y14_N39
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \Selector17~0_combout\ & ( !\Reg9|Q\(4) & ( (\Reg9|Q\(3) & \Reg9|Q\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(3),
	datac => \Reg9|ALT_INV_Q\(5),
	datae => \ALT_INV_Selector17~0_combout\,
	dataf => \Reg9|ALT_INV_Q\(4),
	combout => \Selector14~0_combout\);

-- Location: FF_X82_Y14_N28
\Reg5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg5|Q[0]~feeder_combout\,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg5|Q\(0));

-- Location: LABCELL_X83_Y14_N24
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \Selector17~0_combout\ & ( \Reg9|Q\(5) & ( (!\Reg9|Q\(3) & !\Reg9|Q\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(3),
	datab => \Reg9|ALT_INV_Q\(4),
	datae => \ALT_INV_Selector17~0_combout\,
	dataf => \Reg9|ALT_INV_Q\(5),
	combout => \Selector13~0_combout\);

-- Location: FF_X85_Y14_N40
\Reg4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector26~3_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg4|Q\(0));

-- Location: LABCELL_X83_Y14_N57
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \Selector17~0_combout\ & ( \Reg9|Q\(4) & ( (!\Reg9|Q\(3) & \Reg9|Q\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(3),
	datac => \Reg9|ALT_INV_Q\(5),
	datae => \ALT_INV_Selector17~0_combout\,
	dataf => \Reg9|ALT_INV_Q\(4),
	combout => \Selector15~0_combout\);

-- Location: FF_X83_Y15_N50
\Reg6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector26~3_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg6|Q\(0));

-- Location: LABCELL_X83_Y15_N48
\Selector26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = ( !\Reg6|Q\(0) & ( \Equal7~1_combout\ & ( (!\Equal6~1_combout\ & (((!\Equal5~1_combout\) # (!\Reg4|Q\(0))))) # (\Equal6~1_combout\ & (!\Reg5|Q\(0) & ((!\Equal5~1_combout\) # (!\Reg4|Q\(0))))) ) ) ) # ( \Reg6|Q\(0) & ( 
-- !\Equal7~1_combout\ & ( (!\Equal6~1_combout\ & (((!\Equal5~1_combout\) # (!\Reg4|Q\(0))))) # (\Equal6~1_combout\ & (!\Reg5|Q\(0) & ((!\Equal5~1_combout\) # (!\Reg4|Q\(0))))) ) ) ) # ( !\Reg6|Q\(0) & ( !\Equal7~1_combout\ & ( (!\Equal6~1_combout\ & 
-- (((!\Equal5~1_combout\) # (!\Reg4|Q\(0))))) # (\Equal6~1_combout\ & (!\Reg5|Q\(0) & ((!\Equal5~1_combout\) # (!\Reg4|Q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000011101110111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~1_combout\,
	datab => \Reg5|ALT_INV_Q\(0),
	datac => \ALT_INV_Equal5~1_combout\,
	datad => \Reg4|ALT_INV_Q\(0),
	datae => \Reg6|ALT_INV_Q\(0),
	dataf => \ALT_INV_Equal7~1_combout\,
	combout => \Selector26~1_combout\);

-- Location: LABCELL_X83_Y14_N33
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \Selector17~0_combout\ & ( (\Reg9|Q\(3) & (\Reg9|Q\(4) & !\Reg9|Q\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001000000000000000000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(3),
	datab => \Reg9|ALT_INV_Q\(4),
	datac => \Reg9|ALT_INV_Q\(5),
	datae => \ALT_INV_Selector17~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X84_Y14_N32
\Reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector26~3_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg3|Q\(0));

-- Location: LABCELL_X83_Y14_N21
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \Selector17~0_combout\ & ( \Reg9|Q\(4) & ( (\Reg9|Q\(5) & \Reg9|Q\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Reg9|ALT_INV_Q\(5),
	datad => \Reg9|ALT_INV_Q\(3),
	datae => \ALT_INV_Selector17~0_combout\,
	dataf => \Reg9|ALT_INV_Q\(4),
	combout => \Selector16~0_combout\);

-- Location: FF_X85_Y15_N43
\Reg7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector26~3_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg7|Q\(0));

-- Location: LABCELL_X80_Y15_N39
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( !\Reg9|Q\(4) & ( \Selector17~0_combout\ & ( (!\Reg9|Q\(3) & !\Reg9|Q\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(3),
	datac => \Reg9|ALT_INV_Q\(5),
	datae => \Reg9|ALT_INV_Q\(4),
	dataf => \ALT_INV_Selector17~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X85_Y15_N10
\Reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector26~3_combout\,
	sload => VCC,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg0|Q\(0));

-- Location: LABCELL_X81_Y15_N48
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \Reg9|Q\(7) & ( (!\Reg9|Q\(8) & !\Reg9|Q\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Reg9|ALT_INV_Q\(8),
	datac => \Reg9|ALT_INV_Q\(6),
	datae => \Reg9|ALT_INV_Q\(7),
	combout => \Mux19~0_combout\);

-- Location: MLABCELL_X82_Y14_N36
\Reg8|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg8|Q[0]~feeder_combout\ = ( \Selector26~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector26~3_combout\,
	combout => \Reg8|Q[0]~feeder_combout\);

-- Location: MLABCELL_X82_Y14_N9
\Ain~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ain~0_combout\ = ( \Tcycle_Q.T1~q\ & ( (\Reg9|Q\(7)) # (\Reg9|Q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111100000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg9|ALT_INV_Q\(8),
	datac => \Reg9|ALT_INV_Q\(7),
	datae => \ALT_INV_Tcycle_Q.T1~q\,
	combout => \Ain~0_combout\);

-- Location: FF_X82_Y14_N37
\Reg8|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg8|Q[0]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg8|Q\(0));

-- Location: MLABCELL_X84_Y14_N0
\Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~38_cout\ = CARRY(( (!\Tcycle_Q.T2~q\) # (!\Mux19~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Tcycle_Q.T2~q\,
	datac => \ALT_INV_Mux19~0_combout\,
	cin => GND,
	cout => \Add0~38_cout\);

-- Location: MLABCELL_X84_Y14_N3
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\Selector26~3_combout\ $ (((\Tcycle_Q.T2~q\ & \Mux19~0_combout\))) ) + ( \Reg8|Q\(0) ) + ( \Add0~38_cout\ ))
-- \Add0~2\ = CARRY(( !\Selector26~3_combout\ $ (((\Tcycle_Q.T2~q\ & \Mux19~0_combout\))) ) + ( \Reg8|Q\(0) ) + ( \Add0~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Tcycle_Q.T2~q\,
	datac => \ALT_INV_Selector26~3_combout\,
	datad => \ALT_INV_Mux19~0_combout\,
	dataf => \Reg8|ALT_INV_Q\(0),
	cin => \Add0~38_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X84_Y14_N4
\Reg10|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	ena => \Tcycle_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg10|Q\(0));

-- Location: MLABCELL_X84_Y15_N39
\Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = ( \Equal1~3_combout\ & ( \Equal8~1_combout\ & ( (!\Reg7|Q\(0) & (!\Reg0|Q\(0) & ((!\Tcycle_Q.T3~q\) # (!\Reg10|Q\(0))))) ) ) ) # ( !\Equal1~3_combout\ & ( \Equal8~1_combout\ & ( (!\Reg7|Q\(0) & ((!\Tcycle_Q.T3~q\) # 
-- (!\Reg10|Q\(0)))) ) ) ) # ( \Equal1~3_combout\ & ( !\Equal8~1_combout\ & ( (!\Reg0|Q\(0) & ((!\Tcycle_Q.T3~q\) # (!\Reg10|Q\(0)))) ) ) ) # ( !\Equal1~3_combout\ & ( !\Equal8~1_combout\ & ( (!\Tcycle_Q.T3~q\) # (!\Reg10|Q\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111100001010000011001100100010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Tcycle_Q.T3~q\,
	datab => \Reg7|ALT_INV_Q\(0),
	datac => \Reg0|ALT_INV_Q\(0),
	datad => \Reg10|ALT_INV_Q\(0),
	datae => \ALT_INV_Equal1~3_combout\,
	dataf => \ALT_INV_Equal8~1_combout\,
	combout => \Selector26~0_combout\);

-- Location: MLABCELL_X84_Y14_N30
\Selector26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = ( \Reg3|Q\(0) & ( \Selector26~0_combout\ & ( (\Selector26~1_combout\ & (!\Equal4~0_combout\ & ((!\Reg1|Q\(0)) # (!\Equal2~2_combout\)))) ) ) ) # ( !\Reg3|Q\(0) & ( \Selector26~0_combout\ & ( (\Selector26~1_combout\ & 
-- ((!\Reg1|Q\(0)) # (!\Equal2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001110000011100000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg1|ALT_INV_Q\(0),
	datab => \ALT_INV_Equal2~2_combout\,
	datac => \ALT_INV_Selector26~1_combout\,
	datad => \ALT_INV_Equal4~0_combout\,
	datae => \Reg3|ALT_INV_Q\(0),
	dataf => \ALT_INV_Selector26~0_combout\,
	combout => \Selector26~2_combout\);

-- Location: MLABCELL_X84_Y14_N39
\Selector26~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~3_combout\ = ( \Selector26~2_combout\ & ( (!\Bus_Wires~0_combout\ & (((\Equal3~1_combout\ & \Reg2|Q\(0))) # (\DataIn[0]~input_o\))) # (\Bus_Wires~0_combout\ & (\Equal3~1_combout\ & ((\Reg2|Q\(0))))) ) ) # ( !\Selector26~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Bus_Wires~0_combout\,
	datab => \ALT_INV_Equal3~1_combout\,
	datac => \ALT_INV_DataIn[0]~input_o\,
	datad => \Reg2|ALT_INV_Q\(0),
	dataf => \ALT_INV_Selector26~2_combout\,
	combout => \Selector26~3_combout\);

-- Location: FF_X84_Y14_N38
\Reg2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector25~3_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|Q\(1));

-- Location: MLABCELL_X87_Y14_N51
\Reg1|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|Q[1]~feeder_combout\ = ( \Selector25~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector25~3_combout\,
	combout => \Reg1|Q[1]~feeder_combout\);

-- Location: FF_X87_Y14_N52
\Reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg1|Q[1]~feeder_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|Q\(1));

-- Location: FF_X83_Y14_N46
\Reg7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector25~3_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg7|Q\(1));

-- Location: MLABCELL_X82_Y14_N39
\Reg8|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg8|Q[1]~feeder_combout\ = ( \Selector25~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector25~3_combout\,
	combout => \Reg8|Q[1]~feeder_combout\);

-- Location: FF_X82_Y14_N40
\Reg8|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg8|Q[1]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg8|Q\(1));

-- Location: MLABCELL_X84_Y14_N6
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\Selector25~3_combout\ $ (((\Mux19~0_combout\ & \Tcycle_Q.T2~q\))) ) + ( \Reg8|Q\(1) ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\Selector25~3_combout\ $ (((\Mux19~0_combout\ & \Tcycle_Q.T2~q\))) ) + ( \Reg8|Q\(1) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_Tcycle_Q.T2~q\,
	datac => \Reg8|ALT_INV_Q\(1),
	datad => \ALT_INV_Selector25~3_combout\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X84_Y14_N7
\Reg10|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	ena => \Tcycle_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg10|Q\(1));

-- Location: FF_X84_Y15_N20
\Reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector25~3_combout\,
	sload => VCC,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg0|Q\(1));

-- Location: MLABCELL_X84_Y15_N18
\Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = ( \Reg0|Q\(1) & ( \Equal8~1_combout\ & ( (!\Reg7|Q\(1) & (!\Equal1~3_combout\ & ((!\Tcycle_Q.T3~q\) # (!\Reg10|Q\(1))))) ) ) ) # ( !\Reg0|Q\(1) & ( \Equal8~1_combout\ & ( (!\Reg7|Q\(1) & ((!\Tcycle_Q.T3~q\) # (!\Reg10|Q\(1)))) ) ) 
-- ) # ( \Reg0|Q\(1) & ( !\Equal8~1_combout\ & ( (!\Equal1~3_combout\ & ((!\Tcycle_Q.T3~q\) # (!\Reg10|Q\(1)))) ) ) ) # ( !\Reg0|Q\(1) & ( !\Equal8~1_combout\ & ( (!\Tcycle_Q.T3~q\) # (!\Reg10|Q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111100001010000011001100100010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Tcycle_Q.T3~q\,
	datab => \Reg7|ALT_INV_Q\(1),
	datac => \ALT_INV_Equal1~3_combout\,
	datad => \Reg10|ALT_INV_Q\(1),
	datae => \Reg0|ALT_INV_Q\(1),
	dataf => \ALT_INV_Equal8~1_combout\,
	combout => \Selector25~0_combout\);

-- Location: FF_X84_Y15_N2
\Reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector25~3_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg3|Q\(1));

-- Location: FF_X83_Y15_N52
\Reg6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector25~3_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg6|Q\(1));

-- Location: MLABCELL_X82_Y14_N54
\Reg5|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg5|Q[1]~feeder_combout\ = ( \Selector25~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector25~3_combout\,
	combout => \Reg5|Q[1]~feeder_combout\);

-- Location: FF_X82_Y14_N56
\Reg5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg5|Q[1]~feeder_combout\,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg5|Q\(1));

-- Location: FF_X84_Y15_N14
\Reg4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector25~3_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg4|Q\(1));

-- Location: MLABCELL_X84_Y15_N12
\Selector25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = ( !\Reg4|Q\(1) & ( \Equal5~1_combout\ & ( (!\Reg6|Q\(1) & (((!\Reg5|Q\(1)) # (!\Equal6~1_combout\)))) # (\Reg6|Q\(1) & (!\Equal7~1_combout\ & ((!\Reg5|Q\(1)) # (!\Equal6~1_combout\)))) ) ) ) # ( \Reg4|Q\(1) & ( !\Equal5~1_combout\ 
-- & ( (!\Reg6|Q\(1) & (((!\Reg5|Q\(1)) # (!\Equal6~1_combout\)))) # (\Reg6|Q\(1) & (!\Equal7~1_combout\ & ((!\Reg5|Q\(1)) # (!\Equal6~1_combout\)))) ) ) ) # ( !\Reg4|Q\(1) & ( !\Equal5~1_combout\ & ( (!\Reg6|Q\(1) & (((!\Reg5|Q\(1)) # 
-- (!\Equal6~1_combout\)))) # (\Reg6|Q\(1) & (!\Equal7~1_combout\ & ((!\Reg5|Q\(1)) # (!\Equal6~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000011101110111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg6|ALT_INV_Q\(1),
	datab => \ALT_INV_Equal7~1_combout\,
	datac => \Reg5|ALT_INV_Q\(1),
	datad => \ALT_INV_Equal6~1_combout\,
	datae => \Reg4|ALT_INV_Q\(1),
	dataf => \ALT_INV_Equal5~1_combout\,
	combout => \Selector25~1_combout\);

-- Location: MLABCELL_X84_Y15_N0
\Selector25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = ( \Reg3|Q\(1) & ( \Selector25~1_combout\ & ( (\Selector25~0_combout\ & (!\Equal4~0_combout\ & ((!\Equal2~2_combout\) # (!\Reg1|Q\(1))))) ) ) ) # ( !\Reg3|Q\(1) & ( \Selector25~1_combout\ & ( (\Selector25~0_combout\ & 
-- ((!\Equal2~2_combout\) # (!\Reg1|Q\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001110000011100000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~2_combout\,
	datab => \Reg1|ALT_INV_Q\(1),
	datac => \ALT_INV_Selector25~0_combout\,
	datad => \ALT_INV_Equal4~0_combout\,
	datae => \Reg3|ALT_INV_Q\(1),
	dataf => \ALT_INV_Selector25~1_combout\,
	combout => \Selector25~2_combout\);

-- Location: MLABCELL_X84_Y14_N36
\Selector25~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~3_combout\ = ( \Selector25~2_combout\ & ( (!\Bus_Wires~0_combout\ & (((\Equal3~1_combout\ & \Reg2|Q\(1))) # (\DataIn[1]~input_o\))) # (\Bus_Wires~0_combout\ & (\Equal3~1_combout\ & ((\Reg2|Q\(1))))) ) ) # ( !\Selector25~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Bus_Wires~0_combout\,
	datab => \ALT_INV_Equal3~1_combout\,
	datac => \ALT_INV_DataIn[1]~input_o\,
	datad => \Reg2|ALT_INV_Q\(1),
	dataf => \ALT_INV_Selector25~2_combout\,
	combout => \Selector25~3_combout\);

-- Location: FF_X85_Y14_N2
\Reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector24~3_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|Q\(2));

-- Location: MLABCELL_X87_Y14_N42
\Reg1|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|Q[2]~feeder_combout\ = ( \Selector24~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector24~3_combout\,
	combout => \Reg1|Q[2]~feeder_combout\);

-- Location: FF_X87_Y14_N43
\Reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg1|Q[2]~feeder_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|Q\(2));

-- Location: MLABCELL_X87_Y14_N57
\Reg5|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg5|Q[2]~feeder_combout\ = ( \Selector24~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector24~3_combout\,
	combout => \Reg5|Q[2]~feeder_combout\);

-- Location: FF_X87_Y14_N58
\Reg5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg5|Q[2]~feeder_combout\,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg5|Q\(2));

-- Location: MLABCELL_X87_Y14_N0
\Reg6|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg6|Q[2]~feeder_combout\ = ( \Selector24~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector24~3_combout\,
	combout => \Reg6|Q[2]~feeder_combout\);

-- Location: FF_X87_Y14_N1
\Reg6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg6|Q[2]~feeder_combout\,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg6|Q\(2));

-- Location: FF_X85_Y14_N44
\Reg4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector24~3_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg4|Q\(2));

-- Location: LABCELL_X85_Y14_N42
\Selector24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = ( \Reg4|Q\(2) & ( \Equal7~1_combout\ & ( (!\Reg6|Q\(2) & (!\Equal5~1_combout\ & ((!\Reg5|Q\(2)) # (!\Equal6~1_combout\)))) ) ) ) # ( !\Reg4|Q\(2) & ( \Equal7~1_combout\ & ( (!\Reg6|Q\(2) & ((!\Reg5|Q\(2)) # (!\Equal6~1_combout\))) 
-- ) ) ) # ( \Reg4|Q\(2) & ( !\Equal7~1_combout\ & ( (!\Equal5~1_combout\ & ((!\Reg5|Q\(2)) # (!\Equal6~1_combout\))) ) ) ) # ( !\Reg4|Q\(2) & ( !\Equal7~1_combout\ & ( (!\Reg5|Q\(2)) # (!\Equal6~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100000000011001000110010001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg5|ALT_INV_Q\(2),
	datab => \Reg6|ALT_INV_Q\(2),
	datac => \ALT_INV_Equal6~1_combout\,
	datad => \ALT_INV_Equal5~1_combout\,
	datae => \Reg4|ALT_INV_Q\(2),
	dataf => \ALT_INV_Equal7~1_combout\,
	combout => \Selector24~1_combout\);

-- Location: FF_X85_Y14_N14
\Reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector24~3_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg3|Q\(2));

-- Location: FF_X85_Y15_N47
\Reg7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector24~3_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg7|Q\(2));

-- Location: FF_X88_Y14_N31
\Reg8|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector24~3_combout\,
	sload => VCC,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg8|Q\(2));

-- Location: MLABCELL_X84_Y14_N9
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\Selector24~3_combout\ $ (((\Mux19~0_combout\ & \Tcycle_Q.T2~q\))) ) + ( \Reg8|Q\(2) ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\Selector24~3_combout\ $ (((\Mux19~0_combout\ & \Tcycle_Q.T2~q\))) ) + ( \Reg8|Q\(2) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_Tcycle_Q.T2~q\,
	datac => \Reg8|ALT_INV_Q\(2),
	datad => \ALT_INV_Selector24~3_combout\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X84_Y14_N10
\Reg10|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	ena => \Tcycle_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg10|Q\(2));

-- Location: FF_X85_Y15_N14
\Reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector24~3_combout\,
	sload => VCC,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg0|Q\(2));

-- Location: LABCELL_X85_Y15_N12
\Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = ( !\Reg0|Q\(2) & ( \Equal1~3_combout\ & ( (!\Tcycle_Q.T3~q\ & ((!\Reg7|Q\(2)) # ((!\Equal8~1_combout\)))) # (\Tcycle_Q.T3~q\ & (!\Reg10|Q\(2) & ((!\Reg7|Q\(2)) # (!\Equal8~1_combout\)))) ) ) ) # ( \Reg0|Q\(2) & ( 
-- !\Equal1~3_combout\ & ( (!\Tcycle_Q.T3~q\ & ((!\Reg7|Q\(2)) # ((!\Equal8~1_combout\)))) # (\Tcycle_Q.T3~q\ & (!\Reg10|Q\(2) & ((!\Reg7|Q\(2)) # (!\Equal8~1_combout\)))) ) ) ) # ( !\Reg0|Q\(2) & ( !\Equal1~3_combout\ & ( (!\Tcycle_Q.T3~q\ & ((!\Reg7|Q\(2)) 
-- # ((!\Equal8~1_combout\)))) # (\Tcycle_Q.T3~q\ & (!\Reg10|Q\(2) & ((!\Reg7|Q\(2)) # (!\Equal8~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100011111010110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Tcycle_Q.T3~q\,
	datab => \Reg7|ALT_INV_Q\(2),
	datac => \Reg10|ALT_INV_Q\(2),
	datad => \ALT_INV_Equal8~1_combout\,
	datae => \Reg0|ALT_INV_Q\(2),
	dataf => \ALT_INV_Equal1~3_combout\,
	combout => \Selector24~0_combout\);

-- Location: LABCELL_X85_Y14_N12
\Selector24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = ( \Reg3|Q\(2) & ( \Selector24~0_combout\ & ( (!\Equal4~0_combout\ & (\Selector24~1_combout\ & ((!\Equal2~2_combout\) # (!\Reg1|Q\(2))))) ) ) ) # ( !\Reg3|Q\(2) & ( \Selector24~0_combout\ & ( (\Selector24~1_combout\ & 
-- ((!\Equal2~2_combout\) # (!\Reg1|Q\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => \ALT_INV_Equal2~2_combout\,
	datac => \Reg1|ALT_INV_Q\(2),
	datad => \ALT_INV_Selector24~1_combout\,
	datae => \Reg3|ALT_INV_Q\(2),
	dataf => \ALT_INV_Selector24~0_combout\,
	combout => \Selector24~2_combout\);

-- Location: LABCELL_X85_Y14_N0
\Selector24~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~3_combout\ = ( \Reg2|Q\(2) & ( \Selector24~2_combout\ & ( ((\DataIn[2]~input_o\ & !\Bus_Wires~0_combout\)) # (\Equal3~1_combout\) ) ) ) # ( !\Reg2|Q\(2) & ( \Selector24~2_combout\ & ( (\DataIn[2]~input_o\ & !\Bus_Wires~0_combout\) ) ) ) # ( 
-- \Reg2|Q\(2) & ( !\Selector24~2_combout\ ) ) # ( !\Reg2|Q\(2) & ( !\Selector24~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110000001100000111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~1_combout\,
	datab => \ALT_INV_DataIn[2]~input_o\,
	datac => \ALT_INV_Bus_Wires~0_combout\,
	datae => \Reg2|ALT_INV_Q\(2),
	dataf => \ALT_INV_Selector24~2_combout\,
	combout => \Selector24~3_combout\);

-- Location: FF_X84_Y14_N56
\Reg2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector23~3_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|Q\(3));

-- Location: FF_X83_Y14_N38
\Reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector23~3_combout\,
	sload => VCC,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|Q\(3));

-- Location: MLABCELL_X82_Y14_N57
\Reg5|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg5|Q[3]~feeder_combout\ = ( \Selector23~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector23~3_combout\,
	combout => \Reg5|Q[3]~feeder_combout\);

-- Location: FF_X82_Y14_N58
\Reg5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg5|Q[3]~feeder_combout\,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg5|Q\(3));

-- Location: MLABCELL_X82_Y14_N48
\Reg6|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg6|Q[3]~feeder_combout\ = ( \Selector23~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector23~3_combout\,
	combout => \Reg6|Q[3]~feeder_combout\);

-- Location: FF_X82_Y14_N49
\Reg6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg6|Q[3]~feeder_combout\,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg6|Q\(3));

-- Location: FF_X85_Y14_N32
\Reg4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector23~3_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg4|Q\(3));

-- Location: LABCELL_X85_Y14_N30
\Selector23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = ( !\Reg4|Q\(3) & ( \Equal5~1_combout\ & ( (!\Equal6~1_combout\ & (((!\Equal7~1_combout\) # (!\Reg6|Q\(3))))) # (\Equal6~1_combout\ & (!\Reg5|Q\(3) & ((!\Equal7~1_combout\) # (!\Reg6|Q\(3))))) ) ) ) # ( \Reg4|Q\(3) & ( 
-- !\Equal5~1_combout\ & ( (!\Equal6~1_combout\ & (((!\Equal7~1_combout\) # (!\Reg6|Q\(3))))) # (\Equal6~1_combout\ & (!\Reg5|Q\(3) & ((!\Equal7~1_combout\) # (!\Reg6|Q\(3))))) ) ) ) # ( !\Reg4|Q\(3) & ( !\Equal5~1_combout\ & ( (!\Equal6~1_combout\ & 
-- (((!\Equal7~1_combout\) # (!\Reg6|Q\(3))))) # (\Equal6~1_combout\ & (!\Reg5|Q\(3) & ((!\Equal7~1_combout\) # (!\Reg6|Q\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000011101110111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~1_combout\,
	datab => \Reg5|ALT_INV_Q\(3),
	datac => \ALT_INV_Equal7~1_combout\,
	datad => \Reg6|ALT_INV_Q\(3),
	datae => \Reg4|ALT_INV_Q\(3),
	dataf => \ALT_INV_Equal5~1_combout\,
	combout => \Selector23~1_combout\);

-- Location: FF_X84_Y14_N50
\Reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector23~3_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg3|Q\(3));

-- Location: MLABCELL_X82_Y14_N21
\Reg8|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg8|Q[3]~feeder_combout\ = ( \Selector23~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector23~3_combout\,
	combout => \Reg8|Q[3]~feeder_combout\);

-- Location: FF_X82_Y14_N22
\Reg8|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg8|Q[3]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg8|Q\(3));

-- Location: MLABCELL_X84_Y14_N12
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\Selector23~3_combout\ $ (((\Mux19~0_combout\ & \Tcycle_Q.T2~q\))) ) + ( \Reg8|Q\(3) ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\Selector23~3_combout\ $ (((\Mux19~0_combout\ & \Tcycle_Q.T2~q\))) ) + ( \Reg8|Q\(3) ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_Tcycle_Q.T2~q\,
	datac => \Reg8|ALT_INV_Q\(3),
	datad => \ALT_INV_Selector23~3_combout\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X84_Y14_N14
\Reg10|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	ena => \Tcycle_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg10|Q\(3));

-- Location: FF_X83_Y14_N55
\Reg7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector23~3_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg7|Q\(3));

-- Location: FF_X85_Y15_N38
\Reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector23~3_combout\,
	sload => VCC,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg0|Q\(3));

-- Location: LABCELL_X85_Y15_N36
\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ( !\Reg0|Q\(3) & ( \Equal1~3_combout\ & ( (!\Tcycle_Q.T3~q\ & (((!\Reg7|Q\(3)) # (!\Equal8~1_combout\)))) # (\Tcycle_Q.T3~q\ & (!\Reg10|Q\(3) & ((!\Reg7|Q\(3)) # (!\Equal8~1_combout\)))) ) ) ) # ( \Reg0|Q\(3) & ( 
-- !\Equal1~3_combout\ & ( (!\Tcycle_Q.T3~q\ & (((!\Reg7|Q\(3)) # (!\Equal8~1_combout\)))) # (\Tcycle_Q.T3~q\ & (!\Reg10|Q\(3) & ((!\Reg7|Q\(3)) # (!\Equal8~1_combout\)))) ) ) ) # ( !\Reg0|Q\(3) & ( !\Equal1~3_combout\ & ( (!\Tcycle_Q.T3~q\ & 
-- (((!\Reg7|Q\(3)) # (!\Equal8~1_combout\)))) # (\Tcycle_Q.T3~q\ & (!\Reg10|Q\(3) & ((!\Reg7|Q\(3)) # (!\Equal8~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000011101110111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Tcycle_Q.T3~q\,
	datab => \Reg10|ALT_INV_Q\(3),
	datac => \Reg7|ALT_INV_Q\(3),
	datad => \ALT_INV_Equal8~1_combout\,
	datae => \Reg0|ALT_INV_Q\(3),
	dataf => \ALT_INV_Equal1~3_combout\,
	combout => \Selector23~0_combout\);

-- Location: MLABCELL_X84_Y14_N48
\Selector23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = ( \Reg3|Q\(3) & ( \Selector23~0_combout\ & ( (!\Equal4~0_combout\ & (\Selector23~1_combout\ & ((!\Reg1|Q\(3)) # (!\Equal2~2_combout\)))) ) ) ) # ( !\Reg3|Q\(3) & ( \Selector23~0_combout\ & ( (\Selector23~1_combout\ & 
-- ((!\Reg1|Q\(3)) # (!\Equal2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011000000101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => \Reg1|ALT_INV_Q\(3),
	datac => \ALT_INV_Selector23~1_combout\,
	datad => \ALT_INV_Equal2~2_combout\,
	datae => \Reg3|ALT_INV_Q\(3),
	dataf => \ALT_INV_Selector23~0_combout\,
	combout => \Selector23~2_combout\);

-- Location: MLABCELL_X84_Y14_N54
\Selector23~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~3_combout\ = ( \Selector23~2_combout\ & ( (!\Bus_Wires~0_combout\ & (((\Equal3~1_combout\ & \Reg2|Q\(3))) # (\DataIn[3]~input_o\))) # (\Bus_Wires~0_combout\ & (\Equal3~1_combout\ & ((\Reg2|Q\(3))))) ) ) # ( !\Selector23~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Bus_Wires~0_combout\,
	datab => \ALT_INV_Equal3~1_combout\,
	datac => \ALT_INV_DataIn[3]~input_o\,
	datad => \Reg2|ALT_INV_Q\(3),
	dataf => \ALT_INV_Selector23~2_combout\,
	combout => \Selector23~3_combout\);

-- Location: MLABCELL_X87_Y14_N27
\Reg1|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|Q[4]~feeder_combout\ = ( \Selector22~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector22~3_combout\,
	combout => \Reg1|Q[4]~feeder_combout\);

-- Location: FF_X87_Y14_N28
\Reg1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg1|Q[4]~feeder_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|Q\(4));

-- Location: MLABCELL_X87_Y14_N15
\Reg5|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg5|Q[4]~feeder_combout\ = ( \Selector22~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector22~3_combout\,
	combout => \Reg5|Q[4]~feeder_combout\);

-- Location: FF_X87_Y14_N16
\Reg5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg5|Q[4]~feeder_combout\,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg5|Q\(4));

-- Location: MLABCELL_X87_Y14_N9
\Reg6|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg6|Q[4]~feeder_combout\ = ( \Selector22~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector22~3_combout\,
	combout => \Reg6|Q[4]~feeder_combout\);

-- Location: FF_X87_Y14_N10
\Reg6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg6|Q[4]~feeder_combout\,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg6|Q\(4));

-- Location: FF_X85_Y14_N50
\Reg4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector22~3_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg4|Q\(4));

-- Location: LABCELL_X85_Y14_N48
\Selector22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = ( \Reg4|Q\(4) & ( \Equal7~1_combout\ & ( (!\Reg6|Q\(4) & (!\Equal5~1_combout\ & ((!\Reg5|Q\(4)) # (!\Equal6~1_combout\)))) ) ) ) # ( !\Reg4|Q\(4) & ( \Equal7~1_combout\ & ( (!\Reg6|Q\(4) & ((!\Reg5|Q\(4)) # (!\Equal6~1_combout\))) 
-- ) ) ) # ( \Reg4|Q\(4) & ( !\Equal7~1_combout\ & ( (!\Equal5~1_combout\ & ((!\Reg5|Q\(4)) # (!\Equal6~1_combout\))) ) ) ) # ( !\Reg4|Q\(4) & ( !\Equal7~1_combout\ & ( (!\Reg5|Q\(4)) # (!\Equal6~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100000000011001000110010001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg5|ALT_INV_Q\(4),
	datab => \Reg6|ALT_INV_Q\(4),
	datac => \ALT_INV_Equal6~1_combout\,
	datad => \ALT_INV_Equal5~1_combout\,
	datae => \Reg4|ALT_INV_Q\(4),
	dataf => \ALT_INV_Equal7~1_combout\,
	combout => \Selector22~1_combout\);

-- Location: FF_X85_Y14_N26
\Reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector22~3_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg3|Q\(4));

-- Location: LABCELL_X88_Y14_N3
\Reg8|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg8|Q[4]~feeder_combout\ = ( \Selector22~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector22~3_combout\,
	combout => \Reg8|Q[4]~feeder_combout\);

-- Location: FF_X88_Y14_N4
\Reg8|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg8|Q[4]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg8|Q\(4));

-- Location: MLABCELL_X84_Y14_N15
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\Selector22~3_combout\ $ (((\Mux19~0_combout\ & \Tcycle_Q.T2~q\))) ) + ( \Reg8|Q\(4) ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !\Selector22~3_combout\ $ (((\Mux19~0_combout\ & \Tcycle_Q.T2~q\))) ) + ( \Reg8|Q\(4) ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_Tcycle_Q.T2~q\,
	datac => \Reg8|ALT_INV_Q\(4),
	datad => \ALT_INV_Selector22~3_combout\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X84_Y14_N17
\Reg10|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	ena => \Tcycle_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg10|Q\(4));

-- Location: FF_X85_Y15_N56
\Reg7|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector22~3_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg7|Q\(4));

-- Location: FF_X85_Y15_N20
\Reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector22~3_combout\,
	sload => VCC,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg0|Q\(4));

-- Location: LABCELL_X85_Y15_N18
\Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ( !\Reg0|Q\(4) & ( \Equal1~3_combout\ & ( (!\Tcycle_Q.T3~q\ & (((!\Reg7|Q\(4)) # (!\Equal8~1_combout\)))) # (\Tcycle_Q.T3~q\ & (!\Reg10|Q\(4) & ((!\Reg7|Q\(4)) # (!\Equal8~1_combout\)))) ) ) ) # ( \Reg0|Q\(4) & ( 
-- !\Equal1~3_combout\ & ( (!\Tcycle_Q.T3~q\ & (((!\Reg7|Q\(4)) # (!\Equal8~1_combout\)))) # (\Tcycle_Q.T3~q\ & (!\Reg10|Q\(4) & ((!\Reg7|Q\(4)) # (!\Equal8~1_combout\)))) ) ) ) # ( !\Reg0|Q\(4) & ( !\Equal1~3_combout\ & ( (!\Tcycle_Q.T3~q\ & 
-- (((!\Reg7|Q\(4)) # (!\Equal8~1_combout\)))) # (\Tcycle_Q.T3~q\ & (!\Reg10|Q\(4) & ((!\Reg7|Q\(4)) # (!\Equal8~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000011101110111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Tcycle_Q.T3~q\,
	datab => \Reg10|ALT_INV_Q\(4),
	datac => \Reg7|ALT_INV_Q\(4),
	datad => \ALT_INV_Equal8~1_combout\,
	datae => \Reg0|ALT_INV_Q\(4),
	dataf => \ALT_INV_Equal1~3_combout\,
	combout => \Selector22~0_combout\);

-- Location: LABCELL_X85_Y14_N24
\Selector22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = ( \Reg3|Q\(4) & ( \Selector22~0_combout\ & ( (\Selector22~1_combout\ & (!\Equal4~0_combout\ & ((!\Reg1|Q\(4)) # (!\Equal2~2_combout\)))) ) ) ) # ( !\Reg3|Q\(4) & ( \Selector22~0_combout\ & ( (\Selector22~1_combout\ & 
-- ((!\Reg1|Q\(4)) # (!\Equal2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001110000011100000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg1|ALT_INV_Q\(4),
	datab => \ALT_INV_Equal2~2_combout\,
	datac => \ALT_INV_Selector22~1_combout\,
	datad => \ALT_INV_Equal4~0_combout\,
	datae => \Reg3|ALT_INV_Q\(4),
	dataf => \ALT_INV_Selector22~0_combout\,
	combout => \Selector22~2_combout\);

-- Location: FF_X85_Y14_N23
\Reg2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector22~3_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|Q\(4));

-- Location: LABCELL_X85_Y14_N21
\Selector22~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~3_combout\ = ( \Reg2|Q\(4) & ( \Bus_Wires~0_combout\ & ( (!\Selector22~2_combout\) # (\Equal3~1_combout\) ) ) ) # ( !\Reg2|Q\(4) & ( \Bus_Wires~0_combout\ & ( !\Selector22~2_combout\ ) ) ) # ( \Reg2|Q\(4) & ( !\Bus_Wires~0_combout\ & ( 
-- ((!\Selector22~2_combout\) # (\DataIn[4]~input_o\)) # (\Equal3~1_combout\) ) ) ) # ( !\Reg2|Q\(4) & ( !\Bus_Wires~0_combout\ & ( (!\Selector22~2_combout\) # (\DataIn[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110101111111111111000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~1_combout\,
	datac => \ALT_INV_DataIn[4]~input_o\,
	datad => \ALT_INV_Selector22~2_combout\,
	datae => \Reg2|ALT_INV_Q\(4),
	dataf => \ALT_INV_Bus_Wires~0_combout\,
	combout => \Selector22~3_combout\);

-- Location: FF_X84_Y14_N59
\Reg2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector21~3_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|Q\(5));

-- Location: FF_X83_Y14_N11
\Reg1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector21~3_combout\,
	sload => VCC,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|Q\(5));

-- Location: MLABCELL_X82_Y14_N12
\Reg5|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg5|Q[5]~feeder_combout\ = ( \Selector21~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector21~3_combout\,
	combout => \Reg5|Q[5]~feeder_combout\);

-- Location: FF_X82_Y14_N13
\Reg5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg5|Q[5]~feeder_combout\,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg5|Q\(5));

-- Location: FF_X85_Y14_N37
\Reg4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector21~3_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg4|Q\(5));

-- Location: FF_X82_Y14_N7
\Reg6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector21~3_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg6|Q\(5));

-- Location: LABCELL_X83_Y14_N42
\Selector21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = ( \Equal6~1_combout\ & ( \Equal7~1_combout\ & ( (!\Reg5|Q\(5) & (!\Reg6|Q\(5) & ((!\Reg4|Q\(5)) # (!\Equal5~1_combout\)))) ) ) ) # ( !\Equal6~1_combout\ & ( \Equal7~1_combout\ & ( (!\Reg6|Q\(5) & ((!\Reg4|Q\(5)) # 
-- (!\Equal5~1_combout\))) ) ) ) # ( \Equal6~1_combout\ & ( !\Equal7~1_combout\ & ( (!\Reg5|Q\(5) & ((!\Reg4|Q\(5)) # (!\Equal5~1_combout\))) ) ) ) # ( !\Equal6~1_combout\ & ( !\Equal7~1_combout\ & ( (!\Reg4|Q\(5)) # (!\Equal5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100101010001010100011111100000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg5|ALT_INV_Q\(5),
	datab => \Reg4|ALT_INV_Q\(5),
	datac => \ALT_INV_Equal5~1_combout\,
	datad => \Reg6|ALT_INV_Q\(5),
	datae => \ALT_INV_Equal6~1_combout\,
	dataf => \ALT_INV_Equal7~1_combout\,
	combout => \Selector21~1_combout\);

-- Location: FF_X83_Y14_N2
\Reg3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector21~3_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg3|Q\(5));

-- Location: FF_X83_Y14_N29
\Reg7|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector21~3_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg7|Q\(5));

-- Location: MLABCELL_X82_Y14_N18
\Reg8|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg8|Q[5]~feeder_combout\ = ( \Selector21~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector21~3_combout\,
	combout => \Reg8|Q[5]~feeder_combout\);

-- Location: FF_X82_Y14_N19
\Reg8|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg8|Q[5]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg8|Q\(5));

-- Location: MLABCELL_X84_Y14_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\Selector21~3_combout\ $ (((\Mux19~0_combout\ & \Tcycle_Q.T2~q\))) ) + ( \Reg8|Q\(5) ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !\Selector21~3_combout\ $ (((\Mux19~0_combout\ & \Tcycle_Q.T2~q\))) ) + ( \Reg8|Q\(5) ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_Tcycle_Q.T2~q\,
	datad => \ALT_INV_Selector21~3_combout\,
	dataf => \Reg8|ALT_INV_Q\(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X84_Y14_N19
\Reg10|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	ena => \Tcycle_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg10|Q\(5));

-- Location: FF_X84_Y15_N31
\Reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector21~3_combout\,
	sload => VCC,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg0|Q\(5));

-- Location: LABCELL_X83_Y14_N48
\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ( \Equal1~3_combout\ & ( \Equal8~1_combout\ & ( (!\Reg7|Q\(5) & (!\Reg0|Q\(5) & ((!\Tcycle_Q.T3~q\) # (!\Reg10|Q\(5))))) ) ) ) # ( !\Equal1~3_combout\ & ( \Equal8~1_combout\ & ( (!\Reg7|Q\(5) & ((!\Tcycle_Q.T3~q\) # 
-- (!\Reg10|Q\(5)))) ) ) ) # ( \Equal1~3_combout\ & ( !\Equal8~1_combout\ & ( (!\Reg0|Q\(5) & ((!\Tcycle_Q.T3~q\) # (!\Reg10|Q\(5)))) ) ) ) # ( !\Equal1~3_combout\ & ( !\Equal8~1_combout\ & ( (!\Tcycle_Q.T3~q\) # (!\Reg10|Q\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111000000000010101000101010001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg7|ALT_INV_Q\(5),
	datab => \ALT_INV_Tcycle_Q.T3~q\,
	datac => \Reg10|ALT_INV_Q\(5),
	datad => \Reg0|ALT_INV_Q\(5),
	datae => \ALT_INV_Equal1~3_combout\,
	dataf => \ALT_INV_Equal8~1_combout\,
	combout => \Selector21~0_combout\);

-- Location: LABCELL_X83_Y14_N0
\Selector21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = ( \Reg3|Q\(5) & ( \Selector21~0_combout\ & ( (!\Equal4~0_combout\ & (\Selector21~1_combout\ & ((!\Equal2~2_combout\) # (!\Reg1|Q\(5))))) ) ) ) # ( !\Reg3|Q\(5) & ( \Selector21~0_combout\ & ( (\Selector21~1_combout\ & 
-- ((!\Equal2~2_combout\) # (!\Reg1|Q\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => \ALT_INV_Equal2~2_combout\,
	datac => \Reg1|ALT_INV_Q\(5),
	datad => \ALT_INV_Selector21~1_combout\,
	datae => \Reg3|ALT_INV_Q\(5),
	dataf => \ALT_INV_Selector21~0_combout\,
	combout => \Selector21~2_combout\);

-- Location: MLABCELL_X84_Y14_N57
\Selector21~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~3_combout\ = ( \Selector21~2_combout\ & ( (!\Bus_Wires~0_combout\ & (((\Equal3~1_combout\ & \Reg2|Q\(5))) # (\DataIn[5]~input_o\))) # (\Bus_Wires~0_combout\ & (\Equal3~1_combout\ & ((\Reg2|Q\(5))))) ) ) # ( !\Selector21~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Bus_Wires~0_combout\,
	datab => \ALT_INV_Equal3~1_combout\,
	datac => \ALT_INV_DataIn[5]~input_o\,
	datad => \Reg2|ALT_INV_Q\(5),
	dataf => \ALT_INV_Selector21~2_combout\,
	combout => \Selector21~3_combout\);

-- Location: FF_X84_Y14_N47
\Reg2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector20~3_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|Q\(6));

-- Location: FF_X83_Y14_N31
\Reg1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector20~3_combout\,
	sload => VCC,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|Q\(6));

-- Location: LABCELL_X85_Y15_N54
\Reg7|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg7|Q[6]~feeder_combout\ = ( \Selector20~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector20~3_combout\,
	combout => \Reg7|Q[6]~feeder_combout\);

-- Location: FF_X85_Y15_N55
\Reg7|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg7|Q[6]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg7|Q\(6));

-- Location: FF_X82_Y14_N41
\Reg8|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector20~3_combout\,
	sload => VCC,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg8|Q\(6));

-- Location: MLABCELL_X84_Y14_N21
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !\Selector20~3_combout\ $ (((\Mux19~0_combout\ & \Tcycle_Q.T2~q\))) ) + ( \Reg8|Q\(6) ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !\Selector20~3_combout\ $ (((\Mux19~0_combout\ & \Tcycle_Q.T2~q\))) ) + ( \Reg8|Q\(6) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_Tcycle_Q.T2~q\,
	datac => \Reg8|ALT_INV_Q\(6),
	datad => \ALT_INV_Selector20~3_combout\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X84_Y14_N22
\Reg10|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	ena => \Tcycle_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg10|Q\(6));

-- Location: FF_X85_Y15_N26
\Reg0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector20~3_combout\,
	sload => VCC,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg0|Q\(6));

-- Location: LABCELL_X85_Y15_N24
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( !\Reg0|Q\(6) & ( \Equal1~3_combout\ & ( (!\Tcycle_Q.T3~q\ & ((!\Reg7|Q\(6)) # ((!\Equal8~1_combout\)))) # (\Tcycle_Q.T3~q\ & (!\Reg10|Q\(6) & ((!\Reg7|Q\(6)) # (!\Equal8~1_combout\)))) ) ) ) # ( \Reg0|Q\(6) & ( 
-- !\Equal1~3_combout\ & ( (!\Tcycle_Q.T3~q\ & ((!\Reg7|Q\(6)) # ((!\Equal8~1_combout\)))) # (\Tcycle_Q.T3~q\ & (!\Reg10|Q\(6) & ((!\Reg7|Q\(6)) # (!\Equal8~1_combout\)))) ) ) ) # ( !\Reg0|Q\(6) & ( !\Equal1~3_combout\ & ( (!\Tcycle_Q.T3~q\ & ((!\Reg7|Q\(6)) 
-- # ((!\Equal8~1_combout\)))) # (\Tcycle_Q.T3~q\ & (!\Reg10|Q\(6) & ((!\Reg7|Q\(6)) # (!\Equal8~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100011111010110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Tcycle_Q.T3~q\,
	datab => \Reg7|ALT_INV_Q\(6),
	datac => \Reg10|ALT_INV_Q\(6),
	datad => \ALT_INV_Equal8~1_combout\,
	datae => \Reg0|ALT_INV_Q\(6),
	dataf => \ALT_INV_Equal1~3_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X85_Y15_N2
\Reg3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector20~3_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg3|Q\(6));

-- Location: FF_X82_Y14_N1
\Reg5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector20~3_combout\,
	sload => VCC,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg5|Q\(6));

-- Location: FF_X82_Y14_N31
\Reg6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector20~3_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg6|Q\(6));

-- Location: FF_X84_Y15_N26
\Reg4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector20~3_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg4|Q\(6));

-- Location: MLABCELL_X84_Y15_N24
\Selector20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = ( \Reg4|Q\(6) & ( \Equal6~1_combout\ & ( (!\Reg5|Q\(6) & (!\Equal5~1_combout\ & ((!\Reg6|Q\(6)) # (!\Equal7~1_combout\)))) ) ) ) # ( !\Reg4|Q\(6) & ( \Equal6~1_combout\ & ( (!\Reg5|Q\(6) & ((!\Reg6|Q\(6)) # (!\Equal7~1_combout\))) 
-- ) ) ) # ( \Reg4|Q\(6) & ( !\Equal6~1_combout\ & ( (!\Equal5~1_combout\ & ((!\Reg6|Q\(6)) # (!\Equal7~1_combout\))) ) ) ) # ( !\Reg4|Q\(6) & ( !\Equal6~1_combout\ & ( (!\Reg6|Q\(6)) # (!\Equal7~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111100001100000010101010100010001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg5|ALT_INV_Q\(6),
	datab => \Reg6|ALT_INV_Q\(6),
	datac => \ALT_INV_Equal5~1_combout\,
	datad => \ALT_INV_Equal7~1_combout\,
	datae => \Reg4|ALT_INV_Q\(6),
	dataf => \ALT_INV_Equal6~1_combout\,
	combout => \Selector20~1_combout\);

-- Location: LABCELL_X85_Y15_N0
\Selector20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~2_combout\ = ( \Reg3|Q\(6) & ( \Selector20~1_combout\ & ( (\Selector20~0_combout\ & (!\Equal4~0_combout\ & ((!\Equal2~2_combout\) # (!\Reg1|Q\(6))))) ) ) ) # ( !\Reg3|Q\(6) & ( \Selector20~1_combout\ & ( (\Selector20~0_combout\ & 
-- ((!\Equal2~2_combout\) # (!\Reg1|Q\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001110000011100000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~2_combout\,
	datab => \Reg1|ALT_INV_Q\(6),
	datac => \ALT_INV_Selector20~0_combout\,
	datad => \ALT_INV_Equal4~0_combout\,
	datae => \Reg3|ALT_INV_Q\(6),
	dataf => \ALT_INV_Selector20~1_combout\,
	combout => \Selector20~2_combout\);

-- Location: MLABCELL_X84_Y14_N45
\Selector20~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~3_combout\ = ( \Selector20~2_combout\ & ( (!\Bus_Wires~0_combout\ & (((\Equal3~1_combout\ & \Reg2|Q\(6))) # (\DataIn[6]~input_o\))) # (\Bus_Wires~0_combout\ & (\Equal3~1_combout\ & ((\Reg2|Q\(6))))) ) ) # ( !\Selector20~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Bus_Wires~0_combout\,
	datab => \ALT_INV_Equal3~1_combout\,
	datac => \ALT_INV_DataIn[6]~input_o\,
	datad => \Reg2|ALT_INV_Q\(6),
	dataf => \ALT_INV_Selector20~2_combout\,
	combout => \Selector20~3_combout\);

-- Location: FF_X85_Y14_N20
\Reg2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector19~3_combout\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|Q\(7));

-- Location: FF_X83_Y14_N13
\Reg1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector19~3_combout\,
	sload => VCC,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|Q\(7));

-- Location: MLABCELL_X87_Y14_N33
\Reg5|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg5|Q[7]~feeder_combout\ = ( \Selector19~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector19~3_combout\,
	combout => \Reg5|Q[7]~feeder_combout\);

-- Location: FF_X87_Y14_N34
\Reg5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg5|Q[7]~feeder_combout\,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg5|Q\(7));

-- Location: FF_X82_Y14_N46
\Reg6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector19~3_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg6|Q\(7));

-- Location: FF_X85_Y14_N8
\Reg4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector19~3_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg4|Q\(7));

-- Location: LABCELL_X85_Y14_N6
\Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = ( \Reg4|Q\(7) & ( \Equal7~1_combout\ & ( (!\Reg6|Q\(7) & (!\Equal5~1_combout\ & ((!\Reg5|Q\(7)) # (!\Equal6~1_combout\)))) ) ) ) # ( !\Reg4|Q\(7) & ( \Equal7~1_combout\ & ( (!\Reg6|Q\(7) & ((!\Reg5|Q\(7)) # (!\Equal6~1_combout\))) 
-- ) ) ) # ( \Reg4|Q\(7) & ( !\Equal7~1_combout\ & ( (!\Equal5~1_combout\ & ((!\Reg5|Q\(7)) # (!\Equal6~1_combout\))) ) ) ) # ( !\Reg4|Q\(7) & ( !\Equal7~1_combout\ & ( (!\Reg5|Q\(7)) # (!\Equal6~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100000000011001000110010001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg5|ALT_INV_Q\(7),
	datab => \Reg6|ALT_INV_Q\(7),
	datac => \ALT_INV_Equal6~1_combout\,
	datad => \ALT_INV_Equal5~1_combout\,
	datae => \Reg4|ALT_INV_Q\(7),
	dataf => \ALT_INV_Equal7~1_combout\,
	combout => \Selector19~1_combout\);

-- Location: FF_X85_Y14_N56
\Reg3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector19~3_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg3|Q\(7));

-- Location: FF_X85_Y15_N59
\Reg7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector19~3_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg7|Q\(7));

-- Location: FF_X82_Y14_N23
\Reg8|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector19~3_combout\,
	sload => VCC,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg8|Q\(7));

-- Location: MLABCELL_X84_Y14_N24
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !\Selector19~3_combout\ $ (((\Mux19~0_combout\ & \Tcycle_Q.T2~q\))) ) + ( \Reg8|Q\(7) ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !\Selector19~3_combout\ $ (((\Mux19~0_combout\ & \Tcycle_Q.T2~q\))) ) + ( \Reg8|Q\(7) ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_Tcycle_Q.T2~q\,
	datac => \Reg8|ALT_INV_Q\(7),
	datad => \ALT_INV_Selector19~3_combout\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X84_Y14_N25
\Reg10|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	ena => \Tcycle_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg10|Q\(7));

-- Location: FF_X85_Y15_N8
\Reg0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector19~3_combout\,
	sload => VCC,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg0|Q\(7));

-- Location: LABCELL_X85_Y15_N6
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \Reg0|Q\(7) & ( \Equal8~1_combout\ & ( (!\Reg7|Q\(7) & (!\Equal1~3_combout\ & ((!\Tcycle_Q.T3~q\) # (!\Reg10|Q\(7))))) ) ) ) # ( !\Reg0|Q\(7) & ( \Equal8~1_combout\ & ( (!\Reg7|Q\(7) & ((!\Tcycle_Q.T3~q\) # (!\Reg10|Q\(7)))) ) ) 
-- ) # ( \Reg0|Q\(7) & ( !\Equal8~1_combout\ & ( (!\Equal1~3_combout\ & ((!\Tcycle_Q.T3~q\) # (!\Reg10|Q\(7)))) ) ) ) # ( !\Reg0|Q\(7) & ( !\Equal8~1_combout\ & ( (!\Tcycle_Q.T3~q\) # (!\Reg10|Q\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111100001010000011001100100010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Tcycle_Q.T3~q\,
	datab => \Reg7|ALT_INV_Q\(7),
	datac => \ALT_INV_Equal1~3_combout\,
	datad => \Reg10|ALT_INV_Q\(7),
	datae => \Reg0|ALT_INV_Q\(7),
	dataf => \ALT_INV_Equal8~1_combout\,
	combout => \Selector19~0_combout\);

-- Location: LABCELL_X85_Y14_N54
\Selector19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = ( \Reg3|Q\(7) & ( \Selector19~0_combout\ & ( (!\Equal4~0_combout\ & (\Selector19~1_combout\ & ((!\Reg1|Q\(7)) # (!\Equal2~2_combout\)))) ) ) ) # ( !\Reg3|Q\(7) & ( \Selector19~0_combout\ & ( (\Selector19~1_combout\ & 
-- ((!\Reg1|Q\(7)) # (!\Equal2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111011100000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg1|ALT_INV_Q\(7),
	datab => \ALT_INV_Equal2~2_combout\,
	datac => \ALT_INV_Equal4~0_combout\,
	datad => \ALT_INV_Selector19~1_combout\,
	datae => \Reg3|ALT_INV_Q\(7),
	dataf => \ALT_INV_Selector19~0_combout\,
	combout => \Selector19~2_combout\);

-- Location: LABCELL_X85_Y14_N36
\Selector19~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = ( \Selector19~2_combout\ & ( \Bus_Wires~0_combout\ & ( (\Reg2|Q\(7) & \Equal3~1_combout\) ) ) ) # ( !\Selector19~2_combout\ & ( \Bus_Wires~0_combout\ ) ) # ( \Selector19~2_combout\ & ( !\Bus_Wires~0_combout\ & ( ((\Reg2|Q\(7) & 
-- \Equal3~1_combout\)) # (\DataIn[7]~input_o\) ) ) ) # ( !\Selector19~2_combout\ & ( !\Bus_Wires~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001101110011011111111111111111110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg2|ALT_INV_Q\(7),
	datab => \ALT_INV_DataIn[7]~input_o\,
	datac => \ALT_INV_Equal3~1_combout\,
	datae => \ALT_INV_Selector19~2_combout\,
	dataf => \ALT_INV_Bus_Wires~0_combout\,
	combout => \Selector19~3_combout\);

-- Location: FF_X84_Y14_N44
\Reg2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector18~3_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|Q\(8));

-- Location: FF_X82_Y14_N20
\Reg8|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector18~3_combout\,
	sload => VCC,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg8|Q\(8));

-- Location: MLABCELL_X84_Y14_N27
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \Reg8|Q\(8) ) + ( !\Selector18~3_combout\ $ (((\Mux19~0_combout\ & \Tcycle_Q.T2~q\))) ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111100001111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_Tcycle_Q.T2~q\,
	datac => \ALT_INV_Selector18~3_combout\,
	datad => \Reg8|ALT_INV_Q\(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\);

-- Location: FF_X84_Y14_N28
\Reg10|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	ena => \Tcycle_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg10|Q\(8));

-- Location: FF_X83_Y14_N19
\Reg7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector18~3_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg7|Q\(8));

-- Location: FF_X85_Y15_N50
\Reg0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector18~3_combout\,
	sload => VCC,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg0|Q\(8));

-- Location: LABCELL_X85_Y15_N48
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( !\Reg0|Q\(8) & ( \Equal1~3_combout\ & ( (!\Reg10|Q\(8) & ((!\Reg7|Q\(8)) # ((!\Equal8~1_combout\)))) # (\Reg10|Q\(8) & (!\Tcycle_Q.T3~q\ & ((!\Reg7|Q\(8)) # (!\Equal8~1_combout\)))) ) ) ) # ( \Reg0|Q\(8) & ( !\Equal1~3_combout\ 
-- & ( (!\Reg10|Q\(8) & ((!\Reg7|Q\(8)) # ((!\Equal8~1_combout\)))) # (\Reg10|Q\(8) & (!\Tcycle_Q.T3~q\ & ((!\Reg7|Q\(8)) # (!\Equal8~1_combout\)))) ) ) ) # ( !\Reg0|Q\(8) & ( !\Equal1~3_combout\ & ( (!\Reg10|Q\(8) & ((!\Reg7|Q\(8)) # 
-- ((!\Equal8~1_combout\)))) # (\Reg10|Q\(8) & (!\Tcycle_Q.T3~q\ & ((!\Reg7|Q\(8)) # (!\Equal8~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100011111010110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reg10|ALT_INV_Q\(8),
	datab => \Reg7|ALT_INV_Q\(8),
	datac => \ALT_INV_Tcycle_Q.T3~q\,
	datad => \ALT_INV_Equal8~1_combout\,
	datae => \Reg0|ALT_INV_Q\(8),
	dataf => \ALT_INV_Equal1~3_combout\,
	combout => \Selector18~0_combout\);

-- Location: LABCELL_X88_Y14_N36
\Reg1|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|Q[8]~feeder_combout\ = ( \Selector18~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector18~3_combout\,
	combout => \Reg1|Q[8]~feeder_combout\);

-- Location: FF_X88_Y14_N37
\Reg1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Reg1|Q[8]~feeder_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|Q\(8));

-- Location: FF_X85_Y15_N32
\Reg3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector18~3_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg3|Q\(8));

-- Location: FF_X83_Y15_N58
\Reg6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector18~3_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg6|Q\(8));

-- Location: FF_X82_Y14_N25
\Reg5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector18~3_combout\,
	sload => VCC,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg5|Q\(8));

-- Location: FF_X84_Y15_N37
\Reg4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Selector18~3_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg4|Q\(8));

-- Location: LABCELL_X85_Y15_N42
\Selector18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = ( !\Equal5~1_combout\ & ( \Reg4|Q\(8) & ( (!\Equal7~1_combout\ & (((!\Equal6~1_combout\) # (!\Reg5|Q\(8))))) # (\Equal7~1_combout\ & (!\Reg6|Q\(8) & ((!\Equal6~1_combout\) # (!\Reg5|Q\(8))))) ) ) ) # ( \Equal5~1_combout\ & ( 
-- !\Reg4|Q\(8) & ( (!\Equal7~1_combout\ & (((!\Equal6~1_combout\) # (!\Reg5|Q\(8))))) # (\Equal7~1_combout\ & (!\Reg6|Q\(8) & ((!\Equal6~1_combout\) # (!\Reg5|Q\(8))))) ) ) ) # ( !\Equal5~1_combout\ & ( !\Reg4|Q\(8) & ( (!\Equal7~1_combout\ & 
-- (((!\Equal6~1_combout\) # (!\Reg5|Q\(8))))) # (\Equal7~1_combout\ & (!\Reg6|Q\(8) & ((!\Equal6~1_combout\) # (!\Reg5|Q\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000011101110111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~1_combout\,
	datab => \Reg6|ALT_INV_Q\(8),
	datac => \ALT_INV_Equal6~1_combout\,
	datad => \Reg5|ALT_INV_Q\(8),
	datae => \ALT_INV_Equal5~1_combout\,
	dataf => \Reg4|ALT_INV_Q\(8),
	combout => \Selector18~1_combout\);

-- Location: LABCELL_X85_Y15_N30
\Selector18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = ( \Reg3|Q\(8) & ( \Selector18~1_combout\ & ( (!\Equal4~0_combout\ & (\Selector18~0_combout\ & ((!\Equal2~2_combout\) # (!\Reg1|Q\(8))))) ) ) ) # ( !\Reg3|Q\(8) & ( \Selector18~1_combout\ & ( (\Selector18~0_combout\ & 
-- ((!\Equal2~2_combout\) # (!\Reg1|Q\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000010100000110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~2_combout\,
	datab => \ALT_INV_Equal4~0_combout\,
	datac => \ALT_INV_Selector18~0_combout\,
	datad => \Reg1|ALT_INV_Q\(8),
	datae => \Reg3|ALT_INV_Q\(8),
	dataf => \ALT_INV_Selector18~1_combout\,
	combout => \Selector18~2_combout\);

-- Location: MLABCELL_X84_Y14_N42
\Selector18~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = ( \Selector18~2_combout\ & ( (!\Bus_Wires~0_combout\ & (((\Equal3~1_combout\ & \Reg2|Q\(8))) # (\DataIn[8]~input_o\))) # (\Bus_Wires~0_combout\ & (\Equal3~1_combout\ & ((\Reg2|Q\(8))))) ) ) # ( !\Selector18~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Bus_Wires~0_combout\,
	datab => \ALT_INV_Equal3~1_combout\,
	datac => \ALT_INV_DataIn[8]~input_o\,
	datad => \Reg2|ALT_INV_Q\(8),
	dataf => \ALT_INV_Selector18~2_combout\,
	combout => \Selector18~3_combout\);

-- Location: LABCELL_X50_Y25_N3
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


