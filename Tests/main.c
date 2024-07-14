#include "peripherals.h"

int __attribute__((naked)) main(){
    uart_conf(9600, 0);
    int abc = 0;
    while(1){
        uart_write(abc);
        abc = uart_read() + 1;
    }
}

void __attribute__((interrupt("machine"))) interrupt(){
}