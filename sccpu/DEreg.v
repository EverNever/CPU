`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:55:35 04/22/2016 
// Design Name: 
// Module Name:    DEreg 
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
module DEreg(
  clock, reset,
  dwreg, dm2reg, dwmem, dshift, daluimm,
  drd, daluc,
  dqa, dqb, dimm,
  
  ewreg, em2reg, ewmem, eshift, ealuimm,
  erd, ealuc,
  eqa, eqb, eimm
    );

  input clock, reset;
  input dwreg, dm2reg, dwmem, dshift, daluimm;
  input [4:0]drd;
  input [3:0]daluc;
  input [31:0]dqa, dqb, dimm;
  
  output ewreg, em2reg, ewmem, eshift, ealuimm;
  output [4:0]erd;
  output [3:0]ealuc;
  output [31:0]eqa, eqb, eimm;
  
  reg ewreg, em2reg, ewmem, eshift, ealuimm;
  reg [4:0]erd;
  reg [3:0]ealuc;
  reg [31:0]eqa, eqb, eimm;
  
  always @(negedge reset or posedge clock)
	 if (reset == 0)
		begin
		  ewreg <= 0;
		  em2reg <= 0;
		  ewmem <= 0;
		  eshift <= 0;
		  ealuimm <= 0;
		  erd <= 0;
		  ealuc <= 0;
		  eqa <= 0;
		  eqb <= 0;
		  eimm <= 0;
		end
	 else
		begin
		  ewreg <= dwreg;
		  em2reg <= dm2reg;
		  ewmem <= dwmem;
		  eshift <= dshift;
		  ealuimm <= daluimm;
		  erd <= drd;
		  ealuc <= daluc;
		  eqa <= dqa;
		  eqb <= dqb;
		  eimm <= dimm;
		end
endmodule
