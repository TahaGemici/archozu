`define assert(signal, value) \
    if (signal !== value) begin \
        $display("ASSERTION FAILED in %m: signal != value"); \
        $finish; \
    end

`define CLK_FREQ 32'd100_000_000