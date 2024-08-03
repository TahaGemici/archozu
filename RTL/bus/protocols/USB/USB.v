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

    localparam RESET    = 0;
    localparam AUDIO    = 1;
    localparam CAMERA   = 2;
    localparam DISK     = 3;
    localparam KEYBOARD = 4;
    localparam SERIAL   = 5;
    localparam SERIAL2  = 6;
    localparam RESET2   = 7;

    reg[2:0] state, state_nxt;
    reg rstn=1, rstn_nxt;
    
    wire[31:0] device_o[1:6];
    assign device_o[KEYBOARD] = 0;
    wire[6:1] device_connected;
    wire[3:0] device_usb[0:7];
    assign device_usb[0] = 4'b0100;
    assign device_usb[7] = 4'b0100;

    assign usb_dp_pull_o = device_usb[state][0];
    assign usb_dp_io = device_usb[state][1] ? device_usb[state][2] : 1'bz;
    assign usb_dn_io = device_usb[state][1] ? device_usb[state][3] : 1'bz;

    wire audio_en;





    reg key_request;
    reg[1:0] addr_i_prv;



    always @(posedge clk_i) begin
        rstn  <= rstn_nxt;
        state <= state_nxt;
        addr_i_prv <= addr_i;
    end

    always @* begin
        rdaddr_perip = USB_TDR;
        write_perip = 1;
    	data_i_perip = {31'b0, device_connected[state]};
    	wraddr_perip = USB_STA;
        rstn_nxt = 1;

        case(state)
            RESET,RESET2: begin
                rstn_nxt = 0;
            end
            AUDIO: begin
                if(audio_en) begin
                    wraddr_perip = USB_RDR;
                    data_i_perip = audio_o;
                end
            end
            CAMERA: begin

            end
            DISK: begin

            end
            KEYBOARD: begin
                key_request = 0;
                if(addr_i_prv == 2) begin
                    key_request = 1;
                end
            end
            SERIAL: begin

            end
            SERIAL2: begin

            end
        endcase

        state_nxt = USB_CCR;

        if(rst_i) begin
            state_nxt = 0;
        end
    end

    usb_audio_top usb_audio_top(
        rstn,
        clk_i,
        device_usb[AUDIO][0],
        device_usb[AUDIO][1],
        device_usb[AUDIO][2],
        device_usb[AUDIO][3],
        usb_dp_io,
        usb_dn_io,
        device_connected[AUDIO],
        audio_en,
        device_o[AUDIO][31:16],
        device_o[AUDIO][15:0],
        data_o_perip[31:16],
        data_o_perip[15:0],
        ,
        ,

    );
    
    usb_keyboard_top usb_keyboard_top(
        rstn,
        clk_i,
        device_usb[KEYBOARD][0],
        device_usb[KEYBOARD][1],
        device_usb[KEYBOARD][2],
        device_usb[KEYBOARD][3],
        usb_dp_io,
        usb_dn_io,
        device_connected[KEYBOARD],
        data_o_perip[15:0],
        key_request,
        ,
        ,

    );

    usb_serial_top usb_serial_top(
        rstn,
        clk_i,
        device_usb[SERIAL][0],
        device_usb[SERIAL][1],
        device_usb[SERIAL][2],
        device_usb[SERIAL][3],
        usb_dp_io,
        usb_dn_io,
        device_connected[SERIAL],
        audio_en, //BURADA KALMIŞTIN
        device_o[AUDIO][31:16],
        device_o[AUDIO][15:0],
        data_o_perip[31:16],
        data_o_perip[15:0],
        ,
        ,

    );

endmodule