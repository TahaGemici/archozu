module instr_mem(
    input clk_i,
    
    input[13:0] addr_i,
    input req_i,
    output gnt_o,
    output reg rvalid_o,
    output reg[31:0] rdata_o,

    input write_i,
    input[12:0] addr,
    input[31:0] data
);
    reg[31:0] mem[0:(2*1024-1)];

    wire[31:0] rom_out;
    rom rom(
        addr_i[13:2],
        rom_out
    );

    assign gnt_o = 1;
    always @(posedge clk_i) begin
        rvalid_o <= req_i;
        rdata_o <= addr_i[13] ? mem[addr_i[12:2]] : rom_out;
        mem[addr[12:2]] <= write_i ? data : mem[addr[12:2]];
    end

endmodule