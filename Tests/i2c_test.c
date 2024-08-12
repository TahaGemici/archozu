volatile int i2c_tmp=1;
int i2c_main(){
    i2c_conf(123);
    timer_conf(-1,0,1);
    while(1){
        if(i2c_tmp){
            //i2c_write(gpio_read(),2);
            gpio_write(i2c_read(2));
            i2c_tmp = 0;
        }
    }
}

void i2c_interrupt(){
    i2c_tmp = 1;
}