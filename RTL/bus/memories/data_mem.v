module data_mem(
    input clk_i,
    input rst_i,
    input write_i,
    input[3:0] be_sel_i,
    input[12:0] addr_i,
    input[31:0] data_i,
    output[31:0] data_o
);

`ifdef FPGA

xpm_memory_spram #(
   .ADDR_WIDTH_A(11),             // DECIMAL
   .AUTO_SLEEP_TIME(0),           // DECIMAL
   .BYTE_WRITE_WIDTH_A(8),        // DECIMAL
   .CASCADE_HEIGHT(0),            // DECIMAL
   .ECC_BIT_RANGE("7:0"),         // String
   .ECC_MODE("no_ecc"),           // String
   .ECC_TYPE("none"),             // String
   .IGNORE_INIT_SYNTH(1),         // DECIMAL
   .MEMORY_INIT_FILE("none"),     // String
   .MEMORY_INIT_PARAM("0"),       // String
   .MEMORY_OPTIMIZATION("true"),  // String
   .MEMORY_PRIMITIVE("auto"),     // String
   .MEMORY_SIZE(65536),           // DECIMAL
   .MESSAGE_CONTROL(0),           // DECIMAL
   .RAM_DECOMP("auto"),           // String
   .READ_DATA_WIDTH_A(32),        // DECIMAL
   .READ_LATENCY_A(0),            // DECIMAL
   .READ_RESET_VALUE_A("0"),      // String
   .RST_MODE_A("SYNC"),           // String
   .SIM_ASSERT_CHK(0),            // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
   .USE_MEM_INIT(0),              // DECIMAL
   .USE_MEM_INIT_MMI(0),          // DECIMAL
   .WAKEUP_TIME("disable_sleep"), // String
   .WRITE_DATA_WIDTH_A(32),       // DECIMAL
   .WRITE_MODE_A("write_first"),  // String
   .WRITE_PROTECT(0)              // DECIMAL
)
xpm_memory_spram_inst (
   .dbiterra(),             // 1-bit output: Status signal to indicate double bit error occurrence
                                    // on the data output of port A.

   .douta(data_o),                   // READ_DATA_WIDTH_A-bit output: Data output for port A read operations.
   .sbiterra(),             // 1-bit output: Status signal to indicate single bit error occurrence
                                    // on the data output of port A.

   .addra(addr_i[12:2]),                   // ADDR_WIDTH_A-bit input: Address for port A write and read operations.
   .clka(clk_i),                     // 1-bit input: Clock signal for port A.
   .dina(data_i),                     // WRITE_DATA_WIDTH_A-bit input: Data input for port A write operations.
   .ena(1'b1),                       // 1-bit input: Memory enable signal for port A. Must be high on clock
                                    // cycles when read or write operations are initiated. Pipelined
                                    // internally.

   .injectdbiterra(), // 1-bit input: Controls double bit error injection on input data when
                                    // ECC enabled (Error injection capability is not available in
                                    // "decode_only" mode).

   .injectsbiterra(), // 1-bit input: Controls single bit error injection on input data when
                                    // ECC enabled (Error injection capability is not available in
                                    // "decode_only" mode).

   .regcea(),                 // 1-bit input: Clock Enable for the last register stage on the output
                                    // data path.

   .rsta(rst_i),                     // 1-bit input: Reset signal for the final port A output register stage.
                                    // Synchronously resets output port douta to the value specified by
                                    // parameter READ_RESET_VALUE_A.

   .sleep(),                   // 1-bit input: sleep signal to enable the dynamic power saving feature.
   .wea({4{write_i}} & be_sel_i)                   // WRITE_DATA_WIDTH_A/BYTE_WRITE_WIDTH_A-bit input: Write enable vector
                                    // for port A input data port dina. 1 bit wide when word-wide writes are
                                    // used. In byte-wide write configurations, each bit controls the
                                    // writing one byte of dina to address addra. For example, to
                                    // synchronously write only bits [15-8] of dina when WRITE_DATA_WIDTH_A
                                    // is 32, wea would be 4'b0010.

);

// End of xpm_memory_spram_inst instantiation

`else

    reg[31:0] data_o_reg;
    assign data_o = data_o_reg;
    reg[7:0] mem[0:(8*1024+2)], mem_nxt[0:(8*1024+2)];
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
                data_o_reg[(8*i)+:8] = be_sel_i[i] ? mem[addr_i + i] : 0;
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

`endif

endmodule