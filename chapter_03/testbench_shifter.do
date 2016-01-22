# restart -f
# do testbench_shifter.do

vsim -novopt work.testbench_shifter

view objects
view locals
view source
view wave -undock 

delete wave * 
add wave amount
add wave input
add wave output

property wave -radix binary /testbench_shifter/amount
property wave -radix binary /testbench_shifter/input
property wave -radix binary /testbench_shifter/output

run 900ns
