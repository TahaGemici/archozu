int uart_main(){
    uart_conf(19200, 0);
    while(1){
        gpio_write(uart_read());
        uart_write(gpio_read());
    }
}

void uart_interrupt(){
}