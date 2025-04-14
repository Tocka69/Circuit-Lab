module combinational_circuit( 
    input A,
    input  B,
    input C,
    input D,
    output F1, 
    output F2
);
    wire t1, t2, t3, t4;
    assign t1 = ~B & C;
    assign t2 = ~A & B;
    assign t3 = A | B;
    assign t4 = D ^ t1;
    assign F1 = t3 | t4;
    assign F2 = t2 | D;
endmodule