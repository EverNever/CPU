`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:37:03 03/24/2016
// Design Name:   sccpu
// Module Name:   C:/Users/SinLa/Desktop/Start/Project/ISE/sccpu/sccpu_test.v
// Project Name:  sccpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sccpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sccpu_test;

	// Inputs
	reg clock;
	reg reset;

	// Outputs
	wire cu_m2reg;
	wire cu_wmem;
	wire cu_shift;
	wire cu_aluimm;
	wire cu_wreg;
	wire cu_sext;
	wire cu_sst;
	wire [4:0] rf_wn;
	wire [31:0] rf_qa;
	wire [31:0] rf_qb;
	wire [3:0] cu_aluc;
	wire [31:0] address;
	wire [31:0] data;

	// Instantiate the Unit Under Test (UUT)
	sccpu uut (
		.cu_m2reg(cu_m2reg), 
		.cu_wmem(cu_wmem), 
		.cu_shift(cu_shift), 
		.cu_aluimm(cu_aluimm), 
		.cu_wreg(cu_wreg), 
		.cu_sext(cu_sext), 
		.cu_sst(cu_sst), 
		.rf_wn(rf_wn), 
		.rf_qa(rf_qa), 
		.rf_qb(rf_qb), 
		.cu_aluc(cu_aluc), 
		.clock(clock), 
		.reset(reset), 
		.address(address), 
		.data(data)
	);
	always #100 clock = ~clock;
	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

