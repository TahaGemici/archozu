module QSPI_master(
    input clk_i,
    input rst_i,
    input write_i,
    input [3:0] data_be_i,
    input [5:0] addr_i,
    input [31:0] wdata_i,
    output reg [31:0] rdata_o,

	output sclk_o,
    output ss_n_o,
    inout io0_io,
    inout io1_io,
    inout io2_io,
	inout io3_io
);

	// states
	localparam 
	localparam 
	localparam 
	localparam 
	localparam 
	localparam 
	localparam 
	localparam 

/*

	APB <---> QSPI_Master

*/

    // registers
    reg[2:0] state, state_nxt;

    reg[31:0] QSPI_CCR, QSPI_CCR_nxt;
    reg[31:0] QSPI_ADR, QSPI_ADR_nxt;
    reg[31:0] QSPI_DR[0:7], QSPI_DR_nxt[0:7];
    reg[1:0] QSPI_STA, QSPI_STA_nxt;

    integer i, j;
    wire[7:0] all_regs[0:40];
    for(i=0;i<4;i+=1) begin
        assign all_regs[i] = QSPI_CCR[i*8+:8];
        assign all_regs[i+4] = QSPI_ADR[i*8+:8];
        for(j=0;j<8;j+=1) begin
            assign all_regs[i+8+j*4] = QSPI_DR[j][i*8+:8];
        end
    end
    assign all_regs[40] = {6'h00, QSPI_STA};

    always @(posedge clk_i) begin
        QSPI_CCR <= QSPI_CCR_nxt;
        QSPI_ADR <= QSPI_ADR_nxt;
        for(i=0;i<8;i+=1) QSPI_DR[i] <= QSPI_DR_nxt[i];
        QSPI_STA <= QSPI_STA_nxt;
    end

    always @* begin
        QSPI_CCR_nxt = QSPI_CCR;
        QSPI_ADR_nxt = QSPI_ADR;
        for(i=0;i<8;i+=1) QSPI_DR_nxt[i] = QSPI_DR[i];
        QSPI_STA_nxt = QSPI_STA;

        rdata_o = 8'h00;
        for(i=0;i<4;i=i+1) begin
            if(addr_i <= (40-i)) begin
                if(write_i) begin
                    case(addr_i+i)
                        6'h00: QSPI_CCR_nxt[7:0] = wdata_i[(8*i)+:8];
                        6'h01: QSPI_CCR_nxt[15:8] = wdata_i[(8*i)+:8];
                        6'h02: QSPI_CCR_nxt[23:16] = wdata_i[(8*i)+:8];
                        6'h03: QSPI_CCR_nxt[31:24] = wdata_i[(8*i)+:8];
                        
                        6'h04: QSPI_ADR_nxt[7:0] = wdata_i[(8*i)+:8];
                        6'h05: QSPI_ADR_nxt[15:8] = wdata_i[(8*i)+:8];
                        6'h06: QSPI_ADR_nxt[23:16] = wdata_i[(8*i)+:8];
                        6'h07: QSPI_ADR_nxt[31:24] = wdata_i[(8*i)+:8];

                        6'h08: QSPI_DR_nxt[0][7:0] = wdata_i[(8*i)+:8];
                        6'h09: QSPI_DR_nxt[0][15:8] = wdata_i[(8*i)+:8];
                        6'h0A: QSPI_DR_nxt[0][23:16] = wdata_i[(8*i)+:8];
                        6'h0B: QSPI_DR_nxt[0][31:24] = wdata_i[(8*i)+:8];

                        6'h0C: QSPI_DR_nxt[1][7:0] = wdata_i[(8*i)+:8];
                        6'h0D: QSPI_DR_nxt[1][15:8] = wdata_i[(8*i)+:8];
                        6'h0E: QSPI_DR_nxt[1][23:16] = wdata_i[(8*i)+:8];
                        6'h0F: QSPI_DR_nxt[1][31:24] = wdata_i[(8*i)+:8];
                        
                        6'h10: QSPI_DR_nxt[2][7:0] = wdata_i[(8*i)+:8];
                        6'h11: QSPI_DR_nxt[2][15:8] = wdata_i[(8*i)+:8];
                        6'h12: QSPI_DR_nxt[2][23:16] = wdata_i[(8*i)+:8];
                        6'h13: QSPI_DR_nxt[2][31:24] = wdata_i[(8*i)+:8];

                        6'h14: QSPI_DR_nxt[3][7:0] = wdata_i[(8*i)+:8];
                        6'h15: QSPI_DR_nxt[3][15:8] = wdata_i[(8*i)+:8];
                        6'h16: QSPI_DR_nxt[3][23:16] = wdata_i[(8*i)+:8];
                        6'h17: QSPI_DR_nxt[3][31:24] = wdata_i[(8*i)+:8];

                        6'h18: QSPI_DR_nxt[4][7:0] = wdata_i[(8*i)+:8];
                        6'h19: QSPI_DR_nxt[4][15:8] = wdata_i[(8*i)+:8];
                        6'h1A: QSPI_DR_nxt[4][23:16] = wdata_i[(8*i)+:8];
                        6'h1B: QSPI_DR_nxt[4][31:24] = wdata_i[(8*i)+:8];

                        6'h1C: QSPI_DR_nxt[5][7:0] = wdata_i[(8*i)+:8];
                        6'h1D: QSPI_DR_nxt[5][15:8] = wdata_i[(8*i)+:8];
                        6'h1E: QSPI_DR_nxt[5][23:16] = wdata_i[(8*i)+:8];
                        6'h1F: QSPI_DR_nxt[5][31:24] = wdata_i[(8*i)+:8];

                        6'h20: QSPI_DR_nxt[6][7:0] = wdata_i[(8*i)+:8];
                        6'h21: QSPI_DR_nxt[6][15:8] = wdata_i[(8*i)+:8];
                        6'h22: QSPI_DR_nxt[6][23:16] = wdata_i[(8*i)+:8];
                        6'h23: QSPI_DR_nxt[6][31:24] = wdata_i[(8*i)+:8];

                        6'h24: QSPI_DR_nxt[7][7:0] = wdata_i[(8*i)+:8];
                        6'h25: QSPI_DR_nxt[7][15:8] = wdata_i[(8*i)+:8];
                        6'h26: QSPI_DR_nxt[7][23:16] = wdata_i[(8*i)+:8];
                        6'h27: QSPI_DR_nxt[7][31:24] = wdata_i[(8*i)+:8];
                    endcase
                end
                if(data_be_i[i]) rdata_o[(8*i)+:8] = all_regs[addr_i+i];
            end
        end
    end



/*

	QSPI_Master <---> Flash Memory

*/


	// wires 
	wire clk_qspi;
	
	// clock generator
	clk_gen #(`CLK_QSPI_FREQ) clk_qspi_inst(
		rst_i,
		clk_i,
		clk_qspi
	);

    


