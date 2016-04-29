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
	clock, reset, address, wdata, finst, mresult, mwreg, mm2reg, mwmem, mram_data, mqb
    );
	 input clock, reset;
	 // IF level
	 wire [31:0]pc_nextpc;
	 output wire [31:0]address;
	 output wire [31:0]finst;
	 // ID level
	 wire [31:0]dinst;
	 wire [4:0]drd;
	 wire dwreg, dm2reg, dwmem, dshift, daluimm;
	 wire [3:0]daluc;
	 wire [31:0]dqa, dqb;
	 wire [31:0]dimm;
	 // EXE level
	 wire [4:0]erd;
	 wire ewreg, em2reg, ewmem, eshift, ealuimm;
	 wire [3:0]ealuc;
	 wire [31:0]eqa, eqb;
	 wire [31:0]eimm;
	 wire [31:0]eresult;
	 // MEM level
	 wire [4:0]mrd;
	 output wire mwreg, mm2reg, mwmem;
	 output wire [31:0]mresult;
	 output wire [31:0]mqb;
	 output wire [31:0]mram_data;
	 // WB level 
	 wire [4:0]wrd;
	 wire wwreg;
	 wire wm2reg;
	 wire [31:0]wresult, wram_data;
	 output wire [31:0]wdata;
	 
	 
	 //output wire alu_zero;
	 //output wire cu_m2reg, cu_wmem, cu_shift, cu_aluimm, cu_wreg, cu_sext, cu_sst;
	 //output wire [3:0]cu_aluc;
	 //wire [1:0]cu_pcsource;
	 //output wire [4:0]rf_wn;
	 //output wire [31:0]data;
	 //output wire [31:0]rf_qa, rf_qb;
	 
	 wire [31:0]ext_imm;
	 //output wire [31:0]alu_ra, alu_rb, alu_result;
	 
	 wire [31:0]ram_data;
	 wire [31:0]addplus4;
	 wire [31:0]jumpadd;
	 wire [31:0]label;
	 //wire [31:0]inst;
	 
	 dff32 ip(pc_nextpc, clock, 1'b1, address);
	 
	 IF if_level(address, pc_nextpc, finst);
	 
	 FDreg fdreg(clock, reset, finst, dinst);
	 
	 ID id_level(clock, reset, dinst, wrd, wdata, wwreg, dm2reg, dwmem, dshift, daluimm, dwreg, cu_sext, daluc, dqa, dqb, dimm, drd);
	 
	 DEreg dereg(clock, reset, dwreg, dm2reg, dwmem, dshift, daluimm, drd, daluc, dqa, dqb, dimm, 
	     ewreg, em2reg, ewmem, eshift, ealuimm, erd, ealuc, eqa, eqb, eimm);
	 
	 EXE exe_level(ealuc, eshift, ealuimm, eqa, eqb, eimm, eresult);
	 
	 EMreg emreg(clock, reset, ewreg, em2reg, ewmem, erd, eresult, eqb, 
	     mwreg, mm2reg, mwmem, mrd, mresult, mqb);
	 
	 MEM mem_level(clock, mwmem, mresult, mqb, mram_data);
	 
	 MWreg MWreg(clock, reset, mwreg, mm2reg, mwmem, mrd, mresult, mram_data, 
	     wwreg, wm2reg, wrd, wresult, wram_data);
	 
	 WB wb_level(wresult, wram_data, wm2reg, wdata);
	 
	 /*
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
	  
	 */
	 
	 //assign jumpadd = {addplus4[31:28], inst[25:0], 2'b00};
	 assign ext_imm = cu_sext ? {dinst[25] ? 16'hffff : 16'h0, dinst[25:10]} : {16'h0, dinst[25:10]};
	 //assign label = {ext_imm[29:0], 2'b00} + addplus4;
	 
endmodule
