#include "peripherals.h"

void knightrider_i2c(){
	i2c_conf(123);
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
/*
void sil_beni(){
    char abc[1000]="291eajsdıoasjdoıasjdlıasjdlkasjdlkasjdlasjdlıjaslıdjaslıdjasldjasldjaslıdjaldjaslıjdaslıjdasljdasldjaslıdjasıldjaslıdjasldaldnq2vdu9mq3ip9rfqfoa";
    for(int i=0;i<1000;i+=4){
		i2c_write(abc[i], 4);
	}
}
*/
int main(){
	knightrider_i2c();
	//sil_beni();
}