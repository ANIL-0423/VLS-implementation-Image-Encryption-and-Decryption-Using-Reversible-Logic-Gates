`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 11:29:18
// Design Name: 
// Module Name: encryption
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

module encryption( input [15:0]add ,output  [7:0]en_in ,input [7:0]R,output [7:0]e);

wire [7:0]i;

Read_datamem  R1  (add ,i ); // read data memory ---image data 

assign en_in=i;

wire [7:0]lfsr_out=R;
wire [3:0]scl,scl1;
wire [2:0]tf,tf1,fr,fr1;
wire [1:0]f;

SCL_GATE    S1(i[3],i[2],i[1],i[0],scl[0],scl[1],scl[2],scl[3]);
SCL_GATE     S2(i[7],i[6],i[5],i[4],scl1[0],scl1[1],scl1[2],scl1[3]);
TOFOLI_GATE  T1(scl[1],scl[2],scl[3],tf[0],tf[1],tf[2]);
TOFOLI_GATE  T2(scl1[0],scl1[1],scl1[2],tf1[0],tf1[1],tf1[2]);
FREDKIN_GATE F1(tf[0],tf[1],tf[2],fr[0],fr[1],fr[2]);
FREDKIN_GATE F3(tf1[0],tf1[1],tf1[2],fr1[0],fr1[1],fr1[2]);
FEYMAN_GATE  F2(scl1[3],scl[0],f[0],f[1]);
Xor_gate     x1({f[1],fr[0],fr[1],fr[2]},lfsr_out[3:0],e[3:0]);
Xor_gate     x2({fr1[0],fr1[1],fr1[2],f[0]},lfsr_out[7:4],e[7:4]);

endmodule


