`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:00:00 11/04/2016 
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
input [2:0] next_state,
input clk,
input rst_n,
output reg [2:0] curr_state
);

wire C_IDLE;
initial assign C_IDLE = 0;

always@(posedge clk or negedge rst_n)
begin
	if(~rst_n)
		curr_state <= next_state;
	else
		curr_state <= next_state;
end
endmodule
