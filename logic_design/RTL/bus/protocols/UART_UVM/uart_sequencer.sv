class uart_sequencer extends uvm_sequencer#(uart_sequence_item);
    `uvm_component_utils(uart_sequencer)

    function new(string name = "uart_sequencer", uvm_component parent);
        super.new(name, parent); 
    endfunction: new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
    endfunction: build_phase

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction: connect_phase

    task run_phase (uvm_phase phase);
        super.run_phase(phase);
    endtask: run_phase
endclass //uart_sequencer extends uvm_test