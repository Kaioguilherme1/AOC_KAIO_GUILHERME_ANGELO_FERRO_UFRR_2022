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
-- Generated on "03/11/2022 17:45:07"
                                                             
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
SIGNAL indice_entrada : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL indice_saida : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL loop_valor : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL salto_f : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT PC
	PORT (
	beq : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	beq_f : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	clk : IN STD_LOGIC;
	indice_entrada : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	indice_saida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
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
	indice_entrada => indice_entrada,
	indice_saida => indice_saida,
	loop_valor => loop_valor,
	reset => reset,
	salto_f => salto_f
	);
-- indice_entrada[7]
t_prcs_indice_entrada_7: PROCESS
BEGIN
	indice_entrada(7) <= '0';
WAIT;
END PROCESS t_prcs_indice_entrada_7;
-- indice_entrada[6]
t_prcs_indice_entrada_6: PROCESS
BEGIN
	indice_entrada(6) <= '0';
WAIT;
END PROCESS t_prcs_indice_entrada_6;
-- indice_entrada[5]
t_prcs_indice_entrada_5: PROCESS
BEGIN
	indice_entrada(5) <= '0';
WAIT;
END PROCESS t_prcs_indice_entrada_5;
-- indice_entrada[4]
t_prcs_indice_entrada_4: PROCESS
BEGIN
	indice_entrada(4) <= '0';
WAIT;
END PROCESS t_prcs_indice_entrada_4;
-- indice_entrada[3]
t_prcs_indice_entrada_3: PROCESS
BEGIN
	indice_entrada(3) <= '0';
WAIT;
END PROCESS t_prcs_indice_entrada_3;
-- indice_entrada[2]
t_prcs_indice_entrada_2: PROCESS
BEGIN
	indice_entrada(2) <= '0';
WAIT;
END PROCESS t_prcs_indice_entrada_2;
-- indice_entrada[1]
t_prcs_indice_entrada_1: PROCESS
BEGIN
	indice_entrada(1) <= '0';
WAIT;
END PROCESS t_prcs_indice_entrada_1;
-- indice_entrada[0]
t_prcs_indice_entrada_0: PROCESS
BEGIN
	indice_entrada(0) <= '0';
WAIT;
END PROCESS t_prcs_indice_entrada_0;
-- salto_f[1]
t_prcs_salto_f_1: PROCESS
BEGIN
	salto_f(1) <= '1';
WAIT;
END PROCESS t_prcs_salto_f_1;
-- salto_f[0]
t_prcs_salto_f_0: PROCESS
BEGIN
	salto_f(0) <= '1';
WAIT;
END PROCESS t_prcs_salto_f_0;
END PC_arch;
