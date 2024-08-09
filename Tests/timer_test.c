int timer_tmp=0, timer_tmp2;

int timer_main(){
    timer_conf(-1, 0, 1);
    while(1){
        timer_tmp2 = gpio_read();
        if(timer_tmp2 & 1) timer_tmp = timer_counter();
        else if(timer_tmp2 & 2) timer_tmp = timer_event();
        else if(timer_tmp2 & 4) timer_clear();
        timer_enabled((timer_tmp2 & 8) >> 3);
    }
}

void timer_interrupt(){
    gpio_write(timer_tmp);
}