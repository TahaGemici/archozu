module top();

    wire instr_req, instr_gnt, instr_rvalid;
    wire[31:0] instr_addr, instr_rdata;

    wire data_req, data_gnt, data_rvalid, data_we;
    wire[3:0] data_be;
    wire[31:0] data_addr, data_wdata, data_rdata;

    wire[31:0] irq;
    wire irq_ack;
    wire[4:0] irq_id;
    
    wire debug_req, debug_havereset, debug_running, debug_halted;
    
    reg clk, rst;
    initial begin
        clk = 0;
        forever clk = #(`CLK_PERIOD/2.0) ~clk;
    end
    initial begin
        rst = 1;
        #1000;
        rst = 0;
        #1000;
        $finish;
    end

    cv32e40p_top cv32e40p_top (
        // Clock and Reset
        .clk_i(clk),
        .rst_ni(~rst),

        .pulp_clock_en_i(0),  // PULP clock enable (only used if COREV_CLUSTER = 1)
        .scan_cg_en_i(0),  // Enable all clock gates for testing

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
        .debug_req_i(debug_req),
        .debug_havereset_o(debug_havereset),
        .debug_running_o(debug_running),
        .debug_halted_o(debug_halted),

        // CPU Control Signals
        .fetch_enable_i(1),
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
        instr_rdata
    );
endmodule