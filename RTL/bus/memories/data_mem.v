module data_mem(
    input clk_i,
    input write_i,
    input[3:0] be_sel_i,
    input[12:0] addr_i,
    input[31:0] data_i,
    output reg[31:0] data_o
);
    reg[7:0] mem[0:(8*1024+2)], mem_nxt[0:(8*1024+2)];
    wire[3:0] write = be_sel_i & {4{write_i}};
    reg[8194:0] mem_wren;

    genvar i;
    generate
        for(i=0;i<8192;i=i+1) begin
            always @(posedge clk_i) mem[i] <= mem_nxt[i];

            always @* begin
                mem_nxt[i] = mem[i];
                if(mem_wren[i]) begin
                    mem_nxt[i] = data_i[{i[1:0]-addr_i[1:0], 3'b0}+:8];
                end
            end
        end

        for(i=0;i<4;i=i+1) begin
            always @* begin
                data_o[(8*i)+:8] = be_sel_i[i] ? mem[addr_i + i] : 0;
            end
        end
    endgenerate

    always @* begin
        mem[8192] = 0;
        mem[8193] = 0;
        mem[8194] = 0;
        mem_wren = 0;
        if(write_i) begin
            mem_wren[addr_i+:4] = be_sel_i;
        end
    end

endmodule