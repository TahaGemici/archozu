riscv32-unknown-linux-gnu-gcc main.c -T linker_script.ld -nostartfiles -ffunction-sections -Oz
riscv32-unknown-linux-gnu-strip a.out -R .riscv.attributes
riscv32-unknown-linux-gnu-strip a.out -R .comment
riscv32-unknown-linux-gnu-strip a.out -R .eh_frame
riscv32-unknown-linux-gnu-strip a.out -R .interp
riscv32-unknown-linux-gnu-strip a.out -R .dynsym
riscv32-unknown-linux-gnu-strip a.out -R .dynstr
riscv32-unknown-linux-gnu-strip a.out -R .hash
riscv32-unknown-linux-gnu-strip a.out -R .gnu.hash
riscv32-unknown-linux-gnu-strip a.out -R .eh_frame_hdr
riscv32-unknown-linux-gnu-objdump -s a.out > main.hex
riscv32-unknown-linux-gnu-objdump -d a.out > main.s
python3 hex2mem.py main.hex
rm a.out
