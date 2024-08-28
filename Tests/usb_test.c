volatile unsigned int usb_tmp;
volatile unsigned int usb_state;

int usb_main(){
    usb_state=0;
    while(!usb_state){
        usb_tmp = gpio_read() & 255;
        usb_state=0;
        while(usb_tmp){
            usb_tmp>>=1;
            usb_state++;
        }
        if(usb_state) usb_conf(usb_state);
    }

    switch(usb_state){
        case USB_AUDIO:
            while(1){
                usb_tmp = usb_audio(usb_tmp);
            }
        case USB_CAMERA:
            unsigned int usb_tmp2 = 0;
            while(1){
                usb_camera(0);
                for(int i=0;i<90;i=i+1){
                    unsigned int usb_tmp3 = (45-i)*5;
                    usb_tmp3 = usb_tmp3*usb_tmp3 + usb_tmp2;
                    for(int j=0;j<160;j=j+1){
                        unsigned int usb_tmp4 = (45-j)*3;
                        usb_tmp4 = usb_tmp4*usb_tmp4 + usb_tmp3;
                        usb_camera(usb_tmp4);
                    }
                }
                usb_tmp2+=gpio_read();
            }
        case USB_DISK:
            while(1){}
        case USB_KEYBOARD: // reset to exit
            while(1){
                usb_keyboard(gpio_read());
                delay_us(1000000);
            }
        case USB_SERIAL:
            while(1){
                usb_serial_write(usb_serial_read());
            }
    }
}

void usb_interrupt(){
}