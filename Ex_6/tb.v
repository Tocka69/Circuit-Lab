module tb;
    reg [3:0] D;
    reg CK;
    wire [3:0] Q;
    wire [3:0] QP;

    fli D1(.D(D[0]), .CK(CK), .Q(Q[0]), .QP(QP[0]));
    fli D2(.D(D[1]), .CK(CK), .Q(Q[1]), .QP(QP[1]));
    fli D3(.D(D[2]), .CK(CK), .Q(Q[2]), .QP(QP[2]));
    fli D4(.D(D[3]), .CK(CK), .Q(Q[3]), .QP(QP[3]));

    initial begin
        CK = 0;
        forever #10 CK = ~CK;
    end

    initial begin
        D[0] = 1'b0;
        D[1] = D[0];
        D[2] = D[1];
        D[3] = D[2];
        #30;
        D[0] = 1'b1;
        D[1] = D[0];
        D[2] = D[1];
        D[3] = D[2];
    end
endmodule