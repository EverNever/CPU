`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:39 04/20/2016 
// Design Name: 
// Module Name:    ID 
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
module ID(
  input clock, reset,
  
  input [31:0]inst,
  input [4:0]wn,
  input [31:0]data,
  input wwreg,
  
  output m2reg, wmem, shift, aluimm, wreg, sext,
  output [3:0]aluc,
  
  output [31:0]qa, qb,
  
  output [31:0]imm,
  output [4:0]drd
    );
	 
	 wire sst;
	 
	 sccu cu(inst[31:20], m2reg, wmem, shift, aluimm, wreg, sext, sst, aluc);

	 mux2x5 slct_st(inst[14:10], inst[4:0], sst, drd);

	 regfile rf(inst[9:5], inst[4:0], wn, data, wwreg, clock, reset, qa, qb);
	 
	 assign imm = sext ? {inst[25] ? 16'hffff : 16'h0, inst[25:10]} : {16'h0, inst[25:10]};

endmodule
