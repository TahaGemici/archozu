module UART(
    input clk_i,
    input rst_i,
    input write_i,
    input [3:0] data_be_i,
    input [4:0] addr_i,
    input [31:0] wdata_i,
    output [31:0] rdata_o,

	input rx,
	output tx
);




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

endmodule