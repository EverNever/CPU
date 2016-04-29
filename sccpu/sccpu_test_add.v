`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:31:59 04/26/2016
// Design Name:   sccpu
// Module Name:   H:/Git/CPU/sccpu/sccpu_test_add.v
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

module sccpu_test_add;

	// Inputs
	reg clock;
	reg reset;

	// Outputs
	wire [31:0] address;
	wire [31:0] wdata;
	wire [31:0] eresult;
	wire [31:0] mresult;
	wire [31:0] dqa;
	wire [31:0] dqb;
	wire [31:0] dinst;
	wire [4:0] drd;
	wire dwreg;
	wire dm2reg;
	wire dwmem;
	wire dshift;
	wire daluimm;
	wire [3:0] daluc;

	// Instantiate the Unit Under Test (UUT)
	sccpu uut (
		.clock(clock), 
		.reset(reset), 
		.address(address), 
		.wdata(wdata), 
		.eresult(eresult), 
		.mresult(mresult), 
		.dqa(dqa), 
		.dqb(dqb), 
		.dinst(dinst), 
		.drd(drd), 
		.dwreg(dwreg), 
		.dm2reg(dm2reg), 
		.dwmem(dwmem), 
		.dshift(dshift), 
		.daluimm(daluimm), 
		.daluc(daluc)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 1;
 
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

