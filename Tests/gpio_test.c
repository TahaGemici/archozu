int gpio_main(){
    int gpio_tmp;
    while(1){
        gpio_tmp = gpio_read();
        gpio_write(gpio_tmp);
    }
}

void gpio_interrupt(){
}