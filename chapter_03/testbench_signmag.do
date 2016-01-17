# restart -f
# do testbench_signmag.do

vsim -novopt work.testbench_signmag

view objects
view locals
view source
view wave -undock 

delete wave * 
add wave input1
add wave input2
add wave output

run 600ns
