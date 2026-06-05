`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 11:51:45
// Design Name: 
// Module Name: ALL_GATES
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


// SCL GATE
 module SCL_GATE( 
 
 input a,b,c,d,
 output p,q,r,s
 );
 
assign p=a;
assign q=b;
assign r=c;
assign s=(a&(b|c)^d);

endmodule


// TOFOLI_GATE
module TOFOLI_GATE( 
input a,b,c,
output p,q,r
    );

assign p=a;
assign q=b;
assign r=(a&b)^c;

endmodule


// FREDKIN_GATE
module FREDKIN_GATE( 
input a,b,c,
output p,q,r
);

assign p=a;
assign q=((~a)&b)^(a&c);
assign r= ((~a)& c)^(a&b);

endmodule


// FEYMAN_GATE
module FEYMAN_GATE( 
input a,b,
output p,q
);

assign p=a;
assign q=a^b;

endmodule


module Xor_gate(
input [3:0]LFSR,IN,
output [3:0]out
);

assign out= LFSR^ IN;

endmodule



