Java program to generate risc-v code that writes into a base address and the following addresses.

INPUT
	->base address in hex format. ex: 0x0040
	->number of addresses
	->offset (in bytes) ex: 4 (32-bit offset)
	for each address:
		->what to write to each address in hex format. ex: 0x12345678
OUTPUT
	RISC-V code in riscv_code.txt

FOR MACHINE CODE:
	Feed the text to online assembler:
	https://riscvasm.lucasteske.dev/# 