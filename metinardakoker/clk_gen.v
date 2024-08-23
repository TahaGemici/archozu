module clk_gen(
    input clk_in,
    input rst_in,
    output clk_out,
    output rst_out
);
    assign clk_out = clk_in;
    assign rst_out = rst_in;

endmodule