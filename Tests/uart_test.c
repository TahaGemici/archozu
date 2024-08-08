int uart_main(){
    uart_conf(9600, 0);
    int tmp;
    while(1){
        tmp = gpio_read();
        if(tmp % 2) uart_write(tmp>>8);
        else gpio_write(uart_read());
    }
}

void uart_interrupt(){
}