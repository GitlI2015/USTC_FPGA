`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:06:11 11/10/2016 
// Design Name: 
// Module Name:    led 
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
module led(
input [3:0] data,
input [3:0] sel,
output [7:0] out
);
always@(*)
case(data[3:0])
0:	out=8'b0000_0011;
1: out=8'b1001_1111;
2: out=8'b0010_0101;
3: out=8'b0000_1101;
4: out=8'b1001_1001;
5: out=8'b0100_1001;
6: out=8'b0100_0001;
7: out=8'b0001_1111;
8: out=8'b0000_0001;
9: out=8'b0000_1001;
default: out=8'b0000_0000;
endcase


endmodule
