`timescale 1ns / 1ps

module clock_gen ();
	reg clk;

	initial
		clk = 1'b0;

	always
		#5 clk = !clk;

	initial
		#100 $finish;

endmodule
