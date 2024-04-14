module cv32e40p_clock_gate(
    input clk_i,
    input en_i,
    input scan_cg_en_i,
    output clk_o
);
    BUFGCE BUFGCE_inst (
        .O(clk_o),
        .CE(en_i | scan_cg_en_i),
        .I(clk_i)
    );
endmodule