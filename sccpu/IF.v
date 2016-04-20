`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:32:20 04/20/2016 
// Design Name: 
// Module Name:    IF 
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
module IF(
  input [31:0]address,
  output [31:0]addplus4,
  output [31:0]inst
    );

	 cla32 pcplus4(address, 32'h00000004, 1'b0, addplus4);
	 
	 IP_ROM InstMem(address, inst);

endmodule
