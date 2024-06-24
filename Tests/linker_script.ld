PHDRS {
    text PT_LOAD FLAGS(5);    /* R + E */
    data PT_LOAD FLAGS(6);    /* R + W */
}

MEMORY {
    INSTR_MEM (rx) : ORIGIN = 0x00002000, LENGTH = 8K
    DATA_MEM (rw)  : ORIGIN = 0x00000000, LENGTH = 8K
    PERIPHERALS (rw) : ORIGIN = 0x00004000, LENGTH = 112K
}

SECTIONS {
    .data : {*(.data)} > DATA_MEM :data
    .bss : {*(.bss)} > DATA_MEM :data
    
    . = ORIGIN(INSTR_MEM);
    .text : 
    {
        *(.text.startup.main)
        *(.text)
    } > INSTR_MEM :text

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
