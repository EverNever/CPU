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
  input [31:0]inst,
  
  input clock, reset,
  input [4:0]wn,
  input [31:0]data,
  
  output wwreg,
  output m2reg, wmem, shift, aluimm, sext,
  output [3:0]aluc,
  
  output [31:0]qa, qb,
  
  output [31:0]imm
    );

	 sccu cu(inst[31:20], m2reg, wmem, shift, aluimm, wreg, sext, cu_sst, cu_aluc, cu_pcsource);

	 mux2x5 slct_st(inst[14:10], inst[4:0], cu_sst, rnb);

	 regfile rf(inst[9:5], rnb, wn, data, wwreg, clock, reset, qa, qb);

endmodule
