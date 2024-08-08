int i2c_tmp=5, i2c_tmp2=0;

int i2c_main(){
    i2c_conf(123);
    timer_conf(10000000,0,1);
    while(1){
        i2c_write(gpio_read(),1);
        i2c_tmp2 = i2c_read(1);
    }
}

void i2c_interrupt(){
    i2c_tmp++;
    gpio_write(i2c_tmp<<8 + i2c_tmp2);
}