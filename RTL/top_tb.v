module top_tb();
    reg clk, rst;
    initial begin
        clk = 0;
        forever begin
            clk = #(`CLK_PERIOD/2.0) ~clk;
        end
    end
    initial begin
        rst = 1;
        #500000; //flash_mem için bu kadar uzun
        rst = 0;
        #100000000;
        $finish;
    end
    reg[15:0] in;
    initial begin
        forever in = #500 $random;
    end

    wire sda_io, scl_io;
    i2c_slave_controller #(123) I2C_slave0(
        scl_io,
        sda_io,
        rst
    );
    i2c_slave_controller #(74) I2C_slave1(
        scl_io,
        sda_io,
        rst
    );
    i2c_slave_controller #(12) I2C_slave2(
        scl_io,
        sda_io,
        rst
    );
    i2c_slave_controller #(31) I2C_slave3(
        scl_io,
        sda_io,
        rst
    );

    wire sclk, cs;
    wire[3:0] io;
    s25fl128s flash_mem(
        io[0],
        io[1],
        sclk,
        cs,
        ~rst,
        io[2],
        io[3]
    );

    wire[15:0] out;
    top dut(
        rst,
        clk,
        sda_io,
        scl_io,
        sclk,
        cs,
        io,
        in,
        out
    );
endmodule