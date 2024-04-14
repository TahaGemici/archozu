`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2024 21:48:48
// Design Name: 
// Module Name: Uart
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Uart       (
    input wire clk,            // System clock input
    input wire rst,            // Reset input
    input wire [7:0] data_tx, // Data to transmit
    output reg [7:0] data_rx, // Received data
    output reg tx_en,         // Transmit enable
    output reg rx_flag,       // Data received flag
    output reg tx_complete,// Transmit completed flag
    output reg Hready   
);

// UART registers
reg [15:0] UART_CPB; // Clock-per-bit register
reg [1:0] UART_STP;  // Stop-bit register
reg [7:0] UART_RDR;  // Read data register
reg [7:0] UART_TDR;  // Transmit data register
reg [2:0] UART_CFG;  // Configuration register

// State machine states
parameter IDLE = 2'd0;
parameter START = 2'd1;
parameter DATA = 2'd2;
parameter STOP = 2'd3;

reg [2:0] state = IDLE; // State machine state
reg [3:0] bit_count;     // Bit count

// Clock pulse counter
reg [15:0] cpb_count;
always @(posedge clk) begin
    if (rst) begin
        cpb_count <= 0;
        Hready <= 0;
    end else if (cpb_count < UART_CPB - 1) begin
        cpb_count <= cpb_count + 1;
    end else begin
        cpb_count <= 0;
    end
end

// State machine
always @(posedge clk) begin
    if (rst) begin
        state <= IDLE;
        bit_count <= 0;
    end else begin
        case (state)
            IDLE: begin
                if (UART_CFG[1]) begin // Data received
                    state <= START;
                    rx_flag <= 1'b1;
                end else if (UART_CFG[0]) begin // Transmit enable
                    state <= START;
                    tx_en <= 1'b1;
                end
            end
            START: begin
                if (cpb_count == 0) begin
                    UART_RDR <= 0; // Clear RX register
                    UART_TDR <= data_tx; // Load TX register
                    state <= DATA;
                end
            end
            DATA: begin
                if (cpb_count == 0) begin
                    UART_RDR <= {UART_RDR[6:0], UART_TDR[0]}; // Shift in received bit
                    UART_TDR <= {UART_TDR[6:0], 1'b1}; // Shift out transmitted bit
                    bit_count <= bit_count + 1;
                    if (bit_count == 7) begin
                        state <= STOP;
                    end
                end
            end
            STOP: begin
                if (cpb_count == 0) begin
                    UART_RDR <= {UART_RDR[6:0], UART_TDR[0]}; // Shift in received stop bit
                    tx_complete <= 1'b1;
                    tx_en <= 1'b0;
                    state <= IDLE;
                end
            end
        endcase
    end
end

// Register access
always @(posedge clk) begin
    if (rst) begin
        UART_CPB <= 0;
        UART_STP <= 0;
        UART_CFG <= 0;
    end else begin
        if (UART_CFG[0]) begin // Transmit enable
            UART_CFG[2] <= 0; // Clear transmit completed bit
        end
        if (UART_CFG[1]) begin // Data received
            UART_CFG[1] <= 0; // Clear data received bit
        end
        if (UART_CFG[0] && ~tx_en) begin // Transmit completed
            UART_CFG[2] <= 1; // Set transmit completed bit
            Hready <=1;
        end
    end
end

endmodule
