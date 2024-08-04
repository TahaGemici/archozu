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
    
    wire[31:0] device_o[1:6];
    assign device_o[CAMERA] = 0;
    assign device_o[DISK] = 0;
    assign device_o[KEYBOARD] = 0;
    assign device_o[SERIAL][31:8] = 0;

    wire[6:1] device_connected;
    
    wire[3:0] device_usb[0:7];
    assign device_usb[RESET] = 4'b0100;
    assign device_usb[RESET2] = 4'b0100;
    
    wire[7:0] device_recv_valid;
    assign device_recv_valid[RESET] = 0;
    assign device_recv_valid[DISK] = 0;
    assign device_recv_valid[KEYBOARD] = 0;
    assign device_recv_valid[RESET2] = 0;
    
    wire[1:6] device_send_ready;
    assign device_send_ready[AUDIO] = 1;
    assign device_send_ready[DISK] = 1;
    assign device_send_ready[CAMERA] = 1;
    assign device_send_ready[KEYBOARD] = 1;

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


        USB_STA_o[31:2] = 0;
        USB_STA_o[1] = (CAMERA_vf_sof | device_recv_valid[state]) ? 1'b1: USB_STA_1;
        USB_STA_o[0] = device_connected[state];
        send_valid_nxt = (addr_i[3:2] == 2) ? 1'b1 : (~device_send_ready[state]);
        rstn_nxt = 0;
        rstn_nxt[state] = 1;

        case(state)
            RESET,RESET2: begin
                rstn_nxt = 0;
                USB_STA_o = 0;
                send_valid_nxt = 0;
            end
            AUDIO: begin
                //bitti
            end
            CAMERA: begin
                //bitti
            end
            DISK: begin

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
    wire[7:0] mem_wdata, mem_rdata;
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

// BURADA KALMIŞTIN
`ifdef FPGA

`else

`endif

endmodule