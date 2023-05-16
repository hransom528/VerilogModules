// 32-bit Arithmetic & Logic Unit (ALU)
module ALU32(
	input [31:0] a, b,	// A/B inputs
	input [2:0] f,		// Function select
	output [31:0] r		// Result
);

	// Functions:
	// 0b000: A+B
	// 0b001: A+1
	// 0b010: A-B
	// 0b011: A-1
	// 0b10x: A*B

	// Intermediate output nodes
	wire [31:0] addmux_out, submux_out;
	wire [31:0] add_out, sub_out, mult_out;

	// Submodule instantiation
	mux2to1 adder_mux(b, 32'd1, f[0], addmux_out);
	mux2to1 sub_mux(b, 32'd1, f[0], submux_out);
	add32 adder(a, addmux_out, add_out);
	sub32 sub(a, submux_out, sub_out);
	mult16 mult(a[15:0], b[15:0], mult_out);
	mux3to1 out_mux(add_out, sub_out, mult_out, f[2:1], r);
endmodule
