module USB(
    input clk_i,
    input rst_i,
    input write_i,
    input [3:0] data_be_i,
    input [3:0] addr_i,
    input [31:0] wdata_i,
    output [31:0] rdata_o,

	output usb_dp_pull_o,
    inout usb_dp_io,
    inout usb_dn_io
);

	wire[2:0] USB_CCR_nxt;
    //localparam USB_CCR = 0;

	localparam USB_RDR = 4;
	localparam USB_TDR = 8;
	localparam USB_STA = 12;
    // USB_STA : {recv_valid, connected}

    reg write_perip;
    reg[31:0] wraddr_perip;
    reg[31:0] data_i_perip;
    reg[31:0] rdaddr_perip;
    wire[31:0] data_o_perip;
    reg[1:0] USB_STA_o;
    wire USB_STA_1;
    
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
        USB_STA_o,
        USB_STA_1
    );

    localparam RESET    = 0;
    localparam AUDIO    = 1;
    localparam CAMERA   = 2;
    localparam DISK     = 3;
    localparam KEYBOARD = 4;
    localparam SERIAL   = 5;
    localparam SERIAL2  = 6;
    localparam RESET2   = 7;

    reg[2:0] state, state_nxt;
    reg[7:0] rstn=8'hff, rstn_nxt;
    
    wire[31:0] device_o[0:7];
    assign device_o[RESET] = 0;
    assign device_o[CAMERA] = 0;
    assign device_o[DISK] = 0;
    assign device_o[KEYBOARD] = 0;
    assign device_o[SERIAL][31:8] = 0;
    assign device_o[RESET2] = 0;

    wire[7:0] device_connected;
    assign device_connected[RESET] = 0;
    assign device_connected[RESET2] = 0;
    
    wire[3:0] device_usb[0:7];
    assign device_usb[RESET] = 4'b0100;
    assign device_usb[RESET2] = 4'b0100;
    
    wire[7:0] device_recv_valid;
    assign device_recv_valid[RESET] = 0;
    assign device_recv_valid[DISK] = 0;
    assign device_recv_valid[KEYBOARD] = 0;
    assign device_recv_valid[RESET2] = 0;
    
    wire[7:0] device_send_ready;
    assign device_send_ready[RESET] = 1;
    assign device_send_ready[AUDIO] = 1;
    assign device_send_ready[DISK] = 1;
    assign device_send_ready[CAMERA] = 1;
    assign device_send_ready[KEYBOARD] = 1;
    assign device_send_ready[RESET2] = 1;

    assign usb_dp_pull_o = device_usb[state][0];
    assign usb_dp_io = device_usb[state][1] ? device_usb[state][2] : 1'bz;
    assign usb_dn_io = device_usb[state][1] ? device_usb[state][3] : 1'bz;

    reg send_valid, send_valid_nxt;

    wire CAMERA_vf_sof;

    always @(posedge clk_i) begin
        rstn  <= rstn_nxt;
        state <= state_nxt;
        send_valid <= send_valid_nxt;
    end

    always @* begin
        rdaddr_perip = USB_TDR;
    	wraddr_perip = USB_RDR;
        write_perip = device_recv_valid[state];
    	data_i_perip = device_o[state];

        USB_STA_o[1] = (CAMERA_vf_sof | device_recv_valid[state]) ? 1'b1: USB_STA_1;
        USB_STA_o[0] = device_connected[state];
        send_valid_nxt = (addr_i[3:2] == 2) ? 1'b1 : (~device_send_ready[state]);
        rstn_nxt = 0;
        rstn_nxt[state] = 1;

        case(state)
            RESET,RESET2: begin
                //bitti
            end
            AUDIO: begin
                //bitti
            end
            CAMERA: begin
                //bitti
            end
            DISK: begin
                //bitti
            end
            KEYBOARD: begin
                //bitti
            end
            SERIAL: begin
                //bitti
            end
            SERIAL2: begin

            end
        endcase

        state_nxt = USB_CCR_nxt;

        if(rst_i) begin
            state_nxt = 0;
        end
    end

    usb_audio_top usb_audio_top(
        rstn[AUDIO],
        clk_i,
        device_usb[AUDIO][0],
        device_usb[AUDIO][1],
        device_usb[AUDIO][2],
        device_usb[AUDIO][3],
        usb_dp_io,
        usb_dn_io,
        device_connected[AUDIO],
        device_recv_valid[AUDIO],
        device_o[AUDIO][31:16],
        device_o[AUDIO][15:0],
        data_o_perip[31:16],
        data_o_perip[15:0],
        ,
        ,

    );
    
    usb_camera_top #("MONO", 14'd1920, 14'd1080, "FALSE") usb_camera_top(
        rstn[CAMERA],
        clk_i,
        device_usb[CAMERA][0],
        device_usb[CAMERA][1],
        device_usb[CAMERA][2],
        device_usb[CAMERA][3],
        usb_dp_io,
        usb_dn_io,
        device_connected[CAMERA],
        CAMERA_vf_sof,
        device_recv_valid[CAMERA],
        data_o_perip[7:0],
        ,
        ,

    );
    
    wire[40:0] mem_addr;
    wire mem_wen;
    wire[7:0] mem_wdata;
    reg[7:0] mem_rdata;
    usb_disk_top #(64, "FALSE") usb_disk_top(
        rstn[DISK],
        clk_i,
        device_usb[DISK][0],
        device_usb[DISK][1],
        device_usb[DISK][2],
        device_usb[DISK][3],
        usb_dp_io,
        usb_dn_io,
        device_connected[DISK],
        mem_addr,
        mem_wen,
        mem_wdata,
        mem_rdata,
        ,
        ,

    );
    
    usb_keyboard_top usb_keyboard_top(
        rstn[KEYBOARD],
        clk_i,
        device_usb[KEYBOARD][0],
        device_usb[KEYBOARD][1],
        device_usb[KEYBOARD][2],
        device_usb[KEYBOARD][3],
        usb_dp_io,
        usb_dn_io,
        device_connected[KEYBOARD],
        data_o_perip[15:0],
        send_valid,
        ,
        ,

    );

    usb_serial_top usb_serial_top(
        rstn[SERIAL],
        clk_i,
        device_usb[SERIAL][0],
        device_usb[SERIAL][1],
        device_usb[SERIAL][2],
        device_usb[SERIAL][3],
        usb_dp_io,
        usb_dn_io,
        device_connected[SERIAL],
        device_o[SERIAL][7:0],
        device_recv_valid[SERIAL],
        data_o_perip[7:0],
        send_valid,
        device_send_ready[SERIAL],
        ,
        ,

    );

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

    always @(posedge clk_i) begin
        mem[mem_addr] <= mem_wen ? mem_wdata : mem[mem_addr];
        mem_rdata <= mem[mem_addr];
    end

    integer i;
    initial begin
        for(i=0;i<(64*512);i=i+1) begin
            mem[i] = 0;
        end
    end

`endif

endmodule