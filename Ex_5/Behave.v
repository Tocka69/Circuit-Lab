module Behave(
 input [2:0] A,
 input [3:0] B,
 output [4:0] C,
 output C1,
 output C2
    );
 wire [3:0] W;
 wire [3:0] Z;
 wire [3:0] F;
 wire [4:0] S1;
 wire [3:0] Q;
 assign C1 = A[0] & B[0];
 assign W[0] = A[0] & B[1];
 assign W[1] = A[0] & B[2];
 assign W[2] = A[0] & B[3];
 assign W[3] = 1'b0;
 assign Z[0] = A[1] & B[0];
 assign Z[1] = A[1] & B[1];
 assign Z[2] = A[1] & B[2];
 assign Z[3] = A[1] & B[3];
 assign S1 = W + Z ;
 assign C2 = S1[4];
 assign F[0] = A[2] & B[0];
 assign F[1] = A[2] & B[1];
 assign F[2] = A[2] & B[2];
 assign F[3] = A[2] & B[3];
 assign Q[0] = S1[0];
 assign Q[1] = S1[1];
 assign Q[2] = S1[2];
 assign Q[3] = S1[3];
 assign C = Q + F;
endmodule