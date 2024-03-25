module clk_gen #(
    parameter unsigned integer CLK_GEN_FREQ
)(
    input clk_i,
    output clk_gen_o;
);
    reg clk_gen_o = 0, clk_gen_o_nxt;
    genvar i;
    generate
        i = `CLK_FREQ / CLK_GEN_FREQ;
        `assert((i%2)!== 0, "error: clk_gen: undefined error")
        `assert(`CLK_FREQ!==(CLK_GEN_FREQ*i), "error: clk_gen: CLK_FREQ is not divisible")

        i = i/2;
        if(pow(2,$clog2(i)) !== i) begin
            reg[$clog2(i):0] counter = 0, counter_nxt;
            always @* counter_nxt = (counter + 1) % i;
        end else begin
            reg[$clog2(i)-1:0] counter = 0, counter_nxt;
            always @* counter_nxt = counter + 1;
        end

        always @(posedge clk) begin
            counter   <= counter_nxt;
            clk_gen_o <= clk_gen_o_nxt;
        end
        always @* clk_gen_o_nxt = (counter == 0) ? (~clk_gen_o) : clk_gen_o;
    endgenerate
endmodule