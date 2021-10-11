module RCA_testbench();
  reg [3:0] A_tst, B_tst;
  reg Cin_tst;
  wire [3:0] Sum_tst;
  wire Cout_tst;
  
  RippleCarryAdder(A_tst, B_tst, Cin_tst, Sum_tst, Cout_tst);
  initial
    begin
      A_tst = 4'b0000;
      #5 A_tst = 4'b0001;
      #10 A_tst = 4'b0000;
    end
  initial
    begin
      B_tst = 4'b0000;
      #10 B_tst = 4'b0001;
    end
  initial
    Cin_tst = 'b0;
endmodule
