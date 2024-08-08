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

    wire[31:0] rom_out;
    rom rom(
        addr_i[8:2],
        rom_out
    );
    
    assign gnt_o = 1;
    reg[31:0] rdata_o_nxt;
    always @(posedge clk_i) begin
        rvalid_o <= req_i;
        rdata_o  <= rdata_o_nxt;
    end

    `ifdef FPGA

    wire[31:0] mem_out;
    always @* begin
        rdata_o_nxt = rom_out;
        if(addr_i[13]) begin
            rdata_o_nxt = mem_out;
        end
    end

`ifdef NO_FLASH
   integer i;
   reg[7:0] mem8[0:16383];
   reg[31:0] mem32[0:2047];
   initial begin
      $readmemh("s25fl128s.mem",mem8,0);
      for(i=2048;i<4096;i=i+1) begin
         mem32[i-2048] = {mem8[i*4+3], mem8[i*4+2], mem8[i*4+1], mem8[i*4]};
      end
      $writememh("instr_mem_no_flash.mem",mem32,0);
   end
`endif

xpm_memory_sdpram #(
   .ADDR_WIDTH_A(11),               // DECIMAL
   .ADDR_WIDTH_B(11),               // DECIMAL
   .AUTO_SLEEP_TIME(0),            // DECIMAL
   .BYTE_WRITE_WIDTH_A(32),        // DECIMAL
   .CASCADE_HEIGHT(0),             // DECIMAL
   .CLOCKING_MODE("common_clock"), // String
   .ECC_BIT_RANGE("7:0"),          // String
   .ECC_MODE("no_ecc"),            // String
   .ECC_TYPE("none"),              // String
   .IGNORE_INIT_SYNTH(0),          // DECIMAL
`ifdef NO_FLASH
      `ifdef LINUX
   .MEMORY_INIT_FILE({`PATH, "RTL/bus/memories/instr_mem_no_flash.mem"}),      // String
      `else
   .MEMORY_INIT_FILE("instr_mem_no_flash.mem"),      // String
      `endif
`else
   .MEMORY_INIT_FILE("none"),      // String
`endif
   .MEMORY_INIT_PARAM("0"),        // String
   .MEMORY_OPTIMIZATION("true"),   // String
   .MEMORY_PRIMITIVE("auto"),      // String
   .MEMORY_SIZE(65536),            // DECIMAL
   .MESSAGE_CONTROL(0),            // DECIMAL
   .RAM_DECOMP("auto"),            // String
   .READ_DATA_WIDTH_B(32),         // DECIMAL
   .READ_LATENCY_B(0),             // DECIMAL
   .READ_RESET_VALUE_B("0"),       // String
   .RST_MODE_A("SYNC"),            // String
   .RST_MODE_B("SYNC"),            // String
   .SIM_ASSERT_CHK(0),             // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
   .USE_EMBEDDED_CONSTRAINT(0),    // DECIMAL
   .USE_MEM_INIT(1),               // DECIMAL
   .USE_MEM_INIT_MMI(1),           // DECIMAL
   .WAKEUP_TIME("disable_sleep"),  // String
   .WRITE_DATA_WIDTH_A(32),        // DECIMAL
   .WRITE_MODE_B("write_first"),   // String
   .WRITE_PROTECT(1)               // DECIMAL
)
xpm_memory_sdpram_inst (
   .dbiterrb(),             // 1-bit output: Status signal to indicate double bit error occurrence
                                    // on the data output of port B.

   .doutb(mem_out),                   // READ_DATA_WIDTH_B-bit output: Data output for port B read operations.
   .sbiterrb(),             // 1-bit output: Status signal to indicate single bit error occurrence
                                    // on the data output of port B.

   .addra(addr[12:2]),                   // ADDR_WIDTH_A-bit input: Address for port A write operations.
   .addrb(addr_i[12:2]),                   // ADDR_WIDTH_B-bit input: Address for port B read operations.
   .clka(clk_i),                     // 1-bit input: Clock signal for port A. Also clocks port B when
                                    // parameter CLOCKING_MODE is "common_clock".

   .clkb(),                     // 1-bit input: Clock signal for port B when parameter CLOCKING_MODE is
                                    // "independent_clock". Unused when parameter CLOCKING_MODE is
                                    // "common_clock".

   .dina(data),                     // WRITE_DATA_WIDTH_A-bit input: Data input for port A write operations.
   .ena(1'b1),                       // 1-bit input: Memory enable signal for port A. Must be high on clock
                                    // cycles when write operations are initiated. Pipelined internally.

   .enb(1'b1),                       // 1-bit input: Memory enable signal for port B. Must be high on clock
                                    // cycles when read operations are initiated. Pipelined internally.

   .injectdbiterra(), // 1-bit input: Controls double bit error injection on input data when
                                    // ECC enabled (Error injection capability is not available in
                                    // "decode_only" mode).

   .injectsbiterra(), // 1-bit input: Controls single bit error injection on input data when
                                    // ECC enabled (Error injection capability is not available in
                                    // "decode_only" mode).

   .regceb(),                 // 1-bit input: Clock Enable for the last register stage on the output
                                    // data path.

   .rstb(1'b0),                     // 1-bit input: Reset signal for the final port B output register stage.
                                    // Synchronously resets output port doutb to the value specified by
                                    // parameter READ_RESET_VALUE_B.

   .sleep(1'b0),                   // 1-bit input: sleep signal to enable the dynamic power saving feature.
   .wea(write_i)                        // WRITE_DATA_WIDTH_A/BYTE_WRITE_WIDTH_A-bit input: Write enable vector
                                    // for port A input data port dina. 1 bit wide when word-wide writes are
                                    // used. In byte-wide write configurations, each bit controls the
                                    // writing one byte of dina to address addra. For example, to
                                    // synchronously write only bits [15-8] of dina when WRITE_DATA_WIDTH_A
                                    // is 32, wea would be 4'b0010.

);


    `else

    reg[7:0] mem[0:8191];
    `ifdef NO_FLASH
        $readmemh("s25fl128s.mem",mem,8192);
    `endif

    always @(posedge clk_i) begin
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

    `endif

endmodule