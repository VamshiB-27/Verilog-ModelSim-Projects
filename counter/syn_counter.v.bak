module syn_counter(
	input clk,
	input rst,
	output reg [3:0] count
);
	initial begin
		count=0;
	end 

	always @(posedge clk) begin
		if(rst) begin
			count<=0;
		end

		else begin
			count<=count+1;
		end

	end

endmodule