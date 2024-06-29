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
        . = 0x0100;
        *(.text.interrupt)
        *(.text)
    } > INSTR_MEM :text
}
