int gpio_main(){
    int abc;
    while(1){
        abc = gpio_read();
        gpio_write(abc);
    }
}

void gpio_interrupt(){
}