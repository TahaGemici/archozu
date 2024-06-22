`ifdef TEST
module top();
    reg clk, rstn;
    initial begin
        clk = 0;
        forever clk = #(`CLK_PERIOD/2.0) ~clk;
    end
    initial begin
        rstn = 0;
        #500000; //flash_mem için bu kadar uzun
        rstn = 1;
        #100000000;
        $finish;
    end

    wire rst = ~rstn;
    wire sda_io, scl_io;
    i2c_slave_controller #(123) I2C_slave0(
        scl_io,
        sda_io,
        rst
    );
    i2c_slave_controller #(74) I2C_slave1(
        scl_io,
        sda_io,
        rst
    );
    i2c_slave_controller #(12) I2C_slave2(
        scl_io,
        sda_io,
        rst
    );
    i2c_slave_controller #(31) I2C_slave3(
        scl_io,
        sda_io,
        rst
    );

    wire sclk, cs;
    wire[3:0] io;
    s25fl128s flash_mem(
        io[0],
        io[1],
        sclk,
        cs,
        ~rst,
        io[2],
        io[3]
    );

    wire[15:0] in, out;
`else
module top(
    input rstn,
    input clk,
    inout sda_io,
    output scl_io,
    output sclk,
    output cs,
    inout[3:0] io,
    input in,
    output out
);
`endif
    wire rst = ~rstn;
    wire instr_req, instr_gnt, instr_rvalid;
    wire[31:0] instr_addr, instr_rdata;

    wire data_req, data_gnt, data_rvalid, data_we;
    wire[3:0] data_be;
    wire[31:0] data_addr, data_wdata, data_rdata;

    wire[31:0] irq;
    wire irq_ack;
    wire[4:0] irq_id;
    
    wire debug_req, debug_havereset, debug_running, debug_halted;

    wire clk_bus, clk_i2c, clk_qspi;
    clk_gen clk_gen(
        rst,
        clk,
        clk_bus,
        clk_i2c,
        clk_qspi
    );

    cv32e40p_top cv32e40p_top (
        // Clock and Reset
        .clk_i(clk_bus),
        .rst_ni(rstn),

        .pulp_clock_en_i(0),  // PULP clock enable (only used if COREV_CLUSTER = 1)
        .scan_cg_en_i(0),  // Enable all clock gates for testing

        // Core ID, Cluster ID, debug mode halt address and boot address are considered more or less static
        .boot_addr_i(8192),
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
        clk_bus,
        clk_i2c,
        clk_qspi,
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

        sda_io,
        scl_io,

        sclk,
        cs,
        io,
    
        irq_ack,
        irq[7],

        out,
        in
    );
endmodule