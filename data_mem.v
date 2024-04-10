module data_mem(
    input clk_i,
    input write_i,
    input[3:0] b_sel_i,
    input[12:0] addr_i,
    input[31:0] data_i,
    output reg[31:0] data_o
);
    reg[7:0] mem0[0:2047];
    reg[7:0] mem1[0:2047];
    reg[7:0] mem2[0:2047];
    reg[7:0] mem3[0:2047];

    wire[10:0] addr_11 = addr_i[10:0];
    wire[3:0] write = b_sel_i & {4{write_i}};

    always @(posedge clk_i) begin
        mem0[addr_11] <= write[0] ? data_i[7:0]   : mem0[addr_11];
        mem1[addr_11] <= write[1] ? data_i[15:8]  : mem1[addr_11];
        mem2[addr_11] <= write[2] ? data_i[23:16] : mem2[addr_11];
        mem3[addr_11] <= write[3] ? data_i[31:24] : mem3[addr_11];
    end

    always @* begin
        data_o = 32'h00_00_00_00;
        if(b_sel_i[0]) data_o[7:0]   = mem0[addr_11];
        if(b_sel_i[1]) data_o[15:8]  = mem1[addr_11];
        if(b_sel_i[2]) data_o[23:16] = mem2[addr_11];
        if(b_sel_i[3]) data_o[31:24] = mem3[addr_11];
    end

endmodule