module Binary_Multiplication_FourBit_To_ThreeBit(
     input a1,
     input a2,
     input a3,
     input b1,
     input b2,
     input b3,
     input b4,
     output c1 ,
     output c2,
     output c3 ,
     output c4 ,
     output c5,
     output c6,
     output c7
     );
 	 assign c1 = b1 & a1;
     assign s1  = 0 ^ (a1 & b1);
     assign c2 = (0 & (a1 & b1)) | (0) | ((a1 & b1));
 	 assign s2 = (a2 & b2) ^ (a2 & b2) ^ (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1);
 	 assign c3 = ((a2 & b2) & (a2 & b2)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1));
 	 assign s3 =  (a3 & b3) ^ (a3 & b3) ^ ((a2 & b2) & (a2 & b2)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1));
 	 assign c3 = (a3 & b3 & (a3 & b3 & b3) ) | (a3 &((a2 & b2) & (a2 & b2)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1))) | ((a3 & b3)  & ((a2 & b2) & (a2 & b2)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1)));
 	 assign s4 = (a4 & b4) ^ (a3 & b4)  ^ (a3 & b3 & (a3 & b3 & b3) ) | (a3 &((a2 & b2) & (a2 & b2)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1))) | ((a3 & b3)  & ((a2 & b2) & (a2 & b2)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1)));
 	 assign c = ((a4 & b4) & (a3 & b4) ) | ((a4 & b4) & (a3 & b3 & (a3 & b3 & b3) ) | (a3 &((a2 & b2) & (a2 & b2)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1))) | ((a3 & b3)  & ((a2 & b2) & (a2 & b2)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1)))) | ((a3 & b4)  & (a3 & b3 & (a3 & b3 & b3) ) | (a3 &((a2 & b2) & (a2 & b2)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1))) | ((a3 & b3)  & ((a2 & b2) & (a2 & b2)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1)) | ((a2 & b2) & (0 & (a1 & b1)) | (0 & c1) | ((a1 & b1) & c1))));
     
 	 
 	 assign c2  = s1 ^ (a1 & b1);
     assign c2 = (s1 & (a1 & b1)) | s1 | ((a1 & b1));
 	 assign c3 = s2 ^ (a2 & b2) ^ c2;
 	 assign c3 = (s2 & (a2 & b2)) | (s2 & c2) | ((a2 & b2) & c2);
 	 assign c4 =  s3 ^ (a3 & b3) ^ c3;
 	 assign c3 = (s3 &(a3 & b3)) | (s3 & c3) | ((a3 & b3) & c3);
 	 assign c5 = a4 ^ (a4 & b4) ^ c4;
 	 assign c6 = (s4 & (a4 & b4)) | (a4 & c4) | ((a4 & b4) & c4);
 	 assign v = c ^ c3;
 endmodule