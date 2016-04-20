`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:45 03/20/2016 
// Design Name: 
// Module Name:    regfile 
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
module regfile(
	input [4:0]rna, rnb, wn, 
	input [31:0]data, 
	input we, clock, reset, 
	output [31:0]qa, qb
    );
	 reg [31:0]register[1:31];
	 assign qa = (rna == 0) ? 0 : register[rna];
	 assign qb = (rnb == 0) ? 0 : register[rnb];
	 integer i;
	 always @(posedge clock or negedge reset) begin
		if(reset == 0) 
			for(i = 1;i < 32; i = i + 1)
				register[i] <= 0;
		else if((wn != 0) && we)
			register[wn] <= data;
	 end
	 
	 initial begin
		for(i = 1; i < 32; i = i + 1)
			register[i] = 32'b0;
	 end

endmodule
