module timer(
    input clk_i,
    input rst_i,
    input write_i,
    input [3:0] data_be_i,
    input [4:0] addr_i,
    input [31:0] wdata_i,
    output reg [31:0] rdata_o,

    input irq_ack_i,
    output reg irq_7_o
);

    //registers
    reg irq_7_o_nxt;

    reg TIM_CLR, TIM_CLR_nxt;
    reg TIM_ENA, TIM_ENA_nxt;
    reg TIM_MOD, TIM_MOD_nxt;
    reg TIM_EVC, TIM_EVC_nxt;
    reg[31:0] TIM_PRE, TIM_PRE_nxt;
    reg[31:0] TIM_ARE, TIM_ARE_nxt;
    reg[31:0] TIM_CNT, TIM_CNT_nxt;
    reg[31:0] TIM_EVN, TIM_EVN_nxt;
    reg[31:0] counter, counter_nxt;
    
    reg condition, condition_nxt;

    wire[7:0] all_regs[0:28];
	assign all_regs[0] = TIM_PRE[7:0];
	assign all_regs[1] = TIM_PRE[15:8];
	assign all_regs[2] = TIM_PRE[23:16];
	assign all_regs[3] = TIM_PRE[31:24];
	assign all_regs[4] = TIM_ARE[7:0];
	assign all_regs[5] = TIM_ARE[15:8];
	assign all_regs[6] = TIM_ARE[23:16];
	assign all_regs[7] = TIM_ARE[31:24];
	assign all_regs[8] = {7'b0, TIM_CLR};
	assign all_regs[9] = 0;
	assign all_regs[10] = 0;
	assign all_regs[11] = 0;
	assign all_regs[12] = {7'b0, TIM_ENA};
	assign all_regs[13] = 0;
	assign all_regs[14] = 0;
	assign all_regs[15] = 0;
	assign all_regs[16] = {7'b0, TIM_MOD};
	assign all_regs[17] = 0;
	assign all_regs[18] = 0;
	assign all_regs[19] = 0;
	assign all_regs[20] = TIM_CNT[7:0];
	assign all_regs[21] = TIM_CNT[15:8];
	assign all_regs[22] = TIM_CNT[23:16];
	assign all_regs[23] = TIM_CNT[31:24];
	assign all_regs[24] = TIM_EVN[7:0];
	assign all_regs[25] = TIM_EVN[15:8];
	assign all_regs[26] = TIM_EVN[23:16];
	assign all_regs[27] = TIM_EVN[31:24];
	assign all_regs[28] = {7'b0, TIM_EVC};

	always @(posedge clk_i) begin
        TIM_PRE <= TIM_PRE_nxt;
        TIM_ARE <= TIM_ARE_nxt;
        TIM_CLR <= TIM_CLR_nxt;
        TIM_ENA <= TIM_ENA_nxt;
        TIM_MOD <= TIM_MOD_nxt;
        TIM_CNT <= TIM_CNT_nxt;
        TIM_EVN <= TIM_EVN_nxt;
        TIM_EVC <= TIM_EVC_nxt;
		
        irq_7_o <= irq_ack_i ? 0 : irq_7_o_nxt;
		condition <= condition_nxt;
	end

	integer i;
	always @* begin
        TIM_PRE_nxt = TIM_PRE;
        TIM_ARE_nxt = TIM_ARE;
        TIM_CLR_nxt = TIM_CLR;
        TIM_ENA_nxt = TIM_ENA;
        TIM_MOD_nxt = TIM_MOD;
        TIM_EVN_nxt = TIM_EVN;
        TIM_EVC_nxt = TIM_EVC;
        TIM_CNT_nxt = TIM_CNT;
        counter_nxt = counter;
        
        irq_7_o_nxt = irq_7_o;

        rdata_o = 0;
        for(i=0;i<4;i=i+1) begin
			if(addr_i <= (28-i)) begin
            	if(write_i) begin
					case(addr_i+i)
                        5'h00: TIM_PRE_nxt = wdata_i[(8*i)+:8];
                        5'h01: TIM_PRE_nxt[15:8] = wdata_i[(8*i)+:8];
                        5'h02: TIM_PRE_nxt[31:16] = wdata_i[(8*i)+:8];
                        5'h03: TIM_PRE_nxt[31:24] = wdata_i[(8*i)+:8];

                        5'h04: TIM_ARE_nxt = wdata_i[(8*i)+:8];
                        5'h05: TIM_ARE_nxt[15:8] = wdata_i[(8*i)+:8];
                        5'h06: TIM_ARE_nxt[31:16] = wdata_i[(8*i)+:8];
                        5'h07: TIM_ARE_nxt[31:24] = wdata_i[(8*i)+:8];
                        
                        5'h08: TIM_CLR_nxt = wdata_i[0];

                        5'h0C: TIM_ENA_nxt = wdata_i[0];

                        5'h10: TIM_MOD_nxt = wdata_i[0];

                        5'h1C: TIM_EVC_nxt = wdata_i[0];
                    endcase
                end
                if(data_be_i[i]) rdata_o[(8*i)+:8] = all_regs[addr_i+i];
            end
        end

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