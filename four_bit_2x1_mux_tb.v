`timescale 1ns/10ps
module four_bit_2x1_mux_tb;
	reg [3:0] In_1;
	reg[3:0] In_0;
	reg Select;
	wire [3:0] Out;
	four_bit_2x1_mux m(.In_1(In_1),.In_0(In_0),.Select(Select),.Out(Out));
	initial begin
		$dumpfile("four_bit_2x1_mux.vcd");
		$dumpvars;
			Select=0;
			In_1<=$random;
			In_0<=$random;
			#10;
			Select=1;
			In_1<=$random;
			In_0<=$random;
			#10;
			Select=0;
			In_1<=$random;
			In_0<=$random;
			#10;
			Select=1;
			In_1<=$random;
			In_0<=$random;
			#10;
			Select=0;
			In_1<=$random;
			In_0<=$random;
			#10;
			Select=1;
			In_1<=$random;
			In_0<=$random;
			#10;
			Select=0;
			In_1<=$random;
			In_0<=$random;
			#10;
			Select=1;
			In_1<=$random;
			In_0<=$random;
			#10;
		$finish;
	end

endmodule
