onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /test_bench/verde
add wave -noupdate /test_bench/rst
add wave -noupdate /test_bench/rosu
add wave -noupdate /test_bench/pulse
add wave -noupdate /test_bench/led
add wave -noupdate /test_bench/galben
add wave -noupdate /test_bench/count_to
add wave -noupdate /test_bench/count_semafor
add wave -noupdate /test_bench/clk
add wave -noupdate /test_bench/buton
add wave -noupdate /test_bench/DUT/YELLOW
add wave -noupdate /test_bench/DUT/verde
add wave -noupdate /test_bench/DUT/slow_clk
add wave -noupdate /test_bench/DUT/semafor_state
add wave -noupdate /test_bench/DUT/rst
add wave -noupdate /test_bench/DUT/rosu
add wave -noupdate /test_bench/DUT/RED
add wave -noupdate /test_bench/DUT/pulse
add wave -noupdate /test_bench/DUT/led_in
add wave -noupdate /test_bench/DUT/led
add wave -noupdate /test_bench/DUT/GREEN
add wave -noupdate /test_bench/DUT/galben
add wave -noupdate /test_bench/DUT/count_to
add wave -noupdate /test_bench/DUT/count_semafor
add wave -noupdate /test_bench/DUT/clk
add wave -noupdate /test_bench/DUT/buton_push
add wave -noupdate /test_bench/DUT/buton
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
