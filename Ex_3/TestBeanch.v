`timescale 1ns / 1ps
module TestBeanch(

    );

   reg [3:0] A;
   reg [3:0] B;
   wire G;
   wire L;
   wire E;

Behave(
            .A(A),
            .B(B),
            .G(G),
            .L(L),
            .E(E)
);

initial
begin
 
A = 4'd4;
B = 4'd5;


#50;

A = 4'd6;
B = 4'd8;

end
endmodule