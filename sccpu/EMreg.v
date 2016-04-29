`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:09:47 04/22/2016 
// Design Name: 
// Module Name:    EMreg 
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
module EMreg(
  clock, reset,
  ewreg, em2reg, ewmem,
  erd,
  er, eqb,
  mwreg, mm2reg, mwmem,
  mrd,
  mr, mqb
    );

  input clock, reset;
  input ewreg, em2reg, ewmem;
  input [4:0]erd;
  input [31:0]er, eqb;
  
  output mwreg, mm2reg, mwmem;
  output [4:0]mrd;
  output [31:0]mr, mqb;
  
  reg mwreg, mm2reg, mwmem;
  reg [4:0]mrd;
  reg [31:0]mr, mqb;
  
  always @(negedge reset or posedge clock)
    if (reset == 0)
	   begin
		  mwreg <= 0;
		  mm2reg <= 0;
		  mwmem <= 0;
		  mrd <= 0;
		  mr <= 0;
		  mqb <= 0;
		end
	 else
	   begin 
		  mwreg <= ewreg;
		  mm2reg <= em2reg;
		  mwmem <= ewmem;
		  mrd <= erd;
		  mr <= er;
		  mqb <= eqb;
		end
endmodule
