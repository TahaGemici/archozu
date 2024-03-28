module I2C_master(
    input clk_i,
    input rstn_i,
    input sel_i,
    input enable_i,
    input write_i,
    input [7:0] addr_i,
    input [7:0] wdata_i,
    output reg [7:0] rdata_o,
    output reg ready_o,
	inout reg sda_io,
	inout reg scl_io
);



/*

	APB <---> I2C_Master

*/



	// wires 
	wire setup = sel_i & (~enable_i);
	wire rst = ~rstn_i;

	// registers
	reg rdata_o_nxt;
	reg [6:0] addr, addr_nxt;
	reg [7:0] wdata, wdata_nxt;

	reg [2:0] I2C_NBY, I2C_NBY_nxt;
	reg [6:0] I2C_ADR, I2C_ADR_nxt;
	reg [31:0] I2C_RDR, I2C_RDR_nxt;
	reg [31:0] I2C_TDR, I2C_TDR_nxt;
	reg [3:0] I2C_CFG, I2C_CFG_nxt;

	always @(posedge clk_i) begin
		I2C_NBY <= I2C_NBY_nxt;
		I2C_ADR <= I2C_ADR_nxt;
		I2C_TDR <= I2C_TDR_nxt;
		I2C_CFG <= I2C_CFG_nxt;

		rdata_o <= rdata_o_nxt;
	end

	always @* begin
		I2C_NBY_nxt = I2C_NBY;
		I2C_ADR_nxt = I2C_ADR;
		I2C_TDR_nxt = I2C_TDR;
		I2C_CFG_nxt = I2C_CFG;
		rdata_o_nxt = rdata_o;
		
		if(setup) begin
			I2C_RDR_nxt = I2C_RDR;

			if(write_i) begin
				case(addr_i)
					8'h00: I2C_NBY_nxt = wdata_i[7:2] ? 3'h4 : {1'b0, wdata_i[1], (~wdata_i[1])|wdata_i[0]};
					8'h01: I2C_NBY_nxt = wdata_i ? 3'h4 : I2C_NBY;
					8'h02: I2C_NBY_nxt = wdata_i ? 3'h4 : I2C_NBY;
					8'h03: I2C_NBY_nxt = wdata_i ? 3'h4 : I2C_NBY;
					
					8'h04: I2C_ADR_nxt = wdata_i[6:0];

					8'h0C: I2C_TDR_nxt[7:0] = wdata_i;
					8'h0D: I2C_TDR_nxt[15:8] = wdata_i;
					8'h0E: I2C_TDR_nxt[23:16] = wdata_i;
					8'h0F: I2C_TDR_nxt[31:24] = wdata_i;

					8'h10: I2C_CFG_nxt = wdata_i[3:0];
				endcase
			end else begin
				rdata_o_nxt = 0;
				case(addr_i)
					8'h00: rdata_o_nxt[2:0] = I2C_NBY;
					
					8'h04: rdata_o_nxt[6:0] = I2C_ADR;

					8'h08: rdata_o_nxt = I2C_RDR[7:0];
					8'h09: rdata_o_nxt = I2C_RDR[15:8];
					8'h0A: rdata_o_nxt = I2C_RDR[23:16];
					8'h0B: rdata_o_nxt = I2C_RDR[31:24];

					8'h0C: rdata_o_nxt = I2C_TDR[7:0];
					8'h0D: rdata_o_nxt = I2C_TDR[15:8];
					8'h0E: rdata_o_nxt = I2C_TDR[23:16];
					8'h0F: rdata_o_nxt = I2C_TDR[31:24];
					
					8'h10: rdata_o_nxt[3:0] = I2C_CFG;
				endcase
			end
		end

		if(rst)begin
			I2C_NBY_nxt = 0;
			I2C_ADR_nxt = 0;
			I2C_TDR_nxt = 0;
			I2C_CFG_nxt = 0;
			rdata_o_nxt = 0;
		end
	end	









/*

	I2C_Master <---> I2C_Slave

*/


	// wires 
	wire clk_i2c;
	
	// clock generator
	clk_gen #(`CLK_I2C_FREQ)(
		clk_i,
		clk_i2c
	);

	// states
	localparam IDLE  = 0;
	localparam START = 1;
	localparam ADDR  = 2;
	localparam ACK0  = 3;
	localparam WDATA = 4;
	localparam ACK1  = 5;
	localparam RDATA = 6;
	localparam ACK2  = 7;

	// registers
	reg [2:0] state, state_nxt;
	reg write, write_nxt;
	reg [2:0] counter, counter_nxt;

	reg scln;
	reg ready_nxt;
    
	assign scl_io = scln | clk_i;
	wire[7:0] addr_read = {addr, ~write};
	
	always @(posedge clk_i2c) begin
		state <= state_nxt;
		write <= write_nxt;
		I2C_RDR <= I2C_RDR_nxt;
		ready_o <= ready_nxt;
		counter <= counter_nxt;

		scln <= (state == IDLE) | (state == START);
	end

	always @* begin
		I2C_RDR_nxt = I2C_RDR;
		state_nxt = setup ? START : state;
		write_nxt = setup ? write_i : write;
		rdata_nxt = rdata;
		ready_nxt = 1'b0;
		counter_nxt = state[0] ? 3'h7 : (counter - 1);

		if(setup) begin
			state_nxt = START;
			write_nxt = write_i;
		end
		
		case(state)
			IDLE: ready_nxt = rstn_i;
			START: state_nxt = ADDR;
			ADDR: begin
				if (counter == 0) state_nxt = ACK0;
			end
			ACK0: begin
				state_nxt = write ? WDATA : RDATA;
				if(sda_io) state_nxt = IDLE;
			end
			WDATA: begin
				if(counter == 0) state_nxt <= ACK1;
			end
			ACK1: begin
				state_nxt = IDLE;
				//state_nxt = sda_io ? IDLE : IDLE;
			end
			RDATA: begin
				rdata_nxt = {rdata_o[6:0], sda_io};
				if (counter == 0) state_nxt = ACK2;
			end
			ACK2: state_nxt = IDLE;
		endcase

		if(rst) state_nxt = IDLE;
	end
	
	always @* begin
		case(state)
			IDLE:  sda_io = 1'b1;
			START: sda_io = 1'b0;
			ADDR:  sda_io = addr_read[counter];
			ACK0:  sda_io = 1'bz;
			WDATA: sda_io = wdata[counter];
			ACK1:  sda_io = 1'b0;
			RDATA: sda_io = 1'bz;
			ACK2:  sda_io = 1'bz;
		endcase
	end
endmodule