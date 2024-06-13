class uart_agent extends uvm_agent;
    `uvm_component_utils(uart_agent)
    uart_driver driver;
    uart_sequencer sequencer;
    uart_monitor monitor;

    function new(string name = "uart_agent", uvm_component parent);
        super.new(name, parent);
    endfunction: new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info("AGENT_CLASS", "Build Phase!", UVM_HIGH)
        driver = uart_driver::type_id::create("driver", this);
        monitor = uart_monitor::type_id::create("monitor", this);
        sequencer = uart_sequencer::type_id::create("sequencer", this);
    endfunction: build_phase

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        driver.seq_item_port.connect(sequencer.seq_item_export);
    endfunction: connect_phase

    task run_phase (uvm_phase phase);
        super.run_phase(phase);
        `uvm_info("AGENT_CLASS", "Run Phase!", UVM_HIGH)
    endtask: run_phase
endclass //uart_agent extends uvm_test