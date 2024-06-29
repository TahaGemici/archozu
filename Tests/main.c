#include "peripherals.h"

void knightrider_i2c(){
	i2c_conf(123);
    unsigned int data=1;
    for(int i=0;i<10;i++){
		while(data!=(1<<31)){
			data<<=1;
			i2c_write(data, 4);
		}
		while(data!=1){
			data>>=1;
			i2c_write(data, 4);
		}
	}
}
int main(){
	timer_conf(2, 100, 1);
	while(1){}
}

void interrupt(){
	knightrider_i2c();
}