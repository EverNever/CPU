`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:40:40 03/20/2016 
// Design Name: 
// Module Name:    mux2x5 
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
module mux2x5(
	input [4:0]a, b,
	input s,
	output [4:0] r
    );
	 
	 assign r = s ? b : a;

endmodule
