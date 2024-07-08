`define FPGA //ASIC ise kapa

`ifdef FPGA
    `define NO_FLASH //FLASH MEMORY'Yİ KALDIRIR DİREK INSTR MEMORY'YE YÜKLER
`endif

`define CLK_PERIOD 20
`define CLK_FREQ (1_000_000_000.0/`CLK_PERIOD)
`define assert(condition, error_text) \
    if (condition) begin \
        $display("Error: %s", error_text); \
        $finish; \
    end