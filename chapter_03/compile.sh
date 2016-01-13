for vhd in decoder_else encoder_else encoder_with; do

    vcom -check_synthesis vhd/${vhd}.vhd
    echo
    
done

