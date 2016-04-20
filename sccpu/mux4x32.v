`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:11:51 03/22/2016 
// Design Name: 
// Module Name:    mux4x32 
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
module mux4x32 (
  input[31:0]a0, a1, a2, a3,
  input[1:0] s,
  output[31:0]result
  );
  assign result =
    (s == 2'b00) ? a0 :
    (s == 2'b01) ? a1 :
    (s == 2'b10) ? a2 :
    (s == 2'b11) ? a3 :
    32'hxxxxxxxx;
endmodule