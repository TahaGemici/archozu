module I2C_master(
    input PCLK_i,
    input PRESETn_i,
    input PSEL_i,
    input PENABLE_i,
    input PWRITE_i,
    input [7:0]PADDR_i,
    input [7:0]PWDATA_i,
    output reg [7:0]PRDATA_o,
    output reg PREADY_o
);

     reg [7:0]reg_addr;
     reg [7:0] mem [0:63];

    assign PRDATA1 =  mem[reg_addr];

    always @(*) begin
        if(!PRESETn)
              PREADY = 0;
        else begin
          PREADY = 0;
                 
          if(PSEL && !PENABLE && !PWRITE)
	     begin PREADY = 0; end
	         
	  else if(PSEL && PENABLE && !PWRITE)
	     begin  PREADY = 1;
                    reg_addr =  PADDR; 
	       end
          else if(PSEL && !PENABLE && PWRITE)
	     begin  PREADY = 0; end

	  else if(PSEL && PENABLE && PWRITE)
	     begin  PREADY = 1;
	            mem[PADDR] = PWDATA; end

        end
    end
endmodule