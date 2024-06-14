//TRANSACTION CYCLE:
//1. Start new transaction
//2. Apply control signals
//3. Start transmitter and receiver
//4. Wait for transaction to complete (tx_done and rx_done)
//5. Complete transaction
//6. Repeat

//UART TOP MODULE (???) WILL NEED TO MODIFY UVM ACCORDINGLY
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
    DATA_LENGTH_8 = 3
} oper_mode;

//UART TRANSACTION
class uart_transaction extends uvm_sequence_item;
    `uvm_object_utils(uart_transaction)
    rand oper_mode op;
    logic rst;
    logic tx_start, tx_done;
    logic rx_start, rx_done;
    rand logic [7:0] tx_data;
    logic [7:0] rx_out;
    rand logic [15:0] baud_rate;
    logic parity_en;
    logic data_length;
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
                tr.data_length = 8;
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
                tr.data_length = 8;
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
                tr.data_length = 8;
                tr.stop_bits = 2'b10;
            finish_item(tr);
        end
    endtask
endclass