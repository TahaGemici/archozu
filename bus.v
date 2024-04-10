`define BUFFER_POW 4 // 2^n
module bus(
    input clk_i,
    input rst_i,
    input data_req_i,
    input data_we_i,
    input[3:0] data_be_i,
    input[13:0] data_addr_i,
    input[31:0] data_wdata_i,
    output data_rvalid_o,
    output reg[31:0] data_rdata_o
);
    wire[12:0] addr = data_addr_i[12:0];
    reg uart_en, i2c_en, qspi_en, timer_en, usb_en, gpio_en;
    always @* begin
        uart_en = 0;
        i2c_en = 0;
        qspi_en = 0;
        timer_en = 0;
        usb_en = 0;
        gpio_en = 0;
        if(data_we_i) begin
            case(data_addr_i[8:6]) // 4b: reserved, 3b: select, 6b: registers
                3'b000: uart_en = 1;
                3'b001: i2c_en = 1;
                3'b010: qspi_en = 1;
                3'b011: timer_en = 1;
                3'b100: usb_en = 1;
                3'b101: gpio_en = 1;
            endcase
        end
    end


    wire sda_io, scl_io;
    wire[31:0] i2c_out;
    I2C_master(
        clk_i,
        rst_i,
        i2c_en,
        addr_i,
        data_wdata_i,
        i2c_out,
	    sda_io,
	    scl_io
    );

    wire data_mem_write = (~data_addr_i[13]) & data_we_i;
    wire[31:0] data_mem_out;
    data_mem data_mem(
        clk_i,
        data_mem_write,
        data_be_i,
        addr,
        data_wdata_i,
        data_mem_out
    );

    
endmodule