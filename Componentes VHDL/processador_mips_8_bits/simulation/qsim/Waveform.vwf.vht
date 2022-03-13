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
-- Generated on "03/11/2022 16:55:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PC_vhd_vec_tst IS
END PC_vhd_vec_tst;
ARCHITECTURE PC_arch OF PC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL beq : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL beq_f : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL indice : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL loop_valor : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL salto_f : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT PC
	PORT (
	beq : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	beq_f : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	clk : IN STD_LOGIC;
	indice : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	loop_valor : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	salto_f : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : PC
	PORT MAP (
-- list connections between master ports and signals
	beq => beq,
	beq_f => beq_f,
	clk => clk,
	indice => indice,
	loop_valor => loop_valor,
	reset => reset,
	salto_f => salto_f
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END PC_arch;
