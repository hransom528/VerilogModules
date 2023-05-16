// 32-bit 3-to-1 Multiplexer

module mux3to1(
	input [31:0] i0, i1, i2,
	input [1:0] sel,
	output reg [31:0] out
);
	always @(i0 or i1 or i2 or sel)
	begin
		case (sel)
			2'b00: out = i0;
			2'b01: out = i1;
			2'b10: out = i2;
			default: out = 32'bx;
		endcase
	end
endmodule