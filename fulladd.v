// 1-bit Full Adder
module fulladd(
	input a, b, cin,
	output reg sum, cout
);
	always @(a or b or cin)
	begin
		sum = a ^ b ^ cin;
		cout = (a & b) | (a & cin) | (b & cin);
	end
endmodule