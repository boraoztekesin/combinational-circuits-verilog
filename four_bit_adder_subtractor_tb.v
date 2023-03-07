`timescale 1ns/1ps
module four_bit_adder_subtractor_tb;
 reg [3:0] A;
 reg [3:0] B;
 reg subtract;
 wire[3:0] Result;
 wire Cout;
    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
 four_bit_adder_subtractor uut(.A(A),.B(B),.subtract(subtract),.Result(Result),.Cout(Cout));
 initial begin
    $dumpfile("four_bit_adder_subtractor.vcd");
    $dumpvars;
    A=4'b0001; B=4'b0000; subtract=0; #10;
    A=4'b0001; B=4'b0000; subtract=1; #10;
    A=4'b0010; B=4'b0001; subtract=0; #10;
    A=4'b0010; B=4'b0001; subtract=1; #10;
    A=4'b0011; B=4'b0010; subtract=0; #10;
    A=4'b0011; B=4'b0010; subtract=1; #10;
    A=4'b1001; B=4'b0010; subtract=0; #10;
    A=4'b1001; B=4'b0010; subtract=1; #10;
    A=4'b0100; B=4'b0011; subtract=0; #10;
    A=4'b0100; B=4'b0011; subtract=1; #10;
  $finish;  
 end 
endmodule
