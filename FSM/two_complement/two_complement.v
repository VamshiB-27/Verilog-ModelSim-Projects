module two_complement(
	input in,
	input clk,
	output reg q,
	output out
);

	wire d;
	or(d,in,q);

	always @(posedge clk) begin
		q<=d;
	end

	xor(out,q,in);

endmodule