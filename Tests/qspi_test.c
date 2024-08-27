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
                    unsigned int qspi_tmp = 0, qspi_tmp2 = 0;
                    mt25ql256aba_write_enable();
                    mt25ql256aba_32KiB_sector_erase(&qspi_tmp);
                    qspi_tmp2 = 0;
                    while(!(qspi_tmp2 & 128)){ mt25ql256aba_read_flag_status_register(&qspi_tmp2); }
                    for(int i=0;i<4096;i+=8){
                        for(int j=0;j<8;j++){
                            qspi_arr[j] = usb_read_int();
                        }

                        usb_serial_read(); // ignore '\n'
                        
                        mt25ql256aba_write_enable();
                        mt25ql256aba_page_program(qspi_arr, i<<2, 32);
                        qspi_tmp2 = 0;
                        while(!(qspi_tmp2 & 128)){ mt25ql256aba_read_flag_status_register(&qspi_tmp2); }

                        qspi_tmp++;
                        gpio_write(qspi_tmp);
                    }
                    asm("jalr x0, x0, 0");
            }
        }
    }
}

void qspi_interrupt(){
}