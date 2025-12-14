module T_FLIP_FLOP (
    input  wire clk, rst, T,
    output reg Q 	  
);

  initial begin
     Q<=1'b0;
	 end
  
  
	 always @(posedge clk or posedge rst) begin
	
        if (rst)
            Q <= 1'b0;       
        else if (T)
            Q <= ~Q;         
        else
            Q <= Q;          
    end
endmodule
