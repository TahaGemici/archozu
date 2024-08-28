module uart_test(
    input clk_i,

    input rx,
    output[7:0] rx_data,

    input tx,
    input tx_en,
    input[7:0] tx_data,
    output tx_done
);
    parameter c_CLKS_PER_BIT=1;
    uart_test_rx #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) UART_RX_INST
    (.i_Clock(clk_i),
     .i_Rx_Serial(rx),
     .o_Rx_DV(),
     .o_Rx_Byte(rx_data)
     );
   
    uart_test_tx #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) UART_TX_INST
    (.i_Clock(clk_i),
     .i_Tx_DV(tx_en),
     .i_Tx_Byte(tx_data),
     .o_Tx_Active(),
     .o_Tx_Serial(tx),
     .o_Tx_Done(tx_done)
     );
endmodule