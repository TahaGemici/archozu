module GPIO(
    input clk_i,
    input write_i,
    input [3:0] data_be_i,
    input [5:0] addr_i,
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
    
    wire[7:0] all_regs[0:8];
    assign all_regs[0] = GPIO_IDR[7:0];
    assign all_regs[1] = GPIO_IDR[15:8];
    assign all_regs[2] = 0;
    assign all_regs[3] = 0;
    assign all_regs[4] = output_o[7:0];
    assign all_regs[5] = output_o[15:8];
    assign all_regs[6] = 0;
    assign all_regs[7] = 0;
    assign all_regs[8] = 0;

    reg write_perip;
    reg[3:0] be_perip;
    reg[31:0] wraddr_perip;
    reg[31:0] data_i_perip;
    reg[31:0] rdaddr_perip;
    wire[31:0] data_o_perip;
    
    perip_mem #(9, 9'h0_33) qspi_mem(
        clk_i,
        
        write_i,
        data_be_i,
        {26'b0, addr_i},
        wdata_i,
        rdata_o,
        
        write_perip,
        be_perip,
        wraddr_perip,
        data_i_perip,
        rdaddr_perip,
        data_o_perip
    );

    localparam QSPI_CCR = 0;
    localparam QSPI_ADR = 4;
    localparam QSPI_DR  = 8;
    localparam QSPI_STA = 40;
    integer i;
    always @* begin
        GPIO_ODR_nxt = output_o;
        rdata_o = 0;
        for(i=0;i<4;i=i+1) begin
                if(write_i) begin
                    if(addr_i==(4-i)) GPIO_ODR_nxt[7:0] = wdata_i[(8*i)+:8];
                    if(addr_i==(5-i)) GPIO_ODR_nxt[15:8] = wdata_i[(8*i)+:8];
                end
                if(data_be_i[i]) rdata_o[(8*i)+:8] = all_regs[addr_i+i];
        end
    end
endmodule