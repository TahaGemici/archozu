// Bootloader code

initial begin
    mem[  0] = 32'h000140b7;
    mem[  1] = 32'h0001c137;
    mem[  2] = 32'h801f41b7;
    mem[  3] = 32'h26b1e193;
    mem[  4] = 32'h00001237;
    mem[  5] = 32'h000062b3;
    mem[  6] = 32'h0050a223;
    mem[  7] = 32'h0030a023;
    mem[  8] = 32'h0280a303;
    mem[  9] = 32'h00137313;
    mem[ 10] = 32'hfe030ce3;
    mem[ 11] = 32'h005103b3;
    mem[ 12] = 32'h0080a303;
    mem[ 13] = 32'h0063a023;
    mem[ 14] = 32'h00c0a303;
    mem[ 15] = 32'h0063a223;
    mem[ 16] = 32'h0100a303;
    mem[ 17] = 32'h0063a423;
    mem[ 18] = 32'h0140a303;
    mem[ 19] = 32'h0063a623;
    mem[ 20] = 32'h0180a303;
    mem[ 21] = 32'h0063a823;
    mem[ 22] = 32'h01c0a303;
    mem[ 23] = 32'h0063aa23;
    mem[ 24] = 32'h0200a303;
    mem[ 25] = 32'h0063ac23;
    mem[ 26] = 32'h0240a303;
    mem[ 27] = 32'h0063ae23;
    mem[ 28] = 32'h00800293;
    mem[ 29] = 32'hfa42d2e3;
    mem[ 30] = 32'h00000067;
    mem[ 31] = 32'h00000033; // reserved
end


/*

.global _boot
.text

_boot:
    lui x1, 20
    lui x2, 28
    lui x3, 0x801F4
    ori x3, x3, 0x26B
    lui x4, 1
    or x5, x0, x0
    
    loop:
    sw x5, 4(x1)
    sw x3, 0(x1)
    not_finished:
    lw x6, 40(x1)
    andi x6, x6, 1
    beq x6, x0, not_finished
    add x7, x2, x5
    
    lw x6, 8(x1)
    sw x6, 0(x7)
    
    lw x6, 12(x1)
    sw x6, 4(x7)
    
    lw x6, 16(x1)
    sw x6, 8(x7)
    
    lw x6, 20(x1)
    sw x6, 12(x7)
    
    lw x6, 24(x1)
    sw x6, 16(x7)
    
    lw x6, 28(x1)
    sw x6, 20(x7)
    
    lw x6, 32(x1)
    sw x6, 24(x7)
    
    lw x6, 36(x1)
    sw x6, 28(x7)
    
    addi x5, x0, 8
    bge x5, x4, loop
    jalr x0, x0, 0

*/