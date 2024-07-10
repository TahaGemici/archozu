
module TopModule (
    input wire clk,             // System clock input
    input wire rst,             // Reset input
    input wire [7:0] data_tx,   // Data to transmit
    input wire rx,              // Receive input
    output reg [7:0] data_rx,   // Received data
    output reg tx_en,           // Transmit enable
    output reg rx_flag,         // Data received flag
    output reg tx_complete,     // Transmit completed flag
    output  Hready           // Handshake signal
);

UartTransmitter transmitter (
    .clk(clk),
    .rst(rst),
    .data_tx(data_tx),
    .tx_en(tx_en),
    .tx_complete(tx_complete)
);

UartReceiver receiver (
    .clk(clk),
    .rst(rst),
    .rx(rx),
    .data_rx(data_rx),
    .rx_flag(rx_flag)
);

assign Hready = tx_complete | rx_flag;

endmodule
