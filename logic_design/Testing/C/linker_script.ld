/* Linker script for peripherals */

/* Define the memory regions */
MEMORY
{
    PERIPHERALS (RW) : ORIGIN = 0x40000000, LENGTH = 0x10000
}

/* Define the sections */
SECTIONS
{
    .peripherals :
    {
        /* Place your peripheral sections here */
        *(.peripheral_section1)
        *(.peripheral_section2)
        /* Add more sections as needed */
    } > PERIPHERALS
}
*(.peripheral_section3)
*(.peripheral_section4)