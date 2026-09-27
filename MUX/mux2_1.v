module mux2_1(
	input a0,
	input a1,
	input s0,
	output reg y
);

	always @(*) begin
		case(s0)
			1'b0: y=a0;
			1'b1: y=a1;
		endcase
	end
endmodule