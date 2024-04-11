module I2C_master(
    input clk_i,
    input rst_i,
    input write_i,
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
	reg [2:0] state, state_nxt;
	reg [4:0] addr, addr_nxt;
	reg [31:0] wdata, wdata_nxt;
	reg read, read_nxt;

	reg [1:0] I2C_NBY, I2C_NBY_nxt;
	reg [6:0] I2C_ADR, I2C_ADR_nxt;
	reg [31:0] I2C_RDR, I2C_RDR_nxt;
	reg [31:0] I2C_TDR, I2C_TDR_nxt;
	reg [3:0] I2C_CFG, I2C_CFG_nxt;

	always @(posedge clk_i) begin
		I2C_NBY <= I2C_NBY_nxt;
		I2C_ADR <= I2C_ADR_nxt;
		I2C_TDR <= I2C_TDR_nxt;
		I2C_CFG <= I2C_CFG_nxt;
	end

	always @* begin
		I2C_NBY_nxt = I2C_NBY;
		I2C_ADR_nxt = I2C_ADR;
		I2C_TDR_nxt = I2C_TDR;
		I2C_CFG_nxt = I2C_CFG;

		if(write_i) begin
			case(addr_i)
				8'h00: I2C_NBY_nxt = wdata_i[31:2] ? 2'h0 : {wdata_i[1], (~wdata_i[1])|wdata_i[0]};
				8'h01: I2C_NBY_nxt = wdata_i[7:0] ? 2'h0 : I2C_NBY;
				8'h02: I2C_NBY_nxt = wdata_i[15:0] ? 2'h0 : I2C_NBY;
				8'h03: I2C_NBY_nxt = wdata_i[7:0] ? 2'h0 : I2C_NBY;

				8'h04: I2C_ADR_nxt = wdata_i[6:0];

				8'h0C: I2C_TDR_nxt = wdata_i;
				8'h0D: I2C_TDR_nxt[15:8] = wdata_i[7:0];
				8'h0E: I2C_TDR_nxt[31:16] = wdata_i[15:0];
				8'h0F: I2C_TDR_nxt[31:24] = wdata_i[7:0];
			endcase
		end
		rdata_o = 0;
		case(addr_i)
			8'h00: rdata_o[2:0] = {~|I2C_NBY, I2C_NBY};
			
			8'h04: rdata_o[6:0] = I2C_ADR;

			8'h08: rdata_o = I2C_RDR;
			8'h09: rdata_o[7:0] = I2C_RDR[15:8];
			8'h0A: rdata_o[15:0] = I2C_RDR[31:16];
			8'h0B: rdata_o[7:0] = I2C_RDR[31:24];

			8'h0C: rdata_o = I2C_TDR;
			8'h0D: rdata_o[7:0] = I2C_TDR[15:8];
			8'h0E: rdata_o[15:0] = I2C_TDR[31:16];
			8'h0F: rdata_o[7:0] = I2C_TDR[31:24];
			
			8'h10: rdata_o[3:0] = I2C_CFG;
		endcase

		if(rst_i)begin
			I2C_NBY_nxt = 0;
			I2C_ADR_nxt = 0;
			I2C_TDR_nxt = 0;
			I2C_CFG_nxt = 0;
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
	reg [2:0] counter, counter_nxt;
	reg sda_o;
	reg scln, scln_nxt;
    
	wire[7:0] addr_read = {I2C_ADR, read};
	assign (pull1, pull0) sda_io = 1;
	assign sda_io = sda_o;
	assign scl_io = scln | clk_i2c;

	always @(posedge clk_i2c or rst_i) begin
		scln <= scln_nxt;
	end
	
	always @(negedge clk_i2c or rst_i) begin
		I2C_RDR <= I2C_RDR_nxt;
		state <= rst_i ? IDLE : state_nxt;
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

		if(enable_i & write_i & (addr_i==8'h10)) I2C_CFG_nxt = wdata_i[3:0];
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
				state_nxt = {2'b10, read};
				if(nby_counter == I2C_NBY) begin
					I2C_CFG_nxt[{read, 1'b1}] = 1'b1;
					state_nxt = STOP;
				end
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