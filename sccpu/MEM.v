`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:32:46 04/22/2016 
// Design Name: 
// Module Name:    MEM 
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
module MEM(
  input clock, mwem,
  input [31:0]result, qb,
  
  output [31:0]ram_data
    );
	 
  IP_RAM DataMem(qb, result, clock, mwmem, ram_data);

endmodule
