for vhd in $(ls -1 vhd/*.vhd); do

    vcom -check_synthesis ${vhd}
    
done

