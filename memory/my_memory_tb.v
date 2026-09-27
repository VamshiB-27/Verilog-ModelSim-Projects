`timescale 1ns/1ns

module my_memory_tb;

	reg [2:0] add;
	reg [7:0] w_data;
	reg rd, wr, clk;
	wire [7:0] r_data;
	integer i;

	my_memory mem_control(
		.address(add),
		.write_data(w_data),
		.read(rd),
		.write(wr),
		.clk(clk),
		.read_data(r_data)
        );

	initial begin
		clk=0;
		for(i=0;i<=5'b11111;i=i+1) begin
			{add,wr,rd}=i;
			w_data=$random;
			#10;
		end
	end

	always begin
		#5
		clk <= ~clk;
	end

endmodule
