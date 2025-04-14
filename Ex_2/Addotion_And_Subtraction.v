module Addotion_And_Subtraction(
    input a0, a1, a2, a3, 
    input b0, b1, b2, b3,
    input c_in,
    input m,    
    output c_out, 
    output v,   
    output s0, s1, s2, s3
);
    wire c1, c2, c3;
    wire b0_m, b1_m, b2_m, b3_m;
    assign b0_m = b0 ^ m;
    assign b1_m = b1 ^ m;
    assign b2_m = b2 ^ m;
    assign b3_m = b3 ^ m;

    assign s0 = a0 ^ b0_m ^ c_in;
    assign c1 = (a0 & b0_m) | (a0 & c_in) | (b0_m & c_in);

    assign s1 = a1 ^ b1_m ^ c1;
    assign c2 = (a1 & b1_m) | (a1 & c1) | (b1_m & c1);

    assign s2 = a2 ^ b2_m ^ c2;
    assign c3 = (a2 & b2_m) | (a2 & c2) | (b2_m & c2);

    assign s3 = a3 ^ b3_m ^ c3;
    assign c_out = (a3 & b3_m) | (a3 & c3) | (b3_m & c3);

    assign v = c_out ^ c3;
endmodule