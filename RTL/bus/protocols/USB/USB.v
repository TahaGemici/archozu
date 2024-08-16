module USB(
    input clk_i,
    input rst_i,
    input write_i,
    input [3:0] data_be_i,
    input [3:0] addr_i,
    input [31:0] wdata_i,
    output [31:0] rdata_o,

	output reg usb_dp_pull_o,
    inout usb_dp_io,
    inout usb_dn_io
);

	wire[2:0] USB_CCR_nxt;
    //localparam USB_CCR = 0;

	localparam USB_RDR = 4;
	localparam USB_TDR = 8;
	localparam USB_STA = 12;

    reg write_perip;
    reg[31:0] wraddr_perip;
    reg[31:0] data_i_perip;
    reg[31:0] rdaddr_perip;
    wire[31:0] data_o_perip;
    wire USB_STA_o;
    
    usb_mem usb_mem(
        clk_i,
        rst_i,
        
        write_i,
        data_be_i,
        {28'b0, addr_i},
        wdata_i,
        rdata_o,
        
        write_perip,
        wraddr_perip,
        data_i_perip,
        rdaddr_perip,
        data_o_perip,
        USB_CCR_nxt,
        USB_STA_o
    );

    localparam AUDIO    = 1;
    localparam CAMERA   = 2;
    localparam DISK     = 3;
    localparam KEYBOARD = 4;
    localparam SERIAL   = 5;

    reg[2:0] state, state_nxt;
    reg[7:0] rstn;

    reg usb_dp_o, usb_dn_o;
    assign usb_dp_io = usb_dp_o;
    assign usb_dn_io = usb_dn_o;

    always @(posedge clk_i) begin
        state <= state_nxt;
    end
    
    wire audio_dp, audio_dn, audio_pull, audio_oe, audio_en;
    wire[31:0] audio_out;
    reg audio_en_prv;
    always @(posedge clk_i) audio_en_prv <= audio_en;
    usb_audio_top usb_audio_top(
        rstn[AUDIO],
        clk_i,
        audio_pull,
        audio_oe,
        audio_dp,
        audio_dn,
        usb_dp_io,
        usb_dn_io,
        ,
        audio_en,
        audio_out[31:16],
        audio_out[15:0],
        data_o_perip[31:16],
        data_o_perip[15:0],
        ,
        ,

    );

    wire camera_dp, camera_dn, camera_pull, camera_oe;
    wire camera_vf_sof, camera_vf_req;
    usb_camera_top #("MONO", 14'd320, 14'd180, "FALSE") usb_camera_top(
        rstn[CAMERA],
        clk_i,
        camera_pull,
        camera_oe,
        camera_dp,
        camera_dn,
        usb_dp_io,
        usb_dn_io,
        ,
        camera_vf_sof,
        camera_vf_req,
        data_o_perip[7:0],
        ,
        ,

    );
    
    wire disk_dp, disk_dn, disk_pull, disk_oe;
    wire[40:0] mem_addr;
    wire mem_wen;
    wire[7:0] mem_wdata;
    wire[7:0] mem_rdata;
    usb_disk_top #(64, "FALSE") usb_disk_top(
        rstn[DISK],
        clk_i,
        disk_pull,
        disk_oe,
        disk_dp,
        disk_dn,
        usb_dp_io,
        usb_dn_io,
        ,
        mem_addr,
        mem_wen,
        mem_wdata,
        mem_rdata,
        ,
        ,

    );
    
    wire keyboard_dp, keyboard_dn, keyboard_pull, keyboard_oe;
    reg keyboard_req;
    usb_keyboard_top usb_keyboard_top(
        rstn[KEYBOARD],
        clk_i,
        keyboard_pull,
        keyboard_oe,
        keyboard_dp,
        keyboard_dn,
        usb_dp_io,
        usb_dn_io,
        ,
        data_o_perip[15:0],
        keyboard_req,
        ,
        ,

    );

    wire serial_dp, serial_dn, serial_pull, serial_oe;
    wire[7:0] serial_out;
    wire serial_recv_valid, serial_send_ready;
    reg serial_send_valid;
    reg serial_recv_valid_prv;
    always @(posedge clk_i) serial_recv_valid_prv <= serial_recv_valid;
    usb_serial_top usb_serial_top(
        rstn[SERIAL],
        clk_i,
        serial_pull,
        serial_oe,
        serial_dp,
        serial_dn,
        usb_dp_io,
        usb_dn_io,
        ,
        serial_out,
        serial_recv_valid,
        data_o_perip[7:0],
        serial_send_valid,
        serial_send_ready,
        ,
        ,

    );
    
    always @* begin
        state_nxt = USB_CCR_nxt;
        write_perip = 1'b0;
        data_i_perip = 0;
        wraddr_perip = USB_RDR;
        rdaddr_perip = USB_TDR;
        rstn = 0;
        rstn[state] = 1;
        keyboard_req = 1'b0;

        case(state)
            default: begin
                usb_dp_pull_o = 1'b0;
                usb_dp_o = 1'b0;
                usb_dn_o = 1'b0;
            end

            AUDIO: begin
                usb_dp_pull_o = audio_pull;
                usb_dp_o = audio_oe ? audio_dp : 1'bz;
                usb_dn_o = audio_oe ? audio_dn : 1'bz;

                if(audio_en) begin
                    data_i_perip = audio_out;
                    write_perip = 1'b1;
                end

                if(audio_en_prv) begin
                    wraddr_perip = USB_STA;
                    write_perip = 1'b1;
                end
            end

            CAMERA: begin
                usb_dp_pull_o = camera_pull;
                usb_dp_o = camera_oe ? camera_dp : 1'bz;
                usb_dn_o = camera_oe ? camera_dn : 1'bz;

                if(camera_vf_sof | camera_vf_req) begin
                    wraddr_perip = USB_STA;
                    write_perip = 1'b1;
                end
            end

            DISK: begin
                usb_dp_pull_o = disk_pull;
                usb_dp_o = disk_oe ? disk_dp : 1'bz;
                usb_dn_o = disk_oe ? disk_dn : 1'bz;
            end

            KEYBOARD: begin
                usb_dp_pull_o = keyboard_pull;
                usb_dp_o = keyboard_oe ? keyboard_dp : 1'bz;
                usb_dn_o = keyboard_oe ? keyboard_dn : 1'bz;

                if(USB_STA_o) begin
                    keyboard_req = 1'b1;
                    write_perip = 1'b1;
                    wraddr_perip = USB_STA;
                end
            end
            SERIAL: begin
                usb_dp_pull_o = serial_pull;
                usb_dp_o = serial_oe ? serial_dp : 1'bz;
                usb_dn_o = serial_oe ? serial_dn : 1'bz;

                if(serial_recv_valid) begin
                    data_i_perip = {24'b0, serial_out};
                    write_perip = 1'b1;
                end
                
                if(serial_recv_valid_prv) begin
                    data_i_perip = 2;
                    wraddr_perip = USB_STA;
                    write_perip = 1'b1;
                end

                serial_send_valid = USB_STA_o;
                if(serial_send_ready & serial_send_valid) begin
                    data_i_perip = 0;
                    wraddr_perip = USB_STA;
                    write_perip = 1'b1;
                end
            end
        endcase
    end


`ifdef FPGA

xpm_memory_spram #(
   .ADDR_WIDTH_A(15),             // DECIMAL
   .AUTO_SLEEP_TIME(0),           // DECIMAL
   .BYTE_WRITE_WIDTH_A(8),        // DECIMAL
   .CASCADE_HEIGHT(0),            // DECIMAL
   .ECC_BIT_RANGE("7:0"),         // String
   .ECC_MODE("no_ecc"),           // String
   .ECC_TYPE("none"),             // String
   .IGNORE_INIT_SYNTH(1),         // DECIMAL
   .MEMORY_INIT_FILE("none"),     // String
   .MEMORY_INIT_PARAM("0"),       // String
   .MEMORY_OPTIMIZATION("true"),  // String
   .MEMORY_PRIMITIVE("auto"),     // String
   .MEMORY_SIZE(262144),          // DECIMAL
   .MESSAGE_CONTROL(0),           // DECIMAL
   .RAM_DECOMP("auto"),           // String
   .READ_DATA_WIDTH_A(8),         // DECIMAL
   .READ_LATENCY_A(1),            // DECIMAL
   .READ_RESET_VALUE_A("0"),      // String
   .RST_MODE_A("SYNC"),           // String
   .SIM_ASSERT_CHK(0),            // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
   .USE_MEM_INIT(1),              // DECIMAL
   .USE_MEM_INIT_MMI(1),          // DECIMAL
   .WAKEUP_TIME("disable_sleep"), // String
   .WRITE_DATA_WIDTH_A(8),        // DECIMAL
   .WRITE_MODE_A("write_first"),  // String
   .WRITE_PROTECT(1)              // DECIMAL
)
xpm_memory_spram_inst (
   .dbiterra(),             // 1-bit output: Status signal to indicate double bit error occurrence
                                    // on the data output of port A.

   .douta(mem_rdata),                   // READ_DATA_WIDTH_A-bit output: Data output for port A read operations.
   .sbiterra(),             // 1-bit output: Status signal to indicate single bit error occurrence
                                    // on the data output of port A.

   .addra(mem_addr[14:0]),                   // ADDR_WIDTH_A-bit input: Address for port A write and read operations.
   .clka(clk_i),                     // 1-bit input: Clock signal for port A.
   .dina(mem_wdata),                     // WRITE_DATA_WIDTH_A-bit input: Data input for port A write operations.
   .ena(1'b1),                       // 1-bit input: Memory enable signal for port A. Must be high on clock
                                    // cycles when read or write operations are initiated. Pipelined
                                    // internally.

   .injectdbiterra(), // 1-bit input: Controls double bit error injection on input data when
                                    // ECC enabled (Error injection capability is not available in
                                    // "decode_only" mode).

   .injectsbiterra(), // 1-bit input: Controls single bit error injection on input data when
                                    // ECC enabled (Error injection capability is not available in
                                    // "decode_only" mode).

   .regcea(),                 // 1-bit input: Clock Enable for the last register stage on the output
                                    // data path.

   .rsta(),                     // 1-bit input: Reset signal for the final port A output register stage.
                                    // Synchronously resets output port douta to the value specified by
                                    // parameter READ_RESET_VALUE_A.

   .sleep(1'b0),                   // 1-bit input: sleep signal to enable the dynamic power saving feature.
   .wea(mem_wen)                   // WRITE_DATA_WIDTH_A/BYTE_WRITE_WIDTH_A-bit input: Write enable vector
                                    // for port A input data port dina. 1 bit wide when word-wide writes are
                                    // used. In byte-wide write configurations, each bit controls the
                                    // writing one byte of dina to address addra. For example, to
                                    // synchronously write only bits [15-8] of dina when WRITE_DATA_WIDTH_A
                                    // is 32, wea would be 4'b0010.

);

`else

    reg[7:0] mem[0:(64*512-1)];

    reg[7:0] mem_rdata_reg;
    assign mem_rdata = mem_rdata_reg;

    always @(posedge clk_i) begin
        mem[mem_addr] <= mem_wen ? mem_wdata : mem[mem_addr];
        mem_rdata_reg <= mem[mem_addr];
    end

    integer i;
    initial begin
        for(i=0;i<(64*512);i=i+1) begin
            mem[i] = 0;
        end
    end

`endif

endmodule