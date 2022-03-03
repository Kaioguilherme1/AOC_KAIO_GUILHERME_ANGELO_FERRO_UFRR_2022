view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/ula/alu_op 
wave create -driver freeze -pattern constant -value 00010111 -range 7 0 -starttime 0ps -endtime 1000ps sim:/ula/a 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 00001000 -range 7 0 -starttime 0ps -endtime 1000ps sim:/ula/b 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
