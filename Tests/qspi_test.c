unsigned int qspi_arr[8];

int qspi_main(){
    usb_conf(USB_SERIAL);
    while(1){
        unsigned short qspi_state = gpio_read();
        gpio_write(qspi_state);
        if(qspi_state){
            while(gpio_read()){}
            switch(qspi_state){
                case 1:
                    while(1){
		                unsigned short qspi_tmp = usb_read_short();
                        mt25ql256aba_quad_output_fast_read(qspi_arr, qspi_tmp, 32);
                        for(int i=0;i<8;i++){
                            usb_print_short(qspi_tmp+(i<<2));
                            usb_write(0x3A); // :
                            usb_write(0x20); // space
                            usb_print_int(qspi_arr[i]);
                            usb_print_newline();
                        }
                    }
                break;
            }
        }
    }
}

void qspi_interrupt(){
}