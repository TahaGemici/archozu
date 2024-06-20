module I2C_master(
    input clk_i,
    input rst_i,
    input write_i,
    input [3:0] data_be_i,
    input [4:0] addr_i,
    input [31:0] wdata_i,
    output [31:0] rdata_o,

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
    
    perip_mem #(20, 20'h1_ff_11) i2c_mem(
        clk_i,
        
        write_i,
        data_be_i,
        {27'b0, addr_i},
        wdata_i,
        rdata_o,
        
        write_perip,
        4'b1111,
        wraddr_perip,
        data_i_perip,
        rdaddr_perip,
        data_o_perip
    );

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
	reg [2:0] nby_counter, nby_counter_nxt;
	reg [2:0] counter, counter_nxt;
	reg sda_o;
	reg scln, scln_nxt;
    
	wire[7:0] addr_read = {data_o_perip[6:0], read};
	assign (pull1, pull0) sda_io = 1;
	assign sda_io = sda_o;
	assign scl_io = scln | clk_i2c;

	reg clk_i2c_prv;
	always @(posedge clk_i) begin
		clk_i2c_prv <= clk_i2c; 
	end

	always @(posedge clk_i2c) begin
		scln <= scln_nxt;
	end
	
	always @(negedge clk_i2c) begin
		state <= state_nxt;
		counter <= counter_nxt;
		nby_counter <= nby_counter_nxt;
		read <= read_nxt;
	end

	always @* begin
		scln_nxt = rst_i;
		state_nxt = state;
		counter_nxt = counter - 1;
		nby_counter_nxt = nby_counter;
		read_nxt = read;
  
    	write_perip = rst_i;
    	data_i_perip = 0;
    	wraddr_perip = I2C_CFG;
    	rdaddr_perip = I2C_CFG;

		case(state)
			IDLE: begin
				scln_nxt = 1;
				if((^data_o_perip[3:2]) | (^data_o_perip[1:0])) state_nxt = START;
				read_nxt = (data_o_perip[3:0] == 4'b0100);
			end
			START: begin
				rdaddr_perip = I2C_NBY;
				counter_nxt = 3'h7;
				scln_nxt = 0;
				state_nxt = ADDR;
				
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
			end
			ACK0: begin
				counter_nxt = 3'h7;
				if(sda_io) begin
					state_nxt = STOP;
					scln_nxt = 1;
				end else begin
					state_nxt = read ? RDATA : WDATA;
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
    			wraddr_perip = I2C_RDR;
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
				write_perip = clk_i2c & (~clk_i2c_prv);
				data_i_perip[{read,1'b0}+:2] = 2'b11;
			end
		endcase
		
		case(state)
			IDLE:  sda_o = 1'b1;
			START: sda_o = 1'b0;
			ADDR:  sda_o = addr_read[counter];
			ACK0:  sda_o = 1'bz;
			WDATA: sda_o = data_o_perip[{nby_counter[1:0], counter}];
			RDATA: sda_o = 1'bz;
			ACK1:  sda_o = read ? (state_nxt == STOP) : 1'bz;
			STOP:  sda_o = 1'b0;
		endcase
	end
endmodule