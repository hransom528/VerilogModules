// D Flip-Flop
module dff(	input d, clk, clear,
			output reg q, qbar);

	always @(posedge clk)
	begin
		if (clear)
			q <= 0;
		else
			q <= d;
	end
endmodule