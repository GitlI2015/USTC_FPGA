`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:02:02 11/10/2016 
// Design Name: 
// Module Name:    trigger 
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
module trigger(
input [3:0] in,
input en,
input clk,
input rst_n,
input [3:0] d_value,
output reg [3:0] o
);

always@(posedge	clk or negedge rst_n)
begin
if(~rst_n)
	o <= d_value;
else
begin
	if (en)
		o <= in;
	else
		o <= o;
end
end

endmodule
