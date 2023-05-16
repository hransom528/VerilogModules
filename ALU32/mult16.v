// 16-bit Magnitude Multiplier

module mult16(
	input [15:0] i0, i1,
	output [31:0] prod
);
	assign prod = i0 * i1;
endmodule