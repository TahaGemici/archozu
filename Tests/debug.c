int data_mem_main(){
    while(1){
        gpio_write(*gpio_read());
    }
}