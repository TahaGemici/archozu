// ASIC İSE İKİSİNİ DE KAPA
`define FPGA
`define NO_FLASH

`define CLK_PERIOD 16.667
`define CLK_FREQ 60
`define assert(condition, error_text) \
    if (condition) begin \
        $display("Error: %s", error_text); \
        $finish; \
    end