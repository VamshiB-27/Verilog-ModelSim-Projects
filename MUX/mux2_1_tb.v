`timescale 1ns/1ns

module mux2_1_tb;
	reg a0;
	reg a1;
	reg s0;
	wire y;

	integer i;
	
	mux2_1 DUT(.a0(a0),.a1(a1),.s0(s0),.y(y));

	initial begin
		for(i=0;i<8;i=i+1) begin
			{a0,a1,s0}=i;
			$display("a0=%d,a1=%d,s0%d",a0,a1,s0);
			#10;
		end
	end


endmodule