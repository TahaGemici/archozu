module GPIO(
    input clk_i,
    input sel_i,
    input enable_i,
    input write_i,
    input [7:0] addr_i,
    input [7:0] wdata_i,
    output reg [7:0] rdata_o,
    output reg ready_o,

    input [15:0] input_i,
    output reg [15:0] output_o,
);
    reg ready_o_nxt;
    reg[15:0] GPIO_IDR, GPIO_IDR_nxt;
    reg[15:0] GPIO_ODR_nxt;

    always @(posedge clk_i) begin
        rdata_o <= rdata_o_nxt;
        ready_o <= ready_o_nxt;
        GPIO_IDR <= GPIO_IDR_nxt;
        output_o <= GPIO_ODR_nxt;
    end

    always @* begin
        GPIO_IDR_nxt = GPIO_IDR;
        GPIO_ODR_nxt = output_o;
        rdata_o_nxt = rdata_o;
		ready_o_nxt = sel_i ? enable_i : 1'b1;
        if(write_i) begin
            if(addr_i[7:1]==7'h02) begin
                GPIO_ODR_nxt[(8*addr_i[0])+:8] = wdata_i;
            end
        end else begin
            case(addr_i)
                8'h00: rdata_o_nxt = GPIO_IDR[7:0];
                8'h01: rdata_o_nxt = GPIO_IDR[15:8];
                8'h04: rdata_o_nxt = GPIO_ODR[7:0];
                8'h05: rdata_o_nxt = GPIO_ODR[15:8];
                default: rdata_o_nxt = 8'h00;
            endcase
        end
    end
endmodule