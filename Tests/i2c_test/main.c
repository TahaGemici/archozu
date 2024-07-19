#include "peripherals.h"

int __attribute__((naked)) main(){
    i2c_conf(121);
    int abc=78;
    while(1){
        i2c_write(abc,1);
        abc = i2c_read(1) + 1;
    }
}

void __attribute__((interrupt("machine"))) interrupt(){
}