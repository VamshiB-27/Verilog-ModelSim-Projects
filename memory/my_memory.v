module my_memory(
	input [2:0] address,
	input [7:0] write_data,
	input read, write, clk,
	output reg [7:0] read_data
);
	reg [7:0] memory_8x8 [0:7];

	always @(posedge clk) begin
		if(write) begin
			memory_8x8[address]<=write_data;
		end
		if(read) begin
			read_data<=memory_8x8[address];
		end
	end

endmodule
