void debug_print_short(unsigned short in){
    unsigned char debug_print_short_tmp;
    for(int i=0;i<4;i++){
        debug_print_short_tmp = (in>>12) + 48;
        if(debug_print_short_tmp>=58){
            debug_print_short_tmp += 7; //make 10-15 to A-F
        }
        usb_write(debug_print_short_tmp);
        in <<= 4;
    }
}

void debug_print_int(unsigned int in){
    debug_print_short(in>>16);
    debug_print_short(in);
}

int debug_main(){
    usb_conf(USB_SERIAL);
    while(1){
        unsigned short debug_state = gpio_read();
        gpio_write(debug_state);
        if(debug_state){
            while(gpio_read()){}
            switch(debug_state){
                case 1: // load program from usb, write it to flash memory and reset
                    unsigned int debug_tmp_arr[32];
                    for(int i=0;i<4096;i+=32){
                        for(int j=0;j<32;j++){
                            unsigned int debug_tmp = 0;
                            debug_tmp = usb_serial_read() - 48;
                            for(int k=1;k<8;k++){
                                debug_tmp <<= 4;
                                debug_tmp += usb_serial_read();
                            }
                            debug_tmp_arr[j] = debug_tmp;
                        }
                        mt25ql256aba_page_program(i, debug_tmp_arr, 32);
                        asm("jalr x0, x0, 0");
                    }
                case 2: // dump data memory to usb
                    for(unsigned short i=0;i<2048;i++){
                        unsigned short debug_tmp = i<<2;
                        debug_print_short(debug_tmp);
                        usb_write(0x3A); // :
                        usb_write(0x20); // space
                        unsigned int* debug_tmp_ptr = (unsigned int*)0x00000;
                        debug_tmp = debug_tmp_ptr[i];
                        debug_print_int(debug_tmp);
                        usb_write(0x0D); // \r
                        usb_write(0x0A); // \n
                    }
                    usb_write(0x1A); // EOF
            }
        }
    }
}