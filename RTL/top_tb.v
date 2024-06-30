module top_tb();
    reg clk, rstn;
    initial begin
        clk = 0;
        forever begin
            clk = #(`CLK_PERIOD/2.0) ~clk;
        end
    end
    initial begin
        rstn = 0;
        #500000; //flash_mem için bu kadar uzun
        rstn = 1;
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
        ~rstn
    );
    i2c_slave_controller #(74) I2C_slave1(
        scl_io,
        sda_io,
        ~rstn
    );
    i2c_slave_controller #(12) I2C_slave2(
        scl_io,
        sda_io,
        ~rstn
    );
    i2c_slave_controller #(31) I2C_slave3(
        scl_io,
        sda_io,
        ~rstn
    );

    wire sclk, cs;
    wire[3:0] io;
    s25fl128s flash_mem(
        io[0],
        io[1],
        sclk,
        cs,
        rstn,
        io[2],
        io[3]
    );

    wire[15:0] out;
    top dut(
        rstn,
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