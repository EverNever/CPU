`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:31:42 03/24/2016
// Design Name:   sccu
// Module Name:   C:/Users/SinLa/Desktop/Start/Project/ISE/sccpu/sccu_test.v
// Project Name:  sccpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sccu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
//pass
module sccu_test;

	// Inputs
	reg alu_zero;
	reg [11:0] op;

	// Outputs
	wire cu_m2reg;
	wire cu_wmem;
	wire cu_shift;
	wire cu_aluimm;
	wire cu_wreg;
	wire cu_sext;
	wire cu_sst;
	wire [3:0] cu_aluc;
	wire [1:0] cu_pcsource;

	// Instantiate the Unit Under Test (UUT)
	sccu uut (
		.alu_zero(alu_zero), 
		.op(op), 
		.cu_m2reg(cu_m2reg), 
		.cu_wmem(cu_wmem), 
		.cu_shift(cu_shift), 
		.cu_aluimm(cu_aluimm), 
		.cu_wreg(cu_wreg), 
		.cu_sext(cu_sext), 
		.cu_sst(cu_sst), 
		.cu_aluc(cu_aluc), 
		.cu_pcsource(cu_pcsource)
	);

	initial begin
		// Initialize Inputs
		alu_zero = 0;
		op = 0;

		// Wait 100 ns for global reset to finish
		#100;
		alu_zero = 0;
		op = 0;
		
		#100;
		alu_zero = 0;
		op = 12'b000000_000001;//add
		
		#100;
		alu_zero = 0;
		op = 12'b000001_000001;//
		
		#100;
		alu_zero = 0;
		op = 12'b000001_000010;
		
		#100;
		alu_zero = 0;
		op = 12'b000001_000100;
		
		#100;
		alu_zero = 0;
		op = 12'b000010_000001;
		
		#100;
		alu_zero = 0;
		op = 12'b000010_000010;
		
		#100;
		alu_zero = 0;
		op = 12'b000010_000011;
		
		#100;
		alu_zero = 0;
		op = 12'b000101_000000;
		
		#100;
		alu_zero = 0;
		op = 12'b001001_000000;
		
		#100;
		alu_zero = 0;
		op = 12'b001010_000000;
		
		#100;
		alu_zero = 0;
		op = 12'b001100_000000;
		
		#100;
		alu_zero = 0;
		op = 12'b001101_000000;
		
		#100;
		alu_zero = 0;
		op = 12'b001110_000000;
		
		#100;
		alu_zero = 0;
		op = 12'b001111_000000;
		
		#100;
		alu_zero = 0;
		op = 12'b010000_000000;
				
		#100;
		alu_zero = 1;
		op = 12'b001111_000000;
		
		#100;
		alu_zero = 1;
		op = 12'b010000_000000;
		
		#100;
		alu_zero = 0;
		op = 12'b010010_000000;


	end
      
endmodule

