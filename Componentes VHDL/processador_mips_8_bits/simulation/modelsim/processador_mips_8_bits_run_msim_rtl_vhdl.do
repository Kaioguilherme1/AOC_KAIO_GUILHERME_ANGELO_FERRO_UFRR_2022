transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/kaio/Documentos/Componentes/processador_mips_8_bits/instrucoes.vhd}

