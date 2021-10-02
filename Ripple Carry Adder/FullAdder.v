module FullAdder(A,B,Cin,Sum,Cout);
  input A,B,Cin;
  output Sum,Cout;
  
  wire T1,T2,T3;
  
  HalfAdder HA0(A,B,T1,T2);
  HalfAdder HA1(T1,Cin,Sum,T3);
  
  or myOR = (Cout,T2,T3);
  
endmodule
