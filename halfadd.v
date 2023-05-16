// 1-bit Half Adder
module halfadd(
	input a, b,
	output reg sum, cout
);
	always @(a or b)
	begin
		sum = a ^ b;
		cout = a & b;
	end
endmodule
