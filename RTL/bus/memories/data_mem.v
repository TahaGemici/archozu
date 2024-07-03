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

    reg[7:0] mem[0:8191];

    assign data_o[ 0+:8] = mem[{addr_i[12:2], 2'b00}];
    assign data_o[ 8+:8] = mem[{addr_i[12:2], 2'b01}];
    assign data_o[16+:8] = mem[{addr_i[12:2], 2'b10}];
    assign data_o[24+:8] = mem[{addr_i[12:2], 2'b11}];

    always @(posedge clk_i) begin
        mem[{addr_i[12:2], 2'b00}] <= (write_i & be_sel_i[0]) ? data_i[ 0+:8] : mem[{addr_i[12:2], 2'b00}];
        mem[{addr_i[12:2], 2'b01}] <= (write_i & be_sel_i[1]) ? data_i[ 8+:8] : mem[{addr_i[12:2], 2'b01}];
        mem[{addr_i[12:2], 2'b10}] <= (write_i & be_sel_i[2]) ? data_i[16+:8] : mem[{addr_i[12:2], 2'b10}];
        mem[{addr_i[12:2], 2'b11}] <= (write_i & be_sel_i[3]) ? data_i[24+:8] : mem[{addr_i[12:2], 2'b11}];
    end

`endif

endmodule