`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 11:45:12
// Design Name: 
// Module Name: Decryption
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Decryption( input [15:0] add,output [7:0]de_in ,input [7:0] lfsr, output [7:0] out);

wire [7:0]in;
Read_endata  R1( add, in );

assign de_in=in;
wire [7:0]e;

Xor_gate     x1(in[3:0],lfsr[3:0],e[3:0]);

wire [2:0]fr;

FREDKIN_GATE F1(e[2],e[1],e[0],fr[0],fr[1],fr[2]);

wire [2:0]tf;

TOFOLI_GATE  T1(fr[0],fr[1],fr[2],tf[0],tf[1],tf[2]);

wire [1:0]f;

FEYMAN_GATE  F2(e[4],e[3],f[0],f[1]);

SCL_GATE     S1(f[1],tf[0],tf[1],tf[2],out[3],out[2],out[1],out[0]);




Xor_gate      x2(in[7:4],lfsr[7:4],e[7:4]);

wire [2:0]fr1;
FREDKIN_GATE  F3(e[7],e[6],e[5],fr1[0],fr1[1],fr1[2]);

wire [2:0]tf1;
TOFOLI_GATE   T2(fr1[0],fr1[1],fr1[2],tf1[0],tf1[1],tf1[2]);


SCL_GATE     S2(tf1[0],tf1[1],tf1[2],f[0],out[7],out[6],out[5],out[4]);



endmodule



