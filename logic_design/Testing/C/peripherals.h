#include <math.h>
#ifndef PERIPHERALS_H
#define PERIPHERALS_H

#define CLK_FREQ_MHZ 103

int* ADDR_UART      = (int*)131072;
int* ADDR_I2C       = (int*)147456;
int* ADDR_QSPI      = (int*)163840;
int* ADDR_TIMER     = (int*)180224;
int* ADDR_USB       = (int*)196608;
int* ADDR_GPIO      = (int*)212992;
int* ADDR_INSTR_MEM = (int*)229376;

  ////////////
 //  UART  //
////////////

void uart_conf(int baud_quotient, char stop_bit){
    *ADDR_UART = baud_quotient;
    *(ADDR_UART+1) = stop_bit;
}

char uart_read(){
    while(*(ADDR_UART+4)!=2){}
    char tmp = *(ADDR_UART+2); //kasıtlı: önce veriyi al sonra 0'a çek
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

void qspi_wren(){
    *ADDR_QSPI = qspi_clk_133 + 0x06;
    while(*(ADDR_QSPI+10)!=1){}
}

void qspi_wrdi(){
    *ADDR_QSPI = qspi_clk_133 + 0x04;
    while(*(ADDR_QSPI+10)!=1){}
}

void qspi_clsr(){
    *ADDR_QSPI = qspi_clk_133 + 0x30;
    while(*(ADDR_QSPI+10)!=1){}
}

void qspi_reset(){
    *ADDR_QSPI = qspi_clk_133 + 0xF0;
    while(*(ADDR_QSPI+10)!=1){}
}





void qspi_dor(){

}


  /////////////
 //  TIMER  //
/////////////







  ///////////
 //  USB  //
///////////







  ////////////
 //  GPIO  //
////////////

short gpio(short in){
    *(ADDR_GPIO+1) = in;
    return *ADDR_GPIO;
}

  /////////////////
 //  INSTR_MEM  //
/////////////////

void instr_mem(int addr, int data){
    *(ADDR_INSTR_MEM+addr) = data;
}

#endif // PERIPHERALS_H