module clk_gen(
    input clk_in,
    input rst_in,
    output clk_out,
    output rst_out
);

`ifdef FPGA

    // Input buffering
    //------------------------------------
    wire clk_in1_clk_wiz_0;
    IBUF clk_in_ibufg
     (.O (clk_in1_clk_wiz_0),
      .I (clk_in));
    
    // Clocking PRIMITIVE
    //------------------------------------
    
    // Instantiation of the MMCM PRIMITIVE
    //    * Unused inputs are tied off
    //    * Unused outputs are labeled unused
    
    wire        clk_out1_clk_wiz_0;
    wire        clk_out2_clk_wiz_0;
    wire        clk_out3_clk_wiz_0;
    wire        clk_out4_clk_wiz_0;
    wire        clk_out5_clk_wiz_0;
    wire        clk_out6_clk_wiz_0;
    wire        clk_out7_clk_wiz_0;
    
    wire [15:0] do_unused;
    wire        drdy_unused;
    wire        psdone_unused;
    wire        locked_int;
    wire        clkfbout_clk_wiz_0;
    wire        clkfboutb_unused;
    wire        clkout1_unused;
    wire        clkout2_unused;
    wire        clkout3_unused;
    wire        clkout4_unused;
    wire        clkout5_unused;
    wire        clkout6_unused;
    wire        clkfbstopped_unused;
    wire        clkinstopped_unused;
    
    PLLE2_ADV
    #(.BANDWIDTH            ("OPTIMIZED"),
      .COMPENSATION         ("ZHOLD"),
      .STARTUP_WAIT         ("FALSE"),
      .DIVCLK_DIVIDE        (5),
      .CLKFBOUT_MULT        (42),
      .CLKFBOUT_PHASE       (0.000),
      .CLKOUT0_DIVIDE       (14),
      .CLKOUT0_PHASE        (0.000),
      .CLKOUT0_DUTY_CYCLE   (0.500),
      .CLKIN1_PERIOD        (10.000))
    plle2_adv_inst
      // Output clocks
     (
      .CLKFBOUT            (clkfbout_clk_wiz_0),
      .CLKOUT0             (clk_out1_clk_wiz_0),
      .CLKOUT1             (clkout1_unused),
      .CLKOUT2             (clkout2_unused),
      .CLKOUT3             (clkout3_unused),
      .CLKOUT4             (clkout4_unused),
      .CLKOUT5             (clkout5_unused),
       // Input clock control
      .CLKFBIN             (clkfbout_clk_wiz_0),
      .CLKIN1              (clk_in1_clk_wiz_0),
      .CLKIN2              (1'b0),
       // Tied to always select the primary input clock
      .CLKINSEL            (1'b1),
      // Ports for dynamic reconfiguration
      .DADDR               (7'h0),
      .DCLK                (1'b0),
      .DEN                 (1'b0),
      .DI                  (16'h0),
      .DO                  (do_unused),
      .DRDY                (drdy_unused),
      .DWE                 (1'b0),
      // Other control and status signals
      .LOCKED              (locked_int),
      .PWRDWN              (1'b0),
      .RST                 (1'b0));

    // Clock Monitor clock assigning
    //--------------------------------------
     // Output buffering
      //-----------------------------------


    assign rst_out = rst_in | (~locked_int);

    BUFG clkout1_buf
     (.O   (clk_out),
      .I   (clk_out1_clk_wiz_0));


`else
    assign clk_out = clk_in;
    assign rst_out = rst_in;
`endif

endmodule