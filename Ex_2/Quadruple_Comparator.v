
module Quadruple_Comparator (
    input a0,
    input a1,
    input a2,
    input a3, 
    input b0, 
    input b1, 
    input b2, 
    input b3,
    output g, 
    output l, 
    output e
);
    wire x0, x1, x2, x3;
    assign x3 = ~((~a3 & b3) | (~b3 & a3)); 
    assign x2 = ~((~a2 & b2) | (~b2 & a2));
    assign x1 = ~((~a1 & b1) | (~b1 & a1));
    assign x0 = ~((~a0 & b0) | (~b0 & a0)); 
    
    assign e = x3 & x2 & x1 & x0;
    
    assign g = ((~a3 & b3) & x2 & x1 & x0) | ((~a2 & b2) & x1 & x0) | ((~a1 & b1) & x0) | (~a0 & b0);
    
    assign l = ((~b3 & a3) & x2 & x1 & x0) | ((~b2 & a2) & x1 & x0) | ((~b1 & a1) & x0) | (~b0 & a0);
endmodule