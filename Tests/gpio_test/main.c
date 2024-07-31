#include "peripherals.h"

int __attribute__((naked)) main(){
    int abc;
    while(1){
        abc = gpio_read();
        gpio_write(abc);
    }
}

void __attribute__((interrupt("machine"))) interrupt(){
}