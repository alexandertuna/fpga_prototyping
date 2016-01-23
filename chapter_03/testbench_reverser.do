# restart -f
# do testbench_reverser.do

vsim -novopt work.testbench_reverser

view objects
view locals
view source
view wave -undock 

delete wave * 
add wave en
add wave input
add wave output

property wave -radix binary /testbench_reverser/en
property wave -radix binary /testbench_reverser/input
property wave -radix binary /testbench_reverser/output

run 200ns
