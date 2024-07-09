#include "peripherals.h"

int abc;
int main(){
	//timer_conf(10000,0,1);
	//timer_enable();
	i2c_conf(123);
	while(1){
		gpio_write(abc);
		i2c_write(gpio_read(), 1);
		abc=i2c_read(1);
	}
}

void __attribute__((interrupt("machine"))) interrupt(){
	i2c_write(gpio_read(), 2);
	abc=i2c_read(2);
}