class uart_mon extends uvm_monitor;
	
	virtual uart_intf intf;
	uart_trans trans;
	uvm_analysis_port #(uart_trans) ap_port;
	`uvm_component_utils(uart_mon)
	
	function new(string name="", uvm_component parent);
		super.new(name, parent);
	endfunction


	function void build_phase(uvm_phase phase);
	  super.build_phase(phase);
	  ap_port = new("ap_port",this);
	  trans = uart_trans::type_id::create("trans");
		if(!uvm_config_db #(virtual uart_intf)::get(this, "", "uart_intf", intf)) 
		   begin
		    `uvm_error("ERROR::", "UVM_CONFIG_DB FAILED in uart_mon")
		    end
	endfunction

  
  task run_phase(uvm_phase phase);
    while(1) begin
      @(posedge intf.clk_i);
      trans = uart_trans::type_id::create("trans");
      /*trans.start = intf.start;
      trans.tx_active = intf.tx_active;
      trans.done_tx = intf.done_tx;
      trans.tx_data_in = intf.tx_data_in;
      trans.rx = intf.rx;
      trans.rx_data_out = intf.rx_data_out;
      trans.tx = intf.tx;*/

	  trans.tx_o = intf.tx_o;
	  trans.rx_i = intf.rx_i;
	  trans.tx_data_i = intf.tx_data_i;
	  trans.rx_data_o = intf.rx_data_o;
	  trans.done_tx_o = intf.done_tx_o;
	  trans.done_rx_o = intf.done_rx_o;
	  trans.cfg_i = intf.cfg_i;
	  trans.cbp_i = intf.cbp_i;
	  trans.stop_bits_i = intf.stop_bits_i;
      ap_port.write(trans);
    end
  endtask
  
  
endclass
