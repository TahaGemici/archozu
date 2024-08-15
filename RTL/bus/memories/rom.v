module rom(
    input[5:0] addr_i,
    output[31:0] mem_out
);
    reg[31:0] mem[0:63]; // 256B
    assign mem_out = mem[addr_i];

    `ifdef NO_FLASH
        initial begin
            mem[0] = 32'h00002137; // lui x2, 2
            mem[1] = 32'h00010067; // jalr x0, x2, 0
        end
    `else
        initial begin
            $readmemh("rom.mem",mem);
        end
    `endif
endmodule