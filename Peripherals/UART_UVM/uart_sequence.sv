class uart_base_sequence extends uvm_sequence;
    `uvm_object_utils(uart_base_sequence)
    uart_sequence_item reset_pkt;

    function new(string name= "uart_base_sequence");
        super.new(name);
    endfunction

    task body();
        reset_pkt = uart_sequence_item::type_id::create("reset_pkt");
        start_item(reset_pkt);
            reset_pkt.randomize() with {rst==1;};
        finish_item(reset_pkt);
    endtask: body
endclass: uart_base_sequence


class uart_test_sequence extends uart_base_sequence;
    `uvm_object_utils(uart_test_sequence)
    uart_sequence_item test_pkt;

    function new(string name= "uart_test_sequence");
        super.new(name);
    endfunction

    task body();
        for (int i = 0; i < 9; i++ ) begin
            test_pkt = uart_sequence_item::type_id::create($sformatf("data_pkt_%0d", i));
            start_item(test_pkt);
                test_pkt.randomize() with {rst==0;};
            finish_item(test_pkt);    
        end
    endtask: body
endclass: uart_test_sequence