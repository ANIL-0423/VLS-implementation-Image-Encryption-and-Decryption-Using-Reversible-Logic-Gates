`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 11:27:14
// Design Name: 
// Module Name: write
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

module write(input [7:0]in,output reg [7:0]out);


reg [7:0] mem [15:0];

integer add;


integer file_id;



initial begin

#10 file_id = $fopen("write.txt","w");

for (add=0; add<16; add=add+1 )
begin
mem[add]=in;
out =mem;

$fdisplay(file_id ,"%02h",out);

end 

#10  $fclose(file_id);

end 

endmodule


