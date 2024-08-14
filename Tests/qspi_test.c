unsigned int qspi_arr[8];

int qspi_main(){
    usb_conf(USB_SERIAL);
    while(1){
        if(gpio_read() & 2){ // load program
            mt25ql256aba_write_enable();
            mt25ql256aba_write_enhanced_volatile_configuration_register(0b01111111);
            
	        for(int i=0x0000;i<0x4000; i+=32){
	        	for(int j=0;j<8;j++){
                    for(int k=0;k<4;k++){
                        qspi_arr[j] <<= 8;
                        qspi_arr[j] += uart_read();
                    }
	        	}
	        	mt25ql256aba_page_program(i, qspi_arr, 32);
	        }
            break;
        } else if(gpio_read() & 1){ // qspi test
            while(1){

            }
        }
    }
}

void qspi_interrupt(){
}