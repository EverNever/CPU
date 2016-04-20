`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:17 03/20/2016 
// Design Name: 
// Module Name:    IP_ROM 
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
module IP_ROM(
	input [31:0]address,
	output [31:0]inst
    );
	 wire [31:0]rom[0:63];
	 
	 assign rom[6'h00] = 32'b000101_000000_00000_00011_00001_00001;//addi 3 r1 r1
	 assign rom[6'h01] = 32'b000101_000000_00000_00101_00010_00010;//addi 5 r2 r2
	 assign rom[6'h02] = 32'b000000_000001_00000_00011_00001_00010;//add r3 r1 r2
	 assign rom[6'h03] = 32'b000001_000001_00000_00100_00001_00010;//and r4 r1 r2
	 assign rom[6'h04] = 32'b000001_000100_00000_00101_00010_00011;//or r5 r2 r3
	 assign rom[6'h05] = 32'b000001_000100_00000_00110_00001_00101;//xor r6 r1 r5
	 assign rom[6'h06] = 32'b001001_000000_00000_01001_00001_00001;//andi 1001 r1 r1
	 assign rom[6'h07] = 32'b001010_000000_00000_01100_00010_00010;//ori 1100 r2 r2
	 assign rom[6'h08] = 32'b001100_100000_00000_10010_00010_00010;//xori h8014 r2 r2
	 assign rom[6'h09] = 32'b000101_100000_00000_10011_00001_00010;//addi r1 r2
	 assign rom[6'h0A] = 32'b000010_000010_00100_00101_00000_00010;//srl 4 r5 r2
	 assign rom[6'h0B] = 32'b000010_000011_00100_00110_00000_00010;//sll 4 r6 r2
	 assign rom[6'h0C] = 32'b000010_000001_00100_00100_00000_00010;//sra 4 r4 r2
	 assign rom[6'h0D] = 32'b001111_000000_00000_00010_00001_00011;//beq 2 r1 r3
	 assign rom[6'h0E] = 32'b000101_000000_00000_00001_00001_00001;//addi 1 r1 r1
	 assign rom[6'h0F] = 32'b010000_111111_11111_11101_00001_00011;//bne -3 r1 r3
	 assign rom[6'h10] = 32'b010010_000000_00000_00000_00000_10010;//jump h12
	 assign rom[6'h11] = 32'b000101_000000_00000_00010_00011_00011;//addi 2 r3 r3
	 assign rom[6'h12] = 32'b001110_000000_00000_00000_00011_00001;//store 0 r3 r1
	 assign rom[6'h13] = 32'b001101_000000_00000_00000_00011_00001;//load 0 r3 r1
	 assign rom[6'h14] = 32'h00000000;
	 assign rom[6'h15] = 32'h00000000;
	 assign rom[6'h16] = 32'h00000000;
	 assign rom[6'h17] = 32'h00000000;
	 assign rom[6'h18] = 32'h00000000;
	 assign rom[6'h19] = 32'h00000000;
	 assign rom[6'h1A] = 32'h00000000;
	 assign rom[6'h1B] = 32'h00000000;
	 assign rom[6'h1C] = 32'h00000000;
	 assign rom[6'h1D] = 32'h00000000;
	 assign rom[6'h1E] = 32'h00000000;
	 assign rom[6'h1F] = 32'h00000000;
	 assign rom[6'h20] = 32'h00000000;
	 assign rom[6'h21] = 32'h00000001;
	 assign rom[6'h22] = 32'h00000000;
	 assign rom[6'h23] = 32'h00000000;
	 assign rom[6'h24] = 32'h00000000;
	 assign rom[6'h25] = 32'h00000000;
	 assign rom[6'h26] = 32'h00000000;
	 assign rom[6'h27] = 32'h00000000;
	 assign rom[6'h28] = 32'h00000000;
	 assign rom[6'h29] = 32'h00000000;
	 assign rom[6'h2A] = 32'h00000000;
	 assign rom[6'h2B] = 32'h00000000;
	 assign rom[6'h2C] = 32'h00000000;
	 assign rom[6'h2D] = 32'h00000000;
	 assign rom[6'h2E] = 32'h00000000;
	 assign rom[6'h2F] = 32'h00000000;
	 assign rom[6'h30] = 32'h00000000;
	 assign rom[6'h31] = 32'h00000001;
	 assign rom[6'h32] = 32'h00000000;
	 assign rom[6'h33] = 32'h00000000;
	 assign rom[6'h34] = 32'h00000000;
	 assign rom[6'h35] = 32'h00000000;
	 assign rom[6'h36] = 32'h00000000;
	 assign rom[6'h37] = 32'h00000000;
	 assign rom[6'h38] = 32'h00000000;
	 assign rom[6'h39] = 32'h00000000;
	 assign rom[6'h3A] = 32'h00000000;
	 assign rom[6'h3B] = 32'h00000000;
	 assign rom[6'h3C] = 32'h00000000;
	 assign rom[6'h3D] = 32'h00000000;
	 assign rom[6'h3E] = 32'h00000000;
	 assign rom[6'h3F] = 32'h00000000;
	 //todo
	 
	 assign inst = rom[address[7:2]];


endmodule
