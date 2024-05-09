module QSPI_master(
    input clk_i,
    input rst_i,
    input write_i,
    input [3:0] data_be_i,
    input [5:0] addr_i,
    input [31:0] wdata_i,
    output reg [31:0] rdata_o,

	output sclk_o,
    output cs_no,
    inout[3:0] io
);

/*

	APB <---> QSPI_Master

*/

    // registers
    reg[2:0] state, state_nxt;

    reg[30:0] QSPI_CCR, QSPI_CCR_nxt;
    reg[31:0] QSPI_ADR, QSPI_ADR_nxt;
    reg[31:0] QSPI_DR[0:7], QSPI_DR_nxt[0:7];
    reg[1:0] QSPI_STA, QSPI_STA_nxt;

    integer i, j;
    wire[7:0] all_regs[0:40];
    assign all_regs[0] = QSPI_CCR[0+:8];
    assign all_regs[1] = QSPI_CCR[8+:8];
    assign all_regs[2] = QSPI_CCR[16+:8];
    assign all_regs[3] = {1'h0, QSPI_CCR[24+:7]};
    for(i=0;i<4;i=i+1) begin
        assign all_regs[i+4] = QSPI_ADR[i*8+:8];
        for(j=0;j<8;j=j+1) begin
            assign all_regs[i+8+j*4] = QSPI_DR[j][i*8+:8];
        end
    end
    assign all_regs[40] = {6'h00, QSPI_STA};

    always @(posedge clk_i) begin
        QSPI_CCR <= QSPI_CCR_nxt;
        QSPI_ADR <= QSPI_ADR_nxt;
        for(i=0;i<8;i=i+1) QSPI_DR[i] <= QSPI_DR_nxt[i];
        QSPI_STA <= QSPI_STA_nxt;
    end

    always @* begin
        QSPI_CCR_nxt = QSPI_CCR;
        QSPI_ADR_nxt = QSPI_ADR;
        for(i=0;i<8;i=i+1) QSPI_DR_nxt[i] = QSPI_DR[i];
        QSPI_STA_nxt[0] = QSPI_STA[0];

        rdata_o = 8'h00;
        for(i=0;i<4;i=i+1) begin
            if(addr_i <= (40-i)) begin
                if(write_i) begin
                    case(addr_i+i)
                        6'h00: QSPI_CCR_nxt[7:0] = wdata_i[(8*i)+:8];
                        6'h01: QSPI_CCR_nxt[15:8] = wdata_i[(8*i)+:8];
                        6'h02: QSPI_CCR_nxt[23:16] = wdata_i[(8*i)+:8];
                        6'h03: begin
                            QSPI_CCR_nxt[30:24] = wdata_i[(8*i)+:7];
                            if(wdata_i[8*i+7]) begin
                                QSPI_STA_nxt[0] = 1'h1;
                            end
                        end

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

        if(rst_i) QSPI_STA_nxt[0] = 1'h1;
    end



/*

	QSPI_Master <---> Flash Memory

*/

    /////////////////////////
    // Client Select Conf. //
    /////////////////////////

    reg cs_nd, cs_no;
    
    always @(posedge clk_i) begin
        cs_no <= cs_nd;
    end

    always @* begin
        cs_nd = QSPI_STA_nxt[0];
    end
    
    /////////////////////
	// Clock Generator //
    /////////////////////
	
    reg sclk_d, sclk_o;
    reg[5:0] cntr_sclk_d, cntr_sclk_q;

    always @(posedge clk_i or negedge clk_i) begin
        sclk_o <= sclk_d;
        cntr_sclk_q <= cntr_sclk_d;
    end

    always @* begin
        cntr_sclk_d = cntr_sclk_d + 1;

        if(cntr_sclk_d == QSPI_CCR[30:25]) begin
            sclk_d = ~sclk_o;
            cntr_sclk_d = 6'h00;
        end

        if(rst_i | cs_no) begin
            sclk_d = 1'h0;
            cntr_sclk_d = 6'h00;
        end
    end

    /////////
    // FSM //
    /////////

    reg[4:0] state_q=0, state_d;
    reg[4:0] cntr_state_q, cntr_state_d;
    reg[3:0] io_q, io_d;
    reg[3:0] io_en_q=0, io_en_d;
    
    always @(negedge (sclk_o | cs_no)) begin
        io_q <= io_d;
        io_en_q <= rst_i ? 0 : io_en_d;
        state_q <= rst_i ? 0 : state_d;
        cntr_state_q <= rst_i ? 0 : cntr_state_d;
    end

	assign (pull1, pull0) io = 4'hf;
    assign io = io_en_q ? io_q : 4'bzzzz;

    localparam STATE_IDLE    = 0;
    localparam STATE_READ_ID = 1;
    localparam STATE_READ    = 3;
    localparam STATE_DOR     = 0;
    localparam STATE_QOR     = 0;
    localparam STATE_PP      = 0;
    localparam STATE_QPP     = 0;
    localparam STATE_SE      = 0;
    localparam STATE_RDID    = 0;
    localparam STATE_RES     = 0;
    localparam STATE_RDSR1   = 0;
    localparam STATE_RDSR2   = 0;
    localparam STATE_RDCR    = 0;
    localparam STATE_WRR     = 0;
    localparam STATE_WRDI    = 0;
    localparam STATE_WREN    = 0;
    localparam STATE_CLSR    = 0;
    localparam STATE_RESET   = 0;

    always @* begin
        QSPI_STA_nxt = QSPI_STA;
        state_d = state_q;
        cntr_state_d = cntr_state_q - 1;
        io_en_d = io_en_q;
        io_d = io_q;

        case(state_q)
            STATE_IDLE: begin
                if(QSPI_STA[0]) begin
                    io_en_d = 4'b0000;
                    QSPI_STA_nxt[1] = 1'h0;
                    cntr_state_d = -1;
                end else begin
                    QSPI_STA_nxt[1] = 1'h1;
                    case(QSPI_CCR[7:0])
                        8'h03: state_d = STATE_READ;
                        8'h3B: state_d = STATE_DOR;
                        8'h6B: state_d = STATE_QOR;
                        8'h02: state_d = STATE_PP;
                        8'h32: state_d = STATE_QPP;
                        8'hD8: state_d = STATE_SE;
                        8'h90: state_d = STATE_READ_ID;
                        8'h9F: state_d = STATE_RDID;
                        8'hAB: state_d = STATE_RES;
                        8'h05: state_d = STATE_RDSR1;
                        8'h07: state_d = STATE_RDSR2;
                        8'h35: state_d = STATE_RDCR;
                        8'h01: state_d = STATE_WRR;
                        8'h04: state_d = STATE_WRDI;
                        8'h06: state_d = STATE_WREN;
                        8'h30: state_d = STATE_CLSR;
                        8'hF0: state_d = STATE_RESET;
                    endcase
                    io_en_d = 4'b0001;
                    io_d[0] = QSPI_CCR[cntr_state_q[2:0]];
                    if(cntr_state_q[2:0]) begin
                        state_d = STATE_IDLE;
                    end
                end
            end

            STATE_READ_ID: begin
                io_d[0] = QSPI_ADDR[cntr_state_q[3:0]];
                if(cntr_state_q[3:0]==0) begin
                    state_d = state_q + 1;
                end
            end
            
            (STATE_READ_ID + 1): begin
                QSPI_DR_nxt[cntr_state_q[3:0]] = io[1];
                if(cntr_state_q[3:0]==0) begin
                    state_d = STATE_IDLE;
                    QSPI_STA_nxt[0] = 1'h1;
                end
            end



        endcase
    end


endmodule