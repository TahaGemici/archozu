module QSPI_master(
    input clk_i,
    input rst_i,
    input write_i,
    input[3:0] data_be_i,
    input[5:0] addr_i,
    input[31:0] wdata_i,
    output[31:0] rdata_o,

	output reg sclk_o=1,
    output reg cs_no=1,
    inout[3:0] io
);

/*

	APB <---> QSPI_Master

*/

    reg write_perip;
    reg[3:0] be_perip;
    reg[31:0] wraddr_perip;
    reg[31:0] data_i_perip;
    reg[31:0] rdaddr_perip;
    wire[31:0] data_o_perip;
    
    perip_mem #(44, 44'h0_ff_ff_ff_ff_7f) qspi_mem(
        clk_i,
        
        write_i,
        data_be_i,
        {26'b0, addr_i},
        wdata_i,
        rdata_o,
        
        write_perip,
        be_perip,
        wraddr_perip,
        data_i_perip,
        rdaddr_perip,
        data_o_perip
    );

    localparam QSPI_CCR = 0;
    localparam QSPI_ADR = 4;
    localparam QSPI_DR  = 8;
    localparam QSPI_STA = 40;

/*

	QSPI_Master <---> Flash Memory

*/

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
	





    /////////////////////////
    // Client Select Conf. //
    /////////////////////////

    reg cs_nd, sclk_d, state_q_prv=1;
    reg[1:0] state_q=0, state_d;
    reg[5:0] cntr_sclk_d, cntr_sclk_q;

    always @(posedge clk_i) begin
        cs_no <= rst_i | cs_nd;
        sclk_o <= sclk_d;
        cntr_sclk_q <= cntr_sclk_d;
    end

    /////////
    // FSM //
    /////////

    reg[7:0] cntr_state_q, cntr_state_d;
    reg[3:0] io_q, io_d;
    reg[3:0] io_en_q, io_en_d;
    
    always @(negedge (sclk_o|cs_no)) begin
        io_q <= io_d;
        io_en_q <= io_en_d;
        state_q_prv <= ~|state_q;
        state_q <= state_d;
        cntr_state_q <= cntr_state_d;
    end

    assign io[0] = io_en_q[0] ? io_q[0] : 1'bz;
    assign io[1] = io_en_q[1] ? io_q[1] : 1'bz;
    assign io[2] = io_en_q[2] ? io_q[2] : 1'bz;
    assign io[3] = io_en_q[3] ? io_q[3] : 1'bz;

    localparam STATE_IDLE    = 2'b00;
    localparam STATE_CMD     = 2'b01;
    localparam STATE_DUMMY   = 2'b10;
    localparam STATE_EXECUTE = 2'b11;

    reg QSPI_WRITE, QSPI_WRITE_nxt;
    reg[1:0] QSPI_DATA_MODE, QSPI_DATA_MODE_nxt;
    reg[4:0] QSPI_DUMMY, QSPI_DUMMY_nxt;
    reg[4:0] QSPI_SIZE, QSPI_SIZE_nxt;
    reg[5:0] QSPI_PRESCALER, QSPI_PRESCALER_nxt;
    always @(posedge clk_i) begin
        QSPI_PRESCALER <= QSPI_PRESCALER_nxt;
        QSPI_DATA_MODE <= QSPI_DATA_MODE_nxt;
        QSPI_DUMMY     <= QSPI_DUMMY_nxt;
        QSPI_WRITE     <= QSPI_WRITE_nxt;
        QSPI_SIZE      <= QSPI_SIZE_nxt;
    end    
    always @* begin
        cs_nd = state_q ? 1'b0 : state_q_prv;
        QSPI_PRESCALER_nxt = QSPI_PRESCALER;
        QSPI_DATA_MODE_nxt = QSPI_DATA_MODE;
        QSPI_DUMMY_nxt     = QSPI_DUMMY;
        QSPI_WRITE_nxt     = QSPI_WRITE;
        QSPI_SIZE_nxt      = QSPI_SIZE;
        cntr_sclk_d        = QSPI_PRESCALER-1;
        state_d = state_q;
        if(write_i & (~|addr_i[5:2])) begin
            case(addr_i[1:0])
                2'b00: begin
                    QSPI_PRESCALER_nxt = data_be_i[3] ? wdata_i[30:25] : QSPI_PRESCALER;
                    QSPI_DATA_MODE_nxt = data_be_i[1] ? wdata_i[9:8]   : QSPI_DATA_MODE;
                    QSPI_DUMMY_nxt     = data_be_i[1] ? wdata_i[15:11] : QSPI_DUMMY;
                    QSPI_WRITE_nxt     = data_be_i[1] ? wdata_i[10]    : QSPI_WRITE;
                    QSPI_SIZE_nxt      = data_be_i[2] ? wdata_i[20:16] : QSPI_SIZE;
                    if(wdata_i[31]) begin
                        cs_nd = 1'b0;
                        state_d = STATE_CMD;
                    end
                end
                2'b01: begin
                    QSPI_PRESCALER_nxt = data_be_i[2] ? wdata_i[22:17] : QSPI_PRESCALER;
                    QSPI_DATA_MODE_nxt = data_be_i[0] ? wdata_i[1:0]   : QSPI_DATA_MODE;
                    QSPI_DUMMY_nxt     = data_be_i[0] ? wdata_i[7:3]   : QSPI_DUMMY;
                    QSPI_WRITE_nxt     = data_be_i[0] ? wdata_i[2]     : QSPI_WRITE;
                    QSPI_SIZE_nxt      = data_be_i[1] ? wdata_i[12:8]  : QSPI_SIZE;
                    if(wdata_i[23]) begin
                        cs_nd = 1'b0;
                        state_d = STATE_CMD;
                    end
                end
                2'b10: begin
                    QSPI_PRESCALER_nxt = data_be_i[1] ? wdata_i[14: 9] : QSPI_PRESCALER;
                    QSPI_SIZE_nxt      = data_be_i[0] ? wdata_i[4:0]   : QSPI_SIZE;
                    if(wdata_i[15]) begin
                        cs_nd = 1'b0;
                        state_d = STATE_CMD;
                    end
                end
                2'b11: begin
                    QSPI_PRESCALER_nxt = data_be_i[0] ? wdata_i[6:1] : QSPI_PRESCALER;
                    if(wdata_i[7]) begin
                        cs_nd = 1'b0;
                        state_d = STATE_CMD;
                    end
                end
            endcase
            cntr_sclk_d = QSPI_PRESCALER_nxt-1;
        end
        sclk_d = 0;
        if(~cs_no) begin
            sclk_d = sclk_o;
            cntr_sclk_d = cntr_sclk_q + 1;
            if(cntr_sclk_q == QSPI_PRESCALER) begin
                cntr_sclk_d = 0;
                if((|state_q)|(~state_q_prv)) begin
                    sclk_d = ~sclk_o;
                end
            end
        end
        cntr_state_d = cntr_state_q - 1;
        io_en_d = 4'b0001;
        io_d = 4'b0000;

        write_perip = 0;
        be_perip = 4'b1111;
        wraddr_perip = QSPI_STA;
        rdaddr_perip = QSPI_CCR;

        case(state_q)
            STATE_IDLE: begin
                cntr_state_d = 6;
                io_d[0] = (data_be_i[0] & (~|addr_i[1:0])) ? wdata_i[7] : data_o_perip[7];
                write_perip = 1;
                data_i_perip = 1;
            end
            
            STATE_CMD: begin
                io_d[0] = data_o_perip[cntr_state_q[2:0]];
                write_perip = 1;
                data_i_perip = 2;
                if(cntr_state_q[2:0]==0) begin
                    cntr_state_d = -1;
                    if(QSPI_DATA_MODE) begin
                        if(QSPI_DUMMY) state_d = STATE_DUMMY;
                        else state_d = STATE_EXECUTE;
                    end else begin
                        state_d = STATE_IDLE;
                    end
                end
            end
            
            STATE_DUMMY: begin
                rdaddr_perip = QSPI_ADR - 1;
                io_d[0] = data_o_perip[cntr_state_q[4:0]];
                if(cntr_state_q=={~QSPI_DUMMY,3'b111}) begin
                    io_en_d = 4'b0000;
                    state_d = STATE_EXECUTE;
                    case(QSPI_DATA_MODE)
                        default: cntr_state_d = 8'b1111_1111;
                        2'b10: cntr_state_d = 8'b1111_1110;
                        2'b11: cntr_state_d = 8'b1111_1100;
                    endcase
                end
            end

            STATE_EXECUTE: begin
                rdaddr_perip = QSPI_DR + {~cntr_state_q[7:5], 2'b0};
                wraddr_perip = QSPI_DR + {~cntr_state_q[7:5], 2'b0};
                data_i_perip = (&cntr_state_q[4:0]) ? 0 : data_o_perip; // bu satır çokomelli
                io_en_d = 4'b0000;
                if(QSPI_WRITE) begin
                    case(QSPI_DATA_MODE)
                        2'b01: begin
                            io_en_d = 4'b0001;
                            io_d[0] = data_o_perip[{~cntr_state_q[4:3], cntr_state_q[2:0]}];
                        end
                        2'b10: begin
                            io_en_d = 4'b0011;
                            io_d[0] = data_o_perip[{~cntr_state_q[4:3], cntr_state_q[2:1], 1'b0}];
                            io_d[1] = data_o_perip[{~cntr_state_q[4:3], cntr_state_q[2:1], 1'b1}];
                            cntr_state_d = cntr_state_q - 2;
                        end
                        2'b11: begin
                            io_en_d = 4'b1111;
                            io_d[0] = data_o_perip[{~cntr_state_q[4:3], cntr_state_q[2], 2'b00}];
                            io_d[1] = data_o_perip[{~cntr_state_q[4:3], cntr_state_q[2], 2'b01}];
                            io_d[2] = data_o_perip[{~cntr_state_q[4:3], cntr_state_q[2], 2'b10}];
                            io_d[3] = data_o_perip[{~cntr_state_q[4:3], cntr_state_q[2], 2'b11}];
                            cntr_state_d = cntr_state_q - 4;
                        end
                    endcase
                end else begin
                    write_perip = 1;
                    case(QSPI_DATA_MODE)
                        2'b01: begin
                            data_i_perip[{~cntr_state_q[4:3], cntr_state_q[2:0]}] = io[1];
                        end
                        2'b10: begin
                            data_i_perip[{~cntr_state_q[4:3], cntr_state_q[2:1], 1'b0}] = io[0];
                            data_i_perip[{~cntr_state_q[4:3], cntr_state_q[2:1], 1'b1}] = io[1];
                            cntr_state_d = cntr_state_q - 2;
                        end
                        2'b11: begin
                            data_i_perip[{~cntr_state_q[4:3], cntr_state_q[2], 2'b00}] = io[0];
                            data_i_perip[{~cntr_state_q[4:3], cntr_state_q[2], 2'b01}] = io[1];
                            data_i_perip[{~cntr_state_q[4:3], cntr_state_q[2], 2'b10}] = io[2];
                            data_i_perip[{~cntr_state_q[4:3], cntr_state_q[2], 2'b11}] = io[3];
                            cntr_state_d = cntr_state_q - 4;
                        end
                    endcase

                end
                if(cntr_state_q == {~QSPI_SIZE, 3'b000}) begin
                    state_d = STATE_IDLE;
                end

            end
        endcase
    end
endmodule