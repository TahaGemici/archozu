int timer_tmp=0, timer_tmp2=8;

int timer_main(){
    timer_conf(`CLK_FREQ*1000-1, 0, 1);
    while(1){
        if(timer_tmp2!=gpio_read()){
            _addr_timer[1] = gpio_read();
            timer_clear();
            timer_tmp2=gpio_read();
        }
    }
}

void timer_interrupt(){
    gpio_write(timer_tmp);
    timer_tmp++;
}