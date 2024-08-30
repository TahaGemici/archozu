`define FPGA
//`define NO_FLASH
`define I2C_V2
`define MT25QL256ABA

`define CLK_PERIOD 16.667
`define CLK_FREQ 60_000_000
`define assert(condition, error_text) \
    if (condition) begin \
        $display("Error: %s", error_text); \
        $finish; \
    end