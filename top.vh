`define CLK_FREQ 32'd160_000_000
`define CLK_I2C_FREQ 32'd400_000

`define assert(condition, error_text) \
    if (condition) begin \
        $display("Error: %s", error_text); \
        $finish; \
    end