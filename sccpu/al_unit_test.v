`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:04:51 03/24/2016
// Design Name:   al_unit
// Module Name:   C:/Users/SinLa/Desktop/Start/Project/ISE/sccpu/al_unit_test.v
// Project Name:  sccpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: al_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
//pass
module al_unit_test;

	// Inputs
	reg [31:0] alu_ra;
	reg [31:0] alu_rb;
	reg [3:0] cu_aluc;

	// Outputs
	wire alu_zero;
	wire [31:0] alu_result;

	// Instantiate the Unit Under Test (UUT)
	al_unit uut (
		.alu_ra(alu_ra), 
		.alu_rb(alu_rb), 
		.cu_aluc(cu_aluc), 
		.alu_zero(alu_zero), 
		.alu_result(alu_result)
	);

	initial begin
		// Initialize Inputs
		alu_ra = 32'h0000000F;
		alu_rb = 32'h8000000C;
		cu_aluc = 0;

		// Wait 100 ns for global reset to finish
		
		#100;
		cu_aluc = 4'b0000;
		
		#100;
		cu_aluc = 4'b0001;
				
		#100;
		cu_aluc = 4'b0010;
				
		#100;
		cu_aluc = 4'b0011;
				
		#100;
		cu_aluc = 4'b0100;
		
		#100;
		cu_aluc = 4'b1110;
				
		#100;
		cu_aluc = 4'b1100;
				
		#100;
		cu_aluc = 4'b1000;
		
		

	end
      
endmodule

