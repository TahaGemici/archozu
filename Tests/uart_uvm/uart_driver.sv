`timescale 1 ps/ 1 ps

  class uart_driver extends uvm_driver #(uart_trans);
  
    `uvm_component_utils(uart_driver)

    parameter clk_freq = 50000000; //MHz
    parameter baud_rate = 19200; //bits per second
    localparam clock_divide = (clk_freq/baud_rate);

    virtual uart_intf vif;
    reg [7:0] data;
    reg [7:0] captured_tx_data;
    reg tx_en;
    logic rx_done;
    logic tx_done;
    int no_transactions;
    
    
    function new(string name, uvm_component parent);
      super.new(name, parent);
    endfunction
    
    function void build_phase(uvm_phase phase);
      // Get interface reference from config database
      if( !uvm_config_db #(virtual uart_intf)::get(this, "", "uart_intf", vif) )
        `uvm_error("", "uvm_config_db::get failed")
    endfunction 

    task run_phase(uvm_phase phase);
      forever
      begin
        seq_item_port.get_next_item(req);
      `uvm_info("","---------------------------------------------",UVM_MEDIUM) 
      `uvm_info("", $sformatf("\t Transaction No. = %0d",no_transactions),UVM_MEDIUM) 
      //Test tx
      //vif.start <= 1;
      vif.cfg_i <= 1;
      vif.rx_i <= 1;
      vif.cbp_i <= clock_divide;
      vif.stop_bits_i <= 0;
      vif.write_i <= 0;
      @(posedge vif.clk_i);
      @(posedge vif.clk_i);
      vif.tx_data_i <= req.tx_data_i;
      vif.write_i <= 1;
      repeat(clock_divide) @(posedge vif.clk_i);
      
      for(int i=0;i<8;i++) begin
        repeat(clock_divide) @(posedge vif.clk_i);
        captured_tx_data[i] <= vif.tx_o;
        //repeat(clock_divide) @(posedge vif.clk_i);
      end

      repeat(clock_divide*2) @(posedge vif.clk_i);
        vif.cfg_i <= 0;
        if (captured_tx_data !== vif.tx_data_i) begin
            `uvm_error("TX MISMATCH", $sformatf("Mismatch: Expected %8b, Got %8b on tx_o", vif.tx_data_i, captured_tx_data));
        end else begin
            `uvm_info("TX MATCH", $sformatf("Match: Expected %8b, Got %8b on tx_o", vif.tx_data_i, captured_tx_data), UVM_MEDIUM);
        end

      repeat(100) @(posedge vif.clk_i);

      //Test rx
	    @(posedge vif.clk_i);
	    data = $random;
	    vif.rx_i <= 1'b0;
      vif.cbp_i <= clock_divide;
      vif.stop_bits_i <= 0;
	    repeat(clock_divide) @(posedge vif.clk_i);
	    for(int i=0;i<8;i++) begin
	    vif.rx_i <= data[i];
	    repeat(clock_divide) @(posedge vif.clk_i);
	    end
	    vif.rx_i <= 1'b1;
	    repeat(clock_divide) @(posedge vif.clk_i);
        vif.cfg_i[1] <= 0;

	    repeat(100) @(posedge vif.clk_i); 
	   `uvm_info("", $sformatf("\t Expected data = %h, \t Obtained data = %h", data,vif.rx_data_o),UVM_MEDIUM)  
      begin
	    if(vif.rx_data_o == data) begin
	    `uvm_info("","[TRANSACTION]::RX PASS",UVM_MEDIUM)  
      `uvm_info("","---------------------------------------------",UVM_MEDIUM)  
       end
	    else begin 
	   `uvm_info("","[TRANSACTION]::RX FAIL",UVM_MEDIUM)  
     `uvm_info("","---------------------------------------------",UVM_MEDIUM)  
      end
  end
                
        seq_item_port.item_done();
        no_transactions++;
      end
    endtask

  endclass: uart_driver
  
