`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:49:38 04/22/2016 
// Design Name: 
// Module Name:    FDreg 
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
module FDreg(
  clock, reset,
  finst,
  dinst
    );
  
  input clock, reset;
  input [31:0]finst;
  
  output [31:0]dinst;
  
  reg [31:0]dinst;
  
  always @(negedge reset or posedge clock)
    if (reset == 0)
		begin
		  dinst <= 0;
		end
	 else 
		begin
		  dinst <= finst;
	   end
endmodule
