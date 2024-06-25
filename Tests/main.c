#include "peripherals.h"

void knightrider_i2c(){
    int data=1;
    for(int i=0;i<100;i++){
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

void calculator_gpio(){
    for(int i=0;i<1000;i++){
        
    }
}

int main(){
	knightrider_i2c();
    calculator_gpio();
}