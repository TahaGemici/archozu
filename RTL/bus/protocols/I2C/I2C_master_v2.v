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
    
	wire[7:0] addr_read = {data_o_perip[6:0], read};

    reg[9:0] clk_counter, clk_counter_nxt;
    reg clk_i2c, clk_i2c_nxt;
	reg[9:0] clk_div, clk_div_nxt;
	reg scl_io_prv, sda_io_prv;
	wire start_cond, stop_cond;

    always @(posedge clk_i) begin
        clk_counter <= clk_counter_nxt;
        clk_i2c <= clk_i2c_nxt;
        scl_io_prv <= scl_io;
        sda_io_prv <= sda_io;
    end

    always @* begin
        clk_counter_nxt = clk_counter + 1;
        clk_i2c_nxt = clk_i2c;
        if(clk_counter==clk_div) begin
            clk_counter_nxt = 0;
            clk_i2c_nxt = ~clk_i2c;
        end
		if(rst_i) begin
    		clk_counter_nxt = 0;
    		clk_i2c_nxt = 1;
		end
    end

	assign start_cond = scl_io &   sda_io_prv  & (~sda_io);
	assign stop_cond  = scl_io & (~sda_io_prv) &   sda_io;



endmodule