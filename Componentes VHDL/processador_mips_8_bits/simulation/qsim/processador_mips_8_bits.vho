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

-- DATE "03/13/2022 16:51:28"

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

ENTITY 	seletor1x2 IS
    PORT (
	controle : IN std_logic;
	entrada : IN std_logic_vector(7 DOWNTO 0);
	saidaA : OUT std_logic_vector(7 DOWNTO 0);
	saidaB : OUT std_logic_vector(7 DOWNTO 0)
	);
END seletor1x2;

ARCHITECTURE structure OF seletor1x2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_controle : std_logic;
SIGNAL ww_entrada : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saidaA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saidaB : std_logic_vector(7 DOWNTO 0);
SIGNAL \saidaA[0]~output_o\ : std_logic;
SIGNAL \saidaA[1]~output_o\ : std_logic;
SIGNAL \saidaA[2]~output_o\ : std_logic;
SIGNAL \saidaA[3]~output_o\ : std_logic;
SIGNAL \saidaA[4]~output_o\ : std_logic;
SIGNAL \saidaA[5]~output_o\ : std_logic;
SIGNAL \saidaA[6]~output_o\ : std_logic;
SIGNAL \saidaA[7]~output_o\ : std_logic;
SIGNAL \saidaB[0]~output_o\ : std_logic;
SIGNAL \saidaB[1]~output_o\ : std_logic;
SIGNAL \saidaB[2]~output_o\ : std_logic;
SIGNAL \saidaB[3]~output_o\ : std_logic;
SIGNAL \saidaB[4]~output_o\ : std_logic;
SIGNAL \saidaB[5]~output_o\ : std_logic;
SIGNAL \saidaB[6]~output_o\ : std_logic;
SIGNAL \saidaB[7]~output_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \controle~input_o\ : std_logic;
SIGNAL \saidaA[0]$latch~combout\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \saidaA[1]$latch~combout\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \saidaA[2]$latch~combout\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \saidaA[3]$latch~combout\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \saidaA[4]$latch~combout\ : std_logic;
SIGNAL \entrada[5]~input_o\ : std_logic;
SIGNAL \saidaA[5]$latch~combout\ : std_logic;
SIGNAL \entrada[6]~input_o\ : std_logic;
SIGNAL \saidaA[6]$latch~combout\ : std_logic;
SIGNAL \entrada[7]~input_o\ : std_logic;
SIGNAL \saidaA[7]$latch~combout\ : std_logic;
SIGNAL \saidaB[0]$latch~combout\ : std_logic;
SIGNAL \saidaB[1]$latch~combout\ : std_logic;
SIGNAL \saidaB[2]$latch~combout\ : std_logic;
SIGNAL \saidaB[3]$latch~combout\ : std_logic;
SIGNAL \saidaB[4]$latch~combout\ : std_logic;
SIGNAL \saidaB[5]$latch~combout\ : std_logic;
SIGNAL \saidaB[6]$latch~combout\ : std_logic;
SIGNAL \saidaB[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_entrada[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_controle~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_saidaB[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saidaB[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saidaB[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saidaB[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saidaB[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saidaA[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saidaA[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saidaA[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saidaB[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saidaA[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saidaB[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saidaA[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saidaA[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saidaA[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saidaB[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saidaA[7]$latch~combout\ : std_logic;

BEGIN

ww_controle <= controle;
ww_entrada <= entrada;
saidaA <= ww_saidaA;
saidaB <= ww_saidaB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entrada[7]~input_o\ <= NOT \entrada[7]~input_o\;
\ALT_INV_entrada[6]~input_o\ <= NOT \entrada[6]~input_o\;
\ALT_INV_entrada[5]~input_o\ <= NOT \entrada[5]~input_o\;
\ALT_INV_entrada[4]~input_o\ <= NOT \entrada[4]~input_o\;
\ALT_INV_entrada[3]~input_o\ <= NOT \entrada[3]~input_o\;
\ALT_INV_entrada[2]~input_o\ <= NOT \entrada[2]~input_o\;
\ALT_INV_entrada[1]~input_o\ <= NOT \entrada[1]~input_o\;
\ALT_INV_controle~input_o\ <= NOT \controle~input_o\;
\ALT_INV_entrada[0]~input_o\ <= NOT \entrada[0]~input_o\;
\ALT_INV_saidaB[7]$latch~combout\ <= NOT \saidaB[7]$latch~combout\;
\ALT_INV_saidaB[6]$latch~combout\ <= NOT \saidaB[6]$latch~combout\;
\ALT_INV_saidaB[5]$latch~combout\ <= NOT \saidaB[5]$latch~combout\;
\ALT_INV_saidaB[4]$latch~combout\ <= NOT \saidaB[4]$latch~combout\;
\ALT_INV_saidaB[3]$latch~combout\ <= NOT \saidaB[3]$latch~combout\;
\ALT_INV_saidaA[6]$latch~combout\ <= NOT \saidaA[6]$latch~combout\;
\ALT_INV_saidaA[5]$latch~combout\ <= NOT \saidaA[5]$latch~combout\;
\ALT_INV_saidaA[4]$latch~combout\ <= NOT \saidaA[4]$latch~combout\;
\ALT_INV_saidaB[2]$latch~combout\ <= NOT \saidaB[2]$latch~combout\;
\ALT_INV_saidaA[3]$latch~combout\ <= NOT \saidaA[3]$latch~combout\;
\ALT_INV_saidaB[1]$latch~combout\ <= NOT \saidaB[1]$latch~combout\;
\ALT_INV_saidaA[2]$latch~combout\ <= NOT \saidaA[2]$latch~combout\;
\ALT_INV_saidaA[1]$latch~combout\ <= NOT \saidaA[1]$latch~combout\;
\ALT_INV_saidaA[0]$latch~combout\ <= NOT \saidaA[0]$latch~combout\;
\ALT_INV_saidaB[0]$latch~combout\ <= NOT \saidaB[0]$latch~combout\;
\ALT_INV_saidaA[7]$latch~combout\ <= NOT \saidaA[7]$latch~combout\;

\saidaA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaA[0]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaA[0]~output_o\);

\saidaA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaA[1]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaA[1]~output_o\);

\saidaA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaA[2]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaA[2]~output_o\);

\saidaA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaA[3]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaA[3]~output_o\);

\saidaA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaA[4]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaA[4]~output_o\);

\saidaA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaA[5]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaA[5]~output_o\);

\saidaA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaA[6]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaA[6]~output_o\);

\saidaA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaA[7]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaA[7]~output_o\);

\saidaB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaB[0]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaB[0]~output_o\);

\saidaB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaB[1]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaB[1]~output_o\);

\saidaB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaB[2]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaB[2]~output_o\);

\saidaB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaB[3]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaB[3]~output_o\);

\saidaB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaB[4]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaB[4]~output_o\);

\saidaB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaB[5]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaB[5]~output_o\);

\saidaB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaB[6]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaB[6]~output_o\);

\saidaB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaB[7]$latch~combout\,
	devoe => ww_devoe,
	o => \saidaB[7]~output_o\);

\entrada[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

\controle~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controle,
	o => \controle~input_o\);

\saidaA[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaA[0]$latch~combout\ = ( \saidaA[0]$latch~combout\ & ( \controle~input_o\ ) ) # ( \saidaA[0]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[0]~input_o\ ) ) ) # ( !\saidaA[0]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[0]~input_o\,
	datae => \ALT_INV_saidaA[0]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaA[0]$latch~combout\);

\entrada[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

\saidaA[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaA[1]$latch~combout\ = ( \saidaA[1]$latch~combout\ & ( \controle~input_o\ ) ) # ( \saidaA[1]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[1]~input_o\ ) ) ) # ( !\saidaA[1]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[1]~input_o\,
	datae => \ALT_INV_saidaA[1]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaA[1]$latch~combout\);

\entrada[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

\saidaA[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaA[2]$latch~combout\ = ( \saidaA[2]$latch~combout\ & ( \controle~input_o\ ) ) # ( \saidaA[2]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[2]~input_o\ ) ) ) # ( !\saidaA[2]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[2]~input_o\,
	datae => \ALT_INV_saidaA[2]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaA[2]$latch~combout\);

\entrada[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

\saidaA[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaA[3]$latch~combout\ = ( \saidaA[3]$latch~combout\ & ( \controle~input_o\ ) ) # ( \saidaA[3]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[3]~input_o\ ) ) ) # ( !\saidaA[3]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[3]~input_o\,
	datae => \ALT_INV_saidaA[3]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaA[3]$latch~combout\);

\entrada[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

\saidaA[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaA[4]$latch~combout\ = ( \saidaA[4]$latch~combout\ & ( \controle~input_o\ ) ) # ( \saidaA[4]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[4]~input_o\ ) ) ) # ( !\saidaA[4]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[4]~input_o\,
	datae => \ALT_INV_saidaA[4]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaA[4]$latch~combout\);

\entrada[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(5),
	o => \entrada[5]~input_o\);

\saidaA[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaA[5]$latch~combout\ = ( \saidaA[5]$latch~combout\ & ( \controle~input_o\ ) ) # ( \saidaA[5]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[5]~input_o\ ) ) ) # ( !\saidaA[5]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[5]~input_o\,
	datae => \ALT_INV_saidaA[5]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaA[5]$latch~combout\);

\entrada[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(6),
	o => \entrada[6]~input_o\);

\saidaA[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaA[6]$latch~combout\ = ( \saidaA[6]$latch~combout\ & ( \controle~input_o\ ) ) # ( \saidaA[6]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[6]~input_o\ ) ) ) # ( !\saidaA[6]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[6]~input_o\,
	datae => \ALT_INV_saidaA[6]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaA[6]$latch~combout\);

\entrada[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(7),
	o => \entrada[7]~input_o\);

\saidaA[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaA[7]$latch~combout\ = ( \saidaA[7]$latch~combout\ & ( \controle~input_o\ ) ) # ( \saidaA[7]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[7]~input_o\ ) ) ) # ( !\saidaA[7]$latch~combout\ & ( !\controle~input_o\ & ( \entrada[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[7]~input_o\,
	datae => \ALT_INV_saidaA[7]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaA[7]$latch~combout\);

\saidaB[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaB[0]$latch~combout\ = ( \saidaB[0]$latch~combout\ & ( \controle~input_o\ & ( \entrada[0]~input_o\ ) ) ) # ( !\saidaB[0]$latch~combout\ & ( \controle~input_o\ & ( \entrada[0]~input_o\ ) ) ) # ( \saidaB[0]$latch~combout\ & ( !\controle~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[0]~input_o\,
	datae => \ALT_INV_saidaB[0]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaB[0]$latch~combout\);

\saidaB[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaB[1]$latch~combout\ = ( \saidaB[1]$latch~combout\ & ( \controle~input_o\ & ( \entrada[1]~input_o\ ) ) ) # ( !\saidaB[1]$latch~combout\ & ( \controle~input_o\ & ( \entrada[1]~input_o\ ) ) ) # ( \saidaB[1]$latch~combout\ & ( !\controle~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[1]~input_o\,
	datae => \ALT_INV_saidaB[1]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaB[1]$latch~combout\);

\saidaB[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaB[2]$latch~combout\ = ( \saidaB[2]$latch~combout\ & ( \controle~input_o\ & ( \entrada[2]~input_o\ ) ) ) # ( !\saidaB[2]$latch~combout\ & ( \controle~input_o\ & ( \entrada[2]~input_o\ ) ) ) # ( \saidaB[2]$latch~combout\ & ( !\controle~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[2]~input_o\,
	datae => \ALT_INV_saidaB[2]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaB[2]$latch~combout\);

\saidaB[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaB[3]$latch~combout\ = ( \saidaB[3]$latch~combout\ & ( \controle~input_o\ & ( \entrada[3]~input_o\ ) ) ) # ( !\saidaB[3]$latch~combout\ & ( \controle~input_o\ & ( \entrada[3]~input_o\ ) ) ) # ( \saidaB[3]$latch~combout\ & ( !\controle~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[3]~input_o\,
	datae => \ALT_INV_saidaB[3]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaB[3]$latch~combout\);

\saidaB[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaB[4]$latch~combout\ = ( \saidaB[4]$latch~combout\ & ( \controle~input_o\ & ( \entrada[4]~input_o\ ) ) ) # ( !\saidaB[4]$latch~combout\ & ( \controle~input_o\ & ( \entrada[4]~input_o\ ) ) ) # ( \saidaB[4]$latch~combout\ & ( !\controle~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[4]~input_o\,
	datae => \ALT_INV_saidaB[4]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaB[4]$latch~combout\);

\saidaB[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaB[5]$latch~combout\ = ( \saidaB[5]$latch~combout\ & ( \controle~input_o\ & ( \entrada[5]~input_o\ ) ) ) # ( !\saidaB[5]$latch~combout\ & ( \controle~input_o\ & ( \entrada[5]~input_o\ ) ) ) # ( \saidaB[5]$latch~combout\ & ( !\controle~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[5]~input_o\,
	datae => \ALT_INV_saidaB[5]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaB[5]$latch~combout\);

\saidaB[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaB[6]$latch~combout\ = ( \saidaB[6]$latch~combout\ & ( \controle~input_o\ & ( \entrada[6]~input_o\ ) ) ) # ( !\saidaB[6]$latch~combout\ & ( \controle~input_o\ & ( \entrada[6]~input_o\ ) ) ) # ( \saidaB[6]$latch~combout\ & ( !\controle~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[6]~input_o\,
	datae => \ALT_INV_saidaB[6]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaB[6]$latch~combout\);

\saidaB[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaB[7]$latch~combout\ = ( \saidaB[7]$latch~combout\ & ( \controle~input_o\ & ( \entrada[7]~input_o\ ) ) ) # ( !\saidaB[7]$latch~combout\ & ( \controle~input_o\ & ( \entrada[7]~input_o\ ) ) ) # ( \saidaB[7]$latch~combout\ & ( !\controle~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entrada[7]~input_o\,
	datae => \ALT_INV_saidaB[7]$latch~combout\,
	dataf => \ALT_INV_controle~input_o\,
	combout => \saidaB[7]$latch~combout\);

ww_saidaA(0) <= \saidaA[0]~output_o\;

ww_saidaA(1) <= \saidaA[1]~output_o\;

ww_saidaA(2) <= \saidaA[2]~output_o\;

ww_saidaA(3) <= \saidaA[3]~output_o\;

ww_saidaA(4) <= \saidaA[4]~output_o\;

ww_saidaA(5) <= \saidaA[5]~output_o\;

ww_saidaA(6) <= \saidaA[6]~output_o\;

ww_saidaA(7) <= \saidaA[7]~output_o\;

ww_saidaB(0) <= \saidaB[0]~output_o\;

ww_saidaB(1) <= \saidaB[1]~output_o\;

ww_saidaB(2) <= \saidaB[2]~output_o\;

ww_saidaB(3) <= \saidaB[3]~output_o\;

ww_saidaB(4) <= \saidaB[4]~output_o\;

ww_saidaB(5) <= \saidaB[5]~output_o\;

ww_saidaB(6) <= \saidaB[6]~output_o\;

ww_saidaB(7) <= \saidaB[7]~output_o\;
END structure;


