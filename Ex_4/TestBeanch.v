module TestBeanch(
    );

reg [3:0] A ; 
reg [3:0] S;
reg [3:0] B;
wire C;
wire C4;
wire v;

Behave(
            .A(A),
            .B(B),
            .S(S),
            .C(C),
            .c4(C4),
            .v(v)           
);

initial
begin 

A = 4'd4;
B = 4'd5;
C = 1'b1;

#50

A = 4'd12;
B = 4'd9;
C = 1'b1;

end
endmodule
