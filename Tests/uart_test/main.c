#include "peripherals.h"

char* text = "abcdefg123456789";
int __attribute__((naked)) main(){
    uart_conf(9600, 0);
    int abc;
    while(1){
        for(abc=0;abc<15;abc++)
            gpio_write(text[abc]);
    }
}

void __attribute__((interrupt("machine"))) interrupt(){
}