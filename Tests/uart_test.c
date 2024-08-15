int uart_main(){
    uart_conf(300000, 0);
    char uart_tmp = 0;
    short uart_leds = 0;
    while(1){
        if(uart_tmp){
            uart_write(gpio_read());
            uart_leds = (uart_leds & 0xff00) + uart_read();
        } else {
            uart_write(gpio_read()>>8);
            uart_leds = (uart_leds & 0x00ff) + ((unsigned int)uart_read() << 8);
        }
        uart_tmp ^= 1;
        gpio_write(uart_leds);
    }
}

void uart_interrupt(){
}