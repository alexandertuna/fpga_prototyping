# restart -f
# do testbench_shifter_leftright.do

vsim -novopt work.testbench_shifter_leftright

view objects
view locals
view source
view wave -undock 

delete wave * 
add wave shiftleft
add wave amount
add wave input
add wave output

property wave -radix binary /testbench_shifter_leftright/shiftleft
property wave -radix binary /testbench_shifter_leftright/amount
property wave -radix binary /testbench_shifter_leftright/input
property wave -radix binary /testbench_shifter_leftright/output

run 1700ns
