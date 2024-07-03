module bus(
    input clk_i,
    input rst_i,
    
    input data_req_i,
    input data_we_i,
    input[3:0] data_be_i,
    input[31:0] data_addr_i,
    input[31:0] data_wdata_i,
    output data_gnt_o,
    output reg data_rvalid_o,
    output reg[31:0] data_rdata_o,

    input instr_req,
    output instr_gnt,
    output instr_rvalid,
    input[31:0] instr_addr,
    output[31:0] instr_rdata,

    inout sda_io,
    output scl_io,

    output sclk,
    output cs,
    inout[3:0] io,

    output irq_7_o,
    input irq_ack_i,
    input[4:0] irq_id_i,

    input[15:0] out,
    output[15:0] in
);
    assign data_gnt_o = 1;
    always @(posedge clk_i) data_rvalid_o <= data_req_i;

    wire we = data_we_i & data_req_i;
    reg uart_en, i2c_en, qspi_en, timer_en, usb_en, gpio_en, instr_mem_en, data_mem_en;
    reg[31:0] data_rdata_o_nxt;


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
    

    wire[31:0] timer_out;
    timer timer(
        clk_i,
        rst_i,
        timer_en & we,
        data_be_i,
        data_addr_i,
        data_wdata_i,
        timer_out,
        irq_7_o,
        irq_ack_i,
        irq_id_i
    );


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


    wire[31:0] data_mem_out;
    data_mem data_mem(
        clk_i,
        rst_i,
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

    wire[31:0] uart_out;
    //UART EKSİK

    always @(posedge clk_i) data_rdata_o <= data_rdata_o_nxt;

    always @* begin
        data_mem_en = 0;
        uart_en = 0;
        i2c_en = 0;
        qspi_en = 0;
        timer_en = 0;
        usb_en = 0;
        gpio_en = 0;
        instr_mem_en = 0;

        case(data_addr_i[16:13])
            4'h0: data_mem_en = 1; // + bootloader
            //4'h1: BİLEREK BOŞ BIRAKTIK LINKER SCRIPT FLASH İÇİN
            4'h2: instr_mem_en = 1;
            4'h3: uart_en = 1;
            4'h4: i2c_en = 1;
            4'h5: qspi_en = 1;
            4'h6: timer_en = 1;
            4'h7: usb_en = 1;
            4'h8: gpio_en = 1;
            //4'h9-4'hf: reserved
        endcase
        data_rdata_o_nxt = ({32{data_mem_en}} & data_mem_out)
                         | ({32{uart_en}}     & uart_out)
                         | ({32{i2c_en}}      & i2c_out)
                         | ({32{qspi_en}}     & qspi_out)
                         | ({32{timer_en}}    & timer_out)
                         | ({32{usb_en}}      & usb_out)
                         | ({32{gpio_en}}     & gpio_out);
    end
endmodule