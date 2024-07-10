#include "peripherals.h"

int main(){
	uart_conf(2000, 2);
	char abc = 123;
	while(1){
		uart_write(abc);
	}
}

void __attribute__((interrupt("machine"))) interrupt(){
}