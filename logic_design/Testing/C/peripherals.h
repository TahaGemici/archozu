#include <math.h>
#define CLK_FREQ_MHZ 103

int* const ADDR_UART      = _addr_instr_mem;
int* const ADDR_I2C       = _addr_uart;
int* const ADDR_QSPI      = _addr_i2c;
int* const ADDR_TIMER     = _addr_qspi;
int* const ADDR_USB       = _addr_timer;
int* const ADDR_GPIO      = _addr_usb;
int* const ADDR_INSTR_MEM = _addr_gpio;

  ////////////
 //  UART  //
////////////

void uart_conf(int baud_quotient, char stop_bit){
    *ADDR_UART = baud_quotient;
    *(ADDR_UART+1) = stop_bit;
}

char uart_read(){
    while(*(ADDR_UART+4)!=2){}
    char tmp = *(ADDR_UART+2); //sıralama kasıtlı: önce veriyi al, sonra 0'a çek
    *(ADDR_UART+4) = 0;
    return tmp;
}

void uart_write(char data){
    *(ADDR_UART+3) = data;
    *(ADDR_UART+4) = 1;
    while(*(ADDR_UART+4)!=5){}
    *(ADDR_UART+4) = 0;
}

  ///////////
 //  I2C  //
///////////

void i2c_conf(char addr){
    *(ADDR_I2C+1) = addr;
}

void i2c_write(int data, char byte_size){
    *ADDR_I2C     = byte_size;
    *(ADDR_I2C+3) = data;
    *(ADDR_I2C+4) = 1;
    while(*(ADDR_I2C+4)!=3){}
    *(ADDR_I2C+4) = 0;
}

int i2c_read(char byte_size){
    *ADDR_I2C     = byte_size;
    *(ADDR_I2C+4) = 4;
    while(*(ADDR_I2C+4)!=12){}
    *(ADDR_I2C+4) = 0;
    return *(ADDR_I2C+2);
}

  ////////////
 //  QSPI  //
////////////

const int qspi_clk_133 = (((int)ceil(CLK_FREQ_MHZ / 133) - 1) << 25) + (1<<31);
const int qspi_clk_104 = (((int)ceil(CLK_FREQ_MHZ / 104) - 1) << 25) + (1<<31);
const int qspi_clk_80  = (((int)ceil(CLK_FREQ_MHZ /  80) - 1) << 25) + (1<<31);
const int qspi_clk_50  = (((int)ceil(CLK_FREQ_MHZ /  50) - 1) << 25) + (1<<31);
const int qspi_mode_x1 = 1 << 8;
const int qspi_mode_x2 = 2 << 8;
const int qspi_mode_x4 = 3 << 8;
const int qspi_write   = 1 << 10;
const int qspi_dummy_3 = 3 << 11;
const int qspi_dummy_4 = 4 << 11;

void s25fl128s_wren(){
    *ADDR_QSPI = qspi_clk_133 + 0x06;
    while(*(ADDR_QSPI+10)!=1){}
}

void s25fl128s_wrdi(){
    *ADDR_QSPI = qspi_clk_133 + 0x04;
    while(*(ADDR_QSPI+10)!=1){}
}

void s25fl128s_clsr(){
    *ADDR_QSPI = qspi_clk_133 + 0x30;
    while(*(ADDR_QSPI+10)!=1){}
}

void s25fl128s_reset(){
    *ADDR_QSPI = qspi_clk_133 + 0xF0;
    while(*(ADDR_QSPI+10)!=1){}
}

void s25fl128s_rdid(int* array, int byte_size){
    int tmp = 0x9F;
    tmp += qspi_mode_x1;
    tmp += (byte_size-1) << 16;
    tmp += qspi_clk_133;
    *ADDR_QSPI = tmp;
    while(*(ADDR_QSPI+10)!=1){}
    for(int i=0;i<ceil(byte_size/4);i++) array[i] = *(ADDR_QSPI+2+i);
}

char s25fl128s_rdsr1(){
    int tmp = 0x05;
    tmp += qspi_mode_x1;
    tmp += qspi_clk_133;
    *ADDR_QSPI = tmp;
    while(*(ADDR_QSPI+10)!=1){}
    return *(ADDR_QSPI+2);
}

char s25fl128s_rdsr2(){
    int tmp = 0x07;
    tmp += qspi_mode_x1;
    tmp += qspi_clk_133;
    *ADDR_QSPI = tmp;
    while(*(ADDR_QSPI+10)!=1){}
    return *(ADDR_QSPI+2);
}

char s25fl128s_rdcr(){
    int tmp = 0x35;
    tmp += qspi_mode_x1;
    tmp += qspi_clk_133;
    *ADDR_QSPI = tmp;
    while(*(ADDR_QSPI+10)!=1){}
    return *(ADDR_QSPI+2);
}

short s25fl128s_read_id(int addr){
    int tmp = 0x90;
    tmp += qspi_mode_x1;
    tmp += qspi_dummy_3;
    tmp += 1 << 16;
    tmp += qspi_clk_133;
    *(ADDR_QSPI+1) = addr;
    *ADDR_QSPI = tmp;
    while(*(ADDR_QSPI+10)!=1){}
    return *(ADDR_QSPI+2);
}

char s25fl128s_res(){
    int tmp = 0xAB;
    tmp += qspi_mode_x1;
    tmp += qspi_dummy_3;
    tmp += qspi_clk_50;
    *ADDR_QSPI = tmp;
    while(*(ADDR_QSPI+10)!=1){}
    return *(ADDR_QSPI+2);
}

void s25fl128s_wrr(short data){
    int tmp = 0x01;
    tmp += qspi_mode_x1;
    tmp += qspi_write;
    tmp += 1 << 16;
    tmp += qspi_clk_133;
    *(ADDR_QSPI+2) = data;
    *ADDR_QSPI = tmp;
    while(*(ADDR_QSPI+10)!=1){}
}

void s25fl128s_read(int addr, int* array, int byte_size){
    int tmp = 0x03;
    tmp += qspi_mode_x1;
    tmp += qspi_dummy_3;
    tmp += (byte_size-1) << 16;
    tmp += qspi_clk_50;
    *(ADDR_QSPI+1) = addr;
    *ADDR_QSPI = tmp;
    while(*(ADDR_QSPI+10)!=1){}
    for(int i=0;i<ceil(byte_size/4);i++) array[i] = *(ADDR_QSPI+2+i);
}

void s25fl128s_pp(int addr, int* array, int byte_size){
    int tmp = 0x02;
    tmp += qspi_mode_x1;
    tmp += qspi_write;
    tmp += qspi_dummy_3;
    tmp += (byte_size-1) << 16;
    tmp += qspi_clk_133;
    *(ADDR_QSPI+1) = addr;
    for(int i=0;i<ceil(byte_size/4);i++) *(ADDR_QSPI+2+i) = array[i];
    *ADDR_QSPI = tmp;
    while(*(ADDR_QSPI+10)!=1){}
}

void s25fl128s_se(int data){
    int tmp = 0xD8;
    tmp += qspi_mode_x1;
    tmp += qspi_write;
    tmp += 2 << 16;
    tmp += qspi_clk_133;
    *(ADDR_QSPI+2) = data;
    *ADDR_QSPI = tmp;
    while(*(ADDR_QSPI+10)!=1){}
}

void s25fl128s_dor(int addr, int* array, int byte_size){
    int tmp = 0x3B;
    tmp += qspi_mode_x2;
    tmp += qspi_dummy_4;
    tmp += (byte_size-1) << 16;
    tmp += qspi_clk_104;
    *(ADDR_QSPI+1) = addr;
    *ADDR_QSPI = tmp;
    while(*(ADDR_QSPI+10)!=1){}
    for(int i=0;i<ceil(byte_size/4);i++) array[i] = *(ADDR_QSPI+2+i);
}
 
void s25fl128s_qor(int addr, int* array, int byte_size){
    int tmp = 0x6B;
    tmp += qspi_mode_x4;
    tmp += qspi_dummy_4;
    tmp += (byte_size-1) << 16;
    tmp += qspi_clk_104;
    *(ADDR_QSPI+1) = addr;
    *ADDR_QSPI = tmp;
    while(*(ADDR_QSPI+10)!=1){}
    for(int i=0;i<ceil(byte_size/4);i++) array[i] = *(ADDR_QSPI+2+i);
}

void s25fl128s_qpp(int addr, int* array, int byte_size){
    int tmp = 0x32;
    tmp += qspi_mode_x4;
    tmp += qspi_write;
    tmp += qspi_dummy_3;
    tmp += (byte_size-1) << 16;
    tmp += qspi_clk_80;
    *(ADDR_QSPI+1) = addr;
    *ADDR_QSPI = tmp;
    for(int i=0;i<ceil(byte_size/4);i++) *(ADDR_QSPI+2+i) = array[i];
    while(*(ADDR_QSPI+10)!=1){}
}

void qspi_custom_write(int addr, int* array, int instr, int mode, int dummy, int byte_size, int prescaler){
    int tmp = instr & 255;
    tmp += mode << 8;
    tmp += qspi_write;
    tmp += dummy << 11;
    tmp += (byte_size-1) << 16;
    tmp += prescaler << 25;
    tmp += 1 << 31;
    *(ADDR_QSPI+1) = addr;
    for(int i=0;i<ceil(byte_size/4);i++) *(ADDR_QSPI+2+i) = array[i];
    *ADDR_QSPI = tmp;
    while(*(ADDR_QSPI+10)!=1){}
}

void qspi_custom_read(int addr, int* array, int instr, int mode, int dummy, int byte_size, int prescaler){
    int tmp = instr & 255;
    tmp += mode << 8;
    tmp += dummy << 11;
    tmp += (byte_size-1) << 16;
    tmp += prescaler << 25;
    tmp += 1 << 31;
    *(ADDR_QSPI+1) = addr;
    *ADDR_QSPI = tmp;
    while(*(ADDR_QSPI+10)!=1){}
    for(int i=0;i<ceil(byte_size/4);i++) array[i] = *(ADDR_QSPI+2+i);
}

  /////////////
 //  TIMER  //
/////////////

void timer_conf(int prescaler, int auto_reload, int mode){
    *ADDR_TIMER = prescaler;
    *(ADDR_TIMER+1) = auto_reload;
    *(ADDR_TIMER+4) = mode;
}

int timer_read_counter(){
    return *(ADDR_TIMER+5);
}

int timer_read_event(){
    return *(ADDR_TIMER+6);
}

void timer_clear_counter(){
    *(ADDR_TIMER+2) = 1;
}

void timer_clear_event(){
    *(ADDR_TIMER+7) = 1;
}

void timer_enable(){
    *(ADDR_TIMER+3) = 1;
}

void timer_disable(){
    *(ADDR_TIMER+3) = 0;
}

  ///////////
 //  USB  //
///////////







  ////////////
 //  GPIO  //
////////////

void gpio_write(short in){
    *(ADDR_GPIO+1) = in;
}

short gpio_read(){
    return *ADDR_GPIO;
}

  /////////////////
 //  INSTR_MEM  //
/////////////////

void instr_mem_write(int addr, int data){
    *(ADDR_INSTR_MEM+addr) = data;
}