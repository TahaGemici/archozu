`timescale 1 ps/ 1 ps

interface uart_intf;
  
	logic clk_i;
	logic rst_i;
	logic tx_o;
	logic rx_i;
	logic [7:0] tx_data_i;
	logic [7:0] rx_data_o;
	logic done_tx_o; 
	logic done_rx_o; 
	logic [2:0] cfg_i;
	logic [15:0] cbp_i;
    logic [1:0] stop_bits_i;
	//logic tx_active;
	logic [2:0] cfg_o;
	logic write_i;

endinterface

