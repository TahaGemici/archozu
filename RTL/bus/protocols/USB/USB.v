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
    wire[3:0] usb_ports[0:5];
    assign usb_ports[0][0] = 0;
    assign usb_ports[0][1] = 0;
    assign usb_ports[0][2] = 0;
    assign usb_ports[0][3] = 0;
    wire[5:1] rstn;
    assign rstn[1] = (~rst_i) & (state==1);
    assign rstn[2] = (~rst_i) & (state==2);
    assign rstn[3] = (~rst_i) & (state==3);
    assign rstn[4] = (~rst_i) & (state==4);
    assign rstn[5] = (~rst_i) & (state==5);

    assign usb_dp_pull_o = usb_ports[state][0];
    assign usb_dp_io = usb_ports[state][1] ? usb_ports[state][2] : 1'bz;
    assign usb_dn_io = usb_ports[state][1] ? usb_ports[state][3] : 1'bz;

    always @(posedge clk_i) begin
        state <= state_nxt;
    end
    
    wire audio_en;
    wire[31:0] audio_out;
    reg audio_en_prv;
    always @(posedge clk_i) audio_en_prv <= audio_en;
    usb_audio_top usb_audio_top(
        rstn[1],
        clk_i,
        usb_ports[1][0],
        usb_ports[1][1],
        usb_ports[1][2],
        usb_ports[1][3],
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

    wire camera_vf_sof, camera_vf_req;
    usb_camera_top #("MONO", 14'd320, 14'd180, "FALSE") usb_camera_top(
        rstn[2],
        clk_i,
        usb_ports[2][0],
        usb_ports[2][1],
        usb_ports[2][2],
        usb_ports[2][3],
        usb_dp_io,
        usb_dn_io,
        ,
        camera_vf_sof,
        camera_vf_req,
        data_o_perip[7:0],
        ,
        ,

    );
    
    wire[40:0] mem_addr;
    wire mem_wen;
    wire[7:0] mem_wdata;
    wire[7:0] mem_rdata;
    usb_disk_top #(64, "FALSE") usb_disk_top(
        rstn[3],
        clk_i,
        usb_ports[3][0],
        usb_ports[3][1],
        usb_ports[3][2],
        usb_ports[3][3],
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
    
    reg keyboard_req;
    usb_keyboard_top usb_keyboard_top(
        rstn[4],
        clk_i,
        usb_ports[4][0],
        usb_ports[4][1],
        usb_ports[4][2],
        usb_ports[4][3],
        usb_dp_io,
        usb_dn_io,
        ,
        data_o_perip[15:0],
        keyboard_req,
        ,
        ,

    );

    wire[7:0] serial_out;
    wire serial_recv_valid, serial_send_ready;
    reg serial_send_valid;
    reg serial_recv_valid_prv;
    always @(posedge clk_i) serial_recv_valid_prv <= serial_recv_valid;
    usb_serial_top usb_serial_top(
        rstn[5],
        clk_i,
        usb_ports[5][0],
        usb_ports[5][1],
        usb_ports[5][2],
        usb_ports[5][3],
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
        case(USB_CCR_nxt)
            3'd0: state_nxt = 0;
            3'd1: state_nxt = 1;
            3'd2: state_nxt = 2;
            3'd3: state_nxt = 3;
            3'd4: state_nxt = 4;
            default: state_nxt = 5;
        endcase
        
        write_perip = 1'b0;
        data_i_perip = 0;
        wraddr_perip = USB_RDR;
        rdaddr_perip = USB_TDR;
        keyboard_req = 1'b0;
        serial_send_valid = 1'b0;

        case(state)
            AUDIO: begin
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
                if(camera_vf_sof | camera_vf_req) begin
                    wraddr_perip = USB_STA;
                    write_perip = 1'b1;
                end
            end

            DISK: begin
            end

            KEYBOARD: begin
                if(USB_STA_o) begin
                    keyboard_req = 1'b1;
                    write_perip = 1'b1;
                    wraddr_perip = USB_STA;
                end
            end
            SERIAL: begin
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

        if(rst_i) begin
            data_i_perip = 0;
            wraddr_perip = USB_STA;
            write_perip = 1'b1;
        end
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


/*
module USB(
    input clk60mhz,
    input button,
    input write_i,
    input [3:0] data_be_i,
    input [3:0] addr_i,
    input [31:0] wdata_i,
    output [31:0] rdata_o,

	output usb_dp_pull,
    inout usb_dp,
    inout usb_dn
);

    assign rdata_o = 0;
    wire[1:0] in = 0;



reg[1:0] state, state_nxt;
wire[3:0] usb_ports[0:3];

assign usb_dp_pull = usb_ports[state][0];
assign usb_dp = usb_ports[state][1] ? usb_ports[state][2] : 1'bz;
assign usb_dn = usb_ports[state][1] ? usb_ports[state][3] : 1'bz;

always @(posedge clk60mhz) begin
    state <= state_nxt;
end

always @* begin
    state_nxt = in;
end










// here we simply make a loopback connection for testing, but convert lowercase letters to uppercase.
// When using minicom/hyperterminal/serial-assistant to send data from the host to the device, the send data will be returned.
wire [ 7:0] recv_data;
wire        recv_valid;
wire [ 7:0] send_data = (recv_data >= 8'h61 && recv_data <= 8'h7A) ? (recv_data - 8'h20) : recv_data;   // lowercase -> uppercase

usb_serial_top #(
    .DEBUG           ( "FALSE"             )    // If you want to see the debug info of USB device core, set this parameter to "TRUE"
) u_usb_serial (
    .rstn            ( (~button) ),
    .clk             ( clk60mhz            ),
    // USB signals
    .usb_dp_pull     ( usb_ports[0][0]         ),
     .usb_oe          ( usb_ports[0][1]             ),
    .usb_dp_tx          ( usb_ports[0][2]             ),
    .usb_dn_tx          ( usb_ports[0][3]              ),
    .usb_dp         ( usb_dp            ),
    .usb_dn         ( usb_dn              ),
    // USB reset output
    .usb_rstn        (                  ),   // 1: connected , 0: disconnected (when USB cable unplug, or when system reset (rstn=0))
    // CDC receive data (host-to-device)
    .recv_data       ( recv_data           ),   // received data byte
    .recv_valid      ( recv_valid          ),   // when recv_valid=1 pulses, a data byte is received on recv_data
    // CDC send data (device-to-host)
    .send_data       ( send_data           ),   // 
    .send_valid      ( recv_valid          ),   // loopback connect recv_valid to send_valid
    .send_ready      (                     ),   // ignore send_ready, ignore the situation that the send buffer is full (send_ready=0). So here it will lose data when you send a large amount of data
    // debug output info, only for USB developers, can be ignored for normally use
    .debug_en        (                     ),
    .debug_data      (                     ),
    .debug_uart_tx   (            )
);

wire [15:0] audio_l, audio_r;

usb_audio_top #(
    .DEBUG           ( "FALSE"             )    // If you want to see the debug info of USB device core, set this parameter to "TRUE"
) u_usb_audio (
    .rstn            (  (~button)  ),
    .clk             ( clk60mhz            ),
    // USB signals
    .usb_dp_pull     ( usb_ports[1][0]         ),
     .usb_oe          ( usb_ports[1][1]             ),
    .usb_dp_tx          ( usb_ports[1][2]             ),
    .usb_dn_tx          ( usb_ports[1][3]              ),
    .usb_dp         ( usb_dp            ),
    .usb_dn         ( usb_dn              ),
    // USB reset output
    .usb_rstn        (                  ),   // 1: connected , 0: disconnected (when USB cable unplug, or when system reset (rstn=0))
    // user data : audio output (host-to-device, such as a speaker), and audio input (device-to-host, such as a microphone).
    .audio_en        (                     ),
    .audio_lo        ( audio_l             ),   // left-channel output : 16-bit signed integer, which will be valid when audio_en=1
    .audio_ro        ( audio_r             ),   // right-channel output: 16-bit signed integer, which will be valid when audio_en=1
    .audio_li        ( audio_l             ),   // left-channel input  : 16-bit signed integer, which will be sampled when audio_en=1
    .audio_ri        ( audio_r             ),   // right-channel input : 16-bit signed integer, which will be sampled when audio_en=1
    // debug output info, only for USB developers, can be ignored for normally use
    .debug_en        (                     ),
    .debug_data      (                     ),
    .debug_uart_tx   (          )
);


wire        vf_sof;
wire        vf_req;
reg  [ 7:0] vf_byte;

usb_camera_top #(
    .FRAME_TYPE      ( "MONO"              ),   // "MONO" or "YUY2"
    .FRAME_W         ( 14'd252             ),   // video-frame width  in pixels, must be a even number
    .FRAME_H         ( 14'd120             ),   // video-frame height in pixels, must be a even number
    .DEBUG           ( "FALSE"             )    // If you want to see the debug info of USB device core, set this parameter to "TRUE"
) u_usb_camera (
    .rstn            ( (~button) ),
    .clk             ( clk60mhz            ),
    .usb_dp_pull     ( usb_ports[2][0]         ),
     .usb_oe          ( usb_ports[2][1]             ),
    .usb_dp_tx          ( usb_ports[2][2]             ),
    .usb_dn_tx          ( usb_ports[2][3]              ),
    .usb_dp         ( usb_dp            ),
    .usb_dn         ( usb_dn              ),
    // USB reset output
    .usb_rstn        (                  ),   // 1: connected , 0: disconnected (when USB cable unplug, or when system reset (rstn=0))
    // video frame fetch interface
    .vf_sof          ( vf_sof              ),
    .vf_req          ( vf_req              ),
    .vf_byte         ( vf_byte             ),
    // debug output info, only for USB developers, can be ignored for normally use
    .debug_en        (                     ),
    .debug_data      (                     ),
    .debug_uart_tx   (             )
);




//-------------------------------------------------------------------------------------------------------------------------------------
// generate pixels
//-------------------------------------------------------------------------------------------------------------------------------------
reg  [7:0] init_pixel = 8'h00;

always @ (posedge clk60mhz)
    if (vf_sof) begin                          // at start of frame
        init_pixel <= init_pixel + 8'h1;
        vf_byte <= init_pixel;
    end else if (vf_req) begin                 // request a pixel
        vf_byte <= vf_byte + 8'h1;
    end



reg        key_request = 1'b0;
reg [15:0] key_value   = 16'h0004;

usb_keyboard_top #(
    .DEBUG           ( "FALSE"             )    // If you want to see the debug info of USB device core, set this parameter to "TRUE"
) usb_keyboard_i (
    .rstn            ( (~button) ),
    .clk             ( clk60mhz            ),
    // USB signals
    .usb_dp_pull     ( usb_ports[3][0]         ),
     .usb_oe          ( usb_ports[3][1]             ),
    .usb_dp_tx          ( usb_ports[3][2]             ),
    .usb_dn_tx          ( usb_ports[3][3]              ),
    .usb_dp         ( usb_dp            ),
    .usb_dn         ( usb_dn              ),
    // USB reset output
    .usb_rstn        (                  ),   // 1: connected , 0: disconnected (when USB cable unplug, or when system reset (rstn=0))
    // HID keyboard press signal
    .key_value       ( key_value           ),   // key_value runs from 16'h0004 (a) to 16'h0027 (9). The keyboard will type a~z and 0~9 cyclically.
    .key_request     ( key_request         ),   // key_request=1 pulse every 2 seconds. The keyboard will press a key every 2 seconds.
    // debug output info, only for USB developers, can be ignored for normally use
    .debug_en        (                     ),
    .debug_data      (                     ),
    .debug_uart_tx   (              )
);




//-------------------------------------------------------------------------------------------------------------------------------------
// press a key every 2 seconds
//-------------------------------------------------------------------------------------------------------------------------------------

reg [31:0] count = 0;             // count is a clock counter that runs from 0 to 120000000, each period takes 2 seconds

always @ (posedge clk60mhz)
    if(count < 120000000) begin
        count <= count + 1;
        key_request <= 1'b0;
    end else begin               
        count <= 0;
        key_request <= 1'b1;      // press a key per 2 seconds
        key_value <= (key_value < 16'h0027) ? key_value + 16'h1 : 16'h0004;
    end



endmodule
*/