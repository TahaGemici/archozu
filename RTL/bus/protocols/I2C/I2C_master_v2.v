module I2C_master_v2(
    input clk_i,
    input rst_i,
    input write_i,
    input [3:0] data_be_i,
    input [4:0] addr_i,
    input [31:0] wdata_i,
    output [31:0] rdata_o,

	inout sda_io,
	inout scl_io
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

	bus <---> I2C_Master

*/

	// registers
	reg [2:0] state, state_nxt;
	reg read, read_nxt;

	localparam I2C_NBY = 0;
	localparam I2C_ADR = 4;
	localparam I2C_RDR = 8;
	localparam I2C_TDR = 12;
	localparam I2C_CFG = 16;

    reg write_perip;
    reg[31:0] wraddr_perip;
    reg[31:0] data_i_perip;
    reg[31:0] rdaddr_perip;
    wire[31:0] data_o_perip;
    
    perip_mem #(5, 5'b11011) i2c_mem(
        clk_i,
        rst_i,
        
        write_i,
        data_be_i,
        {27'b0, addr_i},
        wdata_i,
        rdata_o,
        
        write_perip,
        wraddr_perip,
        data_i_perip,
        rdaddr_perip,
        data_o_perip
    );

/*

	I2C_Master <---> I2C_Slave(s)

*/

	// registers
	reg [2:0] nby_counter, nby_counter_nxt;
	reg [2:0] counter, counter_nxt;
	reg scln, scln_nxt;
	reg sda_io_prv;
	reg busy, busy_nxt;
    reg[9:0] clk_counter, clk_counter_nxt;
    reg clk_i2c, clk_i2c_nxt;
	reg[9:0] clk_div, clk_div_nxt;
    
	wire[7:0] addr_read = {data_o_perip[6:0], read};
	
	reg sda_o;
	wire sda_en = (state!=ACK0) && (state!=RDATA) && ((state!=ACK1) || read);
	assign sda_io = sda_en ? sda_o : 1'bz;

	assign start_cond = scl_io &   sda_io_prv  & (~sda_io);
	assign stop_cond  = scl_io & (~sda_io_prv) &   sda_io;

	assign scl_io = (scln | clk_i2c) ? 1'bz : 1'b0;
    
	always @(posedge clk_i) begin
        clk_counter <= clk_counter_nxt;
        clk_i2c <= clk_i2c_nxt;
    end
    always @* begin
        clk_counter_nxt = clk_counter + 1;
        clk_i2c_nxt = clk_i2c;
		if(clk_i2c & (~scl_io)) begin
			clk_counter_nxt = clk_counter;
		end
        
		if(clk_counter==clk_div) begin
            clk_counter_nxt = 0;
            clk_i2c_nxt = ~clk_i2c;
        end
		if(rst_i) begin
    		clk_counter_nxt = 0;
    		clk_i2c_nxt = 1;
		end
    end

	reg clk_i2c_prv;
	always @(posedge clk_i) begin
		clk_i2c_prv <= clk_i2c; 
		scln <= scln_nxt;
		busy <= busy_nxt;
		state <= state_nxt;
		counter <= counter_nxt;
		clk_div <= clk_div_nxt;
		nby_counter <= nby_counter_nxt;
		read <= read_nxt;
		sda_io_prv <= sda_io;
	end

	always @* begin
		busy_nxt = busy;
		if(busy) begin
			busy_nxt = ~stop_cond;
		end else begin
			busy_nxt = start_cond;
		end


		state_nxt = state;
		scln_nxt = 0;
		counter_nxt = counter - 1;
		nby_counter_nxt = nby_counter;
		read_nxt = read;
		clk_div_nxt = clk_div;
  
    	write_perip = 0;
    	data_i_perip = 0;
    	wraddr_perip = I2C_RDR;
    	rdaddr_perip = I2C_CFG;

		case(state)
			IDLE: begin
				scln_nxt = 1;
				if((^data_o_perip[3:2]) | (^data_o_perip[1:0])) begin
					if(~busy) begin
						state_nxt = START;
					end
				end
				read_nxt = (data_o_perip[3:0] == 4'b0100);
    			write_perip = 1;
				case(data_o_perip[5:4])
					2'b00: clk_div_nxt = 10'd74;
					2'b01: clk_div_nxt = 10'd149;
					2'b10: clk_div_nxt = 10'd299;
					2'b11: clk_div_nxt = 10'd599;
				endcase
			end
			START: begin
				rdaddr_perip = I2C_NBY;
				counter_nxt = 3'h7;
				scln_nxt = 0;
				state_nxt = ADDR;
				busy_nxt  = 0;
				
				case(data_o_perip)
					0: nby_counter_nxt = 0;
					1: nby_counter_nxt = 0;
					2: nby_counter_nxt = 1;
					3: nby_counter_nxt = 2;
					default: nby_counter_nxt = 3;
				endcase
			end
			ADDR: begin
    			rdaddr_perip = I2C_ADR;
				if (counter == 0) state_nxt = ACK0;
				/*
				if(sda_o != sda_io) begin
					busy_nxt = 1;
					state_nxt = IDLE;
				end */
			end
			ACK0: begin
				counter_nxt = 3'h7;
				if(sda_io) begin
					state_nxt = STOP;
				end else begin
					if(read) begin
						write_perip = 1;
						state_nxt = RDATA;
					end else state_nxt = WDATA;
				end
			end
			WDATA: begin
    			rdaddr_perip = I2C_TDR;
				if(counter == 0) begin
					state_nxt = ACK1;
				end
			end
			RDATA: begin
    			rdaddr_perip = I2C_RDR;
    			write_perip  = 1;
    			data_i_perip = data_o_perip;
    			data_i_perip[{nby_counter[1:0], counter}] = sda_io;
				if (counter == 0) begin
					state_nxt = ACK1;
				end
			end
			ACK1: begin
    			rdaddr_perip = I2C_NBY;
				counter_nxt = 3'h7;
				state_nxt = {2'b10, read};

				nby_counter_nxt = nby_counter - (read || (!sda_io));
				if(nby_counter_nxt==3'b111) state_nxt = STOP;
			end
			STOP: begin
				scln_nxt = 1;
				state_nxt = IDLE;
    			wraddr_perip = I2C_CFG;
				write_perip = clk_i2c & (~clk_i2c_prv);
				data_i_perip = data_o_perip;
				data_i_perip[{read,1'b1}] = 1'b1;
			end
		endcase

		case(state)
			IDLE:  sda_o = 1'b1;
			ADDR:  sda_o = addr_read[counter];
			WDATA: sda_o = data_o_perip[{nby_counter[1:0], counter}];
			ACK1:  sda_o = (state_nxt == STOP);
			default: sda_o = 1'b0;
		endcase

		if(clk_i2c | (~clk_i2c_nxt)) begin
			scln_nxt = scln;
		end
		if(clk_i2c_nxt | (~clk_i2c)) begin
			state_nxt = state;
			counter_nxt = counter;
			nby_counter_nxt = nby_counter;
			read_nxt = read;
		end
		if(rst_i) begin
			busy_nxt = 0;
			state_nxt = IDLE;
			scln_nxt = 1;
			clk_div_nxt = 10'd74;
		end
	end
endmodule