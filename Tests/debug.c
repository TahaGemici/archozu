unsigned int debug_state;
int debug_main(){
    while(1){
        debug_state = gpio_read();
        gpio_write(debug_state);
        if(debug_state){
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
                        while(gpio_read()){}
                        asm("jalr x0, x0, 0");
                    }
                case 2: // dump data memory to usb
                    for(int i=0;i<2048;i++){
                        unsigned int debug_tmp = i<<2;
                        usb_write((debug_tmp & 15)+48);
                        for(int j=1;j<4;j++){
                            debug_tmp >>= 4;
                            usb_write((debug_tmp & 15)+48);
                        }
                        usb_write(0x3A); // :
                        usb_write(0x20); // space
                        unsigned int* debug_tmp_ptr = (unsigned int*)0x00000;
                        debug_tmp = debug_tmp_ptr[i];
                        usb_write((debug_tmp & 15)+48);
                        for(int j=1;j<8;j++){
                            debug_tmp >>= 4;
                            usb_write((debug_tmp & 15)+48);
                        }
                        usb_write(0x0A); // \n
                    }
            }
        }
    }
}