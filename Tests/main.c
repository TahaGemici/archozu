#include "peripherals.h"

char* abc = "sadasdasda";
int i=102;

int main(){
    for(int j=0;j<i;j++){
        gpio_write(abc[i]);
    }
}

void __attribute__((interrupt("machine"))) interrupt(){
    abc="dasdasda";
    i++;
}