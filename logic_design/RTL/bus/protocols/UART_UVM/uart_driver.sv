class uart_driver extends uvm_driver#(uart_sequence_item);
    `uvm_component_utils(uart_driver)
    virtual uart_interface vif;
    uart_sequence_item item;

    function new(string name = "uart_driver", uvm_component parent);
        super.new(name, parent);
    endfunction: new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!(uvm_config_db #(virtual uart_interface)::get(this, "*", "vif", vif))) begin
            `uvm_error("DRIVER_CLASS", "Failed to get VIF from config DB!")
        end
    endfunction: build_phase

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction: connect_phase

    task run_phase (uvm_phase phase);
        super.run_phase(phase);
        forever begin
            item = uart_sequence_item::type_id::create("item");
            seq_item_port.get_next_item(item);
            drive(item);
            seq_item_port.item_done();
        end
    endtask: run_phase

    //--------------------------------------------------------
    //[Method] Drive
    //--------------------------------------------------------
    task drive(uart_sequence_item item);
        @(vif.cb);
            vif.data_tx_i <= item.data_tx_i;
            vif.rx_i <= item.rx_i; 
    endtask: drive
endclass //uart_driver extends uvm_test