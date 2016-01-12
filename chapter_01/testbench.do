# restart -f
# do testbench.do

vsim -novopt work.testbench

view objects
view locals
view source
view wave -undock 

delete wave * 
add wave test_in_0
add wave test_in_1
add wave test_out

run 1000ns
