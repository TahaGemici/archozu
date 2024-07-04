module instr_mem(
    input clk_i,
    
    input[13:0] addr_i,
    input req_i,
    output gnt_o,
    output reg rvalid_o,
    output reg[31:0] rdata_o,

    input write_i,
    input[12:0] addr,
    input[31:0] data
);
    reg[7:0] mem[0:(8*1024-1)];

    `ifdef NO_FLASH
        initial begin
            $readmemh("s25fl128s.mem",mem);
        end
    `endif

    wire[31:0] rom_out;
    rom rom(
        addr_i[13:2],
        rom_out
    );

    assign gnt_o = 1;
    reg[31:0] rdata_o_nxt;
    always @(posedge clk_i) begin
        rvalid_o <= req_i;
        rdata_o  <= rdata_o_nxt;
        mem[{addr[12:2], 2'b00}] <= write_i ? data[ 0+:8] : mem[{addr[12:2], 2'b00}];
        mem[{addr[12:2], 2'b01}] <= write_i ? data[ 8+:8] : mem[{addr[12:2], 2'b01}];
        mem[{addr[12:2], 2'b10}] <= write_i ? data[16+:8] : mem[{addr[12:2], 2'b10}];
        mem[{addr[12:2], 2'b11}] <= write_i ? data[24+:8] : mem[{addr[12:2], 2'b11}];
    end

    always @* begin
        rdata_o_nxt = rom_out;
        if(addr_i[13]) begin
            rdata_o_nxt[ 0+:8] = mem[{addr_i[12:2], 2'b00}];
            rdata_o_nxt[ 8+:8] = mem[{addr_i[12:2], 2'b01}];
            rdata_o_nxt[16+:8] = mem[{addr_i[12:2], 2'b10}];
            rdata_o_nxt[24+:8] = mem[{addr_i[12:2], 2'b11}];
        end
    end

endmodule