module Behave(
    
  input [3:0] A,
  input [3:0] B,
  input C,
  output [4:0] S,
  output c4,
  output v
	 );
assign S = A + C+ B;
assign c4 = S[4];
assign v = c4 ? 1'd1 : 1'd0;

endmodule