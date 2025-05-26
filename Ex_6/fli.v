module fli(
    input D,
    input CK,
    output Q,
    output QP
);
    assign S = ~(D & CK);
    assign R = ~(~D & CK);
    assign Q = ~(S & QP);
    assign QP = ~(Q & R);
endmodule