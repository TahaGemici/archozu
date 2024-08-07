#include "peripherals.h"

int __attribute__((naked)) main(){
    i2c_conf(123);
    while(1){
        i2c_write(gpio_read(),1);
        gpio_write(i2c_read(1));
    }
}

void __attribute__((interrupt("machine"))) interrupt(){
}