//TRANSACTION CYCLE:
//1. Start new transaction
//2. Apply control signals
//3. Start transmitter and receiver
//4. Wait for transaction to complete (tx_done and rx_done)
//5. Complete transaction
//6. Repeat

//UART TOP MODULE (???) WILL NEED TO MODIFY UVM ACCORDINGLY (DISREGARD FOR NOW SEE BELOW)
/*module TopModule (
    input wire clk,             // System clock input
    input wire rst,             // Reset input
    input wire [7:0] data_tx,   // Data to transmit
    input wire rx,              // Receive input
    output reg [7:0] data_rx,   // Received data
    output reg tx_en,           // Transmit enable
    output reg rx_flag,         // Data received flag
    output reg tx_complete,     // Transmit completed flag
    output  Hready           // Handshake signal
); */

//VIRTUAL INTERFACE, UVM DONE ACCORDINGLY
/* interface uart_if; 
logic clk, rst;
logic tx_start, rx_start;
logic [7:0] tx_data_i;
logic [7:0] tx_data_o;
logic [16:0] baud_rate;
logic [1:0] stop_bits;
logic tx_done,rx_done;
logic [7:0] rx_data_i;
logic [7:0] rx_data_o;   
endinterface */

`include "uvm_macros.svh"
import uvm_pkg::*;

//UART CONFIGURATION
class uart_config extends uvm_object;
    `uvm_object_utils(uart_config)
    function new(string name = "uart_config");
        super.new(name);
    endfunction
    uvm_active_passive_enum is_active = UVM_ACTIVE;
endclass

//Different operating modes depending on the baud rate, data length and stop bits
typedef enum bit [1:0] {
    RAND_BAUD_1_STOP = 0,
    RAND_BAUD_1P5_STOP = 1,
    RAND_BAUD_2_STOP = 2,
} oper_mode;

//UART TRANSACTION
class uart_transaction extends uvm_sequence_item;
    `uvm_object_utils(uart_transaction)
    rand oper_mode op;
    logic rst;
    logic tx_start, tx_done;
    logic rx_start, rx_done;
    rand logic [7:0] tx_data_i;
    logic [7:0] tx_data_o;
    rand logic [7:0] rx_data_i;
    logic [7:0] rx_data_o;
    rand logic [15:0] baud_rate;
    logic [1:0] stop_bits; //1, 1.5 or 2 stop bits , 00, 01, 1X respectively
    constraint baud_rate_c { baud_rate inside {4800, 9600, 14400, 19200, 38400, 57600}; }
    function new(string name = "uart_transaction");
        super.new(name);
    endfunction
endclass

//UART SEQUENCE 1: RAND_BAUD_1_STOP
//random baud rate, 1 stop bit, 8 data bits
class random_baud_1_stop extends uvm_sequence#(uart_transaction);
    `uvm_object_utils(random_baud_1_stop)
    uart_transaction tr;

    function new(string name = "random_baud_1_stop");
        super.new(name);
    endfunction

    virtual task body();
        repeat(5) begin
            tr = uart_transaction::type_id::create("tr");
            start_item(tr);
                assert(tr.randomize);
                tr.op = RAND_BAUD_1_STOP;
                tr.rst = 1'b0;
                tr.tx_start = 1'b1;
                tr.rx_start = 1'b1;
                tr.stop_bits = 2'b00;
            finish_item(tr);
        end
    endtask
endclass

//UART SEQUENCE 2: RAND_BAUD_1P5_STOP
//random baud rate, 1.5 stop bits, 8 data bits
class random_baud_1p5_stop extends uvm_sequence#(uart_transaction);
    `uvm_object_utils(random_baud_1p5_stop)
    uart_transaction tr;

    function new(string name = "random_baud_1p5_stop");
        super.new(name);
    endfunction

    virtual task body();
        repeat(5) begin
            tr = uart_transaction::type_id::create("tr");
            start_item(tr);
                assert(tr.randomize);
                tr.op = RAND_BAUD_1P5_STOP;
                tr.rst = 1'b0;
                tr.tx_start = 1'b1;
                tr.rx_start = 1'b1;
                tr.stop_bits = 2'b01;
            finish_item(tr);
        end
    endtask
endclass

//UART SEQUENCE 3: RAND_BAUD_2_STOP
//random baud rate, 2 stop bits, 8 data bits
class random_baud_2_stop extends uvm_sequence#(uart_transaction);
    `uvm_object_utils(random_baud_2_stop)
    uart_transaction tr;

    function new(string name = "random_baud_2_stop");
        super.new(name);
    endfunction

    virtual task body();
        repeat(5) begin
            tr = uart_transaction::type_id::create("tr");
            start_item(tr);
                assert(tr.randomize);
                tr.op = RAND_BAUD_2_STOP;
                tr.rst = 1'b0;
                tr.tx_start = 1'b1;
                tr.rx_start = 1'b1;
                tr.stop_bits = 2'b10;
            finish_item(tr);
        end
    endtask
endclass

//UART DRIVER
class uart_driver extends uvm_driver#(uart_transaction);
    `uvm_component_utils(uart_driver)
    uart_transaction tr;
    virtual uart_if vif;

    function new(input string name = "uart_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        tr = uart_transaction::type_id::create("tr");
        if(!uvm_config_db#(uart_if)::get(this, "", "vif", vif))
            `uvm_error("DRIVER", "Unable to get vif");
    endfunction

    task reset_dut();
        repeat(5) begin
            vif.rst <= 1'b1;
            vif.tx_start <= 1'b0;
            vif.rx_start <= 1'b0;
            vif.tx_data_i <= 8'b0;
            vif.rx_data_i <= 8'b0;
            vif.baud_rate <= 16'b0;
            vif.stop_bits <= 2'b00;
            `uvm_info("DRIVER", "Start of Simulation: Resetting DUT", UVM_NONE);
            @(posedge vif.clk); //wait for 1 clock cycle to drive new transaction
        end 
    endtask

    task drive();
        reset_dut();
        forever begin
            seq_item_port.get_next_item(tr);
                vif.rst <= 1'b0;
                vif.tx_start <= tr.tx_start;
                vif.rx_start <= tr.rx_start;
                vif.tx_data_i <= tr.tx_data_i;
                vif.rx_data_i <= tr.rx_data_i;
                vif.baud_rate <= tr.baud_rate;
                vif.stop_bits <= tr.stop_bits;
                `uvm_info("DRIVER", $sformatf("BAUD:%0d STOP:%0d TX_DATA_IN:%0d RX_DATA_IN:%0d",
                 tr.baud_rate, tr.stop_bits, tr.tx_data_i, tr.rx_data_i), UVM_NONE);
                @(posedge vif.clk); //wait for the new clock cycle and tx_done and rx_done to drive new transaction
                @(posedge vif.tx_done);
                @(posedge vif.rx_done);
            seq_item_port.item_done(tr);
        end
    endtask

    virtual task run_phase(uvm_phase phase);
        drive();
    endtask
endclass

//UART MONITOR
class uart_monitor extends uvm_monitor;
    `uvm_component_utils(uart_monitor)
    uvm_analysis_port#(uart_transaction) send;
    uart_transaction tr;
    virtual uart_if vif;

    function new(input string name = "uart_monitor", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        tr = uart_transaction::type_id::create("tr");
        send = new("send", this);
        if(!uvm_config_db#(uart_if)::get(this, "", "vif", vif))
            `uvm_error("MONITOR", "Unable to get vif");
    endfunction

    task monitor();
        forever begin
            @(posedge vif.clk); //sample on the rising edge of the clock
            if(vif.rst) begin
                tr.rst = 1'b1;
                `umv_info("MONITOR", "System Reset Detected", UVM_NONE);
                send.write(tr);
            end
            else begin
                @(posedge vif.tx_done); //wait for tx_done to sample the data from uart_tx
                tr.rst = 1'b0;
                tr.tx_start = vif.tx_start;
                tr.tx_data_i = vif.tx_data_i;
                tr.tx_data_o = vif.tx_data_o;
                tr.baud_rate = vif.baud_rate;
                tr.stop_bits = vif.stop_bits;
                tr.tx_done = vif.tx_done;
                @(posedge vif.rx_done); //wait for rx_done to sample the data from uart_rx
                tr.rx_start = vif.rx_start;
                tr.rx_data_i = vif.rx_data_i;
                tr.rx_data_o = vif.rx_data_o;
                tr.rx_done = vif.rx_done;
                `uvm_info("MONITOR", $sformatf("BAUD:%0d STOP:%0d TX_DATA_OUT:%0d RX_DATA_OUT:%0d",
                 tr.baud_rate, tr.stop_bits, tr.tx_data_o, tr.rx_data_o), UVM_NONE);
                send.write(tr);
            end
        end
    endtask

    virtual task run_phase(uvm_phase phase);
        monitor();
    endtask
endclass

//UART SCOREBOARD
//TX and RX are not connected to each other, they are independent
//Very trivial scoreboard, just checking if the data is transmitted and received correctly
//Might need to add a counter to check if the design works at the correct baud rate
class uart_scoreboard extends uvm_scoreboard;
    `uvm_component_utils(uart_scoreboard)
    uvm_analysis_imp#(uart_transaction, uart_scoreboard) recv;

    function new(input string name = "uart_scoreboard", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        recv = new("recv", this);
    endfunction

    virtual function void write(uart_transaction tr);
        `uvm_info("SCOREBOARD", $sformatf("BAUD:%0d STOP:%0d TX_DATA_IN:%0d TX_DATA_OUT:%0d RX_DATA_IN:%0d RX_DATA_OUT:%0d",
         tr.baud_rate, tr.stop_bits, tr.tx_data_i, tr.tx_data_o, tr.rx_data_i, tr.rx_data_o), UVM_NONE);
        if(tr.rst == 1) begin
            `uvm_info("SCOREBOARD", "System Reset Detected", UVM_NONE);
        end
        else begin
            if(tr.tx_done == 1) begin
                `uvm_info("SCOREBOARD", "TX Done Detected", UVM_NONE);
                if(tr.tx_data_i == tr.tx.data_o) `uvm_info("SCOREBOARD", "TX Data Match", UVM_NONE);
                else `uvm_error("SCOREBOARD", "TX Data Mismatch");
            end
            else begin
                `uvm_error("SCOREBOARD", "TX Done Not Detected");
            end
            if(tr.rx_done == 1) begin
                `uvm_info("SCOREBOARD", "RX Done Detected", UVM_NONE);
                if(tr.rx_data_i == tr.rx_data_o) `uvm_info("SCOREBOARD", "RX Data Match", UVM_NONE);
                else `uvm_error("SCOREBOARD", "RX Data Mismatch");
            end
            else begin
                `uvm_error("SCOREBOARD", "RX Done Not Detected");
            end
        end
    endfunction
endclass

//UART AGENT
class uart_agent extends uvm_agent;
    `uvm_component_utils(uart_agent)
    uart_config cfg;

    function new(input string name = "uart_agent", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    uart_driver drv;
    uart_monitor mon;
    uvm_sequencer#(uart_transaction) seqr;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        cfg = uart_config::type_id::create("cfg");
        mon = uart_monitor::type_id::create("mon", this);
        if(cfg.is_active == UVM_ACTIVE) begin
            drv = uart_driver::type_id::create("drv", this);
            seqr = uvm_sequencer#(uart_transaction)::type_id::create("seqr", this);
        end
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        if(cfg.is_active == UVM_ACTIVE) begin
            drv.seq_item_port.connect(seqr.seq_item_export);
        end
    endfunction
endclass

//UART ENVIRONMENT
class uart_env extends uvm_env;
    `uvm_component_utils(uart_env)

    function new(input string name = "uart_env", uvm_component c);
        super.new(name, c);
    endfunction

    uart_agent agt;
    uart_scoreboard sb;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        agt = uart_agent::type_id::create("agt", this);
        sb = uart_scoreboard::type_id::create("sb", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        agt.mon.send.connect(sb.recv);
    endfunction
endclass

//UART TEST
class uart_test extends uvm_test;
    `uvm_component_utils(uart_test)

    function new(input string name = "uart_test", uvm_component c);
        super.new(name, c);
    endfunction

    uart_env env;
    random_baud_1_stop seq1;
    random_baud_1p5_stop seq2;
    random_baud_2_stop seq3;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        env = uart_env::type_id::create("env", this);
        seq1 = random_baud_1_stop::type_id::create("seq1", this);
        seq2 = random_baud_1p5_stop::type_id::create("seq2", this);
        seq3 = random_baud_2_stop::type_id::create("seq3", this);
    endfunction

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
        phase.raise_objection(this);
            seq1.start(env.agt.seqr);
            #100;
            seq2.start(env.agt.seqr);
            #100;
            seq3.start(env.agt.seqr);
            #100;
        phase.drop_objection(this);
    endtask
endclass