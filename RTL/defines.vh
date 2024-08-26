`define FPGA
//`define NO_FLASH
//`define MT25QL256ABA

`define CLK_PERIOD 16.667
`define CLK_FREQ 60_000_000
`define assert(condition, error_text) \
    if (condition) begin \
        $display("Error: %s", error_text); \
        $finish; \
    end