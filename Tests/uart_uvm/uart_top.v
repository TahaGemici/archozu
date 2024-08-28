module uart_top(
    input clk_i,
    input rst_i,
	
    output[7:0] rx_data,
    output rx_done,
    output tx_done,
    output[2:0] cfg,

    input[15:0] cbp,
    input[1:0] stop_bits,
    input[7:0] tx_data,
    
    input write_i,
    input[2:0] cfg_i,
    
    input rx,
	output tx
);

    reg[2:0] cfg;

    always @(posedge clk_i) begin
        cfg <= write_i ? cfg_i : {tx_done, rx_done, cfg[0]};
    end

    uart_core uart_core(
        clk_i,
        rst_i,

        rx_data,
        rx_done,
        tx_done,

        cbp,
        stop_bits,
        tx_data,
        cfg,

        rx,
        tx
    );

endmodule