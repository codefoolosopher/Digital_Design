`timescale 1ns / 1ps

module MUX4X1 (
	// port list
	out, 
	i0, 
	i1, 
	i2, 
	i3, 
	s1, 
	s0
);

// port declaration
output out;
input i0;
input i1;
input i2;
input i3;
input s1;
input s0;

// 1. Data Flow Modeling
//assign out =(i0 & ~s1 & ~s0) | (i1 & ~s1 & s0) |(i2 & s1 & ~s0) |(i3 & s1 & s0);
// 2. tenary operator( a ? 1 : 0 )
assign out = 




// 2. Gate Level Modeling
/*
// internal signal declaration
wire s1n;
wire s0n;
wire y0;
wire y1;
wire y2;
wire y3;

//  generate s1n, s0n signal using not gate
not (s1n, s1);
not (s0n, s0);

// 1st level(2 input and gate)
and (	y0, i0, s1n, s0n	);
and (	y1, i1, s1n, s0		);
and (	y2, i2, s1,  s0n	);
and (	y3, i3, s1,  s0		);

// 2st level(4 input or gate);
or (	out, y0, y1, y2, y3	);
*/
endmodule
