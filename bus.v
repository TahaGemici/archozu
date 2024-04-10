module bus(
    input clk_i,
    input data_req_i,
    input data_we_i,
    input[3:0] data_be_i,
    input[13:0] data_addr_i,
    input[31:0] data_wdata_i,
    output data_rvalid_o,
    output[31:0] data_rdata_o
);
    wire periph_write = data_addr_i[13] & data_we_i;
    wire mem_write = (~data_addr_i[13]) & data_we_i;
    wire[12:0] addr = data_addr_i[12:0];
    wire[31:0] mem_out, periph_out;

    data_mem data_mem(
        clk_i,
        mem_write,
        data_be_i,
        addr,
        data_wdata_i,
        mem_out
    );

endmodule