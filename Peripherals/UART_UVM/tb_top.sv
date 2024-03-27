//TO DO
`timescale 1ns/1ns

import uvm_pkg::*;
`include "uvm_macros.svh"

//Include Files
`include "uart_interface.sv"
`include "uart_sequence_item.sv"
`include "uart_sequence.sv"
`include "uart_sequencer.sv"
`include "uart_driver.sv"
`include "uart_monitor.sv"
`include "uart_agent.sv"
`include "uart_scoreboard.sv"
`include "uart_env.sv"
`include "uart_test.sv"

module tb_top;

    logic clk;
    uart_interface intf(.clk(clk));

    top dut(
    );

    //Interface Setting
    initial begin
        uvm_config_db #(virtual uart_interface)::set(null, "*", "vif", intf );
    end

    //Start The Test
    initial begin
        run_test("uart_test");
    end
    
    //Clock Generation
    initial begin
        clk = 0;
        #10;
        forever #10 clk = ~clk;
    end

    //Maximum Simulation Time
    initial begin
        #5000;
        $display("Sorry! Ran out of clock cycles!");
        $finish();
    end

    //Generate Waveforms
    initial begin
        $dumpfile("d.vcd");
        $dumpvars();
    end

endmodule : tb_top