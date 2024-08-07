#include "peripherals.h"

int __attribute__((naked)) main(){
    int abc=0;
    timer_conf(-1, 0, 1);
    while(1){
        gpio_write(abc);
    }
}

void __attribute__((interrupt("machine"))) interrupt(){
    abc += 1;
}