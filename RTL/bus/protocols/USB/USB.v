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

	wire[2:0] USB_CCR;
    //localparam USB_CCR = 0;

	localparam USB_RDR = 4;
	localparam USB_TDR = 8;
	localparam USB_STA = 12;

    reg write_perip;
    reg[31:0] wraddr_perip;
    reg[31:0] data_i_perip;
    reg[31:0] rdaddr_perip;
    wire[31:0] data_o_perip;
    
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
        USB_CCR
    );

    localparam RESET       = 0;
    localparam AUDIO       = 1;
    localparam CAMERA      = 2;
    localparam DISK        = 3;
    localparam KEYBOARD    = 4;
    localparam SERIAL      = 5;
    localparam SERIAL2     = 6;
    localparam DISCONNECT  = 7;

    wire[31:0] camera_o;
    wire[31:0] disk_o;
    wire[31:0] keyboard_o;
    wire[31:0] serial_o;
    wire[31:0] serial2_o;

    wire[31:0] audio_o;
    wire audio_connected;
    wire audio_en;
    reg[31:0] audio_i, audio_i_nxt;
    wire usb_dp_pull_audio;
    wire usb_dp_audio;
    wire usb_dn_audio;

    wire camera_connected;
    wire disk_connected;
    wire keyboard_connected;
    wire serial_connected;
    wire serial2_connected;


    reg[2:0] state, state_nxt;
    reg rstn, rstn_nxt;
    always @(posedge clk_i) begin
        rstn    <= rstn_nxt;
        state   <= state_nxt;
        audio_i <= audio_i_nxt;
    end

    always @* begin
        rdaddr_perip = USB_TDR;
        write_perip = 0;
    	data_i_perip = 0;
    	wraddr_perip = USB_RDR;
        
        case(state)
            3'h0: begin
                rstn_nxt = 0;
            end
            3'h1: begin
                if(audio_connected) begin
                    if(audio_en) begin
                        write_perip = 1;
                        data_i_perip = audio_o;
                        audio_i_nxt = data_o_perip;
                    end
                end else begin
                    write_perip = 1;
                    wraddr_perip = USB_STA;
    	            data_i_perip = 0;
                end
            end
        endcase

        state_nxt = USB_CCR;

        if(rst_i) begin
            state_nxt = 0;
            rstn_nxt  = 1;
        end
    end

    usb_audio_top usb_audio_top(
        rstn,
        clk_i,
        usb_dp_pull_audio,
        usb_dp_audio,
        usb_dn_audio,
        audio_connected,
        audio_en,
        audio_o[31:16],
        audio_o[15:0],
        audio_i[31:16],
        audio_i[15:0],
        ,
        ,

    );

endmodule