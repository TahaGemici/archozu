module timer(
    input clk_i,
    input rstn_i,
    input sel_i,
    input enable_i,
    input write_i,
    input [7:0] addr_i,
    input [7:0] wdata_i,
    output reg [7:0] rdata_o,
    output reg ready_o
);

	// wires 
	wire setup = sel_i & (~enable_i);
	wire rst = ~rstn_i;

    //registers
	reg ready_o_nxt;
    reg[31:0] TIM_PRE, TIM_PRE_nxt;
    reg[31:0] TIM_ARE, TIM_ARE_nxt;
    reg TIM_CLR, TIM_CLR_nxt;
    reg TIM_ENA, TIM_ENA_nxt;
    reg TIM_MOD, TIM_MOD_nxt;
    reg TIM_CNT, TIM_CNT_nxt;
    reg[31:0] TIM_EVN, TIM_EVN_nxt;
    reg TIM_EVC, TIM_EVC_nxt;
    reg[31:0] counter, counter_nxt;
    reg condition, condition_nxt;

	always @(posedge clk_i) begin
        TIM_PRE <= TIM_PRE_nxt;
        TIM_ARE <= TIM_ARE_nxt;
        TIM_CLR <= TIM_CLR_nxt;
        TIM_ENA <= TIM_ENA_nxt;
        TIM_MOD <= TIM_MOD_nxt;
        TIM_CNT <= TIM_CNT_nxt;
        TIM_EVN <= TIM_EVN_nxt;
        TIM_EVC <= TIM_EVC_nxt;
		
        rdata_o <= rdata_o_nxt;
		ready_o <= ready_o_nxt;
		condition <= condition_nxt;
	end

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
		ready_o_nxt = sel_i ? enable_i : 1'b1;

        if(setup) begin
            if(write_i) begin
                case(addr_i)
                    8'h00: TIM_PRE_nxt[7:0] = wdata_i;
                    8'h01: TIM_PRE_nxt[15:8] = wdata_i;
                    8'h02: TIM_PRE_nxt[23:16] = wdata_i;
                    8'h03: TIM_PRE_nxt[31:24] = wdata_i;

                    8'h04: TIM_ARE_nxt[7:0] = wdata_i; 
                    8'h05: TIM_ARE_nxt[15:8] = wdata_i;
                    8'h06: TIM_ARE_nxt[23:16] = wdata_i;
                    8'h07: TIM_ARE_nxt[31:24] = wdata_i;

                    8'h08: TIM_CLR_nxt = wdata_i[0];

                    8'h0C: TIM_ENA_nxt = wdata_i[0];
                    
                    8'h10: TIM_MOD_nxt = wdata_i[0];
                    
                    8'h1C: TIM_EVC_nxt = wdata_i[0];
                endcase
            end else begin
                rdata_o_nxt = 8'h00;
                case(addr_i)
                    8'h00: rdata_o_nxt = TIM_PRE[7:0];
                    8'h01: rdata_o_nxt = TIM_PRE[15:8];
                    8'h02: rdata_o_nxt = TIM_PRE[23:16];
                    8'h03: rdata_o_nxt = TIM_PRE[31:24];

                    8'h04: rdata_o_nxt = TIM_ARE[7:0];
                    8'h05: rdata_o_nxt = TIM_ARE[15:8];
                    8'h06: rdata_o_nxt = TIM_ARE[23:16];
                    8'h07: rdata_o_nxt = TIM_ARE[31:24];

                    8'h08: rdata_o_nxt[0] = TIM_CLR;

                    8'h0C: rdata_o_nxt[0] = TIM_ENA;

                    8'h10: rdata_o_nxt[0] = TIM_MOD;

                    8'h14: rdata_o_nxt = TIM_CNT[7:0];
                    8'h15: rdata_o_nxt = TIM_CNT[15:8];
                    8'h16: rdata_o_nxt = TIM_CNT[23:16];
                    8'h17: rdata_o_nxt = TIM_CNT[31:24];

                    8'h18: rdata_o_nxt = TIM_EVN[7:0];
                    8'h19: rdata_o_nxt = TIM_EVN[15:8];
                    8'h1A: rdata_o_nxt = TIM_EVN[23:16];
                    8'h1B: rdata_o_nxt = TIM_EVN[31:24];

                    8'h1C: rdata_o_nxt[0] = TIM_EVC;
                endcase
            end
        end

        condition_nxt = (&TIM_PRE_nxt) ? (`CLK_FREQ - 1) : TIM_PRE_nxt;
        if(TIM_ENA & (counter==condition)) begin
            counter_nxt = 32'h00_00_00_00;
            
            if(TIM_MOD) TIM_CNT_nxt = TIM_CNT + 1;
            else TIM_CNT_nxt = TIM_CNT - 1;

            if(TIM_ARE==TIM_CNT) begin
                TIM_CNT_nxt = 32'h00_00_00_00;
                TIM_EVN_nxt = TIM_EVN + 1;
            end
        end else begin
            counter_nxt = counter + 1;
        end

        if(TIM_CLR) TIM_CNT_nxt = 32'h00_00_00_00;

        if(TIM_EVC) TIM_EVN_nxt = 32'h00_00_00_00;


        if(rst) begin
            TIM_PRE_nxt = 32'hFF_FF_FF_FF;
            TIM_ARE_nxt = 32'hFF_FF_FF_FF;
            TIM_CLR_nxt = 1'b0;
            TIM_ENA_nxt = 1'b1;
            TIM_MOD_nxt = 1'b0;
            TIM_CNT_nxt = 32'h00_00_00_00;
            TIM_EVN_nxt = 32'h00_00_00_00;
            TIM_EVC_nxt = 1'b0;
            counter_nxt = 32'h00_00_00_00;
        end
    end
endmodule