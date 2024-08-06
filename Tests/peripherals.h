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
    while(_addr_uart[4]!=5){}
    _addr_uart[4] = 0;
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
    while(_addr_i2c[4]!=3){}
    _addr_i2c[4] = 0;
}

unsigned int i2c_read(unsigned char byte_size){
    _addr_i2c[0] = byte_size;
    _addr_i2c[4] = 4;
    while(_addr_i2c[4]!=12){}
    _addr_i2c[4] = 0;
    return _addr_i2c[2];
}

  ////////////
 //  QSPI  //
////////////

unsigned int const qspi_clk_133 = ((CEIL_CLK(133) - 1) << 25) + (1<<31);
unsigned int const qspi_clk_104 = ((CEIL_CLK(104) - 1) << 25) + (1<<31);
unsigned int const qspi_clk_80  = ((CEIL_CLK( 80) - 1) << 25) + (1<<31);
unsigned int const qspi_clk_50  = ((CEIL_CLK( 50) - 1) << 25) + (1<<31);
unsigned int const qspi_mode_x1 = 1 << 8;
unsigned int const qspi_mode_x2 = 2 << 8;
unsigned int const qspi_mode_x4 = 3 << 8;
unsigned int const qspi_write   = 1 << 10;
unsigned int const qspi_dummy_3 = 3 << 11;
unsigned int const qspi_dummy_4 = 4 << 11;

void qspi_wait(){
    while(_addr_qspi[10]!=1){}
    while(_addr_qspi[10]!=1){}
}

void qspi_read_array(unsigned int* array, unsigned int byte_size){
    byte_size = (byte_size+3) >> 2;
    for(int i=0; i<byte_size; i++){
        array[i] = _addr_qspi[2+i];
    }
}

void qspi_write_array(unsigned int* array, unsigned int byte_size){
    byte_size = (byte_size+3) >> 2;
    for(int i=0; i<byte_size; i++){
        _addr_qspi[2+i] = array[i];
    }
}

void s25fl128s_wren(){
    _addr_qspi[0] = qspi_clk_133 + 0x06;
    qspi_wait();
}

void s25fl128s_wrdi(){
    _addr_qspi[0] = qspi_clk_133 + 0x04;
    qspi_wait();
}

void s25fl128s_clsr(){
    _addr_qspi[0] = qspi_clk_133 + 0x30;
    qspi_wait();
}

void s25fl128s_reset(){
    _addr_qspi[0] = qspi_clk_133 + 0xF0;
    qspi_wait();
}

void s25fl128s_rdid(unsigned int* array, unsigned int byte_size){
    unsigned int cmd = 0x9F;
    cmd += qspi_mode_x1;
    cmd += (byte_size-1) << 16;
    cmd += qspi_clk_133;
    _addr_qspi[0] = cmd;
    qspi_wait();
    qspi_read_array(array, byte_size);
}

unsigned char s25fl128s_rdsr1(){
    unsigned int cmd = 0x05;
    cmd += qspi_mode_x1;
    cmd += qspi_clk_133;
    _addr_qspi[0] = cmd;
    qspi_wait();
    return _addr_qspi[2];
}

unsigned char s25fl128s_rdsr2(){
    unsigned int cmd = 0x07;
    cmd += qspi_mode_x1;
    cmd += qspi_clk_133;
    _addr_qspi[0] = cmd;
    qspi_wait();
    return _addr_qspi[2];
}

unsigned char s25fl128s_rdcr(){
    unsigned int cmd = 0x35;
    cmd += qspi_mode_x1;
    cmd += qspi_clk_133;
    _addr_qspi[0] = cmd;
    qspi_wait();
    return _addr_qspi[2];
}

unsigned short s25fl128s_read_id(unsigned int addr){
    unsigned int cmd = 0x90;
    cmd += qspi_mode_x1;
    cmd += qspi_dummy_3;
    cmd += 1 << 16;
    cmd += qspi_clk_133;
    _addr_qspi[1] = addr;
    _addr_qspi[0] = cmd;
    qspi_wait();
    return _addr_qspi[2];
}

unsigned char s25fl128s_res(){
    unsigned int cmd = 0xAB;
    cmd += qspi_mode_x1;
    cmd += qspi_dummy_3;
    cmd += qspi_clk_50;
    _addr_qspi[0] = cmd;
    qspi_wait();
    return _addr_qspi[2];
}

void s25fl128s_wrr(unsigned short data){
    unsigned int cmd = 0x01;
    cmd += qspi_mode_x1;
    cmd += qspi_write;
    cmd += 1 << 16;
    cmd += qspi_clk_133;
    _addr_qspi[2] = data;
    _addr_qspi[0] = cmd;
    qspi_wait();
}

void s25fl128s_read(unsigned int addr, unsigned int* array, unsigned int byte_size){
    unsigned int cmd = 0x03;
    cmd += qspi_mode_x1;
    cmd += qspi_dummy_3;
    cmd += (byte_size-1) << 16;
    cmd += qspi_clk_50;
    _addr_qspi[1] = addr;
    _addr_qspi[0] = cmd;
    qspi_wait();
    qspi_read_array(array, byte_size);
}

void s25fl128s_pp(unsigned int addr, unsigned int* array, unsigned int byte_size){
    unsigned int cmd = 0x02;
    cmd += qspi_mode_x1;
    cmd += qspi_write;
    cmd += qspi_dummy_3;
    cmd += (byte_size-1) << 16;
    cmd += qspi_clk_133;
    _addr_qspi[1] = addr;
    qspi_write_array(array, byte_size);
    _addr_qspi[0] = cmd;
    qspi_wait();
}

void s25fl128s_se(unsigned int data){
    unsigned int cmd = 0xD8;
    cmd += qspi_mode_x1;
    cmd += qspi_write;
    cmd += 2 << 16;
    cmd += qspi_clk_133;
    _addr_qspi[2] = data;
    _addr_qspi[0] = cmd;
    qspi_wait();
}

void s25fl128s_dor(unsigned int addr, unsigned int* array, unsigned int byte_size){
    unsigned int cmd = 0x3B;
    cmd += qspi_mode_x2;
    cmd += qspi_dummy_4;
    cmd += (byte_size-1) << 16;
    cmd += qspi_clk_104;
    _addr_qspi[1] = addr;
    _addr_qspi[0] = cmd;
    qspi_wait();
    qspi_read_array(array, byte_size);
}
 
void s25fl128s_qor(unsigned int addr, unsigned int* array, unsigned int byte_size){
    unsigned int cmd = 0x6B;
    cmd += qspi_mode_x4;
    cmd += qspi_dummy_4;
    cmd += (byte_size-1) << 16;
    cmd += qspi_clk_104;
    _addr_qspi[1] = addr;
    _addr_qspi[0] = cmd;
    qspi_wait();
    qspi_read_array(array, byte_size);
}

void s25fl128s_qpp(unsigned int addr, unsigned int* array, unsigned int byte_size){
    unsigned int cmd = 0x32;
    cmd += qspi_mode_x4;
    cmd += qspi_write;
    cmd += qspi_dummy_3;
    cmd += (byte_size-1) << 16;
    cmd += qspi_clk_80;
    _addr_qspi[1] = addr;
    _addr_qspi[0] = cmd;
    qspi_write_array(array, byte_size);
    qspi_wait();
}

void qspi_custom_write(unsigned int addr, unsigned int* array, unsigned int instr, \
    unsigned int mode, unsigned int dummy, unsigned int byte_size, unsigned int prescaler){
    unsigned int cmd = instr & 255;
    cmd += mode << 8;
    cmd += qspi_write;
    cmd += dummy << 11;
    cmd += (byte_size-1) << 16;
    cmd += prescaler << 25;
    cmd += 1 << 31;
    _addr_qspi[1] = addr;
    qspi_write_array(array, byte_size);
    _addr_qspi[0] = cmd;
    qspi_wait();
}

void qspi_custom_read(unsigned int addr, unsigned int* array, unsigned int instr, \
    unsigned int mode, unsigned int dummy, unsigned int byte_size, unsigned int prescaler){
    unsigned int cmd = instr & 255;
    cmd += mode << 8;
    cmd += dummy << 11;
    cmd += (byte_size-1) << 16;
    cmd += prescaler << 25;
    cmd += 1 << 31;
    _addr_qspi[1] = addr;
    _addr_qspi[0] = cmd;
    qspi_wait();
    qspi_read_array(array, byte_size);
}

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
        //"li a1, 0x2200\n\t"
        //"csrrw zero, mtvec, a1\n\t" //locate interrupt()
        "csrrsi zero, mstatus, 8\n\t" //enable machine interrupt
        "csrrs zero, mie, a2\n\t"); //enable timer interrupt
    timer_enabled(1);
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
#define USB_SERIAL2 6
#define USB_RESET2 7

unsigned int usb_connected(){
    return _addr_usb[3] & 1;
}

void usb_conf(unsigned int usb_mode){
    _addr_usb[0] = usb_mode;
    while(!usb_connected()){}
}

unsigned int usb_rw(unsigned int in){
    _addr_usb[2] = in;
    while(_addr_usb[3]==2){}
    _addr_usb[3] = 2;
    return _addr_usb[1];
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