module Addotion_And_Subtraction(
    input A,
    input B,
    input C,
    input D,
    output O1,
    output O2
    );
and T1(t1 , ~B , C);
and T2(t2 , ~A , B);
or  T3(t3 , t1 , A);
xor T4(t4 , t2 , D);

or O2_Output(O2 , D , t2);
or O1_Output(O1 , t3, t4);

endmodule
