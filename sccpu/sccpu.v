`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:14 03/20/2016 
// Design Name: 
// Module Name:    sccpu 
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
module sccpu(
	cu_m2reg, cu_wmem, cu_shift, cu_aluimm, cu_wreg, cu_sext, cu_sst,
	rf_wn, 
	rf_qa, rf_qb, 
	cu_aluc,
	alu_zero, alu_ra, alu_rb, alu_result,
	clock, reset, address, data
    );
	 input clock, reset;
	 output wire [31:0]address;
	 wire [31:0]inst;
	 output wire alu_zero;
	 output wire cu_m2reg, cu_wmem, cu_shift, cu_aluimm, cu_wreg, cu_sext, cu_sst;
	 output wire [3:0]cu_aluc;
	 wire [1:0]cu_pcsource;
	 output wire [4:0]rf_wn;
	 output wire [31:0]data;
	 output wire [31:0]rf_qa, rf_qb;
	 wire [31:0]ext_imm;
	 output wire [31:0]alu_ra, alu_rb, alu_result;
	 wire [31:0]ram_data;
	 wire [31:0]addplus4;
	 wire [31:0]jumpadd;
	 wire [31:0]pc_nextpc;
	 wire [31:0]label;
	 
	 // module encapsulation
	 IF if_level(address, inst, nextpc);
	 

	 dff32 ip(pc_nextpc, clock, 1'b1, address);
	 
	 cla32 pcplus4(address, 32'h00000004, 1'b0, addplus4);
	 
	

	 IP_ROM InstMem(address, inst);

	 sccu cu(alu_zero, inst[31:20], cu_m2reg, cu_wmem, cu_shift, cu_aluimm, cu_wreg, cu_sext, cu_sst, cu_aluc, cu_pcsource);

	 mux2x5 slct_st(inst[14:10], inst[4:0], cu_sst, rf_wn);

	 regfile rf(inst[9:5], inst[4:0], rf_wn, data, cu_wreg, clock, reset, rf_qa, rf_qb);

	

	 mux2x32 alu_a(rf_qa, {27'b0, inst[19:15]}, cu_shift, alu_ra);

	 mux2x32 alu_b(rf_qb, ext_imm, cu_aluimm, alu_rb);

	 al_unit alu(alu_ra, alu_rb, cu_aluc, alu_zero, alu_result);
	 
	 mux4x32 nextpc(addplus4, label, 32'b0, jumpadd, cu_pcsource, pc_nextpc);

	 IP_RAM DataMem(rf_qb, alu_result, clock, cu_wmem, ram_data);
	 
	 mux2x32 result(alu_result, ram_data, cu_m2reg, data);
	  
	 assign jumpadd = {addplus4[31:28], inst[25:0], 2'b00};
	 assign ext_imm = cu_sext ? {inst[25] ? 16'hffff : 16'h0, inst[25:10]} : {16'h0, inst[25:10]};
	 assign label = {ext_imm[29:0], 2'b00} + addplus4;
	 
endmodule
