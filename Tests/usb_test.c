volatile unsigned int usb_tmp=0, usb_tmp2=0;
volatile unsigned int usb_state=0, usb_old_state=0;

int usb_main(){
    timer_conf(-1,0,1);
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
                usb_tmp2 = usb_audio(usb_tmp2);
                break;
            case USB_CAMERA:
                usb_write(0);
                for(int i=0;i<180;i=i+1){
                    for(int j=0;j<320;j=j+1){
                        usb_write(usb_tmp2+i+j);
                    }
                }
                usb_tmp2++;
                break;
            case USB_KEYBOARD:
                usb_tmp2 = gpio_read() >> 8;
                break;
            case USB_SERIAL:
                usb_tmp2 = usb_serial_read();
                usb_write(usb_tmp2);
                break;
        }
    }
}

void usb_interrupt(){
    if(usb_state==USB_KEYBOARD) usb_write(usb_tmp2);
}