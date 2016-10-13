`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:18:26 10/13/2016 
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
input [1:0] a,
input [1:0] b,
input [1:0] c,
input [1:0] d,
input [1:0] sels,
output [1:0] out
);
wire [1:0] r1;
wire [1:0] r2;

test m1(
.a (a),
.b (c),
.sel (sels[1]),
.c (r1)
);

test m2(
.a (b),
.b (d),
.sel (sels[1]),
.c (r2)
);

test m3(
.a (r1),
.b (r2),
.sel (sels[0]),
.c (out)
);
endmodule
