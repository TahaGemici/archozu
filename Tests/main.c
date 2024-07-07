#include "peripherals.h"

void knightrider_i2c(){
    unsigned int data=1;
    for(int i=0;i<2;i++){
		while(data!=(1<<7)){
			data<<=1;
			i2c_write(data, 1);
		}
		while(data!=1){
			data>>=1;
			i2c_write(data, 1);
		}
	}
}

int abc=0x00001234;

int main(){
	timer_conf(-1,0,1);
	timer_enable();
	while(1){
		gpio_write(abc);
	}
}

void __attribute__((interrupt("machine"))) interrupt(){
	abc+=gpio_read();
}