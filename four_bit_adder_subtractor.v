
module four_bit_adder_subtractor(A, B, subtract, Result, Cout);
    input [3:0] A;
    input [3:0] B;
    input subtract;
    output [3:0] Result;
    output Cout;

    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
  wire[3:0] Out1;
  wire[3:0] Out2;
  reg Cin;
   two_s_complement twos(.In(B),.Out(Out1));
   four_bit_2x1_mux mux(.In_1(B),.In_0(Out1),.Select(subtract),.Out(Out2));
   four_bit_rca rca(.A(A),.B(Out2),.Cin(Cin),.S(Result),.Cout(Cout));
endmodule
