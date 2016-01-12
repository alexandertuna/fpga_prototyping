# restart -f
# do testbench_2bit.do

vsim -novopt work.testbench_2bit

view objects
view locals
view source
view wave -undock 

delete wave * 
add wave input_0
add wave input_1
add wave output

run 1000ns
