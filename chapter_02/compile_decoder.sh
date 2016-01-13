for vhd in decoder_1to2 decoder_2to4 decoder_3to8 testbench_3to8; do

    vcom -check_synthesis vhd/${vhd}.vhd
    echo
    
done

