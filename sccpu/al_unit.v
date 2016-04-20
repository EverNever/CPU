`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:13 03/21/2016 
// Design Name: 
// Module Name:    al_unit 
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
module al_unit (
  input [31:0]alu_ra, alu_rb, 
  input [3:0]cu_aluc, 
  output [31:0]alu_result
  );
  wire [31:0]temp_shift, temp_normal;
  
  assign temp_normal = 
    (cu_aluc[2:0] == 3'b000) ? (alu_ra + alu_rb) :
    (cu_aluc[2:0] == 3'b001) ? (alu_ra - alu_rb) : 
    (cu_aluc[2:0] == 3'b010) ? (alu_ra & alu_rb) : 
    (cu_aluc[2:0] == 3'b011) ? (alu_ra | alu_rb) :
    (cu_aluc[2:0] == 3'b100) ? (alu_ra ^ alu_rb) : 
    32'h0;
  
  shift shifter(alu_rb, alu_ra, cu_aluc[2], cu_aluc[1], temp_shift);
  
  assign alu_result = (cu_aluc[3] == 0) ? temp_normal : temp_shift;
  
endmodule
