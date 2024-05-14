module QSPI_master(
    input clk_i,
    input rst_i,
    input write_i,
    input [3:0] data_be_i,
    input [5:0] addr_i,
    input [31:0] wdata_i,
    output reg [31:0] rdata_o,

	output reg sclk_o,
    output reg cs_no,
    inout[3:0] io
);

/*

	APB <---> QSPI_Master

*/

    // registers
    reg[2:0] state, state_nxt;

    reg[30:0] QSPI_CCR, QSPI_CCR_nxt;
    reg[23:0] QSPI_ADR, QSPI_ADR_nxt;
    reg[31:0] QSPI_DR[0:7], QSPI_DR_nxt[0:7];
    reg[1:0] QSPI_STA, QSPI_STA_nxt;

    genvar i, j;
    wire[7:0] all_regs[0:40];
    assign all_regs[0] = QSPI_CCR[0+:8];
    assign all_regs[1] = QSPI_CCR[8+:8];
    assign all_regs[2] = QSPI_CCR[16+:8];
    assign all_regs[3] = {1'h0, QSPI_CCR[24+:7]};
    assign all_regs[4] = QSPI_ADR[0+:8];
    assign all_regs[5] = QSPI_ADR[8+:8];
    assign all_regs[6] = QSPI_ADR[16+:8];
    assign all_regs[7] = 8'h00;
    generate
        for(i=0;i<4;i=i+1) begin
            for(j=0;j<8;j=j+1) begin
                assign all_regs[i+8+j*4] = QSPI_DR[j][i*8+:8];
            end
        end
    endgenerate
    assign all_regs[40] = {6'h00, QSPI_STA};

    always @(posedge clk_i) begin
        QSPI_CCR <= QSPI_CCR_nxt;
        QSPI_ADR <= QSPI_ADR_nxt;
        QSPI_STA <= QSPI_STA_nxt;
        QSPI_DR[0] <= QSPI_DR_nxt[0];
        QSPI_DR[1] <= QSPI_DR_nxt[1];
        QSPI_DR[2] <= QSPI_DR_nxt[2];
        QSPI_DR[3] <= QSPI_DR_nxt[3];
        QSPI_DR[4] <= QSPI_DR_nxt[4];
        QSPI_DR[5] <= QSPI_DR_nxt[5];
        QSPI_DR[6] <= QSPI_DR_nxt[6];
        QSPI_DR[7] <= QSPI_DR_nxt[7];
    end

    always @* begin
        QSPI_CCR_nxt = QSPI_CCR;
        QSPI_ADR_nxt = QSPI_ADR;
        QSPI_DR_nxt[0] = QSPI_DR[0];
        QSPI_DR_nxt[1] = QSPI_DR[1];
        QSPI_DR_nxt[2] = QSPI_DR[2];
        QSPI_DR_nxt[3] = QSPI_DR[3];
        QSPI_DR_nxt[4] = QSPI_DR[4];
        QSPI_DR_nxt[5] = QSPI_DR[5];
        QSPI_DR_nxt[6] = QSPI_DR[6];
        QSPI_DR_nxt[7] = QSPI_DR[7];
        QSPI_STA_nxt = QSPI_STA;

        if(rst_i) QSPI_STA_nxt = 2'b00;
    end

    generate
        for(i=0;i<4;i=i+1) begin
            always @* begin
            rdata_o = 32'hXXXXXXXX;
            if(addr_i <= (40-i)) begin
            rdata_o[(8*i)+:8] = 0;
                if(write_i) begin
                    case(addr_i+i)
                        6'h00: QSPI_CCR_nxt[7:0] = wdata_i[(8*i)+:8];
                        6'h01: QSPI_CCR_nxt[15:8] = wdata_i[(8*i)+:8];
                        6'h02: QSPI_CCR_nxt[23:16] = wdata_i[(8*i)+:8];
                        6'h03: begin
                            QSPI_CCR_nxt[30:24] = wdata_i[(8*i)+:7];
                            if(wdata_i[8*i+7]) begin
                                QSPI_STA_nxt = 2'b10;
                            end
                        end

                        6'h04: QSPI_ADR_nxt[7:0] = wdata_i[(8*i)+:8];
                        6'h05: QSPI_ADR_nxt[15:8] = wdata_i[(8*i)+:8];
                        6'h06: QSPI_ADR_nxt[23:16] = wdata_i[(8*i)+:8];

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
    endgenerate

/*

	QSPI_Master <---> Flash Memory

*/

    /////////////////////////
    // Client Select Conf. //
    /////////////////////////

    reg cs_nd;
    reg[1:0] state_q=0, state_d;
    
    always @(posedge clk_i) begin
        cs_no <= cs_nd;
    end

    always @* begin
        cs_nd = (state_q==0) ? (~QSPI_STA_nxt[1]) : 1'b0;
    end
    
    /////////////////////
	// Clock Generator //
    /////////////////////
	
    reg sclk_d;
    reg[5:0] cntr_sclk_d, cntr_sclk_q;

    always @(posedge clk_i or negedge clk_i) begin
        sclk_o <= sclk_d;
        cntr_sclk_q <= cntr_sclk_d;
    end

    always @* begin
        cntr_sclk_d = cntr_sclk_q + 1;

        if(cntr_sclk_q == QSPI_CCR[30:25]) begin
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

    reg[7:0] cntr_state_q, cntr_state_d;
    reg[3:0] io_q, io_d;
    reg[3:0] io_en_q, io_en_d;
    
    always @(negedge (sclk_o | cs_no)) begin
        io_q <= io_d;
        io_en_q <= io_en_d;
        state_q <= state_d;
        cntr_state_q <= cntr_state_d;
    end

	assign (pull1, pull0) io = 4'hf;
    assign io = io_en_q ? io_q : 4'bzzzz;



//  WREN       8'h06 + 8b cmd                         133Mhz x0 xxxx xxxx xxxx
//  WRDI       8'h04 + 8b cmd                         133Mhz x0 xxxx xxxx xxxx
//  CLSR       8'h30 + 8b cmd                         133Mhz x0 xxxx xxxx xxxx
//  RESET      8'hF0 + 8b cmd                         133Mhz x0 xxxx xxxx xxxx

//  RDID       8'h9F + 8b cmd             - 648b data 133Mhz x1  read  0dummy 0-31
//  RDSR1      8'h05 + 8b cmd             - 8b data   133Mhz x1  read  0dummy 0
//  RDSR2      8'h07 + 8b cmd             - 8b data   133Mhz x1  read  0dummy 0
//  RDCR       8'h35 + 8b cmd             - 8b data   133Mhz x1  read  0dummy 0
//  READ_ID    8'h90 + 8b cmd + 24b addr  - 16b data  133Mhz x1  read  3dummy 1
//  RES        8'hAB + 8b cmd + 24b dummy - 8b data    50Mhz x1  read  3dummy 0
//  WRR        8'h01 + 8b cmd             + 16b data  133Mhz x1 write  0dummy 1
//  READ       8'h03 + 8b cmd + 24b addr  - inf        50Mhz x1  read  3dummy 0-31
//  PP         8'h02 + 8b cmd + 24b addr + 256B data  133Mhz x1 write  3dummy 0-31
//  SE         8'hD8 + 8b cmd            + 24b data   133Mhz x1 write  0dummy 2

//  DOR        8'h3B + 8b cmd + 24b addr + 8b dummy -inf 104Mhz x2 read 4dummy 0-31
//                                                  -inf

//  QOR        8'h6B + 8b cmd + 24b addr + 8b dummy -inf 104Mhz x4 read  4dummy 0-31
//                                                  -inf
//                                                  -inf
//                                                  -inf
//  QPP        8'h32 + 8b cmd + 24b addr + 64B data       80Mhz x4 write 3dummy 0-31
//                                       + 64B data
//                                       + 64B data
//                                       + 64B data
    
    localparam STATE_IDLE    = 2'b00;
    localparam STATE_CMD     = 2'b01;
    localparam STATE_DUMMY   = 2'b10;
    localparam STATE_EXECUTE = 2'b11;

    wire[31:0] QSPI_ADR32 = {QSPI_ADR, 8'h00};

    always @* begin
        QSPI_STA_nxt = QSPI_STA;
        state_d = state_q;
        cntr_state_d = cntr_state_q - 1;
        io_en_d = io_en_q;
        io_d = io_q;

        case(state_q)
            STATE_IDLE: begin
                io_en_d = 0;
                if(QSPI_STA[1]) begin
                    state_d = STATE_CMD;
                    cntr_state_d = 7;
                end
            end
            
            STATE_CMD: begin
                io_en_d = 4'b0001;
                io_d[0] = QSPI_CCR[cntr_state_q[2:0]];
                if(cntr_state_q[2:0]==0) begin
                    if(QSPI_CCR[9:8]) begin
                        if(QSPI_CCR[15:11]) state_d = STATE_DUMMY;
                        else state_d = STATE_EXECUTE;
                    end else begin
                        state_d = STATE_IDLE;
                        QSPI_STA_nxt = 2'h01;
                    end
                end
            end
            
            STATE_DUMMY: begin
                io_d[0] = QSPI_ADR32[cntr_state_d[4:0]];
                if(cntr_state_q[4:0]==(~QSPI_CCR[15:11])) begin
                    state_d = STATE_EXECUTE;
                    cntr_state_d = {6'b11_1111, ~QSPI_CCR[9:8]} + 1;
                end
            end

            STATE_EXECUTE: begin
                if(QSPI_CCR[10]) begin
                    case(QSPI_CCR[9:8])
                        2'b01: begin
                            io_en_d = 4'b0001;
                            io_d[0] = QSPI_DR[~cntr_state_q[7:5]][{~cntr_state_q[4:3], cntr_state_q[2:0]}];
                        end
                        2'b10: begin
                            io_en_d = 4'b0011;
                            io_d[0] = QSPI_DR[~cntr_state_q[7:5]][{~cntr_state_q[4:3], cntr_state_q[2:1], 1'b0}];
                            io_d[1] = QSPI_DR[~cntr_state_q[7:5]][{~cntr_state_q[4:3], cntr_state_q[2:1], 1'b1}];
                            cntr_state_d = cntr_state_q - 2;
                        end
                        2'b11: begin
                            io_en_d = 4'b1111;
                            io_d[0] = QSPI_DR[~cntr_state_q[7:5]][{~cntr_state_q[4:3], cntr_state_q[2], 2'b00}];
                            io_d[1] = QSPI_DR[~cntr_state_q[7:5]][{~cntr_state_q[4:3], cntr_state_q[2], 2'b01}];
                            io_d[2] = QSPI_DR[~cntr_state_q[7:5]][{~cntr_state_q[4:3], cntr_state_q[2], 2'b10}];
                            io_d[3] = QSPI_DR[~cntr_state_q[7:5]][{~cntr_state_q[4:3], cntr_state_q[2], 2'b11}];
                            cntr_state_d = cntr_state_q - 4;
                        end
                    endcase
                end else begin
                    io_en_d = 4'b0000;
                    case(QSPI_CCR[9:8])
                        2'b01: begin
                            QSPI_DR_nxt[~cntr_state_q[7:5]][{~cntr_state_q[4:3], cntr_state_q[2:0]}] = io_q[0];
                        end
                        2'b10: begin
                            QSPI_DR_nxt[~cntr_state_q[7:5]][{~cntr_state_q[4:3], cntr_state_q[2:1], 1'b0}] = io_q[0];
                            QSPI_DR_nxt[~cntr_state_q[7:5]][{~cntr_state_q[4:3], cntr_state_q[2:1], 1'b1}] = io_q[1];
                            cntr_state_d = cntr_state_q - 2;
                        end
                        2'b11: begin
                            QSPI_DR_nxt[~cntr_state_q[7:5]][{~cntr_state_q[4:3], cntr_state_q[2], 2'b00}] = io_q[0];
                            QSPI_DR_nxt[~cntr_state_q[7:5]][{~cntr_state_q[4:3], cntr_state_q[2], 2'b01}] = io_q[1];
                            QSPI_DR_nxt[~cntr_state_q[7:5]][{~cntr_state_q[4:3], cntr_state_q[2], 2'b10}] = io_q[2];
                            QSPI_DR_nxt[~cntr_state_q[7:5]][{~cntr_state_q[4:3], cntr_state_q[2], 2'b11}] = io_q[3];
                            cntr_state_d = cntr_state_q - 4;
                        end
                    endcase

                end
                if(cntr_state_q == {~QSPI_CCR[20:16], 3'b000}) begin
                    state_d = STATE_IDLE;
                    QSPI_STA_nxt = 2'h01;
                end

            end

        endcase
    end

endmodule