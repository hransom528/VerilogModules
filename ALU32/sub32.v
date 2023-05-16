// 32-bit Subtractor

module sub32(
	input [31:0] i0, i1,
	output [31:0] diff
);
	assign diff = i0 - i1;
endmodule