////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sccpu_synthesis.v
// /___/   /\     Timestamp: Wed Mar 23 19:06:54 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim sccpu.ngc sccpu_synthesis.v 
// Device	: xc6slx45-3-csg484
// Input file	: sccpu.ngc
// Output file	: C:\Users\SinLa\Desktop\Start\Project\ISE\sccpu\netgen\synthesis\sccpu_synthesis.v
// # of Modules	: 1
// Design Name	: sccpu
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module sccpu (
  clock, reset, address, data
);
  input clock;
  input reset;
  output [31 : 0] address;
  output [31 : 0] data;
  wire clock_BUFGP_0;
  wire \alu/shifter/sa<3>_mmx_out3 ;
  wire \pcplus4/Madd_result_cy<3>_rt_158 ;
  wire \pcplus4/Madd_result_cy<4>_rt_159 ;
  wire \pcplus4/Madd_result_cy<5>_rt_160 ;
  wire \pcplus4/Madd_result_cy<6>_rt_161 ;
  wire \pcplus4/Madd_result_cy<7>_rt_162 ;
  wire \pcplus4/Madd_result_cy<8>_rt_163 ;
  wire \pcplus4/Madd_result_cy<9>_rt_164 ;
  wire \pcplus4/Madd_result_cy<10>_rt_165 ;
  wire \pcplus4/Madd_result_cy<11>_rt_166 ;
  wire \pcplus4/Madd_result_cy<12>_rt_167 ;
  wire \pcplus4/Madd_result_cy<13>_rt_168 ;
  wire \pcplus4/Madd_result_cy<14>_rt_169 ;
  wire \pcplus4/Madd_result_cy<15>_rt_170 ;
  wire \pcplus4/Madd_result_cy<16>_rt_171 ;
  wire \pcplus4/Madd_result_cy<17>_rt_172 ;
  wire \pcplus4/Madd_result_cy<18>_rt_173 ;
  wire \pcplus4/Madd_result_cy<19>_rt_174 ;
  wire \pcplus4/Madd_result_cy<20>_rt_175 ;
  wire \pcplus4/Madd_result_cy<21>_rt_176 ;
  wire \pcplus4/Madd_result_cy<22>_rt_177 ;
  wire \pcplus4/Madd_result_cy<23>_rt_178 ;
  wire \pcplus4/Madd_result_cy<24>_rt_179 ;
  wire \pcplus4/Madd_result_cy<25>_rt_180 ;
  wire \pcplus4/Madd_result_cy<26>_rt_181 ;
  wire \pcplus4/Madd_result_cy<27>_rt_182 ;
  wire \pcplus4/Madd_result_cy<28>_rt_183 ;
  wire \pcplus4/Madd_result_cy<29>_rt_184 ;
  wire \pcplus4/Madd_result_cy<30>_rt_185 ;
  wire \pcplus4/Madd_result_xor<31>_rt_186 ;
  wire [31 : 2] \ip/q ;
  wire [31 : 2] addplus4;
  wire [17 : 17] alu_result;
  wire [2 : 2] \pcplus4/Madd_result_lut ;
  wire [30 : 2] \pcplus4/Madd_result_cy ;
  VCC   XST_VCC (
    .P(\alu/shifter/sa<3>_mmx_out3 )
  );
  GND   XST_GND (
    .G(alu_result[17])
  );
  MUXCY   \pcplus4/Madd_result_cy<2>  (
    .CI(alu_result[17]),
    .DI(\alu/shifter/sa<3>_mmx_out3 ),
    .S(\pcplus4/Madd_result_lut [2]),
    .O(\pcplus4/Madd_result_cy [2])
  );
  XORCY   \pcplus4/Madd_result_xor<2>  (
    .CI(alu_result[17]),
    .LI(\pcplus4/Madd_result_lut [2]),
    .O(addplus4[2])
  );
  MUXCY   \pcplus4/Madd_result_cy<3>  (
    .CI(\pcplus4/Madd_result_cy [2]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<3>_rt_158 ),
    .O(\pcplus4/Madd_result_cy [3])
  );
  XORCY   \pcplus4/Madd_result_xor<3>  (
    .CI(\pcplus4/Madd_result_cy [2]),
    .LI(\pcplus4/Madd_result_cy<3>_rt_158 ),
    .O(addplus4[3])
  );
  MUXCY   \pcplus4/Madd_result_cy<4>  (
    .CI(\pcplus4/Madd_result_cy [3]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<4>_rt_159 ),
    .O(\pcplus4/Madd_result_cy [4])
  );
  XORCY   \pcplus4/Madd_result_xor<4>  (
    .CI(\pcplus4/Madd_result_cy [3]),
    .LI(\pcplus4/Madd_result_cy<4>_rt_159 ),
    .O(addplus4[4])
  );
  MUXCY   \pcplus4/Madd_result_cy<5>  (
    .CI(\pcplus4/Madd_result_cy [4]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<5>_rt_160 ),
    .O(\pcplus4/Madd_result_cy [5])
  );
  XORCY   \pcplus4/Madd_result_xor<5>  (
    .CI(\pcplus4/Madd_result_cy [4]),
    .LI(\pcplus4/Madd_result_cy<5>_rt_160 ),
    .O(addplus4[5])
  );
  MUXCY   \pcplus4/Madd_result_cy<6>  (
    .CI(\pcplus4/Madd_result_cy [5]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<6>_rt_161 ),
    .O(\pcplus4/Madd_result_cy [6])
  );
  XORCY   \pcplus4/Madd_result_xor<6>  (
    .CI(\pcplus4/Madd_result_cy [5]),
    .LI(\pcplus4/Madd_result_cy<6>_rt_161 ),
    .O(addplus4[6])
  );
  MUXCY   \pcplus4/Madd_result_cy<7>  (
    .CI(\pcplus4/Madd_result_cy [6]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<7>_rt_162 ),
    .O(\pcplus4/Madd_result_cy [7])
  );
  XORCY   \pcplus4/Madd_result_xor<7>  (
    .CI(\pcplus4/Madd_result_cy [6]),
    .LI(\pcplus4/Madd_result_cy<7>_rt_162 ),
    .O(addplus4[7])
  );
  MUXCY   \pcplus4/Madd_result_cy<8>  (
    .CI(\pcplus4/Madd_result_cy [7]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<8>_rt_163 ),
    .O(\pcplus4/Madd_result_cy [8])
  );
  XORCY   \pcplus4/Madd_result_xor<8>  (
    .CI(\pcplus4/Madd_result_cy [7]),
    .LI(\pcplus4/Madd_result_cy<8>_rt_163 ),
    .O(addplus4[8])
  );
  MUXCY   \pcplus4/Madd_result_cy<9>  (
    .CI(\pcplus4/Madd_result_cy [8]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<9>_rt_164 ),
    .O(\pcplus4/Madd_result_cy [9])
  );
  XORCY   \pcplus4/Madd_result_xor<9>  (
    .CI(\pcplus4/Madd_result_cy [8]),
    .LI(\pcplus4/Madd_result_cy<9>_rt_164 ),
    .O(addplus4[9])
  );
  MUXCY   \pcplus4/Madd_result_cy<10>  (
    .CI(\pcplus4/Madd_result_cy [9]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<10>_rt_165 ),
    .O(\pcplus4/Madd_result_cy [10])
  );
  XORCY   \pcplus4/Madd_result_xor<10>  (
    .CI(\pcplus4/Madd_result_cy [9]),
    .LI(\pcplus4/Madd_result_cy<10>_rt_165 ),
    .O(addplus4[10])
  );
  MUXCY   \pcplus4/Madd_result_cy<11>  (
    .CI(\pcplus4/Madd_result_cy [10]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<11>_rt_166 ),
    .O(\pcplus4/Madd_result_cy [11])
  );
  XORCY   \pcplus4/Madd_result_xor<11>  (
    .CI(\pcplus4/Madd_result_cy [10]),
    .LI(\pcplus4/Madd_result_cy<11>_rt_166 ),
    .O(addplus4[11])
  );
  MUXCY   \pcplus4/Madd_result_cy<12>  (
    .CI(\pcplus4/Madd_result_cy [11]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<12>_rt_167 ),
    .O(\pcplus4/Madd_result_cy [12])
  );
  XORCY   \pcplus4/Madd_result_xor<12>  (
    .CI(\pcplus4/Madd_result_cy [11]),
    .LI(\pcplus4/Madd_result_cy<12>_rt_167 ),
    .O(addplus4[12])
  );
  MUXCY   \pcplus4/Madd_result_cy<13>  (
    .CI(\pcplus4/Madd_result_cy [12]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<13>_rt_168 ),
    .O(\pcplus4/Madd_result_cy [13])
  );
  XORCY   \pcplus4/Madd_result_xor<13>  (
    .CI(\pcplus4/Madd_result_cy [12]),
    .LI(\pcplus4/Madd_result_cy<13>_rt_168 ),
    .O(addplus4[13])
  );
  MUXCY   \pcplus4/Madd_result_cy<14>  (
    .CI(\pcplus4/Madd_result_cy [13]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<14>_rt_169 ),
    .O(\pcplus4/Madd_result_cy [14])
  );
  XORCY   \pcplus4/Madd_result_xor<14>  (
    .CI(\pcplus4/Madd_result_cy [13]),
    .LI(\pcplus4/Madd_result_cy<14>_rt_169 ),
    .O(addplus4[14])
  );
  MUXCY   \pcplus4/Madd_result_cy<15>  (
    .CI(\pcplus4/Madd_result_cy [14]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<15>_rt_170 ),
    .O(\pcplus4/Madd_result_cy [15])
  );
  XORCY   \pcplus4/Madd_result_xor<15>  (
    .CI(\pcplus4/Madd_result_cy [14]),
    .LI(\pcplus4/Madd_result_cy<15>_rt_170 ),
    .O(addplus4[15])
  );
  MUXCY   \pcplus4/Madd_result_cy<16>  (
    .CI(\pcplus4/Madd_result_cy [15]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<16>_rt_171 ),
    .O(\pcplus4/Madd_result_cy [16])
  );
  XORCY   \pcplus4/Madd_result_xor<16>  (
    .CI(\pcplus4/Madd_result_cy [15]),
    .LI(\pcplus4/Madd_result_cy<16>_rt_171 ),
    .O(addplus4[16])
  );
  MUXCY   \pcplus4/Madd_result_cy<17>  (
    .CI(\pcplus4/Madd_result_cy [16]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<17>_rt_172 ),
    .O(\pcplus4/Madd_result_cy [17])
  );
  XORCY   \pcplus4/Madd_result_xor<17>  (
    .CI(\pcplus4/Madd_result_cy [16]),
    .LI(\pcplus4/Madd_result_cy<17>_rt_172 ),
    .O(addplus4[17])
  );
  MUXCY   \pcplus4/Madd_result_cy<18>  (
    .CI(\pcplus4/Madd_result_cy [17]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<18>_rt_173 ),
    .O(\pcplus4/Madd_result_cy [18])
  );
  XORCY   \pcplus4/Madd_result_xor<18>  (
    .CI(\pcplus4/Madd_result_cy [17]),
    .LI(\pcplus4/Madd_result_cy<18>_rt_173 ),
    .O(addplus4[18])
  );
  MUXCY   \pcplus4/Madd_result_cy<19>  (
    .CI(\pcplus4/Madd_result_cy [18]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<19>_rt_174 ),
    .O(\pcplus4/Madd_result_cy [19])
  );
  XORCY   \pcplus4/Madd_result_xor<19>  (
    .CI(\pcplus4/Madd_result_cy [18]),
    .LI(\pcplus4/Madd_result_cy<19>_rt_174 ),
    .O(addplus4[19])
  );
  MUXCY   \pcplus4/Madd_result_cy<20>  (
    .CI(\pcplus4/Madd_result_cy [19]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<20>_rt_175 ),
    .O(\pcplus4/Madd_result_cy [20])
  );
  XORCY   \pcplus4/Madd_result_xor<20>  (
    .CI(\pcplus4/Madd_result_cy [19]),
    .LI(\pcplus4/Madd_result_cy<20>_rt_175 ),
    .O(addplus4[20])
  );
  MUXCY   \pcplus4/Madd_result_cy<21>  (
    .CI(\pcplus4/Madd_result_cy [20]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<21>_rt_176 ),
    .O(\pcplus4/Madd_result_cy [21])
  );
  XORCY   \pcplus4/Madd_result_xor<21>  (
    .CI(\pcplus4/Madd_result_cy [20]),
    .LI(\pcplus4/Madd_result_cy<21>_rt_176 ),
    .O(addplus4[21])
  );
  MUXCY   \pcplus4/Madd_result_cy<22>  (
    .CI(\pcplus4/Madd_result_cy [21]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<22>_rt_177 ),
    .O(\pcplus4/Madd_result_cy [22])
  );
  XORCY   \pcplus4/Madd_result_xor<22>  (
    .CI(\pcplus4/Madd_result_cy [21]),
    .LI(\pcplus4/Madd_result_cy<22>_rt_177 ),
    .O(addplus4[22])
  );
  MUXCY   \pcplus4/Madd_result_cy<23>  (
    .CI(\pcplus4/Madd_result_cy [22]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<23>_rt_178 ),
    .O(\pcplus4/Madd_result_cy [23])
  );
  XORCY   \pcplus4/Madd_result_xor<23>  (
    .CI(\pcplus4/Madd_result_cy [22]),
    .LI(\pcplus4/Madd_result_cy<23>_rt_178 ),
    .O(addplus4[23])
  );
  MUXCY   \pcplus4/Madd_result_cy<24>  (
    .CI(\pcplus4/Madd_result_cy [23]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<24>_rt_179 ),
    .O(\pcplus4/Madd_result_cy [24])
  );
  XORCY   \pcplus4/Madd_result_xor<24>  (
    .CI(\pcplus4/Madd_result_cy [23]),
    .LI(\pcplus4/Madd_result_cy<24>_rt_179 ),
    .O(addplus4[24])
  );
  MUXCY   \pcplus4/Madd_result_cy<25>  (
    .CI(\pcplus4/Madd_result_cy [24]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<25>_rt_180 ),
    .O(\pcplus4/Madd_result_cy [25])
  );
  XORCY   \pcplus4/Madd_result_xor<25>  (
    .CI(\pcplus4/Madd_result_cy [24]),
    .LI(\pcplus4/Madd_result_cy<25>_rt_180 ),
    .O(addplus4[25])
  );
  MUXCY   \pcplus4/Madd_result_cy<26>  (
    .CI(\pcplus4/Madd_result_cy [25]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<26>_rt_181 ),
    .O(\pcplus4/Madd_result_cy [26])
  );
  XORCY   \pcplus4/Madd_result_xor<26>  (
    .CI(\pcplus4/Madd_result_cy [25]),
    .LI(\pcplus4/Madd_result_cy<26>_rt_181 ),
    .O(addplus4[26])
  );
  MUXCY   \pcplus4/Madd_result_cy<27>  (
    .CI(\pcplus4/Madd_result_cy [26]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<27>_rt_182 ),
    .O(\pcplus4/Madd_result_cy [27])
  );
  XORCY   \pcplus4/Madd_result_xor<27>  (
    .CI(\pcplus4/Madd_result_cy [26]),
    .LI(\pcplus4/Madd_result_cy<27>_rt_182 ),
    .O(addplus4[27])
  );
  MUXCY   \pcplus4/Madd_result_cy<28>  (
    .CI(\pcplus4/Madd_result_cy [27]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<28>_rt_183 ),
    .O(\pcplus4/Madd_result_cy [28])
  );
  XORCY   \pcplus4/Madd_result_xor<28>  (
    .CI(\pcplus4/Madd_result_cy [27]),
    .LI(\pcplus4/Madd_result_cy<28>_rt_183 ),
    .O(addplus4[28])
  );
  MUXCY   \pcplus4/Madd_result_cy<29>  (
    .CI(\pcplus4/Madd_result_cy [28]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<29>_rt_184 ),
    .O(\pcplus4/Madd_result_cy [29])
  );
  XORCY   \pcplus4/Madd_result_xor<29>  (
    .CI(\pcplus4/Madd_result_cy [28]),
    .LI(\pcplus4/Madd_result_cy<29>_rt_184 ),
    .O(addplus4[29])
  );
  MUXCY   \pcplus4/Madd_result_cy<30>  (
    .CI(\pcplus4/Madd_result_cy [29]),
    .DI(alu_result[17]),
    .S(\pcplus4/Madd_result_cy<30>_rt_185 ),
    .O(\pcplus4/Madd_result_cy [30])
  );
  XORCY   \pcplus4/Madd_result_xor<30>  (
    .CI(\pcplus4/Madd_result_cy [29]),
    .LI(\pcplus4/Madd_result_cy<30>_rt_185 ),
    .O(addplus4[30])
  );
  XORCY   \pcplus4/Madd_result_xor<31>  (
    .CI(\pcplus4/Madd_result_cy [30]),
    .LI(\pcplus4/Madd_result_xor<31>_rt_186 ),
    .O(addplus4[31])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_31  (
    .C(clock_BUFGP_0),
    .D(addplus4[31]),
    .Q(\ip/q [31])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_30  (
    .C(clock_BUFGP_0),
    .D(addplus4[30]),
    .Q(\ip/q [30])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_29  (
    .C(clock_BUFGP_0),
    .D(addplus4[29]),
    .Q(\ip/q [29])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_28  (
    .C(clock_BUFGP_0),
    .D(addplus4[28]),
    .Q(\ip/q [28])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_27  (
    .C(clock_BUFGP_0),
    .D(addplus4[27]),
    .Q(\ip/q [27])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_26  (
    .C(clock_BUFGP_0),
    .D(addplus4[26]),
    .Q(\ip/q [26])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_25  (
    .C(clock_BUFGP_0),
    .D(addplus4[25]),
    .Q(\ip/q [25])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_24  (
    .C(clock_BUFGP_0),
    .D(addplus4[24]),
    .Q(\ip/q [24])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_23  (
    .C(clock_BUFGP_0),
    .D(addplus4[23]),
    .Q(\ip/q [23])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_22  (
    .C(clock_BUFGP_0),
    .D(addplus4[22]),
    .Q(\ip/q [22])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_21  (
    .C(clock_BUFGP_0),
    .D(addplus4[21]),
    .Q(\ip/q [21])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_20  (
    .C(clock_BUFGP_0),
    .D(addplus4[20]),
    .Q(\ip/q [20])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_19  (
    .C(clock_BUFGP_0),
    .D(addplus4[19]),
    .Q(\ip/q [19])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_18  (
    .C(clock_BUFGP_0),
    .D(addplus4[18]),
    .Q(\ip/q [18])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_17  (
    .C(clock_BUFGP_0),
    .D(addplus4[17]),
    .Q(\ip/q [17])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_16  (
    .C(clock_BUFGP_0),
    .D(addplus4[16]),
    .Q(\ip/q [16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_15  (
    .C(clock_BUFGP_0),
    .D(addplus4[15]),
    .Q(\ip/q [15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_14  (
    .C(clock_BUFGP_0),
    .D(addplus4[14]),
    .Q(\ip/q [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_13  (
    .C(clock_BUFGP_0),
    .D(addplus4[13]),
    .Q(\ip/q [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_12  (
    .C(clock_BUFGP_0),
    .D(addplus4[12]),
    .Q(\ip/q [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_11  (
    .C(clock_BUFGP_0),
    .D(addplus4[11]),
    .Q(\ip/q [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_10  (
    .C(clock_BUFGP_0),
    .D(addplus4[10]),
    .Q(\ip/q [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_9  (
    .C(clock_BUFGP_0),
    .D(addplus4[9]),
    .Q(\ip/q [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_8  (
    .C(clock_BUFGP_0),
    .D(addplus4[8]),
    .Q(\ip/q [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_7  (
    .C(clock_BUFGP_0),
    .D(addplus4[7]),
    .Q(\ip/q [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_6  (
    .C(clock_BUFGP_0),
    .D(addplus4[6]),
    .Q(\ip/q [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_5  (
    .C(clock_BUFGP_0),
    .D(addplus4[5]),
    .Q(\ip/q [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_4  (
    .C(clock_BUFGP_0),
    .D(addplus4[4]),
    .Q(\ip/q [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_3  (
    .C(clock_BUFGP_0),
    .D(addplus4[3]),
    .Q(\ip/q [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \ip/q_2  (
    .C(clock_BUFGP_0),
    .D(addplus4[2]),
    .Q(\ip/q [2])
  );
  OBUF   address_31_OBUF (
    .I(\ip/q [31]),
    .O(address[31])
  );
  OBUF   address_30_OBUF (
    .I(\ip/q [30]),
    .O(address[30])
  );
  OBUF   address_29_OBUF (
    .I(\ip/q [29]),
    .O(address[29])
  );
  OBUF   address_28_OBUF (
    .I(\ip/q [28]),
    .O(address[28])
  );
  OBUF   address_27_OBUF (
    .I(\ip/q [27]),
    .O(address[27])
  );
  OBUF   address_26_OBUF (
    .I(\ip/q [26]),
    .O(address[26])
  );
  OBUF   address_25_OBUF (
    .I(\ip/q [25]),
    .O(address[25])
  );
  OBUF   address_24_OBUF (
    .I(\ip/q [24]),
    .O(address[24])
  );
  OBUF   address_23_OBUF (
    .I(\ip/q [23]),
    .O(address[23])
  );
  OBUF   address_22_OBUF (
    .I(\ip/q [22]),
    .O(address[22])
  );
  OBUF   address_21_OBUF (
    .I(\ip/q [21]),
    .O(address[21])
  );
  OBUF   address_20_OBUF (
    .I(\ip/q [20]),
    .O(address[20])
  );
  OBUF   address_19_OBUF (
    .I(\ip/q [19]),
    .O(address[19])
  );
  OBUF   address_18_OBUF (
    .I(\ip/q [18]),
    .O(address[18])
  );
  OBUF   address_17_OBUF (
    .I(\ip/q [17]),
    .O(address[17])
  );
  OBUF   address_16_OBUF (
    .I(\ip/q [16]),
    .O(address[16])
  );
  OBUF   address_15_OBUF (
    .I(\ip/q [15]),
    .O(address[15])
  );
  OBUF   address_14_OBUF (
    .I(\ip/q [14]),
    .O(address[14])
  );
  OBUF   address_13_OBUF (
    .I(\ip/q [13]),
    .O(address[13])
  );
  OBUF   address_12_OBUF (
    .I(\ip/q [12]),
    .O(address[12])
  );
  OBUF   address_11_OBUF (
    .I(\ip/q [11]),
    .O(address[11])
  );
  OBUF   address_10_OBUF (
    .I(\ip/q [10]),
    .O(address[10])
  );
  OBUF   address_9_OBUF (
    .I(\ip/q [9]),
    .O(address[9])
  );
  OBUF   address_8_OBUF (
    .I(\ip/q [8]),
    .O(address[8])
  );
  OBUF   address_7_OBUF (
    .I(\ip/q [7]),
    .O(address[7])
  );
  OBUF   address_6_OBUF (
    .I(\ip/q [6]),
    .O(address[6])
  );
  OBUF   address_5_OBUF (
    .I(\ip/q [5]),
    .O(address[5])
  );
  OBUF   address_4_OBUF (
    .I(\ip/q [4]),
    .O(address[4])
  );
  OBUF   address_3_OBUF (
    .I(\ip/q [3]),
    .O(address[3])
  );
  OBUF   address_2_OBUF (
    .I(\ip/q [2]),
    .O(address[2])
  );
  OBUF   address_1_OBUF (
    .I(alu_result[17]),
    .O(address[1])
  );
  OBUF   address_0_OBUF (
    .I(alu_result[17]),
    .O(address[0])
  );
  OBUF   data_31_OBUF (
    .I(alu_result[17]),
    .O(data[31])
  );
  OBUF   data_30_OBUF (
    .I(alu_result[17]),
    .O(data[30])
  );
  OBUF   data_29_OBUF (
    .I(alu_result[17]),
    .O(data[29])
  );
  OBUF   data_28_OBUF (
    .I(alu_result[17]),
    .O(data[28])
  );
  OBUF   data_27_OBUF (
    .I(alu_result[17]),
    .O(data[27])
  );
  OBUF   data_26_OBUF (
    .I(alu_result[17]),
    .O(data[26])
  );
  OBUF   data_25_OBUF (
    .I(alu_result[17]),
    .O(data[25])
  );
  OBUF   data_24_OBUF (
    .I(alu_result[17]),
    .O(data[24])
  );
  OBUF   data_23_OBUF (
    .I(alu_result[17]),
    .O(data[23])
  );
  OBUF   data_22_OBUF (
    .I(alu_result[17]),
    .O(data[22])
  );
  OBUF   data_21_OBUF (
    .I(alu_result[17]),
    .O(data[21])
  );
  OBUF   data_20_OBUF (
    .I(alu_result[17]),
    .O(data[20])
  );
  OBUF   data_19_OBUF (
    .I(alu_result[17]),
    .O(data[19])
  );
  OBUF   data_18_OBUF (
    .I(alu_result[17]),
    .O(data[18])
  );
  OBUF   data_17_OBUF (
    .I(alu_result[17]),
    .O(data[17])
  );
  OBUF   data_16_OBUF (
    .I(alu_result[17]),
    .O(data[16])
  );
  OBUF   data_15_OBUF (
    .I(alu_result[17]),
    .O(data[15])
  );
  OBUF   data_14_OBUF (
    .I(alu_result[17]),
    .O(data[14])
  );
  OBUF   data_13_OBUF (
    .I(alu_result[17]),
    .O(data[13])
  );
  OBUF   data_12_OBUF (
    .I(alu_result[17]),
    .O(data[12])
  );
  OBUF   data_11_OBUF (
    .I(alu_result[17]),
    .O(data[11])
  );
  OBUF   data_10_OBUF (
    .I(alu_result[17]),
    .O(data[10])
  );
  OBUF   data_9_OBUF (
    .I(alu_result[17]),
    .O(data[9])
  );
  OBUF   data_8_OBUF (
    .I(alu_result[17]),
    .O(data[8])
  );
  OBUF   data_7_OBUF (
    .I(alu_result[17]),
    .O(data[7])
  );
  OBUF   data_6_OBUF (
    .I(alu_result[17]),
    .O(data[6])
  );
  OBUF   data_5_OBUF (
    .I(alu_result[17]),
    .O(data[5])
  );
  OBUF   data_4_OBUF (
    .I(alu_result[17]),
    .O(data[4])
  );
  OBUF   data_3_OBUF (
    .I(alu_result[17]),
    .O(data[3])
  );
  OBUF   data_2_OBUF (
    .I(alu_result[17]),
    .O(data[2])
  );
  OBUF   data_1_OBUF (
    .I(alu_result[17]),
    .O(data[1])
  );
  OBUF   data_0_OBUF (
    .I(alu_result[17]),
    .O(data[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<3>_rt  (
    .I0(\ip/q [3]),
    .O(\pcplus4/Madd_result_cy<3>_rt_158 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<4>_rt  (
    .I0(\ip/q [4]),
    .O(\pcplus4/Madd_result_cy<4>_rt_159 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<5>_rt  (
    .I0(\ip/q [5]),
    .O(\pcplus4/Madd_result_cy<5>_rt_160 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<6>_rt  (
    .I0(\ip/q [6]),
    .O(\pcplus4/Madd_result_cy<6>_rt_161 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<7>_rt  (
    .I0(\ip/q [7]),
    .O(\pcplus4/Madd_result_cy<7>_rt_162 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<8>_rt  (
    .I0(\ip/q [8]),
    .O(\pcplus4/Madd_result_cy<8>_rt_163 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<9>_rt  (
    .I0(\ip/q [9]),
    .O(\pcplus4/Madd_result_cy<9>_rt_164 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<10>_rt  (
    .I0(\ip/q [10]),
    .O(\pcplus4/Madd_result_cy<10>_rt_165 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<11>_rt  (
    .I0(\ip/q [11]),
    .O(\pcplus4/Madd_result_cy<11>_rt_166 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<12>_rt  (
    .I0(\ip/q [12]),
    .O(\pcplus4/Madd_result_cy<12>_rt_167 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<13>_rt  (
    .I0(\ip/q [13]),
    .O(\pcplus4/Madd_result_cy<13>_rt_168 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<14>_rt  (
    .I0(\ip/q [14]),
    .O(\pcplus4/Madd_result_cy<14>_rt_169 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<15>_rt  (
    .I0(\ip/q [15]),
    .O(\pcplus4/Madd_result_cy<15>_rt_170 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<16>_rt  (
    .I0(\ip/q [16]),
    .O(\pcplus4/Madd_result_cy<16>_rt_171 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<17>_rt  (
    .I0(\ip/q [17]),
    .O(\pcplus4/Madd_result_cy<17>_rt_172 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<18>_rt  (
    .I0(\ip/q [18]),
    .O(\pcplus4/Madd_result_cy<18>_rt_173 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<19>_rt  (
    .I0(\ip/q [19]),
    .O(\pcplus4/Madd_result_cy<19>_rt_174 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<20>_rt  (
    .I0(\ip/q [20]),
    .O(\pcplus4/Madd_result_cy<20>_rt_175 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<21>_rt  (
    .I0(\ip/q [21]),
    .O(\pcplus4/Madd_result_cy<21>_rt_176 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<22>_rt  (
    .I0(\ip/q [22]),
    .O(\pcplus4/Madd_result_cy<22>_rt_177 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<23>_rt  (
    .I0(\ip/q [23]),
    .O(\pcplus4/Madd_result_cy<23>_rt_178 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<24>_rt  (
    .I0(\ip/q [24]),
    .O(\pcplus4/Madd_result_cy<24>_rt_179 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<25>_rt  (
    .I0(\ip/q [25]),
    .O(\pcplus4/Madd_result_cy<25>_rt_180 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<26>_rt  (
    .I0(\ip/q [26]),
    .O(\pcplus4/Madd_result_cy<26>_rt_181 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<27>_rt  (
    .I0(\ip/q [27]),
    .O(\pcplus4/Madd_result_cy<27>_rt_182 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<28>_rt  (
    .I0(\ip/q [28]),
    .O(\pcplus4/Madd_result_cy<28>_rt_183 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<29>_rt  (
    .I0(\ip/q [29]),
    .O(\pcplus4/Madd_result_cy<29>_rt_184 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_cy<30>_rt  (
    .I0(\ip/q [30]),
    .O(\pcplus4/Madd_result_cy<30>_rt_185 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pcplus4/Madd_result_xor<31>_rt  (
    .I0(\ip/q [31]),
    .O(\pcplus4/Madd_result_xor<31>_rt_186 )
  );
  BUFGP   clock_BUFGP (
    .I(clock),
    .O(clock_BUFGP_0)
  );
  INV   \pcplus4/Madd_result_lut<2>_INV_0  (
    .I(\ip/q [2]),
    .O(\pcplus4/Madd_result_lut [2])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

