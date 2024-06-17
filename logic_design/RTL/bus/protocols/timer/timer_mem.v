module timer_mem(
    input clk_i,

    input write_bus,
    input[3:0] be_bus,
    input[31:0] addr_bus,
    input[31:0] data_i_bus,
    output reg[31:0] data_o_bus,

    input write_perip,
    input[3:0] be_perip,
    input[31:0] wraddr_perip,
    input[31:0] data_i_perip,
    input[31:0] rdaddr_perip,
    output reg[31:0] data_o_perip
);
    parameter SIZE=32;
    parameter[SIZE-1:0] ALLOW_WRITE=32'h10_01_11_ff;

    reg[7:0] mem[0:SIZE-1], mem_nxt[0:SIZE-1];
    reg[(SIZE-1):0] mem_wren_bus, mem_wren_perip;
    
    integer j;
    initial begin
        for(j=0; j<SIZE; j=j+1) begin
            if(~ALLOW_WRITE[j]) mem[j] = 0;
        end
    end

    genvar i;
    generate
        for(i=0;i<SIZE;i=i+1) begin
            always @(posedge clk_i) mem[i] <= mem_nxt[i];

            always @* begin
                mem_nxt[i] = mem[i];
                if(mem_wren_bus[i]) begin
                    mem_nxt[i] = data_i_bus[{i[1:0]-addr_bus[1:0], 3'b0}+:8];
                end else if(mem_wren_perip[i]) begin
                    mem_nxt[i] = data_i_perip[{i[1:0]-wraddr_perip[1:0], 3'b0}+:8];
                end
            end
        end

        for(i=0;i<4;i=i+1) begin
            always @* begin
                data_o_perip[(8*i)+:8] = be_perip[i] ? mem[rdaddr_perip + i]  : 0;
                data_o_bus[(8*i)+:8]   = be_bus[i]   ? mem[addr_bus + i]      : 0;
            end
        end
    endgenerate

    always @* begin
        mem_wren_perip = 0;
        if(write_perip) begin
            mem_wren_perip[wraddr_perip+:4] = be_perip;
        end

        mem_wren_bus = 0;
        if(write_bus) begin
            mem_wren_bus[addr_bus+:4] = be_bus & ALLOW_WRITE[addr_bus+:4];
        end
    end



endmodule