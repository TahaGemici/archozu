module GPIO(
    input clk_i,
    input write_i,
    input [3:0] data_be_i,
    input [5:0] addr_i,
    input [31:0] wdata_i,
    output [31:0] rdata_o,

    input [15:0] input_i,
    output [15:0] output_o
);
`ifdef TEST
    reg[15:0] input_i2;
    initial begin
        forever input_i2 = #500 $random;
    end
`else
    wire[15:0] input_i2 = input_i;
`endif
    perip_mem #(9, 9'h0_30) gpio_mem(
        clk_i,
        
        write_i,
        data_be_i,
        {26'b0, addr_i},
        wdata_i,
        rdata_o,
        
        1'b1,
        4'b0011,
        32'b0,
        input_i2,
        32'b1,
        output_o
    );
endmodule