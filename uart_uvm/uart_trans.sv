`timescale 1 ps/ 1 ps

`include "uvm_macros.svh"
import uvm_pkg::*;

class uart_trans extends uvm_sequence_item;
  
  `uvm_object_utils(uart_trans)
        
  //bit tx_active;
    bit tx_o;
    bit rx_i;
    rand bit [7:0] tx_data_i;
    bit [7:0] rx_data_o;
    bit done_tx_o; 
    bit done_rx_o; 
    bit [2:0] cfg_i;
    bit [15:0] cbp_i;
    bit [1:0] stop_bits_i;
    bit [2:0] cfg_o;
    bit write_i;

  function new (string name = "");
    super.new(name);
  endfunction
  
endclass: uart_trans


