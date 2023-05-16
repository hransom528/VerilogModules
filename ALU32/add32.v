// 32-bit Adder

module add32(
	input [31:0] i0, i1,
	output [31:0] sum
);
	assign sum = i0 + i1;
endmodule