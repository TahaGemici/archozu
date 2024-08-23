module rom(
    input[4:0] addr_i,
    output[31:0] mem_out
);
    reg[31:0] mem[0:31]; // 128B
    assign mem_out = mem[addr_i];

    initial begin
        $readmemh("rom.mem",mem);
        `ifdef NO_FLASH
        mem[0] = 32'h00002137; // lui x2, 2
        mem[1] = 32'h00010067; // jalr x0, x2, 0
        `endif
    end
endmodule