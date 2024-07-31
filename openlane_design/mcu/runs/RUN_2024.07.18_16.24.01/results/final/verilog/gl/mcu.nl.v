// This is the unpowered netlist.
module mcu (clk,
    cs,
    rst,
    rx,
    scl_io,
    sclk,
    sda_io,
    tx,
    in,
    io,
    out);
 input clk;
 output cs;
 input rst;
 input rx;
 output scl_io;
 output sclk;
 inout sda_io;
 output tx;
 input [15:0] in;
 inout [3:0] io;
 output [15:0] out;

 wire net9;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net25;
 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire \bus.QSPI_master.cntr_state_q[0] ;
 wire \bus.QSPI_master.cntr_state_q[1] ;
 wire \bus.QSPI_master.cntr_state_q[2] ;
 wire \bus.QSPI_master.state_q[0] ;
 wire \bus.QSPI_master.state_q_prv ;
 wire \bus.UART.uart_core.tx_clk_cntr[0] ;
 wire \bus.UART.uart_core.tx_clk_cntr[10] ;
 wire \bus.UART.uart_core.tx_clk_cntr[11] ;
 wire \bus.UART.uart_core.tx_clk_cntr[12] ;
 wire \bus.UART.uart_core.tx_clk_cntr[13] ;
 wire \bus.UART.uart_core.tx_clk_cntr[14] ;
 wire \bus.UART.uart_core.tx_clk_cntr[15] ;
 wire \bus.UART.uart_core.tx_clk_cntr[1] ;
 wire \bus.UART.uart_core.tx_clk_cntr[2] ;
 wire \bus.UART.uart_core.tx_clk_cntr[3] ;
 wire \bus.UART.uart_core.tx_clk_cntr[4] ;
 wire \bus.UART.uart_core.tx_clk_cntr[5] ;
 wire \bus.UART.uart_core.tx_clk_cntr[6] ;
 wire \bus.UART.uart_core.tx_clk_cntr[7] ;
 wire \bus.UART.uart_core.tx_clk_cntr[8] ;
 wire \bus.UART.uart_core.tx_clk_cntr[9] ;
 wire \bus.UART.uart_core.tx_cntr[0] ;
 wire \bus.UART.uart_core.tx_cntr[1] ;
 wire \bus.UART.uart_core.tx_cntr[2] ;
 wire \bus.UART.uart_core.tx_state[0] ;
 wire \bus.UART.uart_core.tx_state[1] ;
 wire \bus.UART.uart_core.tx_state_en ;
 wire clknet_0_clk;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;
 wire net1;
 wire net2;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;

 sky130_fd_sc_hd__decap_4 FILLER_0_0_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_111 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_116 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_17 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_35 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_57 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_62 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_80 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_85 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_89 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_98 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_123 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_10_25 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_66 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_7 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_76 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_85 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_97 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_103 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_108 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_11_121 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_19 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_11_31 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_38 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_50 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_11_86 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_92 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_96 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_112 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_13 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_47 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_83 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_13_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_49 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_75 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_123 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_14_21 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_46 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_62 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_14_81 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_14_90 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_98 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_15_110 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_121 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_19 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_15_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_35 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_15_54 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_65 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_72 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_84 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_98 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_123 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_37 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_62 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_16_74 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_82 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_111 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_17_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_17_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_21 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_17_38 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_46 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_91 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_18_102 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_122 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_26 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18_37 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_60 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_78 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_85 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_19_121 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_17 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_33 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_39 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_60 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_72 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_92 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_111 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_1_121 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_20 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_93 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_109 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_20_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_97 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_2_121 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_14 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_2_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_2_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_56 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_68 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_2_80 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_106 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3_121 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_33 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_54 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_65 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_94 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_4_121 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_4_25 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_4_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_35 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_50 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_62 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_4_74 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_9 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_111 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_5_121 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_5_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_19 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_26 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_34 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_69 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_6_104 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_123 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_6_25 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_6_52 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_60 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_82 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_6_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_117 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_19 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_31 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_35 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_52 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_122 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_35 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_45 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_8_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_79 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_111 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_121 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_22 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_34 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_81 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_63 ();
 sky130_fd_sc_hd__nand2_1 _110_ (.A(\bus.UART.uart_core.tx_state[1] ),
    .B(\bus.UART.uart_core.tx_state[0] ),
    .Y(_078_));
 sky130_fd_sc_hd__nor2_1 _111_ (.A(\bus.UART.uart_core.tx_state[1] ),
    .B(\bus.UART.uart_core.tx_state[0] ),
    .Y(_079_));
 sky130_fd_sc_hd__inv_2 _112_ (.A(_079_),
    .Y(_080_));
 sky130_fd_sc_hd__nand2_1 _113_ (.A(_078_),
    .B(_080_),
    .Y(net4));
 sky130_fd_sc_hd__or4_1 _114_ (.A(\bus.UART.uart_core.tx_clk_cntr[9] ),
    .B(\bus.UART.uart_core.tx_clk_cntr[8] ),
    .C(\bus.UART.uart_core.tx_clk_cntr[11] ),
    .D(\bus.UART.uart_core.tx_clk_cntr[10] ),
    .X(_081_));
 sky130_fd_sc_hd__or4_1 _115_ (.A(\bus.UART.uart_core.tx_clk_cntr[5] ),
    .B(\bus.UART.uart_core.tx_clk_cntr[4] ),
    .C(\bus.UART.uart_core.tx_clk_cntr[7] ),
    .D(\bus.UART.uart_core.tx_clk_cntr[6] ),
    .X(_082_));
 sky130_fd_sc_hd__or4_1 _116_ (.A(\bus.UART.uart_core.tx_clk_cntr[0] ),
    .B(\bus.UART.uart_core.tx_clk_cntr[1] ),
    .C(\bus.UART.uart_core.tx_clk_cntr[3] ),
    .D(\bus.UART.uart_core.tx_clk_cntr[2] ),
    .X(_083_));
 sky130_fd_sc_hd__or4_1 _117_ (.A(\bus.UART.uart_core.tx_clk_cntr[13] ),
    .B(\bus.UART.uart_core.tx_clk_cntr[12] ),
    .C(\bus.UART.uart_core.tx_clk_cntr[15] ),
    .D(\bus.UART.uart_core.tx_clk_cntr[14] ),
    .X(_084_));
 sky130_fd_sc_hd__or3_1 _118_ (.A(_082_),
    .B(_083_),
    .C(_084_),
    .X(_085_));
 sky130_fd_sc_hd__nor2_1 _119_ (.A(_081_),
    .B(_085_),
    .Y(_086_));
 sky130_fd_sc_hd__or2_1 _120_ (.A(net1),
    .B(_086_),
    .X(_087_));
 sky130_fd_sc_hd__clkbuf_1 _121_ (.A(_087_),
    .X(_000_));
 sky130_fd_sc_hd__nor2_1 _122_ (.A(_079_),
    .B(_086_),
    .Y(_088_));
 sky130_fd_sc_hd__inv_2 _123_ (.A(_088_),
    .Y(_089_));
 sky130_fd_sc_hd__a21o_1 _124_ (.A1(\bus.UART.uart_core.tx_state[1] ),
    .A2(\bus.UART.uart_core.tx_state[0] ),
    .B1(\bus.UART.uart_core.tx_clk_cntr[0] ),
    .X(_090_));
 sky130_fd_sc_hd__nor2_1 _125_ (.A(_089_),
    .B(_090_),
    .Y(_001_));
 sky130_fd_sc_hd__buf_2 _126_ (.A(_088_),
    .X(_091_));
 sky130_fd_sc_hd__o21ai_1 _127_ (.A1(\bus.UART.uart_core.tx_clk_cntr[1] ),
    .A2(_090_),
    .B1(_091_),
    .Y(_092_));
 sky130_fd_sc_hd__a21oi_1 _128_ (.A1(\bus.UART.uart_core.tx_clk_cntr[1] ),
    .A2(_090_),
    .B1(_092_),
    .Y(_002_));
 sky130_fd_sc_hd__and3_1 _129_ (.A(\bus.UART.uart_core.tx_clk_cntr[1] ),
    .B(\bus.UART.uart_core.tx_clk_cntr[2] ),
    .C(_090_),
    .X(_093_));
 sky130_fd_sc_hd__a21o_1 _130_ (.A1(\bus.UART.uart_core.tx_clk_cntr[1] ),
    .A2(_090_),
    .B1(\bus.UART.uart_core.tx_clk_cntr[2] ),
    .X(_094_));
 sky130_fd_sc_hd__and3b_1 _131_ (.A_N(_093_),
    .B(_094_),
    .C(_088_),
    .X(_095_));
 sky130_fd_sc_hd__clkbuf_1 _132_ (.A(_095_),
    .X(_003_));
 sky130_fd_sc_hd__and4_2 _133_ (.A(\bus.UART.uart_core.tx_clk_cntr[1] ),
    .B(\bus.UART.uart_core.tx_clk_cntr[3] ),
    .C(\bus.UART.uart_core.tx_clk_cntr[2] ),
    .D(_090_),
    .X(_096_));
 sky130_fd_sc_hd__inv_2 _134_ (.A(_096_),
    .Y(_097_));
 sky130_fd_sc_hd__o211a_1 _135_ (.A1(\bus.UART.uart_core.tx_clk_cntr[3] ),
    .A2(_093_),
    .B1(_097_),
    .C1(_091_),
    .X(_004_));
 sky130_fd_sc_hd__o21ai_1 _136_ (.A1(\bus.UART.uart_core.tx_clk_cntr[4] ),
    .A2(_096_),
    .B1(_091_),
    .Y(_098_));
 sky130_fd_sc_hd__a21oi_1 _137_ (.A1(\bus.UART.uart_core.tx_clk_cntr[4] ),
    .A2(_096_),
    .B1(_098_),
    .Y(_005_));
 sky130_fd_sc_hd__and3_1 _138_ (.A(\bus.UART.uart_core.tx_clk_cntr[5] ),
    .B(\bus.UART.uart_core.tx_clk_cntr[4] ),
    .C(_096_),
    .X(_099_));
 sky130_fd_sc_hd__a21o_1 _139_ (.A1(\bus.UART.uart_core.tx_clk_cntr[4] ),
    .A2(_096_),
    .B1(\bus.UART.uart_core.tx_clk_cntr[5] ),
    .X(_100_));
 sky130_fd_sc_hd__and3b_1 _140_ (.A_N(_099_),
    .B(_091_),
    .C(_100_),
    .X(_101_));
 sky130_fd_sc_hd__clkbuf_1 _141_ (.A(_101_),
    .X(_006_));
 sky130_fd_sc_hd__and4_1 _142_ (.A(\bus.UART.uart_core.tx_clk_cntr[5] ),
    .B(\bus.UART.uart_core.tx_clk_cntr[4] ),
    .C(\bus.UART.uart_core.tx_clk_cntr[6] ),
    .D(_096_),
    .X(_029_));
 sky130_fd_sc_hd__o21ai_1 _143_ (.A1(\bus.UART.uart_core.tx_clk_cntr[6] ),
    .A2(_099_),
    .B1(_091_),
    .Y(_030_));
 sky130_fd_sc_hd__nor2_1 _144_ (.A(_029_),
    .B(_030_),
    .Y(_007_));
 sky130_fd_sc_hd__o21ai_1 _145_ (.A1(\bus.UART.uart_core.tx_clk_cntr[7] ),
    .A2(_029_),
    .B1(_091_),
    .Y(_031_));
 sky130_fd_sc_hd__a21oi_1 _146_ (.A1(\bus.UART.uart_core.tx_clk_cntr[7] ),
    .A2(_029_),
    .B1(_031_),
    .Y(_008_));
 sky130_fd_sc_hd__and3_1 _147_ (.A(\bus.UART.uart_core.tx_clk_cntr[7] ),
    .B(\bus.UART.uart_core.tx_clk_cntr[8] ),
    .C(_029_),
    .X(_032_));
 sky130_fd_sc_hd__a21o_1 _148_ (.A1(\bus.UART.uart_core.tx_clk_cntr[7] ),
    .A2(_029_),
    .B1(\bus.UART.uart_core.tx_clk_cntr[8] ),
    .X(_033_));
 sky130_fd_sc_hd__and3b_1 _149_ (.A_N(_032_),
    .B(_088_),
    .C(_033_),
    .X(_034_));
 sky130_fd_sc_hd__clkbuf_1 _150_ (.A(_034_),
    .X(_009_));
 sky130_fd_sc_hd__and4_1 _151_ (.A(\bus.UART.uart_core.tx_clk_cntr[7] ),
    .B(\bus.UART.uart_core.tx_clk_cntr[9] ),
    .C(\bus.UART.uart_core.tx_clk_cntr[8] ),
    .D(_029_),
    .X(_035_));
 sky130_fd_sc_hd__o21ai_1 _152_ (.A1(\bus.UART.uart_core.tx_clk_cntr[9] ),
    .A2(_032_),
    .B1(_091_),
    .Y(_036_));
 sky130_fd_sc_hd__nor2_1 _153_ (.A(_035_),
    .B(_036_),
    .Y(_010_));
 sky130_fd_sc_hd__o21ai_1 _154_ (.A1(\bus.UART.uart_core.tx_clk_cntr[10] ),
    .A2(_035_),
    .B1(_091_),
    .Y(_037_));
 sky130_fd_sc_hd__a21oi_1 _155_ (.A1(\bus.UART.uart_core.tx_clk_cntr[10] ),
    .A2(_035_),
    .B1(_037_),
    .Y(_011_));
 sky130_fd_sc_hd__and3_1 _156_ (.A(\bus.UART.uart_core.tx_clk_cntr[11] ),
    .B(\bus.UART.uart_core.tx_clk_cntr[10] ),
    .C(_035_),
    .X(_038_));
 sky130_fd_sc_hd__a21o_1 _157_ (.A1(\bus.UART.uart_core.tx_clk_cntr[10] ),
    .A2(_035_),
    .B1(\bus.UART.uart_core.tx_clk_cntr[11] ),
    .X(_039_));
 sky130_fd_sc_hd__and3b_1 _158_ (.A_N(_038_),
    .B(_088_),
    .C(_039_),
    .X(_040_));
 sky130_fd_sc_hd__clkbuf_1 _159_ (.A(_040_),
    .X(_012_));
 sky130_fd_sc_hd__and4_1 _160_ (.A(\bus.UART.uart_core.tx_clk_cntr[11] ),
    .B(\bus.UART.uart_core.tx_clk_cntr[10] ),
    .C(\bus.UART.uart_core.tx_clk_cntr[12] ),
    .D(_035_),
    .X(_041_));
 sky130_fd_sc_hd__dlymetal6s2s_1 _161_ (.A(_041_),
    .X(_042_));
 sky130_fd_sc_hd__o21ai_1 _162_ (.A1(\bus.UART.uart_core.tx_clk_cntr[12] ),
    .A2(_038_),
    .B1(_091_),
    .Y(_043_));
 sky130_fd_sc_hd__nor2_1 _163_ (.A(_042_),
    .B(_043_),
    .Y(_013_));
 sky130_fd_sc_hd__a21oi_1 _164_ (.A1(\bus.UART.uart_core.tx_clk_cntr[13] ),
    .A2(_042_),
    .B1(_089_),
    .Y(_044_));
 sky130_fd_sc_hd__o21a_1 _165_ (.A1(\bus.UART.uart_core.tx_clk_cntr[13] ),
    .A2(_042_),
    .B1(_044_),
    .X(_014_));
 sky130_fd_sc_hd__a21o_1 _166_ (.A1(\bus.UART.uart_core.tx_clk_cntr[13] ),
    .A2(_042_),
    .B1(\bus.UART.uart_core.tx_clk_cntr[14] ),
    .X(_045_));
 sky130_fd_sc_hd__nand3_1 _167_ (.A(\bus.UART.uart_core.tx_clk_cntr[13] ),
    .B(\bus.UART.uart_core.tx_clk_cntr[14] ),
    .C(_042_),
    .Y(_046_));
 sky130_fd_sc_hd__and3_1 _168_ (.A(_091_),
    .B(_045_),
    .C(_046_),
    .X(_047_));
 sky130_fd_sc_hd__clkbuf_1 _169_ (.A(_047_),
    .X(_015_));
 sky130_fd_sc_hd__inv_2 _170_ (.A(\bus.UART.uart_core.tx_clk_cntr[15] ),
    .Y(_048_));
 sky130_fd_sc_hd__a41o_1 _171_ (.A1(\bus.UART.uart_core.tx_clk_cntr[13] ),
    .A2(\bus.UART.uart_core.tx_clk_cntr[15] ),
    .A3(\bus.UART.uart_core.tx_clk_cntr[14] ),
    .A4(_042_),
    .B1(_089_),
    .X(_049_));
 sky130_fd_sc_hd__a21oi_1 _172_ (.A1(_048_),
    .A2(_046_),
    .B1(_049_),
    .Y(_016_));
 sky130_fd_sc_hd__or2b_1 _173_ (.A(\bus.QSPI_master.state_q[0] ),
    .B_N(\bus.QSPI_master.state_q_prv ),
    .X(_050_));
 sky130_fd_sc_hd__a21o_1 _174_ (.A1(net3),
    .A2(_050_),
    .B1(net2),
    .X(_051_));
 sky130_fd_sc_hd__or2_1 _175_ (.A(net3),
    .B(_050_),
    .X(_052_));
 sky130_fd_sc_hd__inv_2 _176_ (.A(net1),
    .Y(_053_));
 sky130_fd_sc_hd__and3b_1 _177_ (.A_N(_051_),
    .B(_052_),
    .C(_053_),
    .X(_054_));
 sky130_fd_sc_hd__clkbuf_1 _178_ (.A(_054_),
    .X(_017_));
 sky130_fd_sc_hd__nand2_1 _179_ (.A(_051_),
    .B(_052_),
    .Y(_055_));
 sky130_fd_sc_hd__nor2_1 _180_ (.A(\bus.QSPI_master.state_q[0] ),
    .B(_055_),
    .Y(_056_));
 sky130_fd_sc_hd__a211o_1 _181_ (.A1(\bus.QSPI_master.state_q_prv ),
    .A2(_055_),
    .B1(_056_),
    .C1(net1),
    .X(_018_));
 sky130_fd_sc_hd__or3_1 _182_ (.A(\bus.QSPI_master.cntr_state_q[0] ),
    .B(\bus.QSPI_master.cntr_state_q[1] ),
    .C(_055_),
    .X(_057_));
 sky130_fd_sc_hd__buf_1 _183_ (.A(_057_),
    .X(_058_));
 sky130_fd_sc_hd__o211a_1 _184_ (.A1(\bus.QSPI_master.cntr_state_q[2] ),
    .A2(_058_),
    .B1(_053_),
    .C1(\bus.QSPI_master.state_q[0] ),
    .X(_019_));
 sky130_fd_sc_hd__nand2_1 _185_ (.A(_053_),
    .B(_050_),
    .Y(_020_));
 sky130_fd_sc_hd__inv_2 _186_ (.A(\bus.UART.uart_core.tx_cntr[2] ),
    .Y(_059_));
 sky130_fd_sc_hd__a21o_1 _187_ (.A1(\bus.UART.uart_core.tx_cntr[0] ),
    .A2(_059_),
    .B1(_078_),
    .X(_060_));
 sky130_fd_sc_hd__and3_1 _188_ (.A(\bus.UART.uart_core.tx_state_en ),
    .B(_080_),
    .C(_060_),
    .X(_061_));
 sky130_fd_sc_hd__a41o_1 _189_ (.A1(\bus.UART.uart_core.tx_cntr[0] ),
    .A2(\bus.UART.uart_core.tx_cntr[2] ),
    .A3(\bus.UART.uart_core.tx_cntr[1] ),
    .A4(_061_),
    .B1(\bus.UART.uart_core.tx_state[0] ),
    .X(_062_));
 sky130_fd_sc_hd__nand2_1 _190_ (.A(\bus.UART.uart_core.tx_state[0] ),
    .B(_061_),
    .Y(_063_));
 sky130_fd_sc_hd__and3_1 _191_ (.A(_053_),
    .B(_062_),
    .C(_063_),
    .X(_064_));
 sky130_fd_sc_hd__clkbuf_1 _192_ (.A(_064_),
    .X(_021_));
 sky130_fd_sc_hd__inv_2 _193_ (.A(\bus.UART.uart_core.tx_state[1] ),
    .Y(_065_));
 sky130_fd_sc_hd__a31o_1 _194_ (.A1(\bus.UART.uart_core.tx_state[1] ),
    .A2(\bus.UART.uart_core.tx_state[0] ),
    .A3(_061_),
    .B1(net1),
    .X(_066_));
 sky130_fd_sc_hd__a21oi_1 _195_ (.A1(_065_),
    .A2(_063_),
    .B1(_066_),
    .Y(_022_));
 sky130_fd_sc_hd__nor2_1 _196_ (.A(\bus.UART.uart_core.tx_state_en ),
    .B(_079_),
    .Y(_067_));
 sky130_fd_sc_hd__a21oi_1 _197_ (.A1(_065_),
    .A2(\bus.UART.uart_core.tx_state[0] ),
    .B1(_067_),
    .Y(_068_));
 sky130_fd_sc_hd__o21a_1 _198_ (.A1(\bus.UART.uart_core.tx_state_en ),
    .A2(_079_),
    .B1(\bus.UART.uart_core.tx_cntr[0] ),
    .X(_069_));
 sky130_fd_sc_hd__o21ba_1 _199_ (.A1(\bus.UART.uart_core.tx_cntr[0] ),
    .A2(_068_),
    .B1_N(_069_),
    .X(_023_));
 sky130_fd_sc_hd__inv_2 _200_ (.A(\bus.UART.uart_core.tx_state[0] ),
    .Y(_070_));
 sky130_fd_sc_hd__o2bb2a_1 _201_ (.A1_N(\bus.UART.uart_core.tx_cntr[0] ),
    .A2_N(\bus.UART.uart_core.tx_cntr[1] ),
    .B1(\bus.UART.uart_core.tx_state[1] ),
    .B2(_070_),
    .X(_071_));
 sky130_fd_sc_hd__or2_1 _202_ (.A(_067_),
    .B(_071_),
    .X(_072_));
 sky130_fd_sc_hd__o21a_1 _203_ (.A1(\bus.UART.uart_core.tx_cntr[1] ),
    .A2(_069_),
    .B1(_072_),
    .X(_024_));
 sky130_fd_sc_hd__and3_1 _204_ (.A(\bus.UART.uart_core.tx_cntr[0] ),
    .B(\bus.UART.uart_core.tx_cntr[1] ),
    .C(_068_),
    .X(_073_));
 sky130_fd_sc_hd__mux2_1 _205_ (.A0(_072_),
    .A1(_073_),
    .S(_059_),
    .X(_074_));
 sky130_fd_sc_hd__clkbuf_1 _206_ (.A(_074_),
    .X(_025_));
 sky130_fd_sc_hd__o21bai_1 _207_ (.A1(\bus.QSPI_master.cntr_state_q[2] ),
    .A2(_058_),
    .B1_N(_056_),
    .Y(_075_));
 sky130_fd_sc_hd__a21o_1 _208_ (.A1(\bus.QSPI_master.cntr_state_q[2] ),
    .A2(_058_),
    .B1(_075_),
    .X(_026_));
 sky130_fd_sc_hd__o21ai_1 _209_ (.A1(\bus.QSPI_master.cntr_state_q[0] ),
    .A2(_055_),
    .B1(\bus.QSPI_master.cntr_state_q[1] ),
    .Y(_076_));
 sky130_fd_sc_hd__nand3b_1 _210_ (.A_N(_056_),
    .B(_058_),
    .C(_076_),
    .Y(_027_));
 sky130_fd_sc_hd__or3b_1 _211_ (.A(\bus.QSPI_master.cntr_state_q[0] ),
    .B(_055_),
    .C_N(\bus.QSPI_master.state_q[0] ),
    .X(_077_));
 sky130_fd_sc_hd__a21bo_1 _212_ (.A1(\bus.QSPI_master.cntr_state_q[0] ),
    .A2(_055_),
    .B1_N(_077_),
    .X(_028_));
 sky130_fd_sc_hd__dfxtp_1 _213_ (.CLK(clknet_2_3__leaf_clk),
    .D(_000_),
    .Q(\bus.UART.uart_core.tx_state_en ));
 sky130_fd_sc_hd__dfxtp_1 _214_ (.CLK(clknet_2_3__leaf_clk),
    .D(_001_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[0] ));
 sky130_fd_sc_hd__dfxtp_1 _215_ (.CLK(clknet_2_1__leaf_clk),
    .D(_002_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[1] ));
 sky130_fd_sc_hd__dfxtp_1 _216_ (.CLK(clknet_2_1__leaf_clk),
    .D(_003_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[2] ));
 sky130_fd_sc_hd__dfxtp_1 _217_ (.CLK(clknet_2_3__leaf_clk),
    .D(_004_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[3] ));
 sky130_fd_sc_hd__dfxtp_1 _218_ (.CLK(clknet_2_3__leaf_clk),
    .D(_005_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[4] ));
 sky130_fd_sc_hd__dfxtp_1 _219_ (.CLK(clknet_2_3__leaf_clk),
    .D(_006_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[5] ));
 sky130_fd_sc_hd__dfxtp_1 _220_ (.CLK(clknet_2_3__leaf_clk),
    .D(_007_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[6] ));
 sky130_fd_sc_hd__dfxtp_1 _221_ (.CLK(clknet_2_3__leaf_clk),
    .D(_008_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[7] ));
 sky130_fd_sc_hd__dfxtp_1 _222_ (.CLK(clknet_2_2__leaf_clk),
    .D(_009_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[8] ));
 sky130_fd_sc_hd__dfxtp_1 _223_ (.CLK(clknet_2_2__leaf_clk),
    .D(_010_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[9] ));
 sky130_fd_sc_hd__dfxtp_1 _224_ (.CLK(clknet_2_2__leaf_clk),
    .D(_011_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[10] ));
 sky130_fd_sc_hd__dfxtp_1 _225_ (.CLK(clknet_2_2__leaf_clk),
    .D(_012_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[11] ));
 sky130_fd_sc_hd__dfxtp_1 _226_ (.CLK(clknet_2_2__leaf_clk),
    .D(_013_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[12] ));
 sky130_fd_sc_hd__dfxtp_1 _227_ (.CLK(clknet_2_0__leaf_clk),
    .D(_014_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[13] ));
 sky130_fd_sc_hd__dfxtp_1 _228_ (.CLK(clknet_2_0__leaf_clk),
    .D(_015_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[14] ));
 sky130_fd_sc_hd__dfxtp_1 _229_ (.CLK(clknet_2_0__leaf_clk),
    .D(_016_),
    .Q(\bus.UART.uart_core.tx_clk_cntr[15] ));
 sky130_fd_sc_hd__dfxtp_1 _230_ (.CLK(clknet_2_0__leaf_clk),
    .D(_017_),
    .Q(net3));
 sky130_fd_sc_hd__dfxtp_1 _231_ (.CLK(clknet_2_0__leaf_clk),
    .D(_018_),
    .Q(\bus.QSPI_master.state_q_prv ));
 sky130_fd_sc_hd__dfxtp_1 _232_ (.CLK(clknet_2_0__leaf_clk),
    .D(_019_),
    .Q(\bus.QSPI_master.state_q[0] ));
 sky130_fd_sc_hd__dfxtp_1 _233_ (.CLK(clknet_2_0__leaf_clk),
    .D(_020_),
    .Q(net2));
 sky130_fd_sc_hd__dfxtp_2 _234_ (.CLK(clknet_2_1__leaf_clk),
    .D(_021_),
    .Q(\bus.UART.uart_core.tx_state[0] ));
 sky130_fd_sc_hd__dfxtp_1 _235_ (.CLK(clknet_2_1__leaf_clk),
    .D(_022_),
    .Q(\bus.UART.uart_core.tx_state[1] ));
 sky130_fd_sc_hd__dfxtp_1 _236_ (.CLK(clknet_2_1__leaf_clk),
    .D(_023_),
    .Q(\bus.UART.uart_core.tx_cntr[0] ));
 sky130_fd_sc_hd__dfxtp_1 _237_ (.CLK(clknet_2_1__leaf_clk),
    .D(_024_),
    .Q(\bus.UART.uart_core.tx_cntr[1] ));
 sky130_fd_sc_hd__dfxtp_1 _238_ (.CLK(clknet_2_1__leaf_clk),
    .D(_025_),
    .Q(\bus.UART.uart_core.tx_cntr[2] ));
 sky130_fd_sc_hd__dfxtp_1 _239_ (.CLK(clknet_2_0__leaf_clk),
    .D(_026_),
    .Q(\bus.QSPI_master.cntr_state_q[2] ));
 sky130_fd_sc_hd__dfxtp_1 _240_ (.CLK(clknet_2_0__leaf_clk),
    .D(_027_),
    .Q(\bus.QSPI_master.cntr_state_q[1] ));
 sky130_fd_sc_hd__dfxtp_1 _241_ (.CLK(clknet_2_0__leaf_clk),
    .D(_028_),
    .Q(\bus.QSPI_master.cntr_state_q[0] ));
 sky130_fd_sc_hd__ebufn_1 _267_ (.A(net5),
    .TE_B(net29),
    .Z(io[0]));
 sky130_fd_sc_hd__conb_1 _267__29 (.HI(net29));
 sky130_fd_sc_hd__conb_1 _267__5 (.LO(net5));
 sky130_fd_sc_hd__ebufn_1 _268_ (.A(net6),
    .TE_B(net26),
    .Z(io[1]));
 sky130_fd_sc_hd__conb_1 _268__26 (.HI(net26));
 sky130_fd_sc_hd__conb_1 _268__6 (.LO(net6));
 sky130_fd_sc_hd__ebufn_1 _269_ (.A(net7),
    .TE_B(net27),
    .Z(io[2]));
 sky130_fd_sc_hd__conb_1 _269__27 (.HI(net27));
 sky130_fd_sc_hd__conb_1 _269__7 (.LO(net7));
 sky130_fd_sc_hd__ebufn_1 _270_ (.A(net8),
    .TE_B(net28),
    .Z(io[3]));
 sky130_fd_sc_hd__conb_1 _270__28 (.HI(net28));
 sky130_fd_sc_hd__conb_1 _270__8 (.LO(net8));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .X(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dlymetal6s2s_1 input1 (.A(rst),
    .X(net1));
 sky130_fd_sc_hd__conb_1 mcu_10 (.LO(net10));
 sky130_fd_sc_hd__conb_1 mcu_11 (.LO(net11));
 sky130_fd_sc_hd__conb_1 mcu_12 (.LO(net12));
 sky130_fd_sc_hd__conb_1 mcu_13 (.LO(net13));
 sky130_fd_sc_hd__conb_1 mcu_14 (.LO(net14));
 sky130_fd_sc_hd__conb_1 mcu_15 (.LO(net15));
 sky130_fd_sc_hd__conb_1 mcu_16 (.LO(net16));
 sky130_fd_sc_hd__conb_1 mcu_17 (.LO(net17));
 sky130_fd_sc_hd__conb_1 mcu_18 (.LO(net18));
 sky130_fd_sc_hd__conb_1 mcu_19 (.LO(net19));
 sky130_fd_sc_hd__conb_1 mcu_20 (.LO(net20));
 sky130_fd_sc_hd__conb_1 mcu_21 (.LO(net21));
 sky130_fd_sc_hd__conb_1 mcu_22 (.LO(net22));
 sky130_fd_sc_hd__conb_1 mcu_23 (.LO(net23));
 sky130_fd_sc_hd__conb_1 mcu_24 (.LO(net24));
 sky130_fd_sc_hd__conb_1 mcu_25 (.LO(net25));
 sky130_fd_sc_hd__conb_1 mcu_9 (.LO(net9));
 sky130_fd_sc_hd__buf_1 output2 (.A(net2),
    .X(cs));
 sky130_fd_sc_hd__buf_1 output3 (.A(net3),
    .X(sclk));
 sky130_fd_sc_hd__buf_1 output4 (.A(net4),
    .X(tx));
 assign out[0] = net9;
 assign out[10] = net19;
 assign out[11] = net20;
 assign out[12] = net21;
 assign out[13] = net22;
 assign out[14] = net23;
 assign out[15] = net24;
 assign out[1] = net10;
 assign out[2] = net11;
 assign out[3] = net12;
 assign out[4] = net13;
 assign out[5] = net14;
 assign out[6] = net15;
 assign out[7] = net16;
 assign out[8] = net17;
 assign out[9] = net18;
 assign scl_io = net25;
endmodule

