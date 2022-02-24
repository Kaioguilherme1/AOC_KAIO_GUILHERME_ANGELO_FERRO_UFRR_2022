onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Comando
add wave -noupdate /banco_regs/reg_write_en
add wave -noupdate -divider Endereços
add wave -noupdate /banco_regs/reg_write_addr
add wave -noupdate /banco_regs/reg_read_addr_1
add wave -noupdate /banco_regs/reg_read_addr_2
add wave -noupdate -divider {Dado A ser Escrito}
add wave -noupdate /banco_regs/reg_write_data
add wave -noupdate -divider Saidas
add wave -noupdate /banco_regs/reg_read_data_1
add wave -noupdate /banco_regs/reg_read_data_2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {193 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 194
configure wave -valuecolwidth 54
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1003 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/banco_regs/reg_write_en 
wave create -driver freeze -pattern constant -value 00 -range 1 0 -starttime 0ps -endtime 1000ps sim:/banco_regs/reg_write_addr 
wave create -driver freeze -pattern constant -value 00 -range 1 0 -starttime 0ps -endtime 1000ps sim:/banco_regs/reg_read_addr_1 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 01 -range 1 0 -starttime 0ps -endtime 1000ps sim:/banco_regs/reg_read_addr_2 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 00001010 -range 7 0 -starttime 0ps -endtime 1000ps sim:/banco_regs/reg_write_data 
wave create -driver freeze -pattern constant -value 01 -range 1 0 -starttime 0ps -endtime 1000ps sim:/banco_regs/reg_write_addr 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 00001111 -range 7 0 -starttime 0ps -endtime 1000ps sim:/banco_regs/reg_write_data 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
