//`define FPGA
`define CLK_FREQ 102_400_000
`define CLK_I2C_FREQ 400_000

`define ADDR_UART      17'b1_000_0000000000000
`define ADDR_I2C       17'b1_001_0000000000000
`define ADDR_QSPI      17'b1_010_0000000000000
`define ADDR_TIMER     17'b1_011_0000000000000
`define ADDR_USB       17'b1_100_0000000000000
`define ADDR_GPIO      17'b1_101_0000000000000
`define ADDR_INSTR_MEM 17'b1_110_0000000000000

`define CLK_PERIOD (1_000_000_000.0/`CLK_FREQ)
`define assert(condition, error_text) \
    if (condition) begin \
        $display("Error: %s", error_text); \
        $finish; \
    end