volatile int i2c_tmp=1;
int i2c_main(){
    i2c_conf(123);
    while(1){
        if(i2c_tmp){
            i2c_write(gpio_read(),2);
        } else {
            unsigned short i2c_tmp2=0;
            i2c_tmp2 = i2c_read(1);
            i2c_tmp2 += i2c_read(1)<<8;
            gpio_write(i2c_tmp2);
        }
        delay_ms(500);
        i2c_tmp = !i2c_tmp;
    }
}

void i2c_interrupt(){
}