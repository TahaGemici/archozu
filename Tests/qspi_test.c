unsigned int qspi_arr[8];

int qspi_main(){
    usb_conf(USB_SERIAL);
    while(1){
        unsigned short qspi_state = gpio_read();
        gpio_write(qspi_state);
        if(qspi_state){
            while(gpio_read()){}
            switch(qspi_state){
                case 1: // load program from usb, write it to flash memory and reset
                    unsigned int qspi_tmp=0;
                    for(int i=0;i<4096;i+=8){
                        for(int j=0;j<8;j++){
                            qspi_arr[j] = usb_read_int() ^ (-1);
                        }
                        
                        mt25ql256aba_write_enable();
                        mt25ql256aba_page_program(qspi_arr, i<<2, 32);

                        //unsigned int qspi_tmp2 = 0;
                        //while(!(qspi_tmp2 & 128)){
                        //    mt25ql256aba_read_flag_status_register(&qspi_tmp2);
                        //}

                        qspi_tmp++;
                        gpio_write(qspi_tmp);
                    }
                    asm("jalr x0, x0, 0");
                case 2: //BENİ DÜZELT
                    while(1){
		                unsigned short qspi_tmp = usb_read_short();

                        for(int i=0;i<8;i++)qspi_arr[i] = 0;
                        mt25ql256aba_write_enable();
                        mt25ql256aba_page_program(qspi_arr, qspi_tmp, 32);
                        unsigned int qspi_tmp2 = 1;
                        mt25ql256aba_read_status_register(&qspi_tmp2);
                        usb_print_short(qspi_tmp2);

                        mt25ql256aba_quad_output_fast_read(qspi_arr, qspi_tmp, 32);
                        for(int i=0;i<8;i++){
                            usb_print_short(qspi_tmp+(i<<2));
                            usb_write(0x3A); // :
                            usb_write(0x20); // space
                            usb_print_int(qspi_arr[i]);
                            usb_print_newline();
                        }
                    }
            }
        }
    }
}

void qspi_interrupt(){
}