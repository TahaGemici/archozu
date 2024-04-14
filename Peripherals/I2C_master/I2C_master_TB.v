`timescale 1ps/1fs
`define WAIT @(posedge clk);#(`CLK_PERIOD*0.9);

`define write(addr_val, wdata_val) `WAIT\
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

`define test_write1(addr_val, data1) `write(8'h00,8'h01)\
`write(8'h04,addr_val)\
`write(8'h0C,data1)\
`write(8'h10,8'h01)\
while(ready) `WAIT\
while(!ready) `WAIT

`define test_write2(addr_val, data1, data2) `write(8'h00,8'h02)\
`write(8'h04,addr_val)\
`write(8'h0C,data1)\
`write(8'h0D,data2)\
`write(8'h10,8'h01)\
while(ready) `WAIT\
while(!ready) `WAIT

`define test_write3(addr_val, data1, data2, data3) `write(8'h00,8'h03)\
`write(8'h04,addr_val)\
`write(8'h0C,data1)\
`write(8'h0D,data2)\
`write(8'h0E,data3)\
`write(8'h10,8'h01)\
while(ready) `WAIT\
while(!ready) `WAIT

`define test_write4(addr_val, data1, data2, data3, data4) `write(8'h00,8'h04)\
`write(8'h04,addr_val)\
`write(8'h0C,data1)\
`write(8'h0D,data2)\
`write(8'h0E,data3)\
`write(8'h0F,data4)\
`write(8'h10,8'h01)\
while(ready) `WAIT\
while(!ready) `WAIT



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


    `test_write2(85, 1, 124)

    //`test_read2    

    `write(8'h00,8'h02)
    `write(8'h04,85)
    `write(8'h0C,1)
    `write(8'h0D,6)
    `write(8'h10,8'h04)


    repeat(10000) @(posedge clk);
    wait(ready);
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

i2c_slave_controller slave(scl, sda, ~rstn);

endmodule