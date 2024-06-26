riscv32-unknown-linux-gnu-gcc main.c -T linker_script.ld -nostartfiles -ffunction-sections -Oz
riscv32-unknown-linux-gnu-objdump -s a.out > dump.hex
riscv32-unknown-linux-gnu-objdump -d a.out > main.s
python3 hex2mem.py dump.hex
rm a.out dump.hex