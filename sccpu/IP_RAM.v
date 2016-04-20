`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:49:17 03/22/2016 
// Design Name: 
// Module Name:    IP_RAM 
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
module IP_RAM (
  input [31:0]datain, addr,
  input clock, we,
  output [31:0]dataout
  );
  reg [31:0]ram[0:31];
  assign dataout = ram[addr[6:2]];
  always @ (posedge clock) begin
    if(we) ram[addr[6:2]] = datain;
  end
  integer i;
  initial begin
    for(i = 0; i < 32; i = i + 1)
      ram[i] = 32'h0;
    ram[0] = 32'hbf800000;
    ram[14] = 32'h000000a3;
    ram[15] = 32'h00000027;
    ram[16] = 32'h00000079;
    ram[17] = 32'h00000115;
  end
endmodule
