



create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 16384 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_gen/clk]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 15 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {bus/USB/mem_addr[0]} {bus/USB/mem_addr[1]} {bus/USB/mem_addr[2]} {bus/USB/mem_addr[3]} {bus/USB/mem_addr[4]} {bus/USB/mem_addr[5]} {bus/USB/mem_addr[6]} {bus/USB/mem_addr[7]} {bus/USB/mem_addr[8]} {bus/USB/mem_addr[9]} {bus/USB/mem_addr[10]} {bus/USB/mem_addr[11]} {bus/USB/mem_addr[12]} {bus/USB/mem_addr[13]} {bus/USB/mem_addr[14]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 8 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {bus/USB/data_o_perip[0]} {bus/USB/data_o_perip[1]} {bus/USB/data_o_perip[2]} {bus/USB/data_o_perip[3]} {bus/USB/data_o_perip[4]} {bus/USB/data_o_perip[5]} {bus/USB/data_o_perip[6]} {bus/USB/data_o_perip[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {bus/USB/mem_rdata[0]} {bus/USB/mem_rdata[1]} {bus/USB/mem_rdata[2]} {bus/USB/mem_rdata[3]} {bus/USB/mem_rdata[4]} {bus/USB/mem_rdata[5]} {bus/USB/mem_rdata[6]} {bus/USB/mem_rdata[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 8 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {bus/USB/mem_wdata[0]} {bus/USB/mem_wdata[1]} {bus/USB/mem_wdata[2]} {bus/USB/mem_wdata[3]} {bus/USB/mem_wdata[4]} {bus/USB/mem_wdata[5]} {bus/USB/mem_wdata[6]} {bus/USB/mem_wdata[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list bus/USB/usb_camera_top/camera_vf_req]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list bus/USB/usb_camera_top/camera_vf_sof]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list bus/USB/mem_wen]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
