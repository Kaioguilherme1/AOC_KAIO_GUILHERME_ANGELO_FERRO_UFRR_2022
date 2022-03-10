transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/CASA/Documents/GitHub/AOC_KAIO_GUILHERME_ANGELO_FERRO_UFRR_2022/Componentes VHDL/processador_mips_8_bits/banco_regs.vhdl}
vcom -93 -work work {C:/Users/CASA/Documents/GitHub/AOC_KAIO_GUILHERME_ANGELO_FERRO_UFRR_2022/Componentes VHDL/processador_mips_8_bits/controlador.vhd}
vcom -93 -work work {C:/Users/CASA/Documents/GitHub/AOC_KAIO_GUILHERME_ANGELO_FERRO_UFRR_2022/Componentes VHDL/processador_mips_8_bits/instrucoes.vhd}
vcom -93 -work work {C:/Users/CASA/Documents/GitHub/AOC_KAIO_GUILHERME_ANGELO_FERRO_UFRR_2022/Componentes VHDL/processador_mips_8_bits/memory_data.vhd}
vcom -93 -work work {C:/Users/CASA/Documents/GitHub/AOC_KAIO_GUILHERME_ANGELO_FERRO_UFRR_2022/Componentes VHDL/processador_mips_8_bits/mult1x2.vhd}
vcom -93 -work work {C:/Users/CASA/Documents/GitHub/AOC_KAIO_GUILHERME_ANGELO_FERRO_UFRR_2022/Componentes VHDL/processador_mips_8_bits/mult1x4.vhd}
vcom -93 -work work {C:/Users/CASA/Documents/GitHub/AOC_KAIO_GUILHERME_ANGELO_FERRO_UFRR_2022/Componentes VHDL/processador_mips_8_bits/ula.vhd}
vcom -93 -work work {C:/Users/CASA/Documents/GitHub/AOC_KAIO_GUILHERME_ANGELO_FERRO_UFRR_2022/Componentes VHDL/processador_mips_8_bits/PC.vhd}
vcom -93 -work work {C:/Users/CASA/Documents/GitHub/AOC_KAIO_GUILHERME_ANGELO_FERRO_UFRR_2022/Componentes VHDL/processador_mips_8_bits/processador_mips_8_bits.vhd}

