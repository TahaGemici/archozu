#include "peripherals.h"

int abc=5, tmp=0;

int __attribute__((naked)) main(){
    i2c_conf(123);
    timer_conf(10000000,0,1);
    while(1){
        i2c_write(gpio_read(),1);
        tmp = i2c_read(1);
    }
}

void __attribute__((interrupt("machine"))) interrupt(){
    abc++;
    gpio_write(abc<<8 + tmp);
}