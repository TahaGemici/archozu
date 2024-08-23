module timer(
    input clk_i,
    input rst_i,
    input write_i,
    input [3:0] data_be_i,
    input [4:0] addr_i,
    input [31:0] wdata_i,
    output [31:0] rdata_o,

    output reg irq_7_o,
    input irq_ack_i,
    input[4:0] irq_id_i
);

    //registers
    reg irq_7_o_nxt;
    reg[31:0] counter, counter_nxt;
    reg[31:0] condition, condition_nxt;

    reg TIM_CLR_i;
    reg[31:0] TIM_CNT_i;
    reg[31:0] TIM_EVN_i;
    reg TIM_EVC_i;
    
    wire[31:0] TIM_PRE_o;
    wire[31:0] TIM_ARE_o;
    wire TIM_CLR_o;
    wire TIM_ENA_o;
    wire TIM_MOD_o;
    wire[31:0] TIM_CNT_o;
    wire[31:0] TIM_EVN_o;
    wire TIM_EVC_o;
    
    timer_mem timer_mem(
        clk_i,
        rst_i,
        
        write_i,
        data_be_i,
        {27'b0, addr_i},
        wdata_i,
        rdata_o,
        
        TIM_CLR_i,
        TIM_CNT_i,
        TIM_EVN_i,
        TIM_EVC_i,

        TIM_PRE_o,
        TIM_ARE_o,
        TIM_CLR_o,
        TIM_ENA_o,
        TIM_MOD_o,
        TIM_CNT_o,
        TIM_EVN_o,
        TIM_EVC_o
    );

	always @(posedge clk_i) begin
        irq_7_o   <= irq_7_o_nxt;
		condition <= condition_nxt;
		counter   <= counter_nxt;
	end

	always @* begin
        TIM_CLR_i = 0;
        TIM_CNT_i = TIM_CNT_o;
        TIM_EVN_i = TIM_EVN_o;
        TIM_EVC_i = 0;
        counter_nxt = counter;
        irq_7_o_nxt = (irq_ack_i && (irq_id_i==7)) ? 0 : irq_7_o;

        condition_nxt = (&TIM_PRE_o) ? 59_999_999 : TIM_PRE_o[31:0];
        counter_nxt = counter + TIM_ENA_o;
        if(TIM_ENA_o & (counter==condition)) begin
            counter_nxt = 0;
            
            if(TIM_MOD_o) TIM_CNT_i = TIM_CNT_o + 1;
            else TIM_CNT_i = TIM_CNT_o - 1;

            if(TIM_ARE_o==TIM_CNT_o) begin
                TIM_CNT_i = 0;
                TIM_EVN_i = TIM_EVN_o + 1;
                irq_7_o_nxt = 1;
            end
        end

        if(TIM_CLR_o) begin
            TIM_CNT_i = 0;
            counter_nxt = 0;
        end
        if(TIM_EVC_o) TIM_EVN_i = 0;

        if(rst_i) begin
            irq_7_o_nxt = 0;
            counter_nxt = 0;
        end
    end
endmodule