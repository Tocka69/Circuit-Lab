module Exersise_Four(
    input A,
    input B,
    input C,
    input D,
    output F1,
    output F2
    );
and T1(t1 , ~B , C);
and T2(t2 , ~A , B);
or  T3(t3 , t1 , A);
xor T4(t4 , t2 , D);
//Output
or F2_Output(F2 , D , t2);
or F1_Output(F1 , t3, t4);
endmodule
