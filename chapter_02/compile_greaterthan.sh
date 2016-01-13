for vhd in one_bit_comparator.vhd one_bit_greaterthan.vhd two_bit_comparator.vhd two_bit_greaterthan.vhd four_bit_greaterthan.vhd testbench_two_bit_greaterthan.vhd testbench_four_bit_greaterthan.vhd; do

    vcom -check_synthesis vhd/${vhd}
    echo
    
done

