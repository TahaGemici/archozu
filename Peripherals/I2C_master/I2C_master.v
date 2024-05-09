module I2C_master(
    input clk_i,
    input rst_i,
    input write_i,
    input [3:0] data_be_i,
    input [4:0] addr_i,
    input [31:0] wdata_i,
    output reg [31:0] rdata_o,

	inout sda_io,
	output scl_io
);

	// states
	localparam IDLE  = 0;
	localparam START = 1;
	localparam ADDR  = 2;
	localparam ACK0  = 3;
	localparam WDATA = 4;
	localparam RDATA = 5;
	localparam ACK1  = 6;
	localparam STOP  = 7;

/*

	APB <---> I2C_Master

*/

	// registers
	reg [2:0] state=IDLE, state_nxt;
	reg [4:0] addr, addr_nxt;
	reg [31:0] wdata, wdata_nxt;
	reg read, read_nxt;

	reg [1:0] I2C_NBY, I2C_NBY_nxt;
	reg [6:0] I2C_ADR, I2C_ADR_nxt;
	reg [31:0] I2C_RDR, I2C_RDR_nxt;
	reg [31:0] I2C_TDR, I2C_TDR_nxt;
	reg [3:0] I2C_CFG, I2C_CFG_nxt;

	wire[7:0] all_regs[0:16];
	assign all_regs[0] = {6'h00, ~|I2C_NBY, I2C_NBY};
	assign all_regs[1] = 0;
	assign all_regs[2] = 0;
	assign all_regs[3] = 0;
	assign all_regs[4] = {1'b0, I2C_ADR};
	assign all_regs[5] = 0;
	assign all_regs[6] = 0;
	assign all_regs[7] = 0;
	assign all_regs[8] = I2C_RDR[7:0];
	assign all_regs[9] = I2C_RDR[15:8];
	assign all_regs[10] = I2C_RDR[23:16];
	assign all_regs[11] = I2C_RDR[31:24];
	assign all_regs[12] = I2C_TDR[7:0];
	assign all_regs[13] = I2C_TDR[15:8];
	assign all_regs[14] = I2C_TDR[23:16];
	assign all_regs[15] = I2C_TDR[31:24];
	assign all_regs[16] = {4'h0, I2C_CFG};



	always @(posedge clk_i) begin
		I2C_NBY <= I2C_NBY_nxt;
		I2C_ADR <= I2C_ADR_nxt;
		I2C_TDR <= I2C_TDR_nxt;
		I2C_CFG <= I2C_CFG_nxt;
	end
	
	integer i;
	always @* begin
		I2C_NBY_nxt = I2C_NBY;
		I2C_ADR_nxt = I2C_ADR;
		I2C_TDR_nxt = I2C_TDR;
		I2C_CFG_nxt = rst_i ? 0 : I2C_CFG;
		if(state == ACK1) I2C_CFG_nxt[{read, 1'b1}] = 1'b1;

        rdata_o = 8'h00;
        for(i=0;i<4;i=i+1) begin
			if(addr_i <= (16-i)) begin
            	if(write_i) begin
					case(addr_i+i)
						5'h00: begin
							I2C_NBY_nxt[1:0] = wdata_i[(8*i)+:2];
							if(wdata_i[((8*i)+2)+:6]) begin
								I2C_NBY_nxt[1:0] = 2'h0;
							end
						end
						5'h01: begin
							if(wdata_i[(8*i)+:8]) begin
								I2C_NBY_nxt[1:0] = 2'h0;
							end
						end
						5'h02: begin
							if(wdata_i[(8*i)+:8]) begin
								I2C_NBY_nxt[1:0] = 2'h0;
							end
						end
						5'h03: begin
							if(wdata_i[(8*i)+:8]) begin
								I2C_NBY_nxt[1:0] = 2'h0;
							end
						end
						
						5'h04: I2C_ADR_nxt = wdata_i[(8*i)+:7];
						
						5'h0C: I2C_TDR_nxt[7:0] = wdata_i[(8*i)+:8];
						5'h0D: I2C_TDR_nxt[15:8] = wdata_i[(8*i)+:8];
						5'h0E: I2C_TDR_nxt[23:16] = wdata_i[(8*i)+:8];
						5'h0F: I2C_TDR_nxt[31:24] = wdata_i[(8*i)+:8];

						5'h10: I2C_CFG_nxt = wdata_i[3:0];
					endcase
            	end
                if(data_be_i[i]) rdata_o[(8*i)+:8] = all_regs[addr_i+i];
			end
        end
	end	




/*

	I2C_Master <---> I2C_Slave(s)

*/


	// wires 
	wire clk_i2c;
	
	// clock generator
	clk_gen #(`CLK_I2C_FREQ) clk_i2c_inst(
		rst_i,
		clk_i,
		clk_i2c
	);

	// registers
	reg [1:0] nby_counter, nby_counter_nxt;
	reg [2:0] counter=0, counter_nxt;
	reg sda_o;
	reg scln=1, scln_nxt;
    
	wire[7:0] addr_read = {I2C_ADR, read};
	assign (pull1, pull0) sda_io = 1;
	assign sda_io = sda_o;
	assign scl_io = scln | clk_i2c;

	always @(posedge clk_i2c) begin
		scln <= scln_nxt;
	end
	
	always @(negedge clk_i2c) begin
		I2C_RDR <= I2C_RDR_nxt;
		state <= state_nxt;
		counter <= counter_nxt;
		nby_counter <= nby_counter_nxt;
		read <= read_nxt;
	end

	always @* begin
		I2C_RDR_nxt = I2C_RDR;
		scln_nxt = rst_i;
		state_nxt = state;
		counter_nxt = counter - 1;
		nby_counter_nxt = nby_counter;

		read_nxt = (^I2C_CFG[3:2]) & (~^I2C_CFG[1:0]);

		case(state)
			IDLE: begin
				scln_nxt = 1;
				nby_counter_nxt = 0;
				state_nxt = IDLE;
				if(^I2C_CFG[3:2]) state_nxt = START;
				if(^I2C_CFG[1:0]) state_nxt = START;
			end
			START: begin
				counter_nxt = 3'h7;
				scln_nxt = 0;
				state_nxt = ADDR;
			end
			ADDR: begin
				if (counter == 0) state_nxt = ACK0;
			end
			ACK0: begin
				counter_nxt = 3'h7;
				state_nxt = sda_io ? STOP : (read ? RDATA : WDATA);
			end
			WDATA: begin
				if(counter == 0) begin
					state_nxt <= ACK1;
					nby_counter_nxt = nby_counter + 1;
				end
			end
			RDATA: begin
				I2C_RDR[{nby_counter-1, counter}] = sda_io;
				if (counter == 0) begin
					state_nxt <= ACK1;
					nby_counter_nxt = nby_counter + 1;
				end
			end
			ACK1: begin
				counter_nxt = 3'h7;
				state_nxt = (nby_counter == I2C_NBY) ? STOP : {2'b10, read};
			end
			STOP: begin
				scln_nxt = 1;
				state_nxt = IDLE;
			end
		endcase
	end
	
	always @* begin
		case(state)
			IDLE:  sda_o = 1'b1;
			START: sda_o = 1'b0;
			ADDR:  sda_o = addr_read[counter];
			ACK0:  sda_o = 1'bz;
			WDATA: sda_o = I2C_TDR[{nby_counter, counter}];
			RDATA: sda_o = 1'bz;
			ACK1:  sda_o = read ? (nby_counter == I2C_NBY) : 1'bz;
			STOP:  sda_o = 1'b0;
		endcase
	end
endmodule