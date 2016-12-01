`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:27 11/27/2016 
// Design Name: 
// Module Name:    converter 
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
module converter(
	input clk,
	input [31:0]max,
	output reg c=0
);
	
reg [31:0]count;
initial count = 0;
always@(posedge clk)
if(count==max)
	c<=1;
else
	c<=0;
always@(posedge clk)
	if(count==max)
		count<=0;
	else
		count<=count+1;
endmodule
