#include "peripherals.h"

int main(){
	int data=1;
	while(1){
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
