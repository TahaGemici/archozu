volatile unsigned int usb_tmp=0, usb_tmp2=0;
volatile unsigned int usb_state=0, usb_old_state=0;

int usb_main(){
    while(1){
        usb_tmp = gpio_read() & 255;
        usb_state=0;
        while(usb_tmp){
            usb_tmp>>=1;
            usb_state++;
        }
        if(usb_state!=usb_old_state) usb_conf(usb_state);
        usb_old_state = usb_state;
        switch(usb_state){
            case USB_AUDIO:
                while(1){
                    usb_tmp2 = usb_audio(usb_tmp2);
                }
            case USB_CAMERA:
                while(1){
                    usb_write(0);
                    for(int i=0;i<360;i=i+1){
                        for(int j=0;j<640;j=j+1){
                            usb_write(usb_tmp2+i+j);
                        }
                    }
                    usb_tmp2++;
                }
            case USB_KEYBOARD:
                while(1){
                    usb_write(gpio_read());
                    delay_us(1000000);
                }
            case USB_SERIAL:
                while(1){
                    usb_write(usb_serial_read());
                }
        }
    }
}

void usb_interrupt(){
}