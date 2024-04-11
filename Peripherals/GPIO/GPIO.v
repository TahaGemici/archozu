module GPIO(
    input clk_i,
    input write_i,
    input [2:0] addr_i,
    input [31:0] wdata_i,
    output reg [31:0] rdata_o,

    input [15:0] input_i,
    output reg [15:0] output_o
);

    // registers
    reg[15:0] GPIO_IDR;
    reg[15:0] GPIO_ODR_nxt;

    always @(posedge clk_i) begin
        GPIO_IDR <= input_i;
        output_o <= GPIO_ODR_nxt;
    end
    
    always @* begin
        GPIO_ODR_nxt = output_o;
        if(write_i & (addr_i==3'h4)) begin
            GPIO_ODR_nxt[(8*addr_i[0])+:8] = wdata_i;
        end
        rdata_o = 0;
        case(addr_i)
            3'h00: rdata_o[15:0] = GPIO_IDR;
            3'h01: rdata_o[15:8] = GPIO_IDR[15:8];
            3'h04: rdata_o[15:0] = GPIO_ODR;
            3'h05: rdata_o[15:8] = GPIO_ODR[15:8];
        endcase
    end
endmodule