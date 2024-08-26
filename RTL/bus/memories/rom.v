module rom(
    input[5:0] addr_i,
    output[31:0] mem_out
);
    reg[31:0] mem[0:63]; // 256B
    assign mem_out = mem[addr_i];

    initial begin
        `ifdef MT25QL256ABA
            $readmemh("rom_mt25ql256aba.mem", mem);
        `else
            $readmemh("rom_s25fl128s.mem", mem);
        `endif
        `ifdef NO_FLASH
            mem[0] = 32'h00002137; // lui x2, 2
            mem[1] = 32'h00010067; // jalr x0, x2, 0
        `endif
    end
endmodule