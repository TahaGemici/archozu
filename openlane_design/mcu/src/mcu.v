module mcu(
    input rst,
    input clk,
    input rx,
    output tx,
    inout sda_io,
    output scl_io,
    output sclk,
    output cs,
    inout[3:0] io,
    input[15:0] in,
    output[15:0] out
);
    wire rstn = ~rst;
    wire instr_req=0, instr_gnt, instr_rvalid;
    wire[31:0] instr_addr=0, instr_rdata;

    wire data_req=0, data_gnt, data_rvalid, data_we=0;
    wire[3:0] data_be=0;
    wire[31:0] data_addr=0, data_wdata=0, data_rdata;

    wire[31:0] irq;
    wire irq_ack=0;
    wire[4:0] irq_id=0;
    
    wire debug_havereset, debug_running, debug_halted;

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
        out
    );
endmodule
