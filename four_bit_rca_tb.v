`timescale 1 ns/10 ps
`include "four_bit_rca.v"
module four_bit_rca_tb;
reg[3:0] A, B;
reg Cin;
wire[3:0] S;
wire Cout;
  // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
four_bit_rca uut(.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));
initial begin
  $dumpfile("four_bit_rca.vcd");
      $dumpvars(0,four_bit_rca_tb);
  A=4'b0000; B=4'b0000; Cin=0;
  #10 A=4'b0000; B=4'b0000; Cin=1;
  #10 A=4'b1100; B=4'b0011; Cin=0;
  #10 A=4'b1100; B=4'b0011; Cin=1;
  #10 A=4'b1110; B=4'b0001; Cin=1;
  #10 A=4'b1100; B=4'b0011; Cin=1;
  #10 A=4'b1111; B=4'b0001; Cin=0;
  #10 A=4'b1111; B=4'b1111; Cin=1;
  #10 $finish;
end

endmodule