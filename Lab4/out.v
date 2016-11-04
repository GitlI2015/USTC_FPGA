`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:02:12 11/04/2016 
// Design Name: 
// Module Name:    out 
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
module out(
input curr_state,
input next_state,
input clk,
output reg o
);

always@(posedge clk or negedge rst_n)
begin
	if(~rst_n)
		a <= 
end

endmodule
