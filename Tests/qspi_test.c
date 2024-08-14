int qspi_main(){
    while(1){
        if(gpio_read() & 2){ // load program
            mt25ql256aba_write_enable();
            mt25ql256aba_write_enhanced_volatile_configuration_register(0b01111111);
            /*
	        for(int i=0x0000;i<0x2000; i+=32){

	        	s25fl128s_qor(i, data_arr, 32);
	        	s25fl128s_qor(i+0x2000, instr_arr, 32);
	        	for(int j=0;j<8;j++){
	        		*(int*)(i+j*4) = data_arr[j];
	        		instr_mem_write(i/4+j, instr_arr[j]);
	        	}
	        }
	        for(int i=0x1E00;i<0x2000; i+=32){
	        	s25fl128s_qor(i+0x2000, instr_arr, 32);
	        	for(int j=0;j<8;j++){
	        		instr_mem_write(i/4+j, instr_arr[j]);
	        	}
	        }
            */
            break;
        } else if(gpio_read() & 1){ // qspi test
            while(1){

            }
        }
    }
}

void qspi_interrupt(){
}