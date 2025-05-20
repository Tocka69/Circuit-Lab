module Behave(
    input [3:0] A,
    input [3:0] B,
    output G ,
    output L ,
    output E  
	 );
    assign E = (A == B);
    assign G = (A > B) ; 
    assign L = (A < B) ;

endmodule
