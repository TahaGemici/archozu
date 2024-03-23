module I2C_master(
    input clk_i, //FREKANSI DÜZELT
    input rstn_i,
    input sel_i,
    input enable_i,
    input write_i,
    input [6:0]addr_i,
    input [7:0] wdata_i,
    output reg [7:0] rdata_o,
    output ready_o,
	inout sda_io,
	inout scl_io
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
	reg write_enable;
	reg sda_out;
	reg i2c_scl_enable = 0;

	assign ready_o = rstn_i && (state == IDLE);
    assign sda_io = write_enable ? sda_out : 1'bz;
	assign scl_io = i2c_scl_enable ? clk_i : 1'b1;
	
	always @(negedge clk_i) begin
		i2c_scl_enable <= 0;
		if(rstn_i && (state != IDLE) && (state != START) && (state != STOP)) begin
			i2c_scl_enable <= 1;
		end
	end

	always @(posedge clk_i) begin
		addr <= addr_nxt;
		state <= state_nxt;
		wdata <= wdata_nxt;
		write <= write_nxt;
		rdata_o <= rdata_nxt;
		counter <= counter_nxt;
	end

	always @* begin
		state_nxt = state;
		if(sel_i && (!enable_i)) begin
			state_nxt = START;
			addr_nxt = addr_i;
			wdata_nxt = wdata_i;
			write_nxt = write_i;
		end
		rdata_nxt = rdata_o;
		counter_nxt = counter-1;
		case(state)

			IDLE: counter_nxt = 0;

			START: state_nxt = ADDR;

			ADDR: begin
				if (counter == 0) state_nxt <= ACK0;
			end

			ACK0: begin
				state_nxt = write ? WDATA : RDATA;
				if(sda_io) state_nxt = IDLE;
			end

			WDATA: begin
				if(counter == 7) state_nxt <= ACK1;
			end

			ACK1: begin
				state_nxt = STOP;
				if(sda_io) state_nxt = IDLE;
			end

			RDATA: begin
				rdata_nxt = {rdata_o, sda_io};
				if (counter == 7) state_nxt = ACK2;
			end
			
			ACK2: state_nxt = STOP;

			STOP: state_nxt = IDLE;

		endcase

		if(!rstn_i) state_nxt = IDLE;
	end
	
	always @(negedge clk_i, negedge rst) begin
		if(rst == 0) begin
			write_enable <= 1;
			sda_out <= 1;
		end else begin
			case(state)
				
				START: begin
					write_enable <= 1;
					sda_out <= 0;
				end
				
				ADDRESS: begin
					sda_out <= saved_addr[counter];
				end
				
				READ_ACK: begin
					write_enable <= 0;
				end
				
				WRITE_DATA: begin 
					write_enable <= 1;
					sda_out <= saved_data[counter];
				end
				
				WRITE_ACK: begin
					write_enable <= 1;
					sda_out <= 0;
				end
				
				READ_DATA: begin
					write_enable <= 0;				
				end
				
				STOP: begin
					write_enable <= 1;
					sda_out <= 1;
				end
			endcase
		end
	end

endmodule