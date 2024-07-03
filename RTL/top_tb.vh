`define FPGA
`define CLK_FREQ 100_000_000
`define CLK_PERIOD (1_000_000_000.0/`CLK_FREQ)
`define assert(condition, error_text) \
    if (condition) begin \
        $display("Error: %s", error_text); \
        $finish; \
    end