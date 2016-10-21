`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:45:58 10/21/2016 
// Design Name: 
// Module Name:    top 
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
module top(
input [4:0] in,
output [7:0] LED,
output [6:0] num
);
decoder d(
.a (in[2]),
.b (in[1]),
.c (in[0]),
.mode (in[4]),
.o (LED[7:0])
);

endmodule
