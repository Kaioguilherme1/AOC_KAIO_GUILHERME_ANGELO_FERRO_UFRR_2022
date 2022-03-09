transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/CASA/Documents/GitHub/AOC_KAIO_GUILHERME_ANGELO_FERRO_UFRR_2022/Componentes VHDL/ULA/ULA.vhd}

