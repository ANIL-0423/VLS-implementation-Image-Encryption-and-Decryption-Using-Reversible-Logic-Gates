`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 11:45:55
// Design Name: 
// Module Name: Read_endata
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


module Read_endata(input [15:0] add ,output reg [7:0]out );

reg [7:0] mem8x8 [0:49152];


integer channel_1,i;

initial begin

$readmemh("output.mem",mem8x8);

channel_1=$fopen("mem8x8.out");
for(i=0;i<10;i=i+1)



$fdisplay(channel_1,"memory[%0d]=%h",i,mem8x8[i]);


$fclose(channel_1);


end

reg [7:0]bcd;

always @(*) begin bcd=mem8x8[add];  

out=bcd ;end


endmodule
