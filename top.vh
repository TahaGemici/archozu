//`define FPGA
`define CLK_FREQ 102_400_000
`define CLK_I2C_FREQ 400_000

`define ADDR_UART      15'b1_000_00000000000
`define ADDR_I2C       15'b1_001_00000000000
`define ADDR_QSPI      15'b1_010_00000000000
`define ADDR_TIMER     15'b1_011_00000000000
`define ADDR_USB       15'b1_100_00000000000
`define ADDR_GPIO      15'b1_101_00000000000
`define ADDR_INSTR_MEM 15'b1_110_00000000000

`define CLK_PERIOD (1_000_000_000.0/`CLK_FREQ)
`define assert(condition, error_text) \
    if (condition) begin \
        $display("Error: %s", error_text); \
        $finish; \
    end