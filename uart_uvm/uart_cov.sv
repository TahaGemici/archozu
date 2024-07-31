
class uart_cov extends uvm_subscriber #(uart_trans);
  
  `uvm_component_utils(uart_cov)
  uart_trans trans;
	

  covergroup cov_inst;
  RX:coverpoint trans.rx_i {option.auto_bin_max = 1;}
  TX_DIN:coverpoint trans.tx_data_i {option.auto_bin_max = 8;}
  TX_START:coverpoint trans.cfg_i[0] {option.auto_bin_max = 1;}
  TX:coverpoint trans.tx_o {option.auto_bin_max = 1;}
  RX_DOUT:coverpoint trans.rx_data_o {option.auto_bin_max = 8;}
  //TX_ACT:coverpoint trans.tx_active {option.auto_bin_max = 1;}
  TX_DONE:coverpoint trans.done_tx_o {option.auto_bin_max = 1;}
  RX_DONE:coverpoint trans.done_rx_o {option.auto_bin_max = 1;}

  RXxRX_DOUTxRX_DONE: cross RX,RX_DOUT,RX_DONE;
  TXxTX_DINxTX_DONE: cross TX,TX_DIN,TX_DONE;
  TX_STARTxTX_DIN: cross TX_START,TX_DIN;
  endgroup 
  
  
  function new(string name="", uvm_component parent);
		super.new(name, parent);
		cov_inst = new();
	endfunction

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
	endfunction


  	virtual function void write(uart_trans t);
  	$cast(trans, t);
	 cov_inst.sample();
	 endfunction

endclass

