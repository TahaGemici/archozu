module mcu(
    input sys_rst,
    input sys_clk,
    input rx,
    output tx,
    inout sda_io,
    inout scl_io,
    output sclk,
    output cs,
    inout[3:0] io,
    input[15:0] in,
    output[15:0] out,
	output usb_dp_pull,
    inout usb_dp,
    inout usb_dn
);
    wire clk, rst;
    wire rstn = ~rst;
    wire instr_req, instr_gnt, instr_rvalid;
    wire[31:0] instr_addr, instr_rdata;

    wire data_req, data_gnt, data_rvalid, data_we;
    wire[3:0] data_be;
    wire[31:0] data_addr, data_wdata, data_rdata;

    wire[31:0] irq;
    assign irq[31:8] = 0;
    assign irq[6:0] = 0;
    wire irq_ack;
    wire[4:0] irq_id;

    cv32e40p_top cv32e40p_top (
        // Clock and Reset
        .clk_i(clk),
        .rst_ni(rstn),

        .pulp_clock_en_i(1'b0),  // PULP clock enable (only used if COREV_CLUSTER = 1)
        .scan_cg_en_i(1'b0),  // Enable all clock gates for testing

        // Core ID, Cluster ID, debug mode halt address and boot address are considered more or less static
        .boot_addr_i(0),
        .mtvec_addr_i(0),
        .dm_halt_addr_i(0),
        .hart_id_i(0),
        .dm_exception_addr_i(0),

        // Instruction memory interface
        .instr_req_o(instr_req),
        .instr_gnt_i(instr_gnt),
        .instr_rvalid_i(instr_rvalid),
        .instr_addr_o(instr_addr),
        .instr_rdata_i(instr_rdata),

        // Data memory interface
        .data_req_o(data_req),
        .data_gnt_i(data_gnt),
        .data_rvalid_i(data_rvalid),
        .data_we_o(data_we),
        .data_be_o(data_be),
        .data_addr_o(data_addr),
        .data_wdata_o(data_wdata),
        .data_rdata_i(data_rdata),

        // Interrupt inputs
        .irq_i(irq),
        .irq_ack_o(irq_ack),
        .irq_id_o(irq_id),

        // Debug Interface
        .debug_req_i(1'b0),
        .debug_havereset_o(),
        .debug_running_o(),
        .debug_halted_o(),

        // CPU Control Signals
        .fetch_enable_i(1'b1),
        .core_sleep_o()
    );

    bus bus(
        clk,
        rst,

        data_req,
        data_we,
        data_be,
        data_addr,
        data_wdata,
        data_gnt,
        data_rvalid,
        data_rdata,

        instr_req,
        instr_gnt,
        instr_rvalid,
        instr_addr,
        instr_rdata,

        rx,
        tx,

        sda_io,
        scl_io,

        sclk,
        cs,
        io,
    
        irq[7],
        irq_ack,
        irq_id,

        in,
        out,
        usb_dp_pull,
        usb_dp,
        usb_dn
    );

    clk_gen clk_gen(
        sys_clk,
        sys_rst,
        clk,
        rst
    );
endmodule