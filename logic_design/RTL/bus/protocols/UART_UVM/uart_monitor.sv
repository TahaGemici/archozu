class uart_monitor extends uvm_monitor;
    `uvm_component_utils(uart_monitor)
    virtual uart_interface vif;
    uart_sequence_item item;
    uvm_analysis_port #(uart_sequence_item) monitor_port;

    function new(string name = "uart_monitor", uvm_component parent);
        super.new(name, parent);
    endfunction: new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        monitor_port = new("monitor_port", this);
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
            //send item to scoreboard
            @(vif.cb);
            //sample inputs
                item.data_tx_i = vif.data_tx_i;
                item.rx_i = vif.rx_i;
            //sample outputs
                item.data_rx_o = vif.data_rx_o;
                item.rx_flag_o = vif.rx_flag_o;
                item.tx_en_o = vif.tx_en_o;
                item.tx_complete_o = vif.tx_complete_o;
                item.hReady_o = vif.hReady_o;
            monitor_port.write(item);
            `uvm_info("MONITOR_CLASS", $sformatf("Saw item %s", item.convert2str()), UVM_HIGH)
        end
    endtask: run_phase
endclass //uart_monitor extends uvm_monitor