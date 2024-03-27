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
            wait(!vif.rst);
           //TO DO
            //send item to scoreboard
            monitor_port.write(item);
            `uvm_info("MONITOR_CLASS", $sformatf("Saw item %s", item.convert2str()), UVM_HIGH)
        end
    endtask: run_phase
endclass //uart_monitor extends uvm_monitor