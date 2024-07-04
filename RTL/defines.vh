`define FPGA //ASIC ise kapa

`ifdef FPGA
    `define NO_FLASH //FLASH MEMORY'Yİ KALDIRIR DİREK INSTR MEMORY'YE YÜKLER
`endif

`define CLK_FREQ 100_000_000
`define CLK_PERIOD (1_000_000_000.0/`CLK_FREQ)
`define assert(condition, error_text) \
    if (condition) begin \
        $display("Error: %s", error_text); \
        $finish; \
    end