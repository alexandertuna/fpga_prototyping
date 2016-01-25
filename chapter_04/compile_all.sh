for vhd in $(ls -1 vhd/*.vhd); do

    echo ${vhd}
    vcom -check_synthesis ${vhd} | grep -i error
    echo
    
done

