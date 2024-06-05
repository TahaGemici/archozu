module rom(
    input[5:0] addr_i,
    output[31:0] mem_out
);
    reg[31:0] mem[0:63];
    assign mem_out = mem[addr_i];

    `include "rom.vh"
endmodule