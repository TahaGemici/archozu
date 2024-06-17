module timer(
    input clk_i,
    input rst_i,
    input write_i,
    input [3:0] data_be_i,
    input [4:0] addr_i,
    input [31:0] wdata_i,
    output [31:0] rdata_o,

    input irq_ack_i,
    output reg irq_7_o
);

    //registers
    reg irq_7_o_nxt;
    reg[31:0] counter, counter_nxt;
    reg condition, condition_nxt;

    reg[31:0] TIM_PRE_i;
    reg[31:0] TIM_ARE_i;
    
    wire[31:0] TIM_PRE_o;
    wire[31:0] TIM_ARE_o;

    localparam TIM_PRE = 0;
    localparam TIM_ARE = 4;
    localparam TIM_CLR = 8;
    localparam TIM_ENA = 12;
    localparam TIM_MOD = 16;
    localparam TIM_CNT = 20;
    localparam TIM_EVN = 24;
    localparam TIM_EVC = 28;
    
    timer_mem timer_mem(
        clk_i,
        
        write_i,
        data_be_i,
        {27'b0, addr_i},
        wdata_i,
        rdata_o,
        
        TIM_PRE,
        
    );

	always @(posedge clk_i) begin
        irq_7_o <= irq_ack_i ? 0 : irq_7_o_nxt;
		condition <= condition_nxt;
	end

	always @* begin
        counter_nxt = counter;
        irq_7_o_nxt = irq_7_o;

        condition_nxt = (&TIM_PRE_nxt) ? (`CLK_FREQ - 1) : TIM_PRE_nxt;
        counter_nxt = counter + 1;
        if(TIM_ENA & (counter==condition)) begin
            counter_nxt = 0;
            
            if(TIM_MOD) TIM_CNT_nxt = TIM_CNT + 1;
            else TIM_CNT_nxt = TIM_CNT - 1;

            if(TIM_ARE==TIM_CNT) begin
                TIM_CNT_nxt = 0;
                TIM_EVN_nxt = TIM_EVN + 1;
                irq_7_o_nxt = 1;
            end
        end

        if(TIM_CLR) TIM_CNT_nxt = 0;

        if(TIM_EVC) TIM_EVN_nxt = 0;

        if(rst_i) begin
            TIM_PRE_nxt = -1;
            TIM_ARE_nxt = -1;
            TIM_CLR_nxt = 0;
            TIM_ENA_nxt = 1;
            TIM_MOD_nxt = 0;
            TIM_CNT_nxt = 0;
            TIM_EVN_nxt = 0;
            TIM_EVC_nxt = 0;
            irq_7_o_nxt = 0;
            counter_nxt = 0;
        end
    end
endmodule