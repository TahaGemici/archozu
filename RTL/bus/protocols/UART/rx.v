module UartReceiver (
    input wire clk,             // System clock input
    input wire rst,             // Reset input
    input wire rx,              // Receive input
    output reg [7:0] data_rx,   // Received data
    output reg rx_flag          // Data received flag
);

// UART registers
reg [15:0] UART_CPB;   // Clock-per-bit register
reg [7:0] UART_RDR;    // Read data register
reg [2:0] UART_CFG;    // Configuration register

// State machine states
parameter IDLE = 2'd0;
parameter START = 2'd1;
parameter DATA = 2'd2;
parameter STOP = 2'd3;

reg [2:0] state = IDLE;    // State machine state
reg [3:0] bit_count;       // Bit count

// Clock pulse counter
reg [15:0] cpb_count;

always @(posedge clk) begin
    if (rst) begin
        cpb_count <= 0;
    end else if (cpb_count < UART_CPB - 1) begin
        cpb_count <= cpb_count + 1;
    end else begin
        cpb_count <= 0;
    end
end

always @(posedge clk) begin
    if (rst) begin
        state <= IDLE;
        bit_count <= 0;
    end else begin
        case (state)
            IDLE: begin
                if (!rx) begin // Data received
                    state <= START;
                    rx_flag <= 1'b1;
                    UART_CFG[1] <= 1; // Set data received bit
                end  
            end
            START: begin
                if (cpb_count == 0) begin
                    UART_RDR <= 0;          // Clear RX register
                    state <= DATA;
                end
            end
            DATA: begin
                if (cpb_count == 0) begin
                    UART_RDR <= {UART_RDR[6:0], rx}; // Shift in received bit
                    bit_count <= bit_count + 1;
                    if (bit_count == 7) begin
                        state <= STOP;
                    end
                end
            end
            STOP: begin
                if (cpb_count == 0) begin
                    state <= IDLE;
                    data_rx <= UART_RDR; 
                end
            end
        endcase
    end
end

// Register access
always @(posedge clk) begin
    if (rst) begin
        UART_CPB <= 0;
        UART_CFG <= 0;
    end else begin
        if (UART_CFG[1]) begin // Data received
            UART_CFG[1] <= 0; // Clear data received bit
           
        end
    end
end

endmodule