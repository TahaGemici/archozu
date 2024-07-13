module rom(
    input[6:0] addr_i,
    output[31:0] mem_out
);
    reg[7:0] mem[0:511];
    assign mem_out[ 0+:8] = mem[{addr_i, 2'b00}];
    assign mem_out[ 8+:8] = mem[{addr_i, 2'b01}];
    assign mem_out[16+:8] = mem[{addr_i, 2'b10}];
    assign mem_out[24+:8] = mem[{addr_i, 2'b11}];

    `ifdef NO_FLASH
        initial begin
            mem[0] = 8'h37;
            mem[1] = 8'h21;
            mem[2] = 8'h00;
            mem[3] = 8'h00;
            mem[4] = 8'h67;
            mem[5] = 8'h00;
            mem[6] = 8'h01;
            mem[7] = 8'h00;
            /*  lui x2, 2
                jalr x0, x2, 0 */
        end
    `else
        initial begin
            $readmemh("rom.mem",mem);
        end
    `endif
endmodule