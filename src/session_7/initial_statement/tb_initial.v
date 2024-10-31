`timescale 1ns / 1ps

module tb_initial ();
	
	reg x, y, a, b, m;

// block #1
initial
	m = 1'b0;

// block #2
initial begin
	#5 a = 1'b1;
	#25 b = 1'b0;
end

// block #3
initial begin
	#10 x = 1'b0;
	#25 y = 1'b1;
end

// block #4
initial
	#50 $finish;


endmodule
