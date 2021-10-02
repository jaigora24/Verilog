module RippleCarryAdder(A,B,Cin,Sum,Cout);
  input [3:0] A,B;
  input Cin;
  output Cout;
  output [3:0] Sum;
  
  wire C0,C1,C2;
  
  FullAdder FA0(A[0],B[0],Cin,sum[0],C0);
  FullAdder FA1(A[1],B[1],C0,sum[1],C1);
  FullAdder FA2(A[2],B[2],C1,sum[2],C2);
  FullAdder FA03(A[3],B[3],C3,sum[3],Cout);
  
endmodule
