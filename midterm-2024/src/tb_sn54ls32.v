`timescale 1ns / 1ps

module tb_sn54ls32 ();

// internal signal definition
wire O_1Y, O_2Y, O_3Y, O_4Y							;
reg I_1A, I_1B, I_2A, I_2B, I_3A, I_3B, I_4A, I_4B	;


// DUT instantiation
SN54LS32 DUT (
	.o_1Y(O_1Y), 
	.o_2Y(O_2Y), 
	.o_3Y(O_3Y),
	.o_4Y(O_4Y),
	.i_1A(I_1A), 
	.i_1B(I_1B), 
	.i_2A(I_2A), 
	.i_2B(I_2B), 
	.i_3A(I_3A), 
	.i_3B(I_3B), 
	.i_4A(I_4A), 
	.i_4B(I_4B)
);

// put stimulus
initial begin
	
// t=0, init
I_1A = 1'b0; I_1B = 1'b0;

// t=10ns
#10
I_1A = 1'b1; I_1B = 1'b0;

// t=20ns
#10
I_1A = 1'b1; I_1B = 1'b1;

// t=30ns
#10
I_1A = 1'b0; I_1B = 1'b1;

// t=40ns
#10
I_1A = 1'b1; I_1B = 1'b1;


// t = 50ns
#10
I_1A = 1'b0; I_1B = 1'b0;

// t = 60ns, reset
#10
I_1A = 1'b0; I_1B = 1'b0;


// t = 100, Simulation Termination
#40
$finish;
end
endmodule
