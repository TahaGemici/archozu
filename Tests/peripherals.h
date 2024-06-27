#define CLK_FREQ_MHZ 50
#define CEIL_CLK(x) CLK_FREQ_MHZ/x+(CLK_FREQ_MHZ%x!=0)
#define CEIL_SIZE(x) (x+3)>>2

volatile int* const _addr_instr_mem = (int*)0x04000;
volatile int* const _addr_uart      = (int*)0x06000;
volatile int* const _addr_i2c       = (int*)0x08000;
volatile int* const _addr_qspi      = (int*)0x0A000;
volatile int* const _addr_timer     = (int*)0x0C000;
volatile int* const _addr_usb       = (int*)0x0E000;
volatile int* const _addr_gpio      = (int*)0x10000;

  ////////////
 //  UART  //
////////////

void uart_conf(int baud_quotient, char stop_bit){
    _addr_uart[0] = baud_quotient;
    _addr_uart[1] = stop_bit;
}

char uart_read(){
    while(_addr_uart[4]!=2){}
    char tmp = _addr_uart[2];
    _addr_uart[4] = 0;
    return tmp;
}

void uart_write(char data){
    _addr_uart[3] = data;
    _addr_uart[4] = 1;
    while(_addr_uart[4]!=5){}
    _addr_uart[4] = 0;
}

  ///////////
 //  I2C  //
///////////

void i2c_conf(char addr){
    _addr_i2c[1] = addr;
}

void i2c_write(int data, char byte_size){
    _addr_i2c[0] = byte_size;
    _addr_i2c[3] = data;
    _addr_i2c[4] = 1;
    while(_addr_i2c[4]!=3){}
    _addr_i2c[4] = 0;
}

int i2c_read(char byte_size){
    _addr_i2c[0]     = byte_size;
    _addr_i2c[4] = 4;
    while(_addr_i2c[4]!=12){}
    _addr_i2c[4] = 0;
    return _addr_i2c[2];
}

  ////////////
 //  QSPI  //
////////////

int const qspi_clk_133 = ((CEIL_CLK(133) - 1) << 25) + (1<<31);
int const qspi_clk_104 = ((CEIL_CLK(104) - 1) << 25) + (1<<31);
int const qspi_clk_80  = ((CEIL_CLK( 80) - 1) << 25) + (1<<31);
int const qspi_clk_50  = ((CEIL_CLK( 50) - 1) << 25) + (1<<31);
int const qspi_mode_x1 = 1 << 8;
int const qspi_mode_x2 = 2 << 8;
int const qspi_mode_x4 = 3 << 8;
int const qspi_write   = 1 << 10;
int const qspi_dummy_3 = 3 << 11;
int const qspi_dummy_4 = 4 << 11;

void s25fl128s_wren(){
    _addr_qspi[0] = qspi_clk_133 + 0x06;
    while(_addr_qspi[10]!=1){}
}

void s25fl128s_wrdi(){
    _addr_qspi[0] = qspi_clk_133 + 0x04;
    while(_addr_qspi[10]!=1){}
}

void s25fl128s_clsr(){
    _addr_qspi[0] = qspi_clk_133 + 0x30;
    while(_addr_qspi[10]!=1){}
}

void s25fl128s_reset(){
    _addr_qspi[0] = qspi_clk_133 + 0xF0;
    while(_addr_qspi[10]!=1){}
}

void s25fl128s_rdid(int* array, int byte_size){
    int tmp = 0x9F;
    tmp += qspi_mode_x1;
    tmp += (byte_size-1) << 16;
    tmp += qspi_clk_133;
    _addr_qspi[0] = tmp;
    while(_addr_qspi[10]!=1){}
    for(int i=0;i<CEIL_SIZE(byte_size);i++) array[i] = _addr_qspi[2+i];
}

char s25fl128s_rdsr1(){
    int tmp = 0x05;
    tmp += qspi_mode_x1;
    tmp += qspi_clk_133;
    _addr_qspi[0] = tmp;
    while(_addr_qspi[10]!=1){}
    return _addr_qspi[2];
}

char s25fl128s_rdsr2(){
    int tmp = 0x07;
    tmp += qspi_mode_x1;
    tmp += qspi_clk_133;
    _addr_qspi[0] = tmp;
    while(_addr_qspi[10]!=1){}
    return _addr_qspi[2];
}

char s25fl128s_rdcr(){
    int tmp = 0x35;
    tmp += qspi_mode_x1;
    tmp += qspi_clk_133;
    _addr_qspi[0] = tmp;
    while(_addr_qspi[10]!=1){}
    return _addr_qspi[2];
}

short s25fl128s_read_id(int addr){
    int tmp = 0x90;
    tmp += qspi_mode_x1;
    tmp += qspi_dummy_3;
    tmp += 1 << 16;
    tmp += qspi_clk_133;
    _addr_qspi[1] = addr;
    _addr_qspi[0] = tmp;
    while(_addr_qspi[10]!=1){}
    return _addr_qspi[2];
}

char s25fl128s_res(){
    int tmp = 0xAB;
    tmp += qspi_mode_x1;
    tmp += qspi_dummy_3;
    tmp += qspi_clk_50;
    _addr_qspi[0] = tmp;
    while(_addr_qspi[10]!=1){}
    return _addr_qspi[2];
}

void s25fl128s_wrr(short data){
    int tmp = 0x01;
    tmp += qspi_mode_x1;
    tmp += qspi_write;
    tmp += 1 << 16;
    tmp += qspi_clk_133;
    _addr_qspi[2] = data;
    _addr_qspi[0] = tmp;
    while(_addr_qspi[10]!=1){}
}

void s25fl128s_read(int addr, int* array, int byte_size){
    int tmp = 0x03;
    tmp += qspi_mode_x1;
    tmp += qspi_dummy_3;
    tmp += (byte_size-1) << 16;
    tmp += qspi_clk_50;
    _addr_qspi[1] = addr;
    _addr_qspi[0] = tmp;
    while(_addr_qspi[10]!=1){}
    for(int i=0;i<CEIL_SIZE(byte_size);i++) array[i] = _addr_qspi[2+i];
}

void s25fl128s_pp(int addr, int* array, int byte_size){
    int tmp = 0x02;
    tmp += qspi_mode_x1;
    tmp += qspi_write;
    tmp += qspi_dummy_3;
    tmp += (byte_size-1) << 16;
    tmp += qspi_clk_133;
    _addr_qspi[1] = addr;
    for(int i=0;i<CEIL_SIZE(byte_size);i++) _addr_qspi[2+i] = array[i];
    _addr_qspi[0] = tmp;
    while(_addr_qspi[10]!=1){}
}

void s25fl128s_se(int data){
    int tmp = 0xD8;
    tmp += qspi_mode_x1;
    tmp += qspi_write;
    tmp += 2 << 16;
    tmp += qspi_clk_133;
    _addr_qspi[2] = data;
    _addr_qspi[0] = tmp;
    while(_addr_qspi[10]!=1){}
}

void s25fl128s_dor(int addr, int* array, int byte_size){
    int tmp = 0x3B;
    tmp += qspi_mode_x2;
    tmp += qspi_dummy_4;
    tmp += (byte_size-1) << 16;
    tmp += qspi_clk_104;
    _addr_qspi[1] = addr;
    _addr_qspi[0] = tmp;
    while(_addr_qspi[10]!=1){}
    for(int i=0;i<CEIL_SIZE(byte_size);i++) array[i] = _addr_qspi[2+i];
}
 
void s25fl128s_qor(int addr, int* array, int byte_size){
    int tmp = 0x6B;
    tmp += qspi_mode_x4;
    tmp += qspi_dummy_4;
    tmp += (byte_size-1) << 16;
    tmp += qspi_clk_104;
    _addr_qspi[1] = addr;
    _addr_qspi[0] = tmp;
    while(_addr_qspi[10]!=1){}
    for(int i=0;i<CEIL_SIZE(byte_size);i++) array[i] = _addr_qspi[2+i];
}

void s25fl128s_qpp(int addr, int* array, int byte_size){
    int tmp = 0x32;
    tmp += qspi_mode_x4;
    tmp += qspi_write;
    tmp += qspi_dummy_3;
    tmp += (byte_size-1) << 16;
    tmp += qspi_clk_80;
    _addr_qspi[1] = addr;
    _addr_qspi[0] = tmp;
    for(int i=0;i<CEIL_SIZE(byte_size);i++) _addr_qspi[2+i] = array[i];
    while(_addr_qspi[10]!=1){}
}

void qspi_custom_write(int addr, int* array, int instr, int mode, int dummy, int byte_size, int prescaler){
    int tmp = instr & 255;
    tmp += mode << 8;
    tmp += qspi_write;
    tmp += dummy << 11;
    tmp += (byte_size-1) << 16;
    tmp += prescaler << 25;
    tmp += 1 << 31;
    _addr_qspi[1] = addr;
    for(int i=0;i<CEIL_SIZE(byte_size);i++) _addr_qspi[2+i] = array[i];
    _addr_qspi[0] = tmp;
    while(_addr_qspi[10]!=1){}
}

void qspi_custom_read(int addr, int* array, int instr, int mode, int dummy, int byte_size, int prescaler){
    int tmp = instr & 255;
    tmp += mode << 8;
    tmp += dummy << 11;
    tmp += (byte_size-1) << 16;
    tmp += prescaler << 25;
    tmp += 1 << 31;
    _addr_qspi[1] = addr;
    _addr_qspi[0] = tmp;
    while(_addr_qspi[10]!=1){}
    for(int i=0;i<CEIL_SIZE(byte_size);i++) array[i] = _addr_qspi[2+i];
}

  /////////////
 //  TIMER  //
/////////////

int timer_read_counter(){
    return _addr_timer[5];
}

int timer_read_event(){
    return _addr_timer[6];
}

void timer_clear_counter(){
    _addr_timer[2] = 1;
}

void timer_clear_event(){
    _addr_timer[7] = 1;
}

void timer_enable(){
    _addr_timer[3] = 1;
}

void timer_disable(){
    _addr_timer[3] = 0;
}

void timer_conf(int prescaler, int auto_reload, int mode){
    int num_128 = 128;
    asm("csrrsi x0, 0x, ");

    _addr_timer[0] = prescaler;
    _addr_timer[1] = auto_reload;
    _addr_timer[4] = mode;
    timer_enable();
}

  ///////////
 //  USB  //
///////////







  ////////////
 //  GPIO  //
////////////

void gpio_write(short in){
    _addr_gpio[1] = in;
}

short gpio_read(){
    return _addr_gpio[0];
}

  /////////////////
 //  INSTR_MEM  //
/////////////////

void instr_mem_write(int addr, int data){
    _addr_instr_mem[addr] = data;
}