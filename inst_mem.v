module inst_mem(
    input clk_i,
    
    input[31:0] addr_i,
    input req_i,

    output gnt_o,
    output reg rvalid_o,
    output reg[31:0] rdata_o
);
    reg[31:0] mem[0:(2*1024-1)];

    `include "inst_mem.vh"

    assign gnt_o = 0;
    always @(posedge clk_i) begin
        rdata_o <= req_i ? mem[addr_i] : rdata_o;
        rvalid_o <= req_i;
    end

endmodule