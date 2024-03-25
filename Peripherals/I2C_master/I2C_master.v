module I2C_master(
    input clk_i, //FREKANSI DÜZELT
    input rstn_i,
    input sel_i,
    input enable_i,
    input write_i,
    input [6:0]addr_i,
    input [7:0] wdata_i,
    output reg [7:0] rdata_o,
    output reg ready_o,
	inout reg sda_io,
	inout reg scl_io
);
	localparam IDLE = 0;
	localparam START = 1;
	localparam ADDR = 2;
	localparam ACK0 = 3;
	localparam WDATA = 4;
	localparam ACK1 = 5;
	localparam RDATA = 6;
	localparam ACK2 = 7;
	localparam STOP = 8;

	reg [2:0] state, state_nxt;
	reg write, write_nxt;
	reg [6:0] addr, addr_nxt;
	reg [7:0] wdata, wdata_nxt, rdata_nxt;
	reg [2:0] counter, counter_nxt;

	reg scln;
	reg ready_nxt;
    
	assign scl_io = scln | clk_i;
	wire setup = sel_i & (~enable_i);
	wire rst = ~rstn_i;
	wire[7:0] addr_read = {addr, ~write};
	
	always @(negedge clk_i) begin
		addr <= addr_nxt;
		wdata <= wdata_nxt;
	end

	always @(posedge clk_i) begin
		state <= state_nxt;
		write <= write_nxt;
		rdata_o <= rdata_nxt;
		ready_o <= ready_nxt;
		counter <= counter_nxt;

		scln <= rst | (state == IDLE) | (state == START) | (state == STOP);
	end

	always @* begin
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
				state_nxt = sda_io ? IDLE : STOP;
			end
			RDATA: begin
				rdata_nxt = {rdata_o[6:0], sda_io};
				if (counter == 0) state_nxt = ACK2;
			end
			ACK2: state_nxt = STOP;
			STOP: state_nxt = IDLE;
		endcase

		if(rst) state_nxt = IDLE;
	end
	
	always @* begin
		addr_nxt = setup ? addr_i : addr;
		wdata_nxt = setup ? wdata_i : wdata;

		case(state)
			IDLE:  sda_io = 1'b1;
			START: sda_io = 1'b0;
			ADDR:  sda_io = addr_read[counter];
			ACK0:  sda_io = 1'bz;
			WDATA: sda_io = wdata[counter];
			ACK1:  sda_io = 1'b0;
			RDATA: sda_io = 1'bz;
			ACK2:  sda_io = 1'bz;
			STOP:  sda_io = 1'b1;
		endcase
	end
endmodule