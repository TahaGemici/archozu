MEMORY
{
    /* Define memory regions */
    FLASH (x) : ORIGIN = 0x00002000, LENGTH = 8K
    RAM (rw)  : ORIGIN = 0x00000000, LENGTH = 8K
    PERIPHERALS (rw) : ORIGIN = 0x00004000, LENGTH = 112K
}

SECTIONS
{
    /* Code and read-only data */
    .text :
    {
        *(.vectors) /* Vector table */
        *(.text)    /* Code */
        *(.rodata)  /* Read-only data */
        . = ALIGN(4);
    } > FLASH

    /* Initialized data */
    .data : AT(ADDR(.text) + SIZEOF(.text))
    {
        _sdata = .; /* Create a symbol marking the start of the .data section */
        *(.data)
        . = ALIGN(4);
        _edata = .; /* Define a symbol marking the end of the .data section */
    } > RAM

    /* Uninitialized data (zero-initialized) */
    .bss :
    {
        _sbss = .; /* Start of the .bss section */
        *(.bss)
        . = ALIGN(4);
        _ebss = .; /* End of the .bss section */
    } > RAM

    /* Peripheral register space */
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