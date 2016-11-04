`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:30:26 11/04/2016 
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
input [1:0] en,
input [3:0] num,
output reg [3:0] sel,
output reg [7:0] lout
);
always@(*)
begin
case(en)
	2'b00: sel <= 4'b1110;
	2'b01: sel <= 4'b1101;
	2'b10: sel <= 4'b1011;
	2'b11: sel <= 4'b0111;
endcase
end

always@(*)
begin
case(num[en])
	0: lout = 8'b1001_1111;
	1: lout = 8'b0000_0011;
endcase
end
endmodule
