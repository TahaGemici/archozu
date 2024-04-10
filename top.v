module top();

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
    end

    cv32e40p_top cv32e40p_top #(
        COREV_PULP = 0, // PULP ISA Extension (incl. custom CSRs and hardware loop, excl. cv.elw)
        COREV_CLUSTER = 0,  // PULP Cluster interface (incl. cv.elw)
        FPU = 0,  // Floating Point Unit (interfaced via APU interface)
        FPU_ADDMUL_LAT = 0,  // Floating-Point ADDition/MULtiplication computing lane pipeline registers number
        FPU_OTHERS_LAT = 0,  // Floating-Point COMParison/CONVersion computing lanes pipeline registers number
        ZFINX = 0,  // Float-in-General Purpose registers
        NUM_MHPMCOUNTERS = 1
    ) (
        // Clock and Reset
        .clk_i(clk),
        .rst_ni(~rst),

        .pulp_clock_en_i(),  // PULP clock enable (only used if COREV_CLUSTER = 1)
        .scan_cg_en_i(),  // Enable all clock gates for testing

        // Core ID, Cluster ID, debug mode halt address and boot address are considered more or less static
        .boot_addr_i(),
        .mtvec_addr_i(),
        .dm_halt_addr_i(),
        .hart_id_i(),
        .dm_exception_addr_i(),

        // Instruction memory interface
        output logic        instr_req_o,
        input  logic        instr_gnt_i,
        input  logic        instr_rvalid_i,
        output logic [31:0] instr_addr_o,
        input  logic [31:0] instr_rdata_i,

        // Data memory interface
        output logic        data_req_o,
        .data_gnt_i(1'b1),
        input  logic        data_rvalid_i,
        output logic        data_we_o,
        output logic [ 3:0] data_be_o,
        output logic [31:0] data_addr_o,
        output logic [31:0] data_wdata_o,
        input  logic [31:0] data_rdata_i,

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
        .fetch_enable_i(),
        .core_sleep_o()
    );
endmodule