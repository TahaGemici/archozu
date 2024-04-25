interface uart_interface(input logic clk_i, input logic rst_i);
    //Rx
    logic rx_i;
    logic [7:0] data_rx_o;
    logic rx_flag_o;
    //Tx
    logic [7:0] data_tx_i;
    logic tx_en_o;
    logic tx_complete_o;
    //Bus
    logic hReady_o;
    clocking cb @(posedge clk_i);
        default input #1step output#1;
        input rx_i;
        output data_rx_o;
        output rx_flag_o;
        input data_tx_i;
        output tx_en_o;
        output tx_complete_o;
        output hReady_o;
    endclocking //cb

endinterface //uart_interface//TO DO