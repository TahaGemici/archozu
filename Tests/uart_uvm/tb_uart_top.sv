`timescale 1 ps/ 1 ps

`include "uart_trans.sv"
`include "uart_sequence.sv"
`include "uart_intf.sv"
`include "uart_driver.sv"
`include "uart_mon.sv"
`include "uart_cov.sv"
`include "uart_agent.sv"
`include "uart_env.sv"
`include "uart_test.sv"

module tb_uart_top;
  
  
  bit clk;
  bit rst;
  
  uart_intf intf();
  
  /*uart    dut(
              .clk(intf.clk),
              .rst(intf.rst),
              .rx(intf.rx),
              .tx_data_in(intf.tx_data_in),
              .start(intf.start),
              .rx_data_out(intf.rx_data_out),
              .tx(intf.tx),
              .tx_active(intf.tx_active),
              .done_tx(intf.done_tx)
              );*/

  uart_top dut(
            .clk_i(intf.clk_i),
            .rst_i(intf.rst_i),
            .tx(intf.tx_o),
            .rx(intf.rx_i),
            .tx_data(intf.tx_data_i),
            .rx_data(intf.rx_data_o),
            .tx_done(intf.done_tx_o),
            .rx_done(intf.done_rx_o),
            .cfg_i(intf.cfg_i),
            .cbp(intf.cbp_i),
            .stop_bits(intf.stop_bits_i),
            .cfg(intf.cfg_o),
            .write_i(intf.write_i)
  );

  // Clock generator
  initial
  begin
    intf.clk_i = 0;
    forever #5 intf.clk_i = ~intf.clk_i;
  end
  
  initial
  begin
    intf.rst_i = 1;
    #1000;
    intf.rst_i = 0;
  end



  initial
  begin
    uvm_config_db #(virtual uart_intf)::set(null, "*", "uart_intf", intf);
    void'(uvm_config_db #(int)::set(null,"*","no_of_transactions",10));
    
    uvm_top.finish_on_completion = 1;
    
    run_test("uart_test");
  end

endmodule: tb_uart_top


