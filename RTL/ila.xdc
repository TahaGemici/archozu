





create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_gen/clk]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 3 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {bus/USB/state[0]} {bus/USB/state[1]} {bus/USB/state[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 11 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {instr_addr[2]} {instr_addr[3]} {instr_addr[4]} {instr_addr[5]} {instr_addr[6]} {instr_addr[7]} {instr_addr[8]} {instr_addr[9]} {instr_addr[10]} {instr_addr[11]} {instr_addr[12]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 32 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {instr_rdata[0]} {instr_rdata[1]} {instr_rdata[2]} {instr_rdata[3]} {instr_rdata[4]} {instr_rdata[5]} {instr_rdata[6]} {instr_rdata[7]} {instr_rdata[8]} {instr_rdata[9]} {instr_rdata[10]} {instr_rdata[11]} {instr_rdata[12]} {instr_rdata[13]} {instr_rdata[14]} {instr_rdata[15]} {instr_rdata[16]} {instr_rdata[17]} {instr_rdata[18]} {instr_rdata[19]} {instr_rdata[20]} {instr_rdata[21]} {instr_rdata[22]} {instr_rdata[23]} {instr_rdata[24]} {instr_rdata[25]} {instr_rdata[26]} {instr_rdata[27]} {instr_rdata[28]} {instr_rdata[29]} {instr_rdata[30]} {instr_rdata[31]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
