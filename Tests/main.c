#include "peripherals.h"


/*
int __attribute__((naked)) main(){
	asm("li x2, 0x1F00");


    mt25ql256aba_write_enable();
    mt25ql256aba_write_enhanced_volatile_configuration_register(0b01111111);
    
    int instr_arr[8], data_arr[8];
	for(int i=0x0000;i<0x1E00; i+=32){
		mt25ql256aba_read(i, data_arr, 32);
		mt25ql256aba_read(i+0x2000, instr_arr, 32);
		for(int j=0;j<8;j++){
			*(int*)(i+j*4) = data_arr[j];
			instr_mem_write(i/4+j, instr_arr[j]);
		}
	    for(int i=0x1E00;i<0x2000; i+=32){
	    	mt25ql256aba_read(i+0x2000, instr_arr, 32);
	    	for(int j=0;j<8;j++){
	    		instr_mem_write(i/4+j, instr_arr[j]);
	    	}
	    }
	    asm("li x2, 0x2000\n\t"
            "jalr x0, x2, 0");
	}
}
*/



#include "uart_test.c"
#include "i2c_test.c"
#include "qspi_test.c"
#include "timer_test.c"
#include "gpio_test.c"
#include "usb_test.c"
#include "debug.c"

// ./configure --prefix=/opt/riscv --with-arch=rv32imac_zicsr

volatile unsigned short main_state = 0;
volatile unsigned int main_gpio_val = 0x5555;

int __attribute__((naked)) main(){
    gpio_write(main_gpio_val);
    timer_conf(-1,0,1);
    while(1){
        main_state = gpio_read();
        if(main_state){
            gpio_write(0);
            timer_enabled(0);
        }
        switch(main_state){
            case 1: uart_main();
            case 2: i2c_main();
            case 4: qspi_main();
            case 8: timer_main();
            case 16: gpio_main();
            case 32: usb_main();
            case 64: data_mem_main(); // for debug purposes only
        }
    }
}

void __attribute__((interrupt("machine"))) interrupt(){
    switch(main_state){
        case 0:
            main_gpio_val ^= -1;
            gpio_write(main_gpio_val);
            break;
        case 1: uart_interrupt(); break;
        case 2: i2c_interrupt(); break;
        case 4: qspi_interrupt(); break;
        case 8: timer_interrupt(); break;
        case 16: gpio_interrupt(); break;
        case 32: usb_interrupt(); break;
    }
}

