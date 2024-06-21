#ifndef PERIPHERALS_H
#define PERIPHERALS_H

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





  ///////////
 //  I2C  //
///////////

void i2c_write(char addr, int data, char byte_size){
    *ADDR_I2C     = byte_size;
    *(ADDR_I2C+1) = addr;
    *(ADDR_I2C+3) = data;
    *(ADDR_I2C+4) = 1;
    while(*(ADDR_I2C+4)!=3){}
    *(ADDR_I2C+4) = 0;
}

int i2c_read(char addr, char byte_size){
    *ADDR_I2C     = byte_size;
    *(ADDR_I2C+1) = addr;
    *(ADDR_I2C+4) = 4;
    while(*(ADDR_I2C+4)!=12){}
    *(ADDR_I2C+4) = 0;
    return *(ADDR_I2C+2);
}

  ////////////
 //  QSPI  //
////////////

void qspi_wren(){
    *ADDR_QSPI = (1<<31) + 0x06;
    while(*(ADDR_QSPI+10)!=1){}
}

void qspi_wrdi(){
    *ADDR_QSPI = (1<<31) + 0x04;
    while(*(ADDR_QSPI+10)!=1){}
}

void qspi_clsr(){
    *ADDR_QSPI = (1<<31) + 0x30;
    while(*(ADDR_QSPI+10)!=1){}
}

void qspi_reset(){
    *ADDR_QSPI = (1<<31) + 0xF0;
    while(*(ADDR_QSPI+10)!=1){}
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