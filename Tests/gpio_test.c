int gpio_main(){
    int gpio_abc;
    while(1){
        gpio_abc = gpio_read();
        gpio_write(gpio_abc);
    }
}

void gpio_interrupt(){
}