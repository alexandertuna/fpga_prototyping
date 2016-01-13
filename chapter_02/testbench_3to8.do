# restart -f
# do testbench_3to8.do

vsim -novopt work.testbench_3to8

view objects
view locals
view source
view wave -undock 

delete wave * 
add wave en
add wave input
add wave output

run 1000ns
