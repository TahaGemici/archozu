//CLK GENERATOR FOR DIFFERENT BAUD RATES

module clk_gen (
    input clk_i,
    input rst_i,
    input [16:0] baud_rate_i,
    output tx_clk_o
);

reg tx_clk; 
int tx_max = 0;
int tx_count = 0; //number of clk tick elapsed so far

assign tx_clk_o = tx_clk;

always @(posedge clk) begin
    if(rst) begin
        tx_max <= 0;
    end
    else begin
        case (baud_rate_i)
            4800: tx_max <= 14'd10416;
            9600: tx_max <= 14'd5208;
            14400: tx_max <= 14'd3472;
            19200: tx_max <= 14'd2604;
            38400: tx_max <= 14'd1302;
            57600: tx_max <= 14'd868;
            default: begin
                tx_max <= 14'd5208;
            end
        endcase
    end
end

always @(posedge clk) begin
    if(rst) begin
        tx_count <= 0;
        tx_clk <= 0;
    end
    else begin
        if(tx_count < tx_max/2) begin
            tx_count <= tx_count + 1;
        end
        else begin
            tx_clk <= ~tx_clk;
            tx_count <= 0;
        end
    end
end

endmodule

interface clk_if;
    logic clk, rst;
    logic [16:0] baud;
    logic tx_clk;
endinterface