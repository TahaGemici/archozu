#define CLK_FREQ 60
#define CEIL_CLK(x) (CLK_FREQ/2/x)+((CLK_FREQ/2)%x!=0)

volatile unsigned int* const _addr_instr_mem = (unsigned int*)0x04000;
volatile unsigned int* const _addr_uart      = (unsigned int*)0x06000;
volatile unsigned int* const _addr_i2c       = (unsigned int*)0x08000;
volatile unsigned int* const _addr_qspi      = (unsigned int*)0x0A000;
volatile unsigned int* const _addr_timer     = (unsigned int*)0x0C000;
volatile unsigned int* const _addr_usb       = (unsigned int*)0x0E000;
volatile unsigned int* const _addr_gpio      = (unsigned int*)0x10000;

  ////////////
 //  UART  //
////////////

void uart_conf(unsigned int baud_rate, unsigned char stop_bit){
    _addr_uart[0] = (CLK_FREQ*1000000) / baud_rate - 1;
    _addr_uart[1] = stop_bit;
}

unsigned char uart_read(){
    while(_addr_uart[4]!=2){}
    unsigned char data = _addr_uart[2];
    _addr_uart[4] = 0;
    return data;
}

void uart_write(unsigned char data){
    _addr_uart[3] = data;
    _addr_uart[4] = 1;
    while(!(_addr_uart[4] & 4)){}
    _addr_uart[4] &= 2;
}

  ///////////
 //  I2C  //
///////////

void i2c_conf(unsigned char addr){
    _addr_i2c[1] = addr;
}

void i2c_write(unsigned int data, unsigned char byte_size){
    _addr_i2c[0] = byte_size;
    _addr_i2c[3] = data;
    _addr_i2c[4] = 1;
    while(!(_addr_i2c[4] & 2)){}
    _addr_i2c[4] &= 12;
}

unsigned int i2c_read(unsigned char byte_size){
    _addr_i2c[0] = byte_size;
    _addr_i2c[4] = 4;
    while(!(_addr_i2c[4] & 8)){}
    _addr_i2c[4] &= 3;
    return _addr_i2c[2];
}

  ////////////
 //  QSPI  //
////////////

void qspi_wait(){
    while(_addr_qspi[10]!=1){}
    while(_addr_qspi[10]!=1){}
}

void qspi_custom_x0(unsigned int instr, unsigned int freq){
    unsigned int cmd = instr;
    cmd += (CEIL_CLK(freq)-1) << 25;
    cmd += 1 << 31;
    _addr_qspi[0] = cmd;
    qspi_wait();
}

void qspi_custom_write(unsigned int* array, unsigned int addr, unsigned int instr, \
    unsigned int mode, unsigned int dummy, unsigned int byte_size, unsigned int freq){
    unsigned int cmd = instr;
    cmd += mode << 8;
    cmd += 1 << 10;
    cmd += (dummy/2) << 11;
    cmd += (byte_size-1) << 16;
    cmd += (CEIL_CLK(freq)-1) << 25;
    cmd += 1 << 31;
    _addr_qspi[1] = addr;
    byte_size = (byte_size+3) >> 2;
    for(int i=0; i<byte_size; i++){
        _addr_qspi[2+i] = array[i];
    }
    _addr_qspi[0] = cmd;
    qspi_wait();
}

void qspi_custom_read(unsigned int* array, unsigned int addr, unsigned int instr, \
    unsigned int mode, unsigned int dummy, unsigned int byte_size, unsigned int freq){
    unsigned int cmd = instr;
    if(mode==4) cmd += 3 << 8;
    else cmd += mode << 8;
    cmd += (dummy/2) << 11;
    cmd += (byte_size-1) << 16;
    cmd += (CEIL_CLK(freq)-1) << 25;
    cmd += 1 << 31;
    _addr_qspi[1] = addr;
    _addr_qspi[0] = cmd;
    qspi_wait();
    byte_size = (byte_size+3) >> 2;
    for(int i=0; i<byte_size; i++){
        array[i] = _addr_qspi[2+i];
    }
}

void s25fl128s_wren(){ qspi_custom_x0(0x06, 133); }
void s25fl128s_wrdi(){ qspi_custom_x0(0x04, 133); }
void s25fl128s_clsr(){ qspi_custom_x0(0x30, 133); }
void s25fl128s_reset(){ qspi_custom_x0(0xF0, 133); }

void s25fl128s_rdid(unsigned int* array){ qspi_custom_read(array, 0, 0x9F, 1, 0, 32, 133); }
void s25fl128s_rdsr1(unsigned int* array){ qspi_custom_read(array, 0, 0x05, 1, 0, 1, 133); }
void s25fl128s_rdsr2(unsigned int* array){ qspi_custom_read(array, 0, 0x07, 1, 0, 1, 133); }
void s25fl128s_rdcr(unsigned int* array){ qspi_custom_read(array, 0, 0x35, 1, 0, 1, 133); }
void s25fl128s_res(unsigned int* array){ qspi_custom_read(array, 0, 0xAB, 1, 24, 1, 50); }
void s25fl128s_read_id(unsigned int* array, unsigned int addr){ qspi_custom_read(array, addr, 0x90, 1, 24, 2, 133); }
void s25fl128s_read(unsigned int* array, unsigned int addr, unsigned int byte_size){ qspi_custom_read(array, addr, 0x03, 1, 24, byte_size, 50); }
void s25fl128s_wrr(unsigned int* array){ qspi_custom_write(array, 0, 0x01, 1, 24, 2, 133); }
void s25fl128s_se(unsigned int* array){ qspi_custom_write(array, 0, 0xD8, 1, 0, 3, 133); }
void s25fl128s_pp(unsigned int* array, unsigned int addr, unsigned int byte_size){ qspi_custom_write(array, addr, 0x02, 1, 24, byte_size, 133); }

void s25fl128s_dor(unsigned int* array, unsigned int addr, unsigned int byte_size){ qspi_custom_read(array, addr, 0x3B, 2, 32, byte_size, 104); }

void s25fl128s_qor(unsigned int* array, unsigned int addr, unsigned int byte_size){ qspi_custom_read(array, addr, 0x6B, 4, 32, byte_size, 104); }
void s25fl128s_qpp(unsigned int* array, unsigned int addr, unsigned int byte_size){ qspi_custom_write(array, addr, 0x32, 4, 24, byte_size, 80); }

void mt25ql256aba_write_disable(){ qspi_custom_x0(0x04, 133); }
void mt25ql256aba_write_enable(){ qspi_custom_x0(0x06, 133); }
void mt25ql256aba_reset_enable(){ qspi_custom_x0(0x66, 133); }
void mt25ql256aba_reset_memory(){ qspi_custom_x0(0x99, 133); }

void mt25ql256aba_read(unsigned int* array, unsigned int addr, unsigned int byte_size){ qspi_custom_read(array, addr, 0x03, 1, 24, byte_size, 133); }
void mt25ql256aba_page_program(unsigned int* array, unsigned int addr, unsigned int byte_size){ qspi_custom_write(array, addr, 0x02, 1, 24, byte_size, 133); }
void mt25ql256aba_4KiB_sector_erase(unsigned int* array){ qspi_custom_write(array, 0, 0x20, 1, 0, 3, 133); }
void mt25ql256aba_32KiB_sector_erase(unsigned int* array){ qspi_custom_write(array, 0, 0x52, 1, 0, 3, 133); }
void mt25ql256aba_sector_erase(unsigned int* array){ qspi_custom_write(array, 0, 0xD8, 1, 0, 3, 133); }
void mt25ql256aba_read_id(unsigned int* array, unsigned int byte_size){ qspi_custom_read(array, 0, 0x9F, 1, 0, byte_size, 133); }
void mt25ql256aba_read_status_register(unsigned int* array){ qspi_custom_read(array, 0, 0x05, 1, 0, 1, 133); }
void mt25ql256aba_read_flag_status_register(unsigned int* array){ qspi_custom_read(array, 0, 0x70, 1, 0, 1, 133); }
void mt25ql256aba_read_nonvolatile_configuration_register(unsigned int* array){ qspi_custom_read(array, 0, 0xB5, 1, 0, 2, 133); }
void mt25ql256aba_read_volatile_configuration_register(unsigned int* array){ qspi_custom_read(array, 0, 0x85, 1, 0, 1, 133); }
void mt25ql256aba_write_status_register(unsigned int* array){ qspi_custom_write(array, 0, 0x01, 1, 0, 1, 133); }
void mt25ql256aba_write_nonvolatile_configuration_register(unsigned int* array){ qspi_custom_write(array, 0, 0xB1, 1, 0, 2, 133); }
void mt25ql256aba_write_volatile_configuration_register(unsigned int* array){ qspi_custom_write(array, 0, 0x81, 1, 0, 1, 133); }
void mt25ql256aba_write_enhanced_volatile_configuration_register(unsigned int* array){ qspi_custom_write(array, 0, 0x61, 1, 0, 1, 133); }

void mt25ql256aba_dual_output_fast_read(unsigned int* array, unsigned int addr, unsigned int byte_size){ qspi_custom_read(array, addr, 0x3B, 2, 32, byte_size, 133); }

void mt25ql256aba_quad_output_fast_read(unsigned int* array, unsigned int addr, unsigned int byte_size){ qspi_custom_read(array, addr, 0x6B, 4, 32, byte_size, 133); }

  /////////////
 //  TIMER  //
/////////////

unsigned int timer_counter(){
    return _addr_timer[5];
}

unsigned int timer_event(){
    return _addr_timer[6];
}

void timer_clear(){
    _addr_timer[2] = 1;
    _addr_timer[7] = 1;
}

void timer_enabled(unsigned int data){
    _addr_timer[3] = data;
}

void timer_conf(unsigned int prescaler, unsigned int auto_reload, unsigned int mode){
    _addr_timer[0] = prescaler;
    _addr_timer[1] = auto_reload;
    _addr_timer[4] = mode;
    asm("li a2, 128\n\t"
        "li a1, 0x2200\n\t"
        "csrrw zero, mtvec, a1\n\t" //locate interrupt()
        "csrrsi zero, mstatus, 8\n\t" //enable machine interrupt
        "csrrs zero, mie, a2\n\t"); //enable timer interrupt
    timer_clear();
    timer_enabled(1);
}

volatile unsigned int delay_enable = 0;
void delay_us(unsigned int us){
    unsigned int delay_us_arr[7];
    for(int i=0;i<7;i++) delay_us_arr[i] = _addr_timer[i];

    timer_conf(CLK_FREQ-1, us-1, 1);
    delay_enable = 1;
    while(delay_enable){}
    for(int i=0;i<7;i++) _addr_timer[i] = delay_us_arr[i];
}

  ///////////
 //  USB  //
///////////

#define USB_RESET 0
#define USB_AUDIO 1
#define USB_CAMERA 2
#define USB_DISK 3
#define USB_KEYBOARD 4
#define USB_SERIAL 5

void usb_conf(unsigned char usb_mode){
    if(_addr_usb[0] == usb_mode) return;
    if(usb_mode > USB_SERIAL) _addr_usb[0] = USB_RESET;
    else _addr_usb[0] = usb_mode;
}

unsigned int usb_audio(unsigned int in){ // audio
    _addr_usb[2] = in;
    _addr_usb[3] = 1;
    while(_addr_usb[3]){}
    return _addr_usb[1];
}

void usb_camera(unsigned char in){
    _addr_usb[2] = in;
    _addr_usb[3] = 1;
    while(_addr_usb[3]){}
}

void usb_keyboard(unsigned short in){
    _addr_usb[2] = in;
    _addr_usb[3] = 1;
    while(_addr_usb[3]){}
}

unsigned char usb_serial_read(){
    while(!_addr_usb[3]){}
    _addr_usb[3] = 0;
    return _addr_usb[1];
}

void usb_serial_write(unsigned char in){
    _addr_usb[2] = in;
    _addr_usb[3] = 1;
    while(_addr_usb[3]){}
}

void usb_print_short(unsigned short in){ // base16
    unsigned char usb_print_short_tmp;
    for(int i=0;i<4;i++){
        usb_print_short_tmp = (in>>12) + 48;
        if(usb_print_short_tmp>=58){
            usb_print_short_tmp += 7; // make 10-15 to A-F
        }
        usb_serial_write(usb_print_short_tmp);
        in <<= 4;
    }
}

void usb_print_int(unsigned int in){ // base16
    usb_print_short(in>>16);
    usb_print_short(in);
}

void usb_print_newline(){
    usb_serial_write(0x0D); // \r
    usb_serial_write(0x0A); // \n
}

unsigned short usb_read_short(){ // base16
    unsigned short usb_read_short_tmp = 0;
    unsigned char usb_read_short_tmp2 = 0;
    for(int k=0;k<4;k++){
        usb_read_short_tmp <<= 4;
        usb_read_short_tmp2 = usb_serial_read() - 48;
        if(usb_read_short_tmp2>=10) usb_read_short_tmp2 -= 7; // A-F to 10-15
        if(usb_read_short_tmp2>=16) usb_read_short_tmp2 -= 32; // a-f to A-F
        usb_read_short_tmp += usb_read_short_tmp2;
    }
    return usb_read_short_tmp;
}

unsigned int usb_read_int(){ // base16
    unsigned int usb_read_int_tmp = 0;
    usb_read_int_tmp = usb_read_short() << 16;
    usb_read_int_tmp += usb_read_short();
    return usb_read_int_tmp;
}


  ////////////
 //  GPIO  //
////////////

void gpio_write(unsigned short in){
    _addr_gpio[1] = in;
}

unsigned short gpio_read(){
    return _addr_gpio[0];
}

  /////////////////
 //  INSTR_MEM  //
/////////////////

void instr_mem_write(unsigned int addr, unsigned int data){
    _addr_instr_mem[addr] = data;
}