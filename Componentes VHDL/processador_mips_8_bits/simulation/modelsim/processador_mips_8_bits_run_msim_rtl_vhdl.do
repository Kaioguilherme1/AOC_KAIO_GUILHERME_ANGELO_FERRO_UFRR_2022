transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/kaio/Documentos/Componentes/processador_mips_8_bits/processador_mips_8_bits.vhd}
vcom -93 -work work {/home/kaio/Documentos/Componentes/processador_mips_8_bits/banco_regs.vhdl}
vcom -93 -work work {/home/kaio/Documentos/Componentes/processador_mips_8_bits/controlador.vhd}
vcom -93 -work work {/home/kaio/Documentos/Componentes/processador_mips_8_bits/instrucoes.vhd}
vcom -93 -work work {/home/kaio/Documentos/Componentes/processador_mips_8_bits/memory_data.vhd}
vcom -93 -work work {/home/kaio/Documentos/Componentes/processador_mips_8_bits/mult1x4.vhd}
vcom -93 -work work {/home/kaio/Documentos/Componentes/processador_mips_8_bits/ula.vhd}
vcom -93 -work work {/home/kaio/Documentos/Componentes/processador_mips_8_bits/PC_count.vhd}
vcom -93 -work work {/home/kaio/Documentos/Componentes/processador_mips_8_bits/controlador_de_salto.vhd}
vcom -93 -work work {/home/kaio/Documentos/Componentes/processador_mips_8_bits/seletor1x2.vhd}

