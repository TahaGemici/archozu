




create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list cv32e40p_top/core_i/sleep_unit_i/core_clock_gate_i/clk]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 1 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {bus/USB/usb_audio_top/usbfs_core_i/device_connected[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 31 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[1]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[2]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[3]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[4]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[5]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[6]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[7]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[8]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[9]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[10]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[11]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[12]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[13]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[14]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[15]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[16]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[17]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[18]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[19]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[20]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[21]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[22]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[23]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[24]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[25]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[26]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[27]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[28]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[29]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[30]} {bus/USB/usb_audio_top/usbfs_core_i/usb_rstn_cnt0[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {bus/USB/usb_audio_top/device_connected[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 12 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {data_addr[2]} {data_addr[3]} {data_addr[4]} {data_addr[5]} {data_addr[6]} {data_addr[7]} {data_addr[8]} {data_addr[9]} {data_addr[10]} {data_addr[11]} {data_addr[12]} {data_addr[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 11 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {instr_addr[2]} {instr_addr[3]} {instr_addr[4]} {instr_addr[5]} {instr_addr[6]} {instr_addr[7]} {instr_addr[8]} {instr_addr[9]} {instr_addr[10]} {instr_addr[11]} {instr_addr[12]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 32 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {data_rdata[0]} {data_rdata[1]} {data_rdata[2]} {data_rdata[3]} {data_rdata[4]} {data_rdata[5]} {data_rdata[6]} {data_rdata[7]} {data_rdata[8]} {data_rdata[9]} {data_rdata[10]} {data_rdata[11]} {data_rdata[12]} {data_rdata[13]} {data_rdata[14]} {data_rdata[15]} {data_rdata[16]} {data_rdata[17]} {data_rdata[18]} {data_rdata[19]} {data_rdata[20]} {data_rdata[21]} {data_rdata[22]} {data_rdata[23]} {data_rdata[24]} {data_rdata[25]} {data_rdata[26]} {data_rdata[27]} {data_rdata[28]} {data_rdata[29]} {data_rdata[30]} {data_rdata[31]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk]
