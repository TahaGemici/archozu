module mcu_tb();
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

    wire sda_io, scl_io, rx, tx, sclk, cs;
    wire[3:0] io;
    wire[15:0] out;

    wire tx_done;
    reg tx_en;
    wire[7:0] rx_data;
    reg[7:0] tx_data;

    initial begin
        tx_en=0;
        wait(rst==0);
        #1000;
        tx_en=1;
        forever tx_data = #500 $random;
    end

    uart_test #(5208) uart_test( //BAUDRATE=9600
        clk_i,

        tx,
        rx_data,

        rx,
        tx_en,
        tx_data,
        tx_done
    );

    i2c_slave_controller #(121) I2C_slave0(
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

`ifndef NO_FLASH

    s25fl128s flash_mem(
        io[0],
        io[1],
        sclk,
        cs,
        ~rst,
        io[2],
        io[3]
    );

`endif

    mcu mcu(
        rst,
        clk,
        rx,
        tx,
        sda_io,
        scl_io,
        sclk,
        cs,
        io,
        in,
        out
    );
endmodule