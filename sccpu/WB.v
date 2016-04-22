`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:40:11 04/22/2016 
// Design Name: 
// Module Name:    WB 
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
module WB(
  input [31:0]alu_result, ram_data,
  input cu_m2reg,
  
  output [31:0]data
    );

  mux2x32 result(alu_result, ram_data, cu_m2reg, data);

endmodule
