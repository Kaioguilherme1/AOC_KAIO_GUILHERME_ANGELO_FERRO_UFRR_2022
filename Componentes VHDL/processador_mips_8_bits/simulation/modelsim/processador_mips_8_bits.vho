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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "03/14/2022 10:44:12"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processador_mips_8_bits IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	alu_result : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END processador_mips_8_bits;

-- Design Ports Information
-- alu_result[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[6]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[7]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF processador_mips_8_bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_alu_result : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \p_counter|Add0~2\ : std_logic;
SIGNAL \p_counter|Add0~3\ : std_logic;
SIGNAL \p_counter|Add0~5_sumout\ : std_logic;
SIGNAL \p_counter|Add0~6\ : std_logic;
SIGNAL \p_counter|Add0~7\ : std_logic;
SIGNAL \p_counter|Add0~9_sumout\ : std_logic;
SIGNAL \p_counter|Add0~10\ : std_logic;
SIGNAL \p_counter|Add0~11\ : std_logic;
SIGNAL \p_counter|Add0~13_sumout\ : std_logic;
SIGNAL \banco_de_instrucao|Mux7~0_combout\ : std_logic;
SIGNAL \p_counter|Add0~1_sumout\ : std_logic;
SIGNAL \banco_de_instrucao|Mux6~1_combout\ : std_logic;
SIGNAL \banco_de_instrucao|Mux15~0_combout\ : std_logic;
SIGNAL \banco_de_instrucao|Mux1~0_combout\ : std_logic;
SIGNAL \banco_de_instrucao|Mux0~0_combout\ : std_logic;
SIGNAL \controle|Mux5~1_combout\ : std_logic;
SIGNAL \controle|Mux4~0_combout\ : std_logic;
SIGNAL \controle|Mux5~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|Mux7~0_combout\ : std_logic;
SIGNAL \controle|Mux9~0_combout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~34_cout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~1_sumout\ : std_logic;
SIGNAL \controle|Mux8~0_combout\ : std_logic;
SIGNAL \controle|Mux0~0_combout\ : std_logic;
SIGNAL \controle|Mux9~1_combout\ : std_logic;
SIGNAL \banco_de_instrucao|Mux14~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|Mux6~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|Mux6~1_combout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~2\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~5_sumout\ : std_logic;
SIGNAL \p_counter|Add0~14\ : std_logic;
SIGNAL \p_counter|Add0~15\ : std_logic;
SIGNAL \p_counter|Add0~17_sumout\ : std_logic;
SIGNAL \banco_de_instrucao|Mux8~0_combout\ : std_logic;
SIGNAL \banco_de_instrucao|Mux13~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|Mux5~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|Mux5~1_combout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~6\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~9_sumout\ : std_logic;
SIGNAL \banco_de_instrucao|Mux12~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|Mux4~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|Mux4~1_combout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~10\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~13_sumout\ : std_logic;
SIGNAL \banco_de_instrucao|Mux11~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|Mux3~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|Mux3~1_combout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~14\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~17_sumout\ : std_logic;
SIGNAL \banco_de_instrucao|Mux10~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|Mux2~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|Mux2~1_combout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~18\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~21_sumout\ : std_logic;
SIGNAL \banco_de_instrucao|Mux9~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|Mux1~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|Mux1~1_combout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~22\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~25_sumout\ : std_logic;
SIGNAL \multiplexador1x4|Mux0~0_combout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~26\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|Add0~29_sumout\ : std_logic;
SIGNAL \seletor_1x2|saidaA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \unidade_de_logica_aritimetica|alu_result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \seletor_1x2|ALT_INV_saidaA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \unidade_de_logica_aritimetica|ALT_INV_alu_result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \banco_de_instrucao|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \banco_de_instrucao|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \banco_de_instrucao|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \banco_de_instrucao|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \banco_de_instrucao|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \banco_de_instrucao|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \banco_de_instrucao|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \banco_de_instrucao|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \multiplexador1x4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \multiplexador1x4|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \multiplexador1x4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \multiplexador1x4|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \multiplexador1x4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \multiplexador1x4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \multiplexador1x4|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \banco_de_instrucao|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \banco_de_instrucao|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \banco_de_instrucao|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \banco_de_instrucao|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \p_counter|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \p_counter|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \p_counter|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \p_counter|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \p_counter|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \unidade_de_logica_aritimetica|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
alu_result <= ww_alu_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\seletor_1x2|ALT_INV_saidaA\(7) <= NOT \seletor_1x2|saidaA\(7);
\seletor_1x2|ALT_INV_saidaA\(6) <= NOT \seletor_1x2|saidaA\(6);
\seletor_1x2|ALT_INV_saidaA\(5) <= NOT \seletor_1x2|saidaA\(5);
\seletor_1x2|ALT_INV_saidaA\(4) <= NOT \seletor_1x2|saidaA\(4);
\seletor_1x2|ALT_INV_saidaA\(3) <= NOT \seletor_1x2|saidaA\(3);
\seletor_1x2|ALT_INV_saidaA\(2) <= NOT \seletor_1x2|saidaA\(2);
\seletor_1x2|ALT_INV_saidaA\(1) <= NOT \seletor_1x2|saidaA\(1);
\seletor_1x2|ALT_INV_saidaA\(0) <= NOT \seletor_1x2|saidaA\(0);
\unidade_de_logica_aritimetica|ALT_INV_alu_result\(7) <= NOT \unidade_de_logica_aritimetica|alu_result\(7);
\unidade_de_logica_aritimetica|ALT_INV_alu_result\(6) <= NOT \unidade_de_logica_aritimetica|alu_result\(6);
\unidade_de_logica_aritimetica|ALT_INV_alu_result\(5) <= NOT \unidade_de_logica_aritimetica|alu_result\(5);
\unidade_de_logica_aritimetica|ALT_INV_alu_result\(4) <= NOT \unidade_de_logica_aritimetica|alu_result\(4);
\unidade_de_logica_aritimetica|ALT_INV_alu_result\(3) <= NOT \unidade_de_logica_aritimetica|alu_result\(3);
\unidade_de_logica_aritimetica|ALT_INV_alu_result\(2) <= NOT \unidade_de_logica_aritimetica|alu_result\(2);
\unidade_de_logica_aritimetica|ALT_INV_alu_result\(1) <= NOT \unidade_de_logica_aritimetica|alu_result\(1);
\unidade_de_logica_aritimetica|ALT_INV_alu_result\(0) <= NOT \unidade_de_logica_aritimetica|alu_result\(0);
\banco_de_instrucao|ALT_INV_Mux9~0_combout\ <= NOT \banco_de_instrucao|Mux9~0_combout\;
\banco_de_instrucao|ALT_INV_Mux10~0_combout\ <= NOT \banco_de_instrucao|Mux10~0_combout\;
\banco_de_instrucao|ALT_INV_Mux11~0_combout\ <= NOT \banco_de_instrucao|Mux11~0_combout\;
\banco_de_instrucao|ALT_INV_Mux12~0_combout\ <= NOT \banco_de_instrucao|Mux12~0_combout\;
\banco_de_instrucao|ALT_INV_Mux13~0_combout\ <= NOT \banco_de_instrucao|Mux13~0_combout\;
\banco_de_instrucao|ALT_INV_Mux8~0_combout\ <= NOT \banco_de_instrucao|Mux8~0_combout\;
\banco_de_instrucao|ALT_INV_Mux14~0_combout\ <= NOT \banco_de_instrucao|Mux14~0_combout\;
\controle|ALT_INV_Mux5~1_combout\ <= NOT \controle|Mux5~1_combout\;
\banco_de_instrucao|ALT_INV_Mux15~0_combout\ <= NOT \banco_de_instrucao|Mux15~0_combout\;
\multiplexador1x4|ALT_INV_Mux0~0_combout\ <= NOT \multiplexador1x4|Mux0~0_combout\;
\multiplexador1x4|ALT_INV_Mux1~1_combout\ <= NOT \multiplexador1x4|Mux1~1_combout\;
\multiplexador1x4|ALT_INV_Mux1~0_combout\ <= NOT \multiplexador1x4|Mux1~0_combout\;
\multiplexador1x4|ALT_INV_Mux2~1_combout\ <= NOT \multiplexador1x4|Mux2~1_combout\;
\multiplexador1x4|ALT_INV_Mux2~0_combout\ <= NOT \multiplexador1x4|Mux2~0_combout\;
\multiplexador1x4|ALT_INV_Mux3~1_combout\ <= NOT \multiplexador1x4|Mux3~1_combout\;
\multiplexador1x4|ALT_INV_Mux3~0_combout\ <= NOT \multiplexador1x4|Mux3~0_combout\;
\multiplexador1x4|ALT_INV_Mux4~1_combout\ <= NOT \multiplexador1x4|Mux4~1_combout\;
\multiplexador1x4|ALT_INV_Mux4~0_combout\ <= NOT \multiplexador1x4|Mux4~0_combout\;
\multiplexador1x4|ALT_INV_Mux5~1_combout\ <= NOT \multiplexador1x4|Mux5~1_combout\;
\multiplexador1x4|ALT_INV_Mux5~0_combout\ <= NOT \multiplexador1x4|Mux5~0_combout\;
\multiplexador1x4|ALT_INV_Mux6~1_combout\ <= NOT \multiplexador1x4|Mux6~1_combout\;
\multiplexador1x4|ALT_INV_Mux6~0_combout\ <= NOT \multiplexador1x4|Mux6~0_combout\;
\controle|ALT_INV_Mux9~1_combout\ <= NOT \controle|Mux9~1_combout\;
\controle|ALT_INV_Mux0~0_combout\ <= NOT \controle|Mux0~0_combout\;
\controle|ALT_INV_Mux9~0_combout\ <= NOT \controle|Mux9~0_combout\;
\multiplexador1x4|ALT_INV_Mux7~0_combout\ <= NOT \multiplexador1x4|Mux7~0_combout\;
\controle|ALT_INV_Mux4~0_combout\ <= NOT \controle|Mux4~0_combout\;
\controle|ALT_INV_Mux5~0_combout\ <= NOT \controle|Mux5~0_combout\;
\banco_de_instrucao|ALT_INV_Mux6~1_combout\ <= NOT \banco_de_instrucao|Mux6~1_combout\;
\banco_de_instrucao|ALT_INV_Mux7~0_combout\ <= NOT \banco_de_instrucao|Mux7~0_combout\;
\controle|ALT_INV_Mux8~0_combout\ <= NOT \controle|Mux8~0_combout\;
\banco_de_instrucao|ALT_INV_Mux1~0_combout\ <= NOT \banco_de_instrucao|Mux1~0_combout\;
\banco_de_instrucao|ALT_INV_Mux0~0_combout\ <= NOT \banco_de_instrucao|Mux0~0_combout\;
\p_counter|ALT_INV_Add0~17_sumout\ <= NOT \p_counter|Add0~17_sumout\;
\p_counter|ALT_INV_Add0~13_sumout\ <= NOT \p_counter|Add0~13_sumout\;
\p_counter|ALT_INV_Add0~9_sumout\ <= NOT \p_counter|Add0~9_sumout\;
\p_counter|ALT_INV_Add0~5_sumout\ <= NOT \p_counter|Add0~5_sumout\;
\p_counter|ALT_INV_Add0~1_sumout\ <= NOT \p_counter|Add0~1_sumout\;
\unidade_de_logica_aritimetica|ALT_INV_Add0~29_sumout\ <= NOT \unidade_de_logica_aritimetica|Add0~29_sumout\;
\unidade_de_logica_aritimetica|ALT_INV_Add0~25_sumout\ <= NOT \unidade_de_logica_aritimetica|Add0~25_sumout\;
\unidade_de_logica_aritimetica|ALT_INV_Add0~21_sumout\ <= NOT \unidade_de_logica_aritimetica|Add0~21_sumout\;
\unidade_de_logica_aritimetica|ALT_INV_Add0~17_sumout\ <= NOT \unidade_de_logica_aritimetica|Add0~17_sumout\;
\unidade_de_logica_aritimetica|ALT_INV_Add0~13_sumout\ <= NOT \unidade_de_logica_aritimetica|Add0~13_sumout\;
\unidade_de_logica_aritimetica|ALT_INV_Add0~9_sumout\ <= NOT \unidade_de_logica_aritimetica|Add0~9_sumout\;
\unidade_de_logica_aritimetica|ALT_INV_Add0~5_sumout\ <= NOT \unidade_de_logica_aritimetica|Add0~5_sumout\;
\unidade_de_logica_aritimetica|ALT_INV_Add0~1_sumout\ <= NOT \unidade_de_logica_aritimetica|Add0~1_sumout\;

-- Location: IOOBUF_X89_Y36_N5
\alu_result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade_de_logica_aritimetica|alu_result\(0),
	devoe => ww_devoe,
	o => ww_alu_result(0));

-- Location: IOOBUF_X89_Y37_N22
\alu_result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade_de_logica_aritimetica|alu_result\(1),
	devoe => ww_devoe,
	o => ww_alu_result(1));

-- Location: IOOBUF_X89_Y36_N39
\alu_result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade_de_logica_aritimetica|alu_result\(2),
	devoe => ww_devoe,
	o => ww_alu_result(2));

-- Location: IOOBUF_X89_Y37_N5
\alu_result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade_de_logica_aritimetica|alu_result\(3),
	devoe => ww_devoe,
	o => ww_alu_result(3));

-- Location: IOOBUF_X89_Y35_N96
\alu_result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade_de_logica_aritimetica|alu_result\(4),
	devoe => ww_devoe,
	o => ww_alu_result(4));

-- Location: IOOBUF_X89_Y36_N56
\alu_result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade_de_logica_aritimetica|alu_result\(5),
	devoe => ww_devoe,
	o => ww_alu_result(5));

-- Location: IOOBUF_X89_Y38_N22
\alu_result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade_de_logica_aritimetica|alu_result\(6),
	devoe => ww_devoe,
	o => ww_alu_result(6));

-- Location: IOOBUF_X89_Y36_N22
\alu_result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade_de_logica_aritimetica|alu_result\(7),
	devoe => ww_devoe,
	o => ww_alu_result(7));

-- Location: LABCELL_X85_Y36_N0
\p_counter|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p_counter|Add0~1_sumout\ = SUM(( !\banco_de_instrucao|Mux7~0_combout\ $ (\p_counter|Add0~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \p_counter|Add0~2\ = CARRY(( !\banco_de_instrucao|Mux7~0_combout\ $ (\p_counter|Add0~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \p_counter|Add0~3\ = SHARE((\p_counter|Add0~1_sumout\) # (\banco_de_instrucao|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \banco_de_instrucao|ALT_INV_Mux7~0_combout\,
	datac => \p_counter|ALT_INV_Add0~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \p_counter|Add0~1_sumout\,
	cout => \p_counter|Add0~2\,
	shareout => \p_counter|Add0~3\);

-- Location: LABCELL_X85_Y36_N3
\p_counter|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p_counter|Add0~5_sumout\ = SUM(( !\banco_de_instrucao|Mux6~1_combout\ $ (!\p_counter|Add0~5_sumout\) ) + ( \p_counter|Add0~3\ ) + ( \p_counter|Add0~2\ ))
-- \p_counter|Add0~6\ = CARRY(( !\banco_de_instrucao|Mux6~1_combout\ $ (!\p_counter|Add0~5_sumout\) ) + ( \p_counter|Add0~3\ ) + ( \p_counter|Add0~2\ ))
-- \p_counter|Add0~7\ = SHARE((\banco_de_instrucao|Mux6~1_combout\ & \p_counter|Add0~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \banco_de_instrucao|ALT_INV_Mux6~1_combout\,
	datad => \p_counter|ALT_INV_Add0~5_sumout\,
	cin => \p_counter|Add0~2\,
	sharein => \p_counter|Add0~3\,
	sumout => \p_counter|Add0~5_sumout\,
	cout => \p_counter|Add0~6\,
	shareout => \p_counter|Add0~7\);

-- Location: LABCELL_X85_Y36_N6
\p_counter|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p_counter|Add0~9_sumout\ = SUM(( \p_counter|Add0~9_sumout\ ) + ( \p_counter|Add0~7\ ) + ( \p_counter|Add0~6\ ))
-- \p_counter|Add0~10\ = CARRY(( \p_counter|Add0~9_sumout\ ) + ( \p_counter|Add0~7\ ) + ( \p_counter|Add0~6\ ))
-- \p_counter|Add0~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \p_counter|ALT_INV_Add0~9_sumout\,
	cin => \p_counter|Add0~6\,
	sharein => \p_counter|Add0~7\,
	sumout => \p_counter|Add0~9_sumout\,
	cout => \p_counter|Add0~10\,
	shareout => \p_counter|Add0~11\);

-- Location: LABCELL_X85_Y36_N9
\p_counter|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p_counter|Add0~13_sumout\ = SUM(( \p_counter|Add0~13_sumout\ ) + ( \p_counter|Add0~11\ ) + ( \p_counter|Add0~10\ ))
-- \p_counter|Add0~14\ = CARRY(( \p_counter|Add0~13_sumout\ ) + ( \p_counter|Add0~11\ ) + ( \p_counter|Add0~10\ ))
-- \p_counter|Add0~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \p_counter|ALT_INV_Add0~13_sumout\,
	cin => \p_counter|Add0~10\,
	sharein => \p_counter|Add0~11\,
	sumout => \p_counter|Add0~13_sumout\,
	cout => \p_counter|Add0~14\,
	shareout => \p_counter|Add0~15\);

-- Location: LABCELL_X85_Y36_N30
\banco_de_instrucao|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_de_instrucao|Mux7~0_combout\ = ( !\p_counter|Add0~13_sumout\ & ( (!\p_counter|Add0~9_sumout\ & ((\p_counter|Add0~5_sumout\))) # (\p_counter|Add0~9_sumout\ & (!\p_counter|Add0~1_sumout\ & !\p_counter|Add0~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011001100001000101100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter|ALT_INV_Add0~1_sumout\,
	datab => \p_counter|ALT_INV_Add0~9_sumout\,
	datad => \p_counter|ALT_INV_Add0~5_sumout\,
	dataf => \p_counter|ALT_INV_Add0~13_sumout\,
	combout => \banco_de_instrucao|Mux7~0_combout\);

-- Location: LABCELL_X85_Y36_N33
\banco_de_instrucao|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_de_instrucao|Mux6~1_combout\ = ( \p_counter|Add0~9_sumout\ & ( (!\p_counter|Add0~13_sumout\ & ((\p_counter|Add0~5_sumout\) # (\p_counter|Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter|ALT_INV_Add0~1_sumout\,
	datac => \p_counter|ALT_INV_Add0~13_sumout\,
	datad => \p_counter|ALT_INV_Add0~5_sumout\,
	dataf => \p_counter|ALT_INV_Add0~9_sumout\,
	combout => \banco_de_instrucao|Mux6~1_combout\);

-- Location: LABCELL_X85_Y36_N39
\banco_de_instrucao|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_de_instrucao|Mux15~0_combout\ = ( !\p_counter|Add0~13_sumout\ & ( (!\p_counter|Add0~9_sumout\ & ((\p_counter|Add0~5_sumout\) # (\p_counter|Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010001001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter|ALT_INV_Add0~1_sumout\,
	datab => \p_counter|ALT_INV_Add0~9_sumout\,
	datad => \p_counter|ALT_INV_Add0~5_sumout\,
	dataf => \p_counter|ALT_INV_Add0~13_sumout\,
	combout => \banco_de_instrucao|Mux15~0_combout\);

-- Location: LABCELL_X85_Y36_N57
\banco_de_instrucao|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_de_instrucao|Mux1~0_combout\ = (!\p_counter|Add0~13_sumout\ & (\p_counter|Add0~1_sumout\ & (!\p_counter|Add0~5_sumout\ $ (!\p_counter|Add0~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000000000000110000000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter|ALT_INV_Add0~5_sumout\,
	datab => \p_counter|ALT_INV_Add0~9_sumout\,
	datac => \p_counter|ALT_INV_Add0~13_sumout\,
	datad => \p_counter|ALT_INV_Add0~1_sumout\,
	combout => \banco_de_instrucao|Mux1~0_combout\);

-- Location: LABCELL_X85_Y36_N48
\banco_de_instrucao|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_de_instrucao|Mux0~0_combout\ = ( !\p_counter|Add0~13_sumout\ & ( (!\p_counter|Add0~5_sumout\ & ((\p_counter|Add0~9_sumout\))) # (\p_counter|Add0~5_sumout\ & (\p_counter|Add0~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter|ALT_INV_Add0~1_sumout\,
	datab => \p_counter|ALT_INV_Add0~9_sumout\,
	datac => \p_counter|ALT_INV_Add0~5_sumout\,
	dataf => \p_counter|ALT_INV_Add0~13_sumout\,
	combout => \banco_de_instrucao|Mux0~0_combout\);

-- Location: LABCELL_X88_Y36_N27
\controle|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux5~1_combout\ = ( !\banco_de_instrucao|Mux0~0_combout\ & ( (!\banco_de_instrucao|Mux6~1_combout\ & \banco_de_instrucao|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_de_instrucao|ALT_INV_Mux6~1_combout\,
	datac => \banco_de_instrucao|ALT_INV_Mux1~0_combout\,
	dataf => \banco_de_instrucao|ALT_INV_Mux0~0_combout\,
	combout => \controle|Mux5~1_combout\);

-- Location: LABCELL_X88_Y36_N18
\seletor_1x2|saidaA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_1x2|saidaA\(0) = ( \seletor_1x2|saidaA\(0) & ( (\controle|Mux5~1_combout\) # (\banco_de_instrucao|Mux15~0_combout\) ) ) # ( !\seletor_1x2|saidaA\(0) & ( (\banco_de_instrucao|Mux15~0_combout\ & !\controle|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \banco_de_instrucao|ALT_INV_Mux15~0_combout\,
	datad => \controle|ALT_INV_Mux5~1_combout\,
	dataf => \seletor_1x2|ALT_INV_saidaA\(0),
	combout => \seletor_1x2|saidaA\(0));

-- Location: LABCELL_X88_Y36_N36
\controle|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux4~0_combout\ = ( !\banco_de_instrucao|Mux1~0_combout\ & ( (!\banco_de_instrucao|Mux6~1_combout\ & !\banco_de_instrucao|Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \banco_de_instrucao|ALT_INV_Mux6~1_combout\,
	datad => \banco_de_instrucao|ALT_INV_Mux0~0_combout\,
	dataf => \banco_de_instrucao|ALT_INV_Mux1~0_combout\,
	combout => \controle|Mux4~0_combout\);

-- Location: MLABCELL_X87_Y36_N30
\controle|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux5~0_combout\ = ( !\banco_de_instrucao|Mux0~0_combout\ & ( (!\banco_de_instrucao|Mux6~1_combout\ & (!\banco_de_instrucao|Mux7~0_combout\ & \banco_de_instrucao|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_de_instrucao|ALT_INV_Mux6~1_combout\,
	datab => \banco_de_instrucao|ALT_INV_Mux7~0_combout\,
	datac => \banco_de_instrucao|ALT_INV_Mux1~0_combout\,
	dataf => \banco_de_instrucao|ALT_INV_Mux0~0_combout\,
	combout => \controle|Mux5~0_combout\);

-- Location: LABCELL_X88_Y36_N15
\multiplexador1x4|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador1x4|Mux7~0_combout\ = ( !\controle|Mux5~0_combout\ & ( (!\controle|Mux4~0_combout\ & (\seletor_1x2|saidaA\(0))) # (\controle|Mux4~0_combout\ & ((\unidade_de_logica_aritimetica|alu_result\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \seletor_1x2|ALT_INV_saidaA\(0),
	datab => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(0),
	datad => \controle|ALT_INV_Mux4~0_combout\,
	dataf => \controle|ALT_INV_Mux5~0_combout\,
	combout => \multiplexador1x4|Mux7~0_combout\);

-- Location: MLABCELL_X87_Y36_N39
\controle|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux9~0_combout\ = ( \banco_de_instrucao|Mux0~0_combout\ ) # ( !\banco_de_instrucao|Mux0~0_combout\ & ( \banco_de_instrucao|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_de_instrucao|ALT_INV_Mux1~0_combout\,
	dataf => \banco_de_instrucao|ALT_INV_Mux0~0_combout\,
	combout => \controle|Mux9~0_combout\);

-- Location: MLABCELL_X87_Y36_N0
\unidade_de_logica_aritimetica|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|Add0~34_cout\ = CARRY(( VCC ) + ( (!\banco_de_instrucao|Mux6~1_combout\ & (\banco_de_instrucao|Mux7~0_combout\ & !\controle|Mux9~0_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111011111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_de_instrucao|ALT_INV_Mux6~1_combout\,
	datab => \banco_de_instrucao|ALT_INV_Mux7~0_combout\,
	dataf => \controle|ALT_INV_Mux9~0_combout\,
	cin => GND,
	cout => \unidade_de_logica_aritimetica|Add0~34_cout\);

-- Location: MLABCELL_X87_Y36_N3
\unidade_de_logica_aritimetica|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|Add0~1_sumout\ = SUM(( \multiplexador1x4|Mux7~0_combout\ ) + ( !\multiplexador1x4|Mux7~0_combout\ $ ((((!\banco_de_instrucao|Mux7~0_combout\) # (\controle|Mux9~0_combout\)) # (\banco_de_instrucao|Mux6~1_combout\))) ) + ( 
-- \unidade_de_logica_aritimetica|Add0~34_cout\ ))
-- \unidade_de_logica_aritimetica|Add0~2\ = CARRY(( \multiplexador1x4|Mux7~0_combout\ ) + ( !\multiplexador1x4|Mux7~0_combout\ $ ((((!\banco_de_instrucao|Mux7~0_combout\) # (\controle|Mux9~0_combout\)) # (\banco_de_instrucao|Mux6~1_combout\))) ) + ( 
-- \unidade_de_logica_aritimetica|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100101111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_de_instrucao|ALT_INV_Mux6~1_combout\,
	datab => \banco_de_instrucao|ALT_INV_Mux7~0_combout\,
	datac => \multiplexador1x4|ALT_INV_Mux7~0_combout\,
	dataf => \controle|ALT_INV_Mux9~0_combout\,
	cin => \unidade_de_logica_aritimetica|Add0~34_cout\,
	sumout => \unidade_de_logica_aritimetica|Add0~1_sumout\,
	cout => \unidade_de_logica_aritimetica|Add0~2\);

-- Location: LABCELL_X88_Y36_N30
\controle|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux8~0_combout\ = ( \banco_de_instrucao|Mux0~0_combout\ & ( \banco_de_instrucao|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \banco_de_instrucao|ALT_INV_Mux1~0_combout\,
	dataf => \banco_de_instrucao|ALT_INV_Mux0~0_combout\,
	combout => \controle|Mux8~0_combout\);

-- Location: LABCELL_X88_Y36_N12
\unidade_de_logica_aritimetica|alu_result[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|alu_result\(0) = ( \unidade_de_logica_aritimetica|alu_result\(0) & ( (\controle|Mux8~0_combout\) # (\unidade_de_logica_aritimetica|Add0~1_sumout\) ) ) # ( !\unidade_de_logica_aritimetica|alu_result\(0) & ( 
-- (\unidade_de_logica_aritimetica|Add0~1_sumout\ & !\controle|Mux8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \unidade_de_logica_aritimetica|ALT_INV_Add0~1_sumout\,
	datad => \controle|ALT_INV_Mux8~0_combout\,
	dataf => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(0),
	combout => \unidade_de_logica_aritimetica|alu_result\(0));

-- Location: MLABCELL_X87_Y36_N42
\controle|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux0~0_combout\ = ( !\banco_de_instrucao|Mux6~1_combout\ & ( \banco_de_instrucao|Mux7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \banco_de_instrucao|ALT_INV_Mux7~0_combout\,
	dataf => \banco_de_instrucao|ALT_INV_Mux6~1_combout\,
	combout => \controle|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y36_N33
\controle|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux9~1_combout\ = ( !\controle|Mux9~0_combout\ & ( \controle|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controle|ALT_INV_Mux0~0_combout\,
	dataf => \controle|ALT_INV_Mux9~0_combout\,
	combout => \controle|Mux9~1_combout\);

-- Location: LABCELL_X85_Y36_N42
\banco_de_instrucao|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_de_instrucao|Mux14~0_combout\ = ( !\p_counter|Add0~13_sumout\ & ( (\p_counter|Add0~9_sumout\ & ((!\p_counter|Add0~1_sumout\) # (!\p_counter|Add0~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p_counter|ALT_INV_Add0~9_sumout\,
	datac => \p_counter|ALT_INV_Add0~1_sumout\,
	datad => \p_counter|ALT_INV_Add0~5_sumout\,
	dataf => \p_counter|ALT_INV_Add0~13_sumout\,
	combout => \banco_de_instrucao|Mux14~0_combout\);

-- Location: MLABCELL_X84_Y36_N24
\seletor_1x2|saidaA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_1x2|saidaA\(1) = ( \banco_de_instrucao|Mux14~0_combout\ & ( \seletor_1x2|saidaA\(1) ) ) # ( !\banco_de_instrucao|Mux14~0_combout\ & ( \seletor_1x2|saidaA\(1) & ( \controle|Mux5~1_combout\ ) ) ) # ( \banco_de_instrucao|Mux14~0_combout\ & ( 
-- !\seletor_1x2|saidaA\(1) & ( !\controle|Mux5~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controle|ALT_INV_Mux5~1_combout\,
	datae => \banco_de_instrucao|ALT_INV_Mux14~0_combout\,
	dataf => \seletor_1x2|ALT_INV_saidaA\(1),
	combout => \seletor_1x2|saidaA\(1));

-- Location: MLABCELL_X84_Y36_N0
\multiplexador1x4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador1x4|Mux6~0_combout\ = ( \banco_de_instrucao|Mux0~0_combout\ & ( \unidade_de_logica_aritimetica|alu_result\(1) & ( \seletor_1x2|saidaA\(1) ) ) ) # ( !\banco_de_instrucao|Mux0~0_combout\ & ( \unidade_de_logica_aritimetica|alu_result\(1) & ( 
-- ((!\banco_de_instrucao|Mux1~0_combout\ & !\banco_de_instrucao|Mux6~1_combout\)) # (\seletor_1x2|saidaA\(1)) ) ) ) # ( \banco_de_instrucao|Mux0~0_combout\ & ( !\unidade_de_logica_aritimetica|alu_result\(1) & ( \seletor_1x2|saidaA\(1) ) ) ) # ( 
-- !\banco_de_instrucao|Mux0~0_combout\ & ( !\unidade_de_logica_aritimetica|alu_result\(1) & ( (\seletor_1x2|saidaA\(1) & ((\banco_de_instrucao|Mux6~1_combout\) # (\banco_de_instrucao|Mux1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000011110000111111001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \banco_de_instrucao|ALT_INV_Mux1~0_combout\,
	datac => \seletor_1x2|ALT_INV_saidaA\(1),
	datad => \banco_de_instrucao|ALT_INV_Mux6~1_combout\,
	datae => \banco_de_instrucao|ALT_INV_Mux0~0_combout\,
	dataf => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(1),
	combout => \multiplexador1x4|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y36_N36
\multiplexador1x4|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador1x4|Mux6~1_combout\ = ( !\controle|Mux5~0_combout\ & ( \multiplexador1x4|Mux6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \multiplexador1x4|ALT_INV_Mux6~0_combout\,
	dataf => \controle|ALT_INV_Mux5~0_combout\,
	combout => \multiplexador1x4|Mux6~1_combout\);

-- Location: MLABCELL_X87_Y36_N6
\unidade_de_logica_aritimetica|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|Add0~5_sumout\ = SUM(( \multiplexador1x4|Mux6~1_combout\ ) + ( !\controle|Mux9~1_combout\ $ (((!\multiplexador1x4|Mux6~0_combout\) # (\controle|Mux5~0_combout\))) ) + ( \unidade_de_logica_aritimetica|Add0~2\ ))
-- \unidade_de_logica_aritimetica|Add0~6\ = CARRY(( \multiplexador1x4|Mux6~1_combout\ ) + ( !\controle|Mux9~1_combout\ $ (((!\multiplexador1x4|Mux6~0_combout\) # (\controle|Mux5~0_combout\))) ) + ( \unidade_de_logica_aritimetica|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_Mux9~1_combout\,
	datab => \controle|ALT_INV_Mux5~0_combout\,
	datad => \multiplexador1x4|ALT_INV_Mux6~1_combout\,
	dataf => \multiplexador1x4|ALT_INV_Mux6~0_combout\,
	cin => \unidade_de_logica_aritimetica|Add0~2\,
	sumout => \unidade_de_logica_aritimetica|Add0~5_sumout\,
	cout => \unidade_de_logica_aritimetica|Add0~6\);

-- Location: MLABCELL_X84_Y36_N42
\unidade_de_logica_aritimetica|alu_result[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|alu_result\(1) = ( \unidade_de_logica_aritimetica|Add0~5_sumout\ & ( \unidade_de_logica_aritimetica|alu_result\(1) ) ) # ( !\unidade_de_logica_aritimetica|Add0~5_sumout\ & ( \unidade_de_logica_aritimetica|alu_result\(1) & ( 
-- \controle|Mux8~0_combout\ ) ) ) # ( \unidade_de_logica_aritimetica|Add0~5_sumout\ & ( !\unidade_de_logica_aritimetica|alu_result\(1) & ( !\controle|Mux8~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controle|ALT_INV_Mux8~0_combout\,
	datae => \unidade_de_logica_aritimetica|ALT_INV_Add0~5_sumout\,
	dataf => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(1),
	combout => \unidade_de_logica_aritimetica|alu_result\(1));

-- Location: LABCELL_X85_Y36_N12
\p_counter|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p_counter|Add0~17_sumout\ = SUM(( \p_counter|Add0~17_sumout\ ) + ( \p_counter|Add0~15\ ) + ( \p_counter|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \p_counter|ALT_INV_Add0~17_sumout\,
	cin => \p_counter|Add0~14\,
	sharein => \p_counter|Add0~15\,
	sumout => \p_counter|Add0~17_sumout\);

-- Location: LABCELL_X85_Y36_N36
\banco_de_instrucao|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_de_instrucao|Mux8~0_combout\ = ( !\p_counter|Add0~13_sumout\ & ( (!\p_counter|Add0~9_sumout\ & ((\p_counter|Add0~5_sumout\))) # (\p_counter|Add0~9_sumout\ & (!\p_counter|Add0~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100001100001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p_counter|ALT_INV_Add0~9_sumout\,
	datac => \p_counter|ALT_INV_Add0~1_sumout\,
	datad => \p_counter|ALT_INV_Add0~5_sumout\,
	dataf => \p_counter|ALT_INV_Add0~13_sumout\,
	combout => \banco_de_instrucao|Mux8~0_combout\);

-- Location: LABCELL_X85_Y36_N21
\banco_de_instrucao|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_de_instrucao|Mux13~0_combout\ = (\banco_de_instrucao|Mux8~0_combout\) # (\p_counter|Add0~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p_counter|ALT_INV_Add0~17_sumout\,
	datad => \banco_de_instrucao|ALT_INV_Mux8~0_combout\,
	combout => \banco_de_instrucao|Mux13~0_combout\);

-- Location: LABCELL_X88_Y36_N3
\seletor_1x2|saidaA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_1x2|saidaA\(2) = ( \seletor_1x2|saidaA\(2) & ( (\banco_de_instrucao|Mux13~0_combout\) # (\controle|Mux5~1_combout\) ) ) # ( !\seletor_1x2|saidaA\(2) & ( (!\controle|Mux5~1_combout\ & \banco_de_instrucao|Mux13~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_Mux5~1_combout\,
	datac => \banco_de_instrucao|ALT_INV_Mux13~0_combout\,
	dataf => \seletor_1x2|ALT_INV_saidaA\(2),
	combout => \seletor_1x2|saidaA\(2));

-- Location: LABCELL_X88_Y36_N48
\multiplexador1x4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador1x4|Mux5~0_combout\ = ( \banco_de_instrucao|Mux0~0_combout\ & ( \seletor_1x2|saidaA\(2) ) ) # ( !\banco_de_instrucao|Mux0~0_combout\ & ( (!\banco_de_instrucao|Mux6~1_combout\ & ((!\banco_de_instrucao|Mux1~0_combout\ & 
-- ((\unidade_de_logica_aritimetica|alu_result\(2)))) # (\banco_de_instrucao|Mux1~0_combout\ & (\seletor_1x2|saidaA\(2))))) # (\banco_de_instrucao|Mux6~1_combout\ & (((\seletor_1x2|saidaA\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111000001111000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_de_instrucao|ALT_INV_Mux6~1_combout\,
	datab => \banco_de_instrucao|ALT_INV_Mux1~0_combout\,
	datac => \seletor_1x2|ALT_INV_saidaA\(2),
	datad => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(2),
	dataf => \banco_de_instrucao|ALT_INV_Mux0~0_combout\,
	combout => \multiplexador1x4|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y36_N48
\multiplexador1x4|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador1x4|Mux5~1_combout\ = ( !\controle|Mux5~0_combout\ & ( \multiplexador1x4|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \multiplexador1x4|ALT_INV_Mux5~0_combout\,
	dataf => \controle|ALT_INV_Mux5~0_combout\,
	combout => \multiplexador1x4|Mux5~1_combout\);

-- Location: MLABCELL_X87_Y36_N9
\unidade_de_logica_aritimetica|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|Add0~9_sumout\ = SUM(( !\controle|Mux9~1_combout\ $ (((!\multiplexador1x4|Mux5~0_combout\) # (\controle|Mux5~0_combout\))) ) + ( \multiplexador1x4|Mux5~1_combout\ ) + ( \unidade_de_logica_aritimetica|Add0~6\ ))
-- \unidade_de_logica_aritimetica|Add0~10\ = CARRY(( !\controle|Mux9~1_combout\ $ (((!\multiplexador1x4|Mux5~0_combout\) # (\controle|Mux5~0_combout\))) ) + ( \multiplexador1x4|Mux5~1_combout\ ) + ( \unidade_de_logica_aritimetica|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_Mux9~1_combout\,
	datab => \controle|ALT_INV_Mux5~0_combout\,
	datac => \multiplexador1x4|ALT_INV_Mux5~0_combout\,
	dataf => \multiplexador1x4|ALT_INV_Mux5~1_combout\,
	cin => \unidade_de_logica_aritimetica|Add0~6\,
	sumout => \unidade_de_logica_aritimetica|Add0~9_sumout\,
	cout => \unidade_de_logica_aritimetica|Add0~10\);

-- Location: LABCELL_X88_Y36_N39
\unidade_de_logica_aritimetica|alu_result[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|alu_result\(2) = ( \unidade_de_logica_aritimetica|alu_result\(2) & ( (\controle|Mux8~0_combout\) # (\unidade_de_logica_aritimetica|Add0~9_sumout\) ) ) # ( !\unidade_de_logica_aritimetica|alu_result\(2) & ( 
-- (\unidade_de_logica_aritimetica|Add0~9_sumout\ & !\controle|Mux8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \unidade_de_logica_aritimetica|ALT_INV_Add0~9_sumout\,
	datac => \controle|ALT_INV_Mux8~0_combout\,
	dataf => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(2),
	combout => \unidade_de_logica_aritimetica|alu_result\(2));

-- Location: LABCELL_X85_Y36_N45
\banco_de_instrucao|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_de_instrucao|Mux12~0_combout\ = ( !\p_counter|Add0~13_sumout\ & ( (\p_counter|Add0~1_sumout\ & (!\p_counter|Add0~9_sumout\ & !\p_counter|Add0~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter|ALT_INV_Add0~1_sumout\,
	datab => \p_counter|ALT_INV_Add0~9_sumout\,
	datad => \p_counter|ALT_INV_Add0~5_sumout\,
	dataf => \p_counter|ALT_INV_Add0~13_sumout\,
	combout => \banco_de_instrucao|Mux12~0_combout\);

-- Location: LABCELL_X85_Y36_N51
\seletor_1x2|saidaA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_1x2|saidaA\(3) = ( \seletor_1x2|saidaA\(3) & ( (\controle|Mux5~1_combout\) # (\banco_de_instrucao|Mux12~0_combout\) ) ) # ( !\seletor_1x2|saidaA\(3) & ( (\banco_de_instrucao|Mux12~0_combout\ & !\controle|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \banco_de_instrucao|ALT_INV_Mux12~0_combout\,
	datad => \controle|ALT_INV_Mux5~1_combout\,
	dataf => \seletor_1x2|ALT_INV_saidaA\(3),
	combout => \seletor_1x2|saidaA\(3));

-- Location: MLABCELL_X84_Y36_N39
\multiplexador1x4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador1x4|Mux4~0_combout\ = ( \banco_de_instrucao|Mux1~0_combout\ & ( \seletor_1x2|saidaA\(3) ) ) # ( !\banco_de_instrucao|Mux1~0_combout\ & ( (!\banco_de_instrucao|Mux0~0_combout\ & ((!\banco_de_instrucao|Mux6~1_combout\ & 
-- (\unidade_de_logica_aritimetica|alu_result\(3))) # (\banco_de_instrucao|Mux6~1_combout\ & ((\seletor_1x2|saidaA\(3)))))) # (\banco_de_instrucao|Mux0~0_combout\ & (((\seletor_1x2|saidaA\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001111111000000001111111101000000011111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(3),
	datab => \banco_de_instrucao|ALT_INV_Mux0~0_combout\,
	datac => \banco_de_instrucao|ALT_INV_Mux6~1_combout\,
	datad => \seletor_1x2|ALT_INV_saidaA\(3),
	datae => \banco_de_instrucao|ALT_INV_Mux1~0_combout\,
	combout => \multiplexador1x4|Mux4~0_combout\);

-- Location: MLABCELL_X87_Y36_N57
\multiplexador1x4|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador1x4|Mux4~1_combout\ = ( \multiplexador1x4|Mux4~0_combout\ & ( !\controle|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controle|ALT_INV_Mux5~0_combout\,
	dataf => \multiplexador1x4|ALT_INV_Mux4~0_combout\,
	combout => \multiplexador1x4|Mux4~1_combout\);

-- Location: MLABCELL_X87_Y36_N12
\unidade_de_logica_aritimetica|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|Add0~13_sumout\ = SUM(( \multiplexador1x4|Mux4~1_combout\ ) + ( !\controle|Mux9~1_combout\ $ (((!\multiplexador1x4|Mux4~0_combout\) # (\controle|Mux5~0_combout\))) ) + ( \unidade_de_logica_aritimetica|Add0~10\ ))
-- \unidade_de_logica_aritimetica|Add0~14\ = CARRY(( \multiplexador1x4|Mux4~1_combout\ ) + ( !\controle|Mux9~1_combout\ $ (((!\multiplexador1x4|Mux4~0_combout\) # (\controle|Mux5~0_combout\))) ) + ( \unidade_de_logica_aritimetica|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_Mux9~1_combout\,
	datab => \controle|ALT_INV_Mux5~0_combout\,
	datad => \multiplexador1x4|ALT_INV_Mux4~1_combout\,
	dataf => \multiplexador1x4|ALT_INV_Mux4~0_combout\,
	cin => \unidade_de_logica_aritimetica|Add0~10\,
	sumout => \unidade_de_logica_aritimetica|Add0~13_sumout\,
	cout => \unidade_de_logica_aritimetica|Add0~14\);

-- Location: MLABCELL_X84_Y36_N51
\unidade_de_logica_aritimetica|alu_result[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|alu_result\(3) = ( \unidade_de_logica_aritimetica|Add0~13_sumout\ & ( \unidade_de_logica_aritimetica|alu_result\(3) ) ) # ( !\unidade_de_logica_aritimetica|Add0~13_sumout\ & ( \unidade_de_logica_aritimetica|alu_result\(3) & 
-- ( \controle|Mux8~0_combout\ ) ) ) # ( \unidade_de_logica_aritimetica|Add0~13_sumout\ & ( !\unidade_de_logica_aritimetica|alu_result\(3) & ( !\controle|Mux8~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_Mux8~0_combout\,
	datae => \unidade_de_logica_aritimetica|ALT_INV_Add0~13_sumout\,
	dataf => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(3),
	combout => \unidade_de_logica_aritimetica|alu_result\(3));

-- Location: LABCELL_X85_Y36_N24
\banco_de_instrucao|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_de_instrucao|Mux11~0_combout\ = ( !\p_counter|Add0~13_sumout\ & ( !\p_counter|Add0~9_sumout\ $ (((!\p_counter|Add0~1_sumout\) # (!\p_counter|Add0~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p_counter|ALT_INV_Add0~9_sumout\,
	datac => \p_counter|ALT_INV_Add0~1_sumout\,
	datad => \p_counter|ALT_INV_Add0~5_sumout\,
	dataf => \p_counter|ALT_INV_Add0~13_sumout\,
	combout => \banco_de_instrucao|Mux11~0_combout\);

-- Location: LABCELL_X85_Y36_N54
\seletor_1x2|saidaA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_1x2|saidaA\(4) = ( \seletor_1x2|saidaA\(4) & ( (\controle|Mux5~1_combout\) # (\banco_de_instrucao|Mux11~0_combout\) ) ) # ( !\seletor_1x2|saidaA\(4) & ( (\banco_de_instrucao|Mux11~0_combout\ & !\controle|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \banco_de_instrucao|ALT_INV_Mux11~0_combout\,
	datad => \controle|ALT_INV_Mux5~1_combout\,
	dataf => \seletor_1x2|ALT_INV_saidaA\(4),
	combout => \seletor_1x2|saidaA\(4));

-- Location: LABCELL_X88_Y36_N57
\multiplexador1x4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador1x4|Mux3~0_combout\ = ( \unidade_de_logica_aritimetica|alu_result\(4) & ( ((!\banco_de_instrucao|Mux6~1_combout\ & (!\banco_de_instrucao|Mux1~0_combout\ & !\banco_de_instrucao|Mux0~0_combout\))) # (\seletor_1x2|saidaA\(4)) ) ) # ( 
-- !\unidade_de_logica_aritimetica|alu_result\(4) & ( (\seletor_1x2|saidaA\(4) & (((\banco_de_instrucao|Mux0~0_combout\) # (\banco_de_instrucao|Mux1~0_combout\)) # (\banco_de_instrucao|Mux6~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000100110011001110110011001100111011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_de_instrucao|ALT_INV_Mux6~1_combout\,
	datab => \seletor_1x2|ALT_INV_saidaA\(4),
	datac => \banco_de_instrucao|ALT_INV_Mux1~0_combout\,
	datad => \banco_de_instrucao|ALT_INV_Mux0~0_combout\,
	dataf => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(4),
	combout => \multiplexador1x4|Mux3~0_combout\);

-- Location: LABCELL_X88_Y36_N0
\multiplexador1x4|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador1x4|Mux3~1_combout\ = (\multiplexador1x4|Mux3~0_combout\ & !\controle|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \multiplexador1x4|ALT_INV_Mux3~0_combout\,
	datac => \controle|ALT_INV_Mux5~0_combout\,
	combout => \multiplexador1x4|Mux3~1_combout\);

-- Location: MLABCELL_X87_Y36_N15
\unidade_de_logica_aritimetica|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|Add0~17_sumout\ = SUM(( \multiplexador1x4|Mux3~1_combout\ ) + ( !\controle|Mux9~1_combout\ $ (((!\multiplexador1x4|Mux3~0_combout\) # (\controle|Mux5~0_combout\))) ) + ( \unidade_de_logica_aritimetica|Add0~14\ ))
-- \unidade_de_logica_aritimetica|Add0~18\ = CARRY(( \multiplexador1x4|Mux3~1_combout\ ) + ( !\controle|Mux9~1_combout\ $ (((!\multiplexador1x4|Mux3~0_combout\) # (\controle|Mux5~0_combout\))) ) + ( \unidade_de_logica_aritimetica|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_Mux9~1_combout\,
	datab => \controle|ALT_INV_Mux5~0_combout\,
	datac => \multiplexador1x4|ALT_INV_Mux3~0_combout\,
	datad => \multiplexador1x4|ALT_INV_Mux3~1_combout\,
	cin => \unidade_de_logica_aritimetica|Add0~14\,
	sumout => \unidade_de_logica_aritimetica|Add0~17_sumout\,
	cout => \unidade_de_logica_aritimetica|Add0~18\);

-- Location: LABCELL_X88_Y36_N24
\unidade_de_logica_aritimetica|alu_result[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|alu_result\(4) = ( \unidade_de_logica_aritimetica|alu_result\(4) & ( (\unidade_de_logica_aritimetica|Add0~17_sumout\) # (\controle|Mux8~0_combout\) ) ) # ( !\unidade_de_logica_aritimetica|alu_result\(4) & ( 
-- (!\controle|Mux8~0_combout\ & \unidade_de_logica_aritimetica|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controle|ALT_INV_Mux8~0_combout\,
	datac => \unidade_de_logica_aritimetica|ALT_INV_Add0~17_sumout\,
	dataf => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(4),
	combout => \unidade_de_logica_aritimetica|alu_result\(4));

-- Location: LABCELL_X85_Y36_N27
\banco_de_instrucao|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_de_instrucao|Mux10~0_combout\ = ( !\p_counter|Add0~13_sumout\ & ( (\p_counter|Add0~1_sumout\ & (\p_counter|Add0~9_sumout\ & !\p_counter|Add0~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter|ALT_INV_Add0~1_sumout\,
	datab => \p_counter|ALT_INV_Add0~9_sumout\,
	datad => \p_counter|ALT_INV_Add0~5_sumout\,
	dataf => \p_counter|ALT_INV_Add0~13_sumout\,
	combout => \banco_de_instrucao|Mux10~0_combout\);

-- Location: MLABCELL_X87_Y36_N51
\seletor_1x2|saidaA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_1x2|saidaA\(5) = ( \seletor_1x2|saidaA\(5) & ( (\controle|Mux5~1_combout\) # (\banco_de_instrucao|Mux10~0_combout\) ) ) # ( !\seletor_1x2|saidaA\(5) & ( (\banco_de_instrucao|Mux10~0_combout\ & !\controle|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_de_instrucao|ALT_INV_Mux10~0_combout\,
	datad => \controle|ALT_INV_Mux5~1_combout\,
	dataf => \seletor_1x2|ALT_INV_saidaA\(5),
	combout => \seletor_1x2|saidaA\(5));

-- Location: LABCELL_X88_Y36_N6
\multiplexador1x4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador1x4|Mux2~0_combout\ = (!\controle|Mux4~0_combout\ & ((\seletor_1x2|saidaA\(5)))) # (\controle|Mux4~0_combout\ & (\unidade_de_logica_aritimetica|alu_result\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(5),
	datac => \seletor_1x2|ALT_INV_saidaA\(5),
	datad => \controle|ALT_INV_Mux4~0_combout\,
	combout => \multiplexador1x4|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y36_N45
\multiplexador1x4|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador1x4|Mux2~1_combout\ = ( !\controle|Mux5~0_combout\ & ( \multiplexador1x4|Mux2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador1x4|ALT_INV_Mux2~0_combout\,
	dataf => \controle|ALT_INV_Mux5~0_combout\,
	combout => \multiplexador1x4|Mux2~1_combout\);

-- Location: MLABCELL_X87_Y36_N18
\unidade_de_logica_aritimetica|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|Add0~21_sumout\ = SUM(( \multiplexador1x4|Mux2~1_combout\ ) + ( !\controle|Mux9~1_combout\ $ (((!\multiplexador1x4|Mux2~0_combout\) # (\controle|Mux5~0_combout\))) ) + ( \unidade_de_logica_aritimetica|Add0~18\ ))
-- \unidade_de_logica_aritimetica|Add0~22\ = CARRY(( \multiplexador1x4|Mux2~1_combout\ ) + ( !\controle|Mux9~1_combout\ $ (((!\multiplexador1x4|Mux2~0_combout\) # (\controle|Mux5~0_combout\))) ) + ( \unidade_de_logica_aritimetica|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_Mux9~1_combout\,
	datab => \controle|ALT_INV_Mux5~0_combout\,
	datac => \multiplexador1x4|ALT_INV_Mux2~0_combout\,
	datad => \multiplexador1x4|ALT_INV_Mux2~1_combout\,
	cin => \unidade_de_logica_aritimetica|Add0~18\,
	sumout => \unidade_de_logica_aritimetica|Add0~21_sumout\,
	cout => \unidade_de_logica_aritimetica|Add0~22\);

-- Location: LABCELL_X88_Y36_N9
\unidade_de_logica_aritimetica|alu_result[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|alu_result\(5) = ( \unidade_de_logica_aritimetica|alu_result\(5) & ( (\unidade_de_logica_aritimetica|Add0~21_sumout\) # (\controle|Mux8~0_combout\) ) ) # ( !\unidade_de_logica_aritimetica|alu_result\(5) & ( 
-- (!\controle|Mux8~0_combout\ & \unidade_de_logica_aritimetica|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controle|ALT_INV_Mux8~0_combout\,
	datad => \unidade_de_logica_aritimetica|ALT_INV_Add0~21_sumout\,
	dataf => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(5),
	combout => \unidade_de_logica_aritimetica|alu_result\(5));

-- Location: LABCELL_X85_Y36_N18
\banco_de_instrucao|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_de_instrucao|Mux9~0_combout\ = ( !\p_counter|Add0~13_sumout\ & ( (!\p_counter|Add0~1_sumout\ & (!\p_counter|Add0~9_sumout\ $ (!\p_counter|Add0~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter|ALT_INV_Add0~1_sumout\,
	datab => \p_counter|ALT_INV_Add0~9_sumout\,
	datac => \p_counter|ALT_INV_Add0~5_sumout\,
	dataf => \p_counter|ALT_INV_Add0~13_sumout\,
	combout => \banco_de_instrucao|Mux9~0_combout\);

-- Location: LABCELL_X88_Y36_N42
\seletor_1x2|saidaA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_1x2|saidaA\(6) = ( \seletor_1x2|saidaA\(6) & ( (\controle|Mux5~1_combout\) # (\banco_de_instrucao|Mux9~0_combout\) ) ) # ( !\seletor_1x2|saidaA\(6) & ( (\banco_de_instrucao|Mux9~0_combout\ & !\controle|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \banco_de_instrucao|ALT_INV_Mux9~0_combout\,
	datad => \controle|ALT_INV_Mux5~1_combout\,
	dataf => \seletor_1x2|ALT_INV_saidaA\(6),
	combout => \seletor_1x2|saidaA\(6));

-- Location: LABCELL_X88_Y36_N45
\multiplexador1x4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador1x4|Mux1~0_combout\ = ( \unidade_de_logica_aritimetica|alu_result\(6) & ( (\controle|Mux4~0_combout\) # (\seletor_1x2|saidaA\(6)) ) ) # ( !\unidade_de_logica_aritimetica|alu_result\(6) & ( (\seletor_1x2|saidaA\(6) & 
-- !\controle|Mux4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \seletor_1x2|ALT_INV_saidaA\(6),
	datad => \controle|ALT_INV_Mux4~0_combout\,
	dataf => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(6),
	combout => \multiplexador1x4|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y36_N54
\multiplexador1x4|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador1x4|Mux1~1_combout\ = ( \multiplexador1x4|Mux1~0_combout\ & ( !\controle|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controle|ALT_INV_Mux5~0_combout\,
	dataf => \multiplexador1x4|ALT_INV_Mux1~0_combout\,
	combout => \multiplexador1x4|Mux1~1_combout\);

-- Location: MLABCELL_X87_Y36_N21
\unidade_de_logica_aritimetica|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|Add0~25_sumout\ = SUM(( \multiplexador1x4|Mux1~1_combout\ ) + ( !\controle|Mux9~1_combout\ $ (((!\multiplexador1x4|Mux1~0_combout\) # (\controle|Mux5~0_combout\))) ) + ( \unidade_de_logica_aritimetica|Add0~22\ ))
-- \unidade_de_logica_aritimetica|Add0~26\ = CARRY(( \multiplexador1x4|Mux1~1_combout\ ) + ( !\controle|Mux9~1_combout\ $ (((!\multiplexador1x4|Mux1~0_combout\) # (\controle|Mux5~0_combout\))) ) + ( \unidade_de_logica_aritimetica|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_Mux9~1_combout\,
	datac => \controle|ALT_INV_Mux5~0_combout\,
	datad => \multiplexador1x4|ALT_INV_Mux1~1_combout\,
	dataf => \multiplexador1x4|ALT_INV_Mux1~0_combout\,
	cin => \unidade_de_logica_aritimetica|Add0~22\,
	sumout => \unidade_de_logica_aritimetica|Add0~25_sumout\,
	cout => \unidade_de_logica_aritimetica|Add0~26\);

-- Location: LABCELL_X88_Y36_N54
\unidade_de_logica_aritimetica|alu_result[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|alu_result\(6) = ( \unidade_de_logica_aritimetica|alu_result\(6) & ( (\controle|Mux8~0_combout\) # (\unidade_de_logica_aritimetica|Add0~25_sumout\) ) ) # ( !\unidade_de_logica_aritimetica|alu_result\(6) & ( 
-- (\unidade_de_logica_aritimetica|Add0~25_sumout\ & !\controle|Mux8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \unidade_de_logica_aritimetica|ALT_INV_Add0~25_sumout\,
	datad => \controle|ALT_INV_Mux8~0_combout\,
	dataf => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(6),
	combout => \unidade_de_logica_aritimetica|alu_result\(6));

-- Location: LABCELL_X88_Y36_N33
\seletor_1x2|saidaA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletor_1x2|saidaA\(7) = ( \seletor_1x2|saidaA\(7) & ( (\controle|Mux5~1_combout\) # (\banco_de_instrucao|Mux8~0_combout\) ) ) # ( !\seletor_1x2|saidaA\(7) & ( (\banco_de_instrucao|Mux8~0_combout\ & !\controle|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_de_instrucao|ALT_INV_Mux8~0_combout\,
	datad => \controle|ALT_INV_Mux5~1_combout\,
	dataf => \seletor_1x2|ALT_INV_saidaA\(7),
	combout => \seletor_1x2|saidaA\(7));

-- Location: LABCELL_X88_Y36_N21
\multiplexador1x4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplexador1x4|Mux0~0_combout\ = ( !\controle|Mux5~0_combout\ & ( (!\controle|Mux4~0_combout\ & (\seletor_1x2|saidaA\(7))) # (\controle|Mux4~0_combout\ & ((\unidade_de_logica_aritimetica|alu_result\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \seletor_1x2|ALT_INV_saidaA\(7),
	datab => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(7),
	datad => \controle|ALT_INV_Mux4~0_combout\,
	dataf => \controle|ALT_INV_Mux5~0_combout\,
	combout => \multiplexador1x4|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y36_N24
\unidade_de_logica_aritimetica|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|Add0~29_sumout\ = SUM(( \multiplexador1x4|Mux0~0_combout\ ) + ( !\multiplexador1x4|Mux0~0_combout\ $ ((((!\controle|Mux0~0_combout\) # (\banco_de_instrucao|Mux0~0_combout\)) # (\banco_de_instrucao|Mux1~0_combout\))) ) + ( 
-- \unidade_de_logica_aritimetica|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111100000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_de_instrucao|ALT_INV_Mux1~0_combout\,
	datab => \banco_de_instrucao|ALT_INV_Mux0~0_combout\,
	datac => \multiplexador1x4|ALT_INV_Mux0~0_combout\,
	dataf => \controle|ALT_INV_Mux0~0_combout\,
	cin => \unidade_de_logica_aritimetica|Add0~26\,
	sumout => \unidade_de_logica_aritimetica|Add0~29_sumout\);

-- Location: LABCELL_X88_Y36_N51
\unidade_de_logica_aritimetica|alu_result[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_de_logica_aritimetica|alu_result\(7) = ( \unidade_de_logica_aritimetica|alu_result\(7) & ( (\unidade_de_logica_aritimetica|Add0~29_sumout\) # (\controle|Mux8~0_combout\) ) ) # ( !\unidade_de_logica_aritimetica|alu_result\(7) & ( 
-- (!\controle|Mux8~0_combout\ & \unidade_de_logica_aritimetica|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controle|ALT_INV_Mux8~0_combout\,
	datad => \unidade_de_logica_aritimetica|ALT_INV_Add0~29_sumout\,
	dataf => \unidade_de_logica_aritimetica|ALT_INV_alu_result\(7),
	combout => \unidade_de_logica_aritimetica|alu_result\(7));

-- Location: IOIBUF_X62_Y81_N18
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X60_Y5_N3
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


