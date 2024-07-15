#include "peripherals.h"

int __attribute__((naked)) main(){
    uart_conf(9600, 0);
    int abc = 123;
    while(1){
        uart_write(abc);
        abc = uart_read() + 1;
        gpio_write(abc);
    }
}

void __attribute__((interrupt("machine"))) interrupt(){
}