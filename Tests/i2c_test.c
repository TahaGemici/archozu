int i2c_main(){
    i2c_conf(123);
    while(1){
        i2c_write(gpio_read(),2);
        gpio_write(i2c_read(2));
    }
}

void i2c_interrupt(){
}