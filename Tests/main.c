#define SYNTHESIS
// ./configure --prefix=/opt/riscv --with-arch=rv32imac_zicsr

#include "peripherals.h"
#include "uart_test.c"
#include "i2c_test.c"
#include "qspi_test.c"
#include "timer_test.c"
#include "gpio_test.c"
#include "usb_test.c"
#include "debug.c"

#ifdef SYNTHESIS

volatile unsigned short main_state = 0;
volatile unsigned short main_gpio_val = 0x0707;

int __attribute__((naked)) main(){
    gpio_write(main_gpio_val);
    timer_conf(CLK_FREQ_HZ/20-1,0,1); // 0.05s
    usb_conf(USB_SERIAL);
    while(1){
        main_state = gpio_read();
        if(main_state){
            gpio_write(0);
            timer_enabled(0);
            while(gpio_read()){}
            switch(main_state){
                case 1: uart_main();
                case 2: i2c_main();
                case 4: qspi_main();
                case 8: timer_main();
                case 16: gpio_main();
                case 32: usb_main();
                default: debug_main(); // for debug purposes only
            }
        }
    }
}

void main_interrupt(){
    main_gpio_val = (main_gpio_val<<1) | (main_gpio_val>>15);
    gpio_write(main_gpio_val);
}

void __attribute__((interrupt("machine"))) interrupt(){
    if(delay_enable){ delay_enable = 0; }
    else {
        switch(main_state){
            case 0: main_interrupt(); break;
            case 1: uart_interrupt(); break;
            case 2: i2c_interrupt(); break;
            case 4: qspi_interrupt(); break;
            case 8: timer_interrupt(); break;
            case 16: gpio_interrupt(); break;
            case 32: usb_interrupt(); break;
            default: debug_interrupt();
        }
    }
}




#else

unsigned int state = 0, tmp;
int __attribute__((naked)) main(){
    i2c_conf(0,121);
    uart_conf(9600, 0);
    timer_conf(100,-5,0);
    while(1){gpio_write(gpio_read() ^ -1);}
}

void __attribute__((interrupt("machine"))) interrupt(){
    switch(state){
        case 0:
            tmp = i2c_read(1);
        case 1:
            i2c_write(tmp ^ -1, 1);
        case 2:
            uart_write(tmp);
        case 3:
            tmp = uart_read();
    }
    state = (state+1) & 3;
}

#endif