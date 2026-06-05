`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 11:48:10
// Design Name: 
// Module Name: LFSR
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


module LFSR(
  input clk,
  output reg [3:0] LFSR = 1
);

always @(posedge clk)
begin
  LFSR[0] <= ~LFSR[1] ^ LFSR[3];
  LFSR[3:1] <= LFSR[2:0];
end
endmodule



