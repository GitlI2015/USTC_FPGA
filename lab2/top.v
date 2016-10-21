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
output [7:0] num,
output [3:0] sub
);
assign sub = 4'b0111; 

decoder d(
.i (in[2:0]),
.mode (in[4]),
.o (LED[7:0])
);
number n(
.in (in[3:0]),
.mode (in[4]),
.out (num[7:0])
);
endmodule
