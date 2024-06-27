module timer_mem(
    input clk_i,
    input rst_i,

    input write_bus,
    input[3:0] be_bus,
    input[31:0] addr_bus,
    input[31:0] data_i_bus,
    output reg[31:0] data_o_bus,

    input TIM_CLR_i,
    input[31:0] TIM_CNT_i,
    input[31:0] TIM_EVN_i,
    input TIM_EVC_i,
    
    output[31:0] TIM_PRE_o,
    output[31:0] TIM_ARE_o,
    output TIM_CLR_o,
    output TIM_ENA_o,
    output TIM_MOD_o,
    output[31:0] TIM_CNT_o,
    output[31:0] TIM_EVN_o,
    output TIM_EVC_o
);
    parameter SIZE=32;
    parameter[SIZE-1:0] ALLOW_WRITE=32'h10_01_11_ff;

    reg[7:0] mem[0:SIZE-1], mem_nxt[0:SIZE-1];
    reg[(SIZE-1):0] mem_wren_bus;

    assign TIM_PRE_o = {mem[3], mem[2], mem[1], mem[0]};
    assign TIM_ARE_o = {mem[7], mem[6], mem[5], mem[4]};
    assign TIM_CLR_o = mem[8][0];
    assign TIM_ENA_o = mem[12][0];
    assign TIM_MOD_o = mem[16][0];
    assign TIM_CNT_o = {mem[23], mem[22], mem[21], mem[20]};
    assign TIM_EVN_o = {mem[27], mem[26], mem[25], mem[24]};
    assign TIM_EVC_o = mem[28][0];

    genvar i;
    generate
        for(i=0;i<SIZE-3;i=i+1) begin
            always @(posedge clk_i) mem[i] <= rst_i ? 0 : mem_nxt[i];
        end
        for(i=0;i<8;i=i+1) begin
            always @* begin
                mem_nxt[i] = mem[i];
                if(mem_wren_bus[i]) begin
                    mem_nxt[i] = data_i_bus[{i[1:0]-addr_bus[1:0], 3'b0}+:8];
                end
            end
        end
        for(i=9;i<20;i=i+1) begin
            always @* begin
                mem_nxt[i] = mem[i];
                if(mem_wren_bus[i]) begin
                    mem_nxt[i] = data_i_bus[{i[1:0]-addr_bus[1:0], 3'b0}+:8];
                end
            end
        end
        always @* begin
            mem_nxt[ 8] = {7'b0, TIM_CLR_i};
            if(mem_wren_bus[8]) mem_nxt[8] = data_i_bus[{0-addr_bus[1:0], 3'b0}+:8];
            mem_nxt[20] = TIM_CNT_i[0+:8];
            if(mem_wren_bus[20]) mem_nxt[20] = data_i_bus[{0-addr_bus[1:0], 3'b0}+:8];
            mem_nxt[21] = TIM_CNT_i[8+:8];
            if(mem_wren_bus[21]) mem_nxt[21] = data_i_bus[{1-addr_bus[1:0], 3'b0}+:8];
            mem_nxt[22] = TIM_CNT_i[16+:8];
            if(mem_wren_bus[22]) mem_nxt[22] = data_i_bus[{2-addr_bus[1:0], 3'b0}+:8];
            mem_nxt[23] = TIM_CNT_i[24+:8];
            if(mem_wren_bus[23]) mem_nxt[23] = data_i_bus[{3-addr_bus[1:0], 3'b0}+:8];
            mem_nxt[24] = TIM_EVN_i[0+:8];
            if(mem_wren_bus[24]) mem_nxt[24] = data_i_bus[{0-addr_bus[1:0], 3'b0}+:8];
            mem_nxt[25] = TIM_EVN_i[8+:8];
            if(mem_wren_bus[25]) mem_nxt[25] = data_i_bus[{1-addr_bus[1:0], 3'b0}+:8];
            mem_nxt[26] = TIM_EVN_i[16+:8];
            if(mem_wren_bus[26]) mem_nxt[26] = data_i_bus[{2-addr_bus[1:0], 3'b0}+:8];
            mem_nxt[27] = TIM_EVN_i[24+:8];
            if(mem_wren_bus[27]) mem_nxt[27] = data_i_bus[{3-addr_bus[1:0], 3'b0}+:8];
            mem_nxt[28] = {7'b0, TIM_EVC_i};
            if(mem_wren_bus[28]) mem_nxt[28] = data_i_bus[{0-addr_bus[1:0], 3'b0}+:8];
            mem[29] = 0;
            mem[30] = 0;
            mem[31] = 0;
        end

        for(i=0;i<4;i=i+1) begin
            always @* begin
                data_o_bus[(8*i)+:8] = be_bus[i] ? mem[addr_bus + i] : 0;
            end
        end
    endgenerate

    always @* begin
        mem_wren_bus = 0;
        if(write_bus) begin
            mem_wren_bus[addr_bus+:4] = be_bus & ALLOW_WRITE[addr_bus+:4];
        end
    end
endmodule