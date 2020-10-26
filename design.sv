// Code your design here
`timescale 1ns / 1ps
module hf_gate(sum,cout,a,b);
    output sum, cout;
	 input a,b;
	 xor a1(sum,a,b);
	 and b1(cout,a,b);
endmodule
