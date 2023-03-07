`timescale 1 ns/10 ps
`include "full_adder.v"
module full_adder_tb;
reg A,B,Cin;
wire S,Cout;
full_adder uut(.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));
    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
initial begin
    $dumpfile("full_adder.vcd");
      $dumpvars(0,full_adder_tb);
    A= 1'b0; B=1'b0; Cin=1'b0;
    #10 A=1'b0; B=1'b0; Cin=1'b1;
    #10 A=1'b0; B=1'b1; Cin=1'b0;
    #10 A=1'b0; B=1'b1; Cin=1'b1;
    #10 A=1'b1; B=1'b0; Cin=1'b0;
    #10 A=1'b1; B=1'b0; Cin=1'b1;
    #10 A=1'b1; B=1'b1; Cin=1'b0;
    #10 A=1'b1; B=1'b1; Cin=1'b1;
    #10 $finish;
    

end
endmodule