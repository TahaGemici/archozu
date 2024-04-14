class uart_env extends uvm_env;
    `uvm_component_utils(uart_env)
    uart_agent agent;
    uart_scoreboard scoreboard;

    function new(string name = "uart_env", uvm_component parent);
        super.new(name, parent);
    endfunction: new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        agent = uart_agent::type_id::create("agent", this);
        scoreboard = uart_scoreboard::type_id::create("scoreboard", this);
    endfunction: build_phase

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        agent.monitor.monitor_port.connect(scoreboard.scoreboard_port);
    endfunction: connect_phase

    task run_phase (uvm_phase phase);
        super.run_phase(phase);
    endtask: run_phase
endclass //uart_env extends uvm_test