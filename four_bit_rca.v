`include "full_adder.v"
module four_bit_rca(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
);
wire [2:0] car;
full_adder A1(.A(A[0]),.B(B[0]),.Cin(Cin),.S(S[0]),.Cout(car[0]));
full_adder A2(.A(A[1]),.B(B[1]),.Cin(car[0]),.S(S[1]),.Cout(car[1]));
full_adder A3(.A(A[2]),.B(B[2]),.Cin(car[1]),.S(S[2]),.Cout(car[2]));
full_adder A4(.A(A[3]),.B(B[3]),.Cin(car[2]),.S(S[3]),.Cout(Cout));

endmodule
