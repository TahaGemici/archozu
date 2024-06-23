MEMORY{
    INSTR_MEM (x) : ORIGIN = 0x00002000, LENGTH = 8K
    DATA_MEM (w)  : ORIGIN = 0x00000000, LENGTH = 8K
    PERIPHERALS (w) : ORIGIN = 0x00004000, LENGTH = 112K
}

SECTIONS{
    . = 0;
    .text :
    {
        *(.text.main)
        *(.text)
    } > INSTR_MEM

    . = ORIGIN(DATA_MEM);

    .data : {*(.data)} > DATA_MEM
    .bss : {*(.bss)} > DATA_MEM

    PERIPHERAL_REGISTERS : 
    {
        . = ORIGIN(PERIPHERALS);
        _addr_instr_mem = .;
        _addr_uart      = . + 0x2000;
        _addr_i2c       = . + 0x4000;
        _addr_qspi      = . + 0x6000;
        _addr_timer     = . + 0x8000;
        _addr_usb       = . + 0xA000;
        _addr_gpio      = . + 0xC000;
    } > PERIPHERALS
}