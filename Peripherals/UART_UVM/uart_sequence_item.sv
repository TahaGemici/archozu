
class uart_sequence_item extends uvm_sequence_item;
    `uvm_object_utils(uart_sequence_item)

    //CONSTRUCTOR
    function new(string path = "uart_sequence_item");
        super.new(path);
    endfunction: new
    //IO TO DO
endclass