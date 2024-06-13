module data_mem(
    input clk_i,
    input write_i,
    input[3:0] b_sel_i,
    input[12:0] addr_i,
    input[31:0] data_i,
    output reg[31:0] data_o
);
    reg[7:0] mem[0:(8*1024-1)];
    wire[3:0] write = b_sel_i & {4{write_i}};

    always @(posedge clk_i) begin
        mem[addr_i]   <= write[0] ? data_i[7:0]   : mem[addr_i];
        mem[addr_i+1] <= write[1] ? data_i[15:8]  : mem[addr_i+1];
        mem[addr_i+2] <= write[2] ? data_i[23:16] : mem[addr_i+2];
        mem[addr_i+3] <= write[3] ? data_i[31:24] : mem[addr_i+3];
    end

    always @* begin
        data_o[7:0]   = mem[addr_i]   & {8{b_sel_i[0]}};
        data_o[15:8]  = mem[addr_i+1] & {8{b_sel_i[1]}};
        data_o[23:16] = mem[addr_i+2] & {8{b_sel_i[2]}};
        data_o[31:24] = mem[addr_i+3] & {8{b_sel_i[3]}};
    end

endmodule