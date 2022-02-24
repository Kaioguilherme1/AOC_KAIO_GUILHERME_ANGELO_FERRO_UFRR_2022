onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Entrada
add wave -noupdate -expand /controlador/op_code
add wave -noupdate -expand /controlador/func
add wave -noupdate -divider Saida
add wave -noupdate /controlador/reg_data
add wave -noupdate /controlador/reg_write
add wave -noupdate /controlador/alu_src
add wave -noupdate /controlador/alu_op
add wave -noupdate /controlador/men_write
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {593 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 164
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {972 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 00 -range 1 0 -starttime 0ps -endtime 1000ps sim:/controlador/op_code 
wave create -driver freeze -pattern constant -value 00 -range 1 0 -starttime 0ps -endtime 1000ps sim:/controlador/func 
wave create -driver freeze -pattern constant -value 01 -range 1 0 -starttime 0ps -endtime 1000ps sim:/controlador/func 
wave create -driver freeze -pattern constant -value 10 -range 1 0 -starttime 0ps -endtime 1000ps sim:/controlador/func 
wave create -driver freeze -pattern constant -value 00 -range 1 0 -starttime 0ps -endtime 1000ps sim:/controlador/func 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 01 -range 1 0 -starttime 0ps -endtime 1000ps sim:/controlador/op_code 
wave create -driver freeze -pattern constant -value 10 -range 1 0 -starttime 0ps -endtime 1000ps sim:/controlador/op_code 
wave create -driver freeze -pattern constant -value 11 -range 1 0 -starttime 0ps -endtime 1000ps sim:/controlador/op_code 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
