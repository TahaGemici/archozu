module perip_mem(
    input clk_i,

    input write_bus,
    input[3:0] be_bus,
    input[31:0] addr_bus,
    input[31:0] data_i_bus,
    output reg[31:0] data_o_bus,

    input write_perip,
    input[31:0] wraddr_perip,
    input[31:0] data_i_perip,
    input[31:0] rdaddr_perip,
    output reg[31:0] data_o_perip
);
    parameter SIZE=10;
    parameter[SIZE-1:0] ALLOW_WRITE=10'b11_1111_1111;

    reg[31:0] mem[0:SIZE-1], mem_nxt[0:SIZE-1];
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
                if(mem_wren_perip[i]) begin
                    mem_nxt[i] = data_i_perip;
                end
                if(mem_wren_bus[i]) begin
                    mem_nxt[i][ 0+:8] = be_bus[0] ? data_i_bus[ 0+:8] : mem[i][ 0+:8];
                    mem_nxt[i][ 8+:8] = be_bus[1] ? data_i_bus[ 8+:8] : mem[i][ 8+:8];
                    mem_nxt[i][16+:8] = be_bus[2] ? data_i_bus[16+:8] : mem[i][16+:8];
                    mem_nxt[i][24+:8] = be_bus[3] ? data_i_bus[24+:8] : mem[i][24+:8];
                end
            end
        end

        always @* begin
            data_o_perip = mem[rdaddr_perip[31:2]];
            data_o_bus   = mem[addr_bus[31:2]];
        end
    endgenerate

    always @* begin
        mem_wren_perip = 0;
        mem_wren_perip[wraddr_perip[31:2]] = write_perip;

        mem_wren_bus = 0;
        mem_wren_perip[addr_bus[31:2]] = write_bus & ALLOW_WRITE[addr_bus[31:2]];
    end
endmodule