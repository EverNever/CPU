`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:58:30 03/20/2016 
// Design Name: 
// Module Name:    pc_reg 
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
module pc_reg(
	input [31:0]target_address, clock, 
	output [31:0]present_address
    );
	 reg [31:0]PC
	 assign PC = present_address;
	 
	 always @(posedge clock ) begin
	    PC = next_pc;
	 end
	 
	 initial PC = 0;

endmodule
