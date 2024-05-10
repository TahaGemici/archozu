module rom(
    input[6:0] addr_i,
    output[31:0] mem_out
);
    reg[31:0] mem[0:127];
    assign mem_out = mem[addr_i];

    `include "rom.vh"
endmodule