for vhd in one_bit_comparator.vhd two_bit_comparator.vhd two_bit_comparator_bootstrap.vhd testbench_two_bit_comparator.vhd; do

    vcom -check_synthesis vhd/${vhd}
    echo
    
done

