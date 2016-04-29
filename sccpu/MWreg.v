`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:21:07 04/22/2016 
// Design Name: 
// Module Name:    MWreg 
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
module MWreg(clock, reset,
  mwreg, mm2reg, mwmem,
  mrd,
  mr, mdata,
  
  wwreg, wm2reg,
  wrd,
  wr, wdata
    );
  
  input clock, reset;
  input mwreg, mm2reg, mwmem;
  input [4:0]mrd;
  input [31:0]mr, mdata;
  
  output wwreg, wm2reg;
  output [4:0]wrd;
  output [31:0]wr, wdata;
  
  reg wwreg, wm2reg;
  reg [4:0]wrd;
  reg [31:0]wr, wdata;
  
  always @(negedge reset or posedge clock)
    if (reset == 0)
	   begin
		  wwreg <= 0;
		  wm2reg <= 0;
		  wrd <= 0;
		  wr <= 0;
		  wdata <= 0;
		end
	 else
	   begin
		  wwreg <= mwreg;
		  wm2reg <= mm2reg;
		  wrd <= mrd;
		  wr <= mr;
		  wdata <= mdata;
		end
endmodule
