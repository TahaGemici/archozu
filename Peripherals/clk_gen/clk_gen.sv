`define i (`CLK_FREQ / CLK_GEN_FREQ / 2)
module clk_gen #(
    parameter integer CLK_GEN_FREQ
)(
    input rst,
    input clk_i,
    output reg clk_gen_o
);
    initial begin
        reg[31:0] tmp = `i;
        $display(tmp);
        tmp = tmp * 2;
        tmp = tmp * CLK_GEN_FREQ;
        `assert(`CLK_FREQ!==tmp, "clk_gen: CLK_FREQ is not divisible")
    end

    reg clk_gen_o_nxt;
    reg[$clog2(`i):0] counter, counter_nxt;

    always @(posedge clk_i) begin
        counter   <= counter_nxt;
        clk_gen_o <= clk_gen_o_nxt;
    end
    always @* begin
        clk_gen_o_nxt = counter ? clk_gen_o : (~clk_gen_o);
        counter_nxt = (counter + 1) % `i;
        if(rst) begin
            clk_gen_o_nxt = 1'b1;
            counter_nxt = 1'b0;
        end
    end
endmodule