#include "peripherals.h"

unsigned int tmp=0, tmp2=0;
unsigned int state=0, old_state=0;

int __attribute__((naked)) main(){
    timer_conf(-1,0,1);
    while(1){
        tmp = gpio_read() & 255;
        state=0;
        while(tmp){
            tmp>>1;
            state++;
        }
        if(state!=old_state) usb_conf(state);
        old_state = state;
        gpio_write(usb_connected());
        switch(state){
            case USB_AUDIO:
                tmp = usb_rw(tmp);
                break;
            case USB_CAMERA:
                usb_rw(0);
                for(int i=0;i<180;i=i+1){
                    for(int j=0;j<320;j=j+1){
                        usb_rw(tmp2+i+j);
                    }
                }
                tmp2++;
                break;
            case USB_KEYBOARD:
                tmp = gpio_read() >> 8;
                break;
            case USB_SERIAL:
                tmp = usb_rw(tmp);
                break;
        }
    }
}

void __attribute__((interrupt("machine"))) interrupt(){
    if(state==USB_KEYBOARD) usb_rw(tmp);
}