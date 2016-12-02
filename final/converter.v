`timescale 1ns / 1ps

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
