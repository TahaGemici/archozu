#include "peripherals.h"

#include "uart_test.c"
#include "i2c_test.c"
#include "qspi_test.c"
#include "timer_test.c"
#include "gpio_test.c"
#include "usb_test.c"

short main_state = 0;
short main_gpio_val = 0x5555;

int __attribute__((naked)) main(){
    gpio_write(main_gpio_val);
    timer_conf(-1,0,1);
    while(1){
        main_state = gpio_read();
        if(main_state){
            timer_enabled(0);
        }
        switch(main_state){
            case 1: uart_main();
            case 2: i2c_main();
            case 3: qspi_main();
            case 4: timer_main();
            case 5: gpio_main();
            case 6: usb_main();
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
        case 3: qspi_interrupt(); break;
        case 4: timer_interrupt(); break;
        case 5: gpio_interrupt(); break;
        case 6: usb_interrupt(); break;
    }
}