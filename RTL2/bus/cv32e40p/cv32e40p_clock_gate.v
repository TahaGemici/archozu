module cv32e40p_clock_gate(
    input clk_i,
    input en_i,
    input scan_cg_en_i,
    output clk_o
);
    `ifdef FPGA
        BUFGCE BUFGCE_inst (
            .O(clk_o),
            .CE(en_i | scan_cg_en_i),
            .I(clk_i)
        );
    `else
        reg en_q;
        always @(negedge clk_i) begin
           en_q <= en_i | scan_cg_en_i;
        end
        assign clk_o = clk_i & en_q;
    `endif
endmodule