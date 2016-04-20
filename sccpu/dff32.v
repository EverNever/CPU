`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:18:49 03/20/2016 
// Design Name: 
// Module Name:    dff32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module dff32(
	d,
	clock, reset,
	q
    );
	input [31:0]d;
	input clock, reset;
	output [31:0]q;
	 reg [31:0]q;
	 
	 always @(posedge clock or negedge reset) begin
	    if (reset == 0) q <= 0;
		 else q <= d;
	 end
	 
	 initial q = 0;

endmodule
