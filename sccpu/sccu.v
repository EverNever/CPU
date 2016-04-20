`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:14:28 03/20/2016 
// Design Name: 
// Module Name:    sccu 
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
/*
:param z: ALU zero flag(1), from ALU
:param op: inst[31:0], from InstMem

:param m2reg: select the result from ALU(0) or DataMem(1), to result_mux2x32
:param pcsource: select the next address of inst, include Branch(1 bit) and jump(1 bit), 
	0:from pcplus4_cla32
	1:from extender
	3:from jump inst
:param wmem: DataMem write enable flag
:param aluc: ALU operation
:param aluimm: select the resoutce from regfile_b(0) or inst_imme(1), to alu_a_mux2x32
:param wreg: enable regfile to write data
:param shift: select the resoutce from regfile_a(0) or inst_sa(1), to alu_b_mux2x32
:param sext: sign extend(0) or zero extend(1), to extender
:param sst: select for regfile_wn from R_rd(0) or I_rt
*/
module sccu (
  input [11:0]op,
  output cu_m2reg, cu_wmem, cu_shift, cu_aluimm, cu_wreg, cu_sext, cu_sst,
  output [3:0]cu_aluc
  );
  assign cu_wreg = ((op[11:10] == 2'b00) && (op[9:7] != 3'b111)) ? 1'b1 : 1'b0;
  assign cu_sst = ((op[11:6] >= 6'b000101) && (op[11:6] <= 6'b001101)) ? 1'b1 : 1'b0;
  assign cu_m2reg = (op[11:6] == 6'b001101) ? 1'b1 : 1'b0;
  assign cu_shift = (op[11:6] == 6'b000010) ? 1'b1 : 1'b0;
  assign cu_aluimm = ((op[11:6] >= 6'b000101) && (op[11:6] <= 6'b001110)) ? 1'b1 : 1'b0;
  assign cu_sext = ((op[11:6] == 6'b000101) || ((op[11:6] >= 6'b001101) &&
    (op[11:6] <= 6'b010000))) ? 1'b1 : 1'b0;
  assign cu_aluc =
    ((op[11:0] == 12'b000000000001) || (op[11:6] == 6'b000101) ||
      (op[11:6] == 6'b001101) || (op[11:6] == 6'b001110)) ? 4'b0000 :
    ((op[11:6] == 6'b001111) || (op[11:6] == 6'b010000)) ? 4'b0001 :
    ((op[11:0] == 12'b000001000001) || (op[11:6] == 6'b001001)) ? 4'b0010 :
    ((op[11:0] == 12'b000001000010) || (op[11:6] == 6'b001010)) ? 4'b0011 :
    ((op[11:0] == 12'b000001000100) || (op[11:6] == 6'b001100)) ? 4'b0100 :
    (op[11:0] == 12'b000010000001) ? 4'b1110 :
    (op[11:0] == 12'b000010000010) ? 4'b1100 :
    (op[11:0] == 12'b000010000011) ? 4'b1000 : 4'b0;
  assign cu_wmem = (op[11:6] == 6'b001110) ? 1'b1 : 1'b0;

endmodule


