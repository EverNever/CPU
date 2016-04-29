`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:54:15 04/20/2016 
// Design Name: 
// Module Name:    EXE 
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
module EXE(
  input [3:0]ealuc,
  input eshift, ealuimm,
  
  input [31:0]eqa, eqb, eimm,
  
  output [31:0]result
    );
	 
	 wire [31:0]alu_ra, alu_rb;
	 
	 mux2x32 alu_a(eqa, eimm, eshift, alu_ra);

	 mux2x32 alu_b(eqb, eimm, ealuimm, alu_rb);

	 al_unit alu(alu_ra, alu_rb, ealuc, result);

endmodule
