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

int main(){
	volatile short* arr = (short*)3;
	arr[0] = 0x0123;
	arr[1] = 0x4567;
	arr[2] = 0x89ab;
	arr[3] = 0xcdef;
	while(1){
		gpio_write(arr[0]);
		gpio_write(arr[1]);
		gpio_write(arr[2]);
		gpio_write(arr[3]);
	}
}

void __attribute__((interrupt("machine"))) interrupt(){
	gpio_write(311);
}