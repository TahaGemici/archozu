
class uart_sequence_item extends uvm_sequence_item;
    `uvm_object_utils(uart_sequence_item)
    
    //Rx
    rand logic rx_i;
    logic [7:0] data_rx_o;
    logic rx_flag_o;
    //Tx
    rand logic [7:0] data_tx_i;
    logic tx_en_o;
    logic tx_complete_o;
    //Bus
    logic hReady_o;

    //CONSTRUCTOR
    function new(string path = "uart_sequence_item");
        super.new(path);
    endfunction: new
endclass