`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:21:27 11/27/2016 
// Design Name: 
// Module Name:    hello 
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
module hello(//��ӭ
	input clk,
	output reg [2:0] rgb=3'b001,
	output [19:0]data
);
reg [69:0] txt = {5'd31,5'd31,5'd31,5'd31,5'd12,5'd10,5'd18,5'd12,5'd24,5'd18,5'd10,5'd23,5'd0,5'd22};	

wire c;
	
converter cl(clk,24000000,c);
always@(posedge clk)
if(c)
	begin
	txt<=(txt[64:0]<<5)+txt[69:65];
	rgb<=rgb[2:1]+(rgb[0]<<2);
	end
else
	txt<=txt;

	
assign data=txt[69:50];
endmodule

