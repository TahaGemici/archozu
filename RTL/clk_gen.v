module clk_gen (
    input rst_i,
    input clk_i,
    output reg clk_bus_o,
    output reg clk_i2c_o,
    output clk_qspi_o
);
    reg[7:0] counter, counter_nxt;
    reg clk_i2c_o_nxt;

    always @(posedge clk_i) begin
        counter <= counter_nxt;
        clk_bus_o <= ~(rst_i | clk_bus_o);
        clk_i2c_o <= clk_i2c_o_nxt;
    end
    always @* begin
        counter_nxt = counter + 1;
        if(counter==125) begin
            counter_nxt = 0;
            clk_i2c_o_nxt = ~clk_i2c_o;
        end

        if(rst_i) begin
            counter_nxt = 0;
            clk_i2c_o_nxt = 0;
        end
    end
    assign clk_qspi_o = clk_i;
endmodule