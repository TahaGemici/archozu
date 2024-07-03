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
    parameter SIZE=8;
    parameter[SIZE-1:0] ALLOW_WRITE=8'b10011111;

    reg[31:0] mem[0:SIZE-1], mem_nxt[0:SIZE-1];
    reg[(SIZE-1):0] mem_wren_bus;

    assign TIM_PRE_o = mem[0];
    assign TIM_ARE_o = mem[1];
    assign TIM_CLR_o = mem[2][0];
    assign TIM_ENA_o = mem[3][0];
    assign TIM_MOD_o = mem[4][0];
    assign TIM_CNT_o = mem[5];
    assign TIM_EVN_o = mem[6];
    assign TIM_EVC_o = mem[7][0];

    genvar i;
    generate
        for(i=0;i<SIZE;i=i+1) begin
            always @(posedge clk_i) mem[i] <= rst_i ? 0 : mem_nxt[i];
        end
        for(i=0;i<2;i=i+1) begin
            always @* begin
                mem_nxt[i] = mem[i];
                if(mem_wren_bus[i]) begin
                    mem_nxt[i][ 0+:8] = be_bus[0] ? data_i_bus[ 0+:8] : mem[i][ 0+:8];
                    mem_nxt[i][ 8+:8] = be_bus[1] ? data_i_bus[ 8+:8] : mem[i][ 8+:8];
                    mem_nxt[i][16+:8] = be_bus[2] ? data_i_bus[16+:8] : mem[i][16+:8];
                    mem_nxt[i][24+:8] = be_bus[3] ? data_i_bus[24+:8] : mem[i][24+:8];
                end
            end
        end
        for(i=3;i<5;i=i+1) begin
            always @* begin
                mem_nxt[i] = mem[i];
                if(mem_wren_bus[i]) begin
                    mem_nxt[i][ 0+:8] = be_bus[0] ? data_i_bus[ 0+:8] : mem[i][ 0+:8];
                    mem_nxt[i][ 8+:8] = be_bus[1] ? data_i_bus[ 8+:8] : mem[i][ 8+:8];
                    mem_nxt[i][16+:8] = be_bus[2] ? data_i_bus[16+:8] : mem[i][16+:8];
                    mem_nxt[i][24+:8] = be_bus[3] ? data_i_bus[24+:8] : mem[i][24+:8];
                end
            end
        end
        always @* begin
            mem_nxt[2] = {30'b0, TIM_CLR_i};
            if(mem_wren_bus[2]) begin
                mem_nxt[2][ 0+:8] = be_bus[0] ? data_i_bus[ 0+:8] : mem[2][ 0+:8];
                mem_nxt[2][ 8+:8] = be_bus[1] ? data_i_bus[ 8+:8] : mem[2][ 8+:8];
                mem_nxt[2][16+:8] = be_bus[2] ? data_i_bus[16+:8] : mem[2][16+:8];
                mem_nxt[2][24+:8] = be_bus[3] ? data_i_bus[24+:8] : mem[2][24+:8];
            end

            mem_nxt[5] = TIM_CNT_i;
            if(mem_wren_bus[5]) begin
                mem_nxt[5][ 0+:8] = be_bus[0] ? data_i_bus[ 0+:8] : mem[5][ 0+:8];
                mem_nxt[5][ 8+:8] = be_bus[1] ? data_i_bus[ 8+:8] : mem[5][ 8+:8];
                mem_nxt[5][16+:8] = be_bus[2] ? data_i_bus[16+:8] : mem[5][16+:8];
                mem_nxt[5][24+:8] = be_bus[3] ? data_i_bus[24+:8] : mem[5][24+:8];
            end

            mem_nxt[6] = TIM_EVN_i;
            if(mem_wren_bus[6]) begin
                mem_nxt[6][ 0+:8] = be_bus[0] ? data_i_bus[ 0+:8] : mem[6][ 0+:8];
                mem_nxt[6][ 8+:8] = be_bus[1] ? data_i_bus[ 8+:8] : mem[6][ 8+:8];
                mem_nxt[6][16+:8] = be_bus[2] ? data_i_bus[16+:8] : mem[6][16+:8];
                mem_nxt[6][24+:8] = be_bus[3] ? data_i_bus[24+:8] : mem[6][24+:8];
            end

            mem_nxt[7] = {30'b0, TIM_EVC_i};
            if(mem_wren_bus[7]) begin
                mem_nxt[7][ 0+:8] = be_bus[0] ? data_i_bus[ 0+:8] : mem[7][ 0+:8];
                mem_nxt[7][ 8+:8] = be_bus[1] ? data_i_bus[ 8+:8] : mem[7][ 8+:8];
                mem_nxt[7][16+:8] = be_bus[2] ? data_i_bus[16+:8] : mem[7][16+:8];
                mem_nxt[7][24+:8] = be_bus[3] ? data_i_bus[24+:8] : mem[7][24+:8];
            end
        end

    endgenerate

    always @* begin
        mem_wren_bus = 0;
        mem_wren_bus[addr_bus[31:2]] = write_bus & ALLOW_WRITE[addr_bus[31:2]];
        data_o_bus = mem[addr_bus[31:2]];
    end
endmodule