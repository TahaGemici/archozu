// Bootloader code

initial begin
    mem[  0] = 32'h000140b7;
    mem[  1] = 32'h0001c137;
    mem[  2] = 32'h801f21b7;
    mem[  3] = 32'h36b1e193;
    mem[  4] = 32'h00001237;
    mem[  5] = 32'h000062b3;
    mem[  6] = 32'h0050a223;
    mem[  7] = 32'h0030a023;
    mem[  8] = 32'h0280a303;
    mem[  9] = 32'h00137313;
    mem[ 10] = 32'hfe030ce3;
    mem[ 11] = 32'h005103b3;
    mem[ 12] = 32'h00806413;
    mem[ 13] = 32'h0080a303;
    mem[ 14] = 32'h0063a023;
    mem[ 15] = 32'h00408093;
    mem[ 16] = 32'h00438393;
    mem[ 17] = 32'hfff40413;
    mem[ 18] = 32'hfe0416e3;
    mem[ 19] = 32'hfe008093;
    mem[ 20] = 32'hfe038393;
    mem[ 21] = 32'h00828293;
    mem[ 22] = 32'hfc42d0e3;
    mem[ 23] = 32'h00000067;
    mem[ 24] = 32'h00000033; // reserved
    mem[ 25] = 32'h00000033; // reserved
    mem[ 26] = 32'h00000033; // reserved
    mem[ 27] = 32'h00000033; // reserved
    mem[ 28] = 32'h00000033; // reserved
    mem[ 29] = 32'h00000033; // reserved
    mem[ 30] = 32'h00000033; // reserved
    mem[ 31] = 32'h00000033; // reserved
end

/*
.global _boot
.text

_boot:
    lui x1, 20
    lui x2, 28
    lui x3, 0x801F2
    ori x3, x3, 0x36B
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
    
    ori x8, x0, 8
    loop2:
    lw x6, 8(x1)
    sw x6, 0(x7)
    addi x1, x1, 4
    addi x7, x7, 4
    addi x8, x8, -1
    bne x8, x0, loop2
    addi x1, x1, -32
    addi x7, x7, -32
    
    addi x5, x5, 8
    bge x5, x4, loop
    jalr x0, x0, 0
*/