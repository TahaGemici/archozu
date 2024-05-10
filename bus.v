module bus(
    input clk_i,
    input rst_i,
    
    input data_req_i,
    input data_we_i,
    input[3:0] data_be_i,
    input[13:0] data_addr_i,
    input[31:0] data_wdata_i,
    output data_gnt_o,
    output reg data_rvalid_o,
    output reg[31:0] data_rdata_o,

    input instr_req,
    output instr_gnt,
    output instr_rvalid,
    input[31:0] instr_addr,
    output[31:0] instr_rdata
);
    assign data_gnt_o = 1;
    always @(posedge clk_i) data_rvalid_o <= data_req_i;

    wire we = data_we_i & data_req_i;
    reg uart_en, i2c_en, qspi_en, timer_en, usb_en, gpio_en, instr_mem_en;
    reg[31:0] data_rdata_o_nxt;


    wire sda_io, scl_io;
    wire[31:0] i2c_out;
    I2C_master I2C_master(
        clk_i,
        rst_i,
        i2c_en & we,
        data_be_i,
        data_addr_i,
        data_wdata_i,
        i2c_out,
	    sda_io,
	    scl_io
    );


    wire sclk, cs;
    wire[3:0] io;
    wire[31:0] qspi_out;
    QSPI_master QSPI_master(
        clk_i,
        rst_i,
        qspi_en & we,
        data_be_i,
        data_addr_i,
        data_wdata_i,
        qspi_out,
	    sclk,
        cs,
	    io
    );
    s25fl128s flash_mem(
        io[0],
        io[1],
        sclk,
        cs,
        rst_i,
        io[2],
        io[3]
    );



    wire[31:0] timer_out;
    wire irq_ack, irq_7_o;
    timer timer(
        clk_i,
        rst_i,
        timer_en & we,
        data_be_i,
        data_addr_i,
        data_wdata_i,
        timer_out,
        irq_ack,
        irq_7_o
    );


    wire[15:0] in, out;
    wire[31:0] gpio_out;
    GPIO GPIO(
        clk_i,
        gpio_en & we,
        data_be_i,
        data_addr_i,
        data_wdata_i,
        gpio_out,
        in,
        out
    );


    wire data_mem_en = ~data_addr_i[14];
    wire[31:0] data_mem_out;
    data_mem data_mem(
        clk_i,
        data_mem_en & we,
        data_be_i,
        data_addr_i,
        data_wdata_i,
        data_mem_out
    );

    instr_mem instr_mem(
        clk_i,

        instr_addr,
        instr_req,
        instr_gnt,
        instr_rvalid,
        instr_rdata,

        instr_mem_en & we,
        data_addr_i,
        data_wdata_i
    );

    wire[31:0] usb_out;
    //USB EKSİK

    always @(posedge clk_i) data_rdata_o <= data_rdata_o_nxt;

    always @* begin
        uart_en = 0;
        i2c_en = 0;
        qspi_en = 0;
        timer_en = 0;
        usb_en = 0;
        gpio_en = 0;
        instr_mem_en = 0;
        if(data_addr_i[14]) begin
            case(data_addr_i[13:11]) // 3b: select, 11b: registers
                3'b000: uart_en = 1;
                3'b001: i2c_en = 1;
                3'b010: qspi_en = 1;
                3'b011: timer_en = 1;
                3'b100: usb_en = 1;
                3'b101: gpio_en = 1;
                3'b110: instr_mem_en = 1;
            endcase
        end
        data_rdata_o_nxt = ({32{i2c_en}} & i2c_out)
                         | ({32{qspi_en}} & qspi_out)
                         | ({32{timer_en}} & timer_out)
                         | ({32{usb_en}} & usb_out)
                         | ({32{gpio_en}} & gpio_out)
                         | ({32{data_mem_en}} & data_mem_out);
    end
endmodule