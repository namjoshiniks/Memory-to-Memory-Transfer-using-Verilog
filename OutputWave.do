onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /Controller_test/clk
add wave -noupdate -radix binary /Controller_test/Reset
add wave -noupdate -radix binary /Controller_test/AddrA
add wave -noupdate -radix binary /Controller_test/DataInA
add wave -noupdate -radix binary /Controller_test/DOut1
add wave -noupdate -radix binary /Controller_test/DOut2
add wave -noupdate -radix binary /Controller_test/ADDOut
add wave -noupdate -radix binary /Controller_test/SUBOut
add wave -noupdate -radix binary /Controller_test/AddrB
add wave -noupdate -radix binary /Controller_test/WEA
add wave -noupdate -radix binary /Controller_test/IncA
add wave -noupdate -radix binary /Controller_test/WEB
add wave -noupdate -radix binary /Controller_test/IncB
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1242 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 189
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
WaveRestoreZoom {0 ns} {208 ns}
