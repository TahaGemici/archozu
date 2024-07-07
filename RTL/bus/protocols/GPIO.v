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
    wire[31:0] output_raw;
    perip_mem #(2, 2'b10) gpio_mem(
        clk_i,
        
        write_i,
        data_be_i,
        {26'b0, addr_i},
        wdata_i,
        rdata_o,
        
        1'b1,
        32'b0,
        {16'h0000, input_i},
        32'h4,
        output_raw
    );

    assign output_o = output_raw[15:0];
endmodule