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
-- Generated on "03/10/2022 17:05:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          controlador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY controlador_vhd_vec_tst IS
END controlador_vhd_vec_tst;
ARCHITECTURE controlador_arch OF controlador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_op : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL alu_src : STD_LOGIC;
SIGNAL func : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL loop_func : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL men_write : STD_LOGIC;
SIGNAL op_code : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL reg_data : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL reg_write : STD_LOGIC;
COMPONENT controlador
	PORT (
	alu_op : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	alu_src : OUT STD_LOGIC;
	func : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	loop_func : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	men_write : OUT STD_LOGIC;
	op_code : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	reg_data : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	reg_write : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : controlador
	PORT MAP (
-- list connections between master ports and signals
	alu_op => alu_op,
	alu_src => alu_src,
	func => func,
	loop_func => loop_func,
	men_write => men_write,
	op_code => op_code,
	reg_data => reg_data,
	reg_write => reg_write
	);
-- func[1]
t_prcs_func_1: PROCESS
BEGIN
	func(1) <= '0';
WAIT;
END PROCESS t_prcs_func_1;
-- func[0]
t_prcs_func_0: PROCESS
BEGIN
	func(0) <= '1';
WAIT;
END PROCESS t_prcs_func_0;
-- op_code[1]
t_prcs_op_code_1: PROCESS
BEGIN
	op_code(1) <= '0';
WAIT;
END PROCESS t_prcs_op_code_1;
-- op_code[0]
t_prcs_op_code_0: PROCESS
BEGIN
	op_code(0) <= '0';
WAIT;
END PROCESS t_prcs_op_code_0;
END controlador_arch;
