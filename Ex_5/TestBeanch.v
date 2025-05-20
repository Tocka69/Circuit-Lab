module TestBeanch();
reg [2:0] A;
reg [3:0] B;
wire [4:0] C;
wire C1;
wire C2;

Behave (
  .A(A),
  .B(B),
  .C(C),
  .C1(C1),
  .C2(C2)
);

initial

begin

A = 3'b010;
B = 4'b1000;
#100;
A = 3'b101;
B = 4'b1111;

end

endmodule