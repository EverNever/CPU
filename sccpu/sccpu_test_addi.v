`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:14:07 04/24/2016
// Design Name:   sccpu
// Module Name:   H:/Git/CPU/sccpu/sccpu_test_addi.v
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

module sccpu_test_addi;

	// Inputs
	reg clock;
	reg reset;

	// Outputs
	wire [31:0] address;
	wire [31:0] wdata;
	wire [31:0] finst;
	wire [31:0] mresult, mram_data, mqb;
	wire mwreg, mm2reg, mwmem;

	// Instantiate the Unit Under Test (UUT)
	sccpu uut (
		.clock(clock), 
		.reset(reset), 
		.address(address), 
		.wdata(wdata),
		.finst(finst),
		.mresult(mresult),
		.mram_data(mram_data),
		.mwreg(mwreg),
		.mm2reg(mm2reg),
		.mwmem(mwmem),
		.mqb(mqb)
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

