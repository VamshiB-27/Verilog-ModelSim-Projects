`timescale 1ns/1ns

module tb_basic_gate;

    reg clk;
    reg in1, in2;

    wire outand;
    wire outor;
    wire outnand;
    wire outnor;
    wire outxor;
    wire outxnor;

    // DUT
    basic_gate DUT (
        .clk(clk),
        .in1(in1),
        .in2(in2),
        .outand(outand),
        .outor(outor),
        .outnand(outnand),
        .outnor(outnor),
        .outxor(outxor),
        .outxnor(outxnor)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Test inputs
    initial begin
        clk = 0;
        in1 = 0;
        in2 = 0;

        #10;
        in1 = 0;
        in2 = 1;

        #10;
        in1 = 1;
        in2 = 0;

        #10;
        in1 = 1;
        in2 = 1;

        #10;
        $finish;
    end

endmodule