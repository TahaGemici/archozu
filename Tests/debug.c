volatile unsigned short debug_state;

int debug_main(){
    usb_conf(USB_SERIAL);
    while(1){
        debug_state = gpio_read();
        gpio_write(debug_state);
        if(debug_state){
            while(gpio_read()){}
            unsigned int debug_tmp_arr[8];
            switch(debug_state){
                case 1: // dump data memory to usb
                    for(int i=0;i<2048;i+=4){
                        usb_print_short(i<<2);
                        usb_write(0x3A); // :
                        unsigned int* debug_tmp_ptr = (unsigned int*)0x00000;
                        for(int j=i+3;j>=i;j--){
                            usb_write(0x20); // space
                            usb_print_int(debug_tmp_ptr[j]);
                        }
                        usb_print_newline();
                    }
                    break;
                case 2: // dump flash memory to usb
                    for(int i=0;i<4096;i+=8){
                        mt25ql256aba_quad_output_fast_read(debug_tmp_arr, i<<2, 32);
                        for(int j=0;j<8;j++){
                            usb_print_short((i+j)<<2);
                            usb_write(0x3A); // :
                            usb_write(0x20); // space
                            usb_print_int(debug_tmp_arr[j]);
                            usb_print_newline();
                        }
                    }
                    break;
            }
        }
    }
}

void debug_interrupt(){
}