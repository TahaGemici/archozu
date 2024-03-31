`timescale 1ps/1fs
`define WAIT @(posedge clk);#(`CLK_PERIOD*0.9);
`define test_write(addr_val, wdata_val) `WAIT\
sel=1;\
enable=0;\
write=1;\
addr=addr_val;\
wdata=wdata_val;\
`WAIT\
enable=1;\
while(!ready) `WAIT\
sel = 0;\
enable = 0;\
`WAIT

module I2C_master_TB();

reg clk = 1'b1;
initial begin
    forever clk = #(`CLK_PERIOD/2.0) ~clk;
end

reg rstn = 0;
reg sel = 0, enable = 0, write = 0;
reg[7:0] addr, wdata;
wire ready, sda, scl;
wire[7:0] rdata;
initial begin
    repeat(5) @(posedge clk);
    rstn = 1;




    `test_write(8'h00,8'h01)

    `test_write(8'h04,8'h25)

    `test_write(8'h0D,8'h22)
    `test_write(8'h0C,8'h11)
    `test_write(8'h0F,8'h44)
    `test_write(8'h0E,8'h33)

    `test_write(8'h10,8'h01)




    repeat(10000) @(posedge clk);
    $finish;
end

I2C_master dut(
    clk,
    rstn,
    sel,
    enable,
    write,
    addr,
    wdata,
    rdata,
    ready,
	sda,
	scl
);

i2c_slave_controller slave(sda, scl);

endmodule