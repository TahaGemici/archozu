volatile int i2c_tmp=1;
int i2c_main(){
    i2c_conf(0,123);
    while(1){
        if(i2c_tmp){
            i2c_write(gpio_read(),2);
        } else {
            gpio_write(i2c_read(2));
        }
        delay_us(500000);
        i2c_tmp = !i2c_tmp;
    }
}

void i2c_interrupt(){
}