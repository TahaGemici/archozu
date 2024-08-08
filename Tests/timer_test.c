int timer_tmp=0;

int timer_main(){
    timer_conf(-1, 0, 1);
    while(1){
        gpio_write(timer_tmp);
    }
}

void timer_interrupt(){
    timer_tmp += 1;
}