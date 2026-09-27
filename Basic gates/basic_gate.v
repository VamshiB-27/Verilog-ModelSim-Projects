module basic_gate(clk, in1, in2, outand, outor, outnand, outnor, outxor, outxnor);
 	input clk, in1, in2;
	output reg outand, outor, outnand, outnor, outxor, outxnor;

	always @ (posedge clk) begin
		outand<=in1&in2;
		outor<=in1|in2;
		outnand<=~(in1&in2);
		outnor<=~(in1|in2);
		outxor<=in1^in2;
		outxnor<=~(in1^in2);
	end
endmodule
