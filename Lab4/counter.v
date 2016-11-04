`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:15:30 10/28/2016 
// Design Name: 
// Module Name:    counter 
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
module counter(
input clk,
output reg [1:0] cnt_en
);
initial cnt_en = 0;
reg [24:0] cnt_div;
initial cnt_div = 25'b0;
always@(posedge clk)
begin
	if (cnt_div == 25'd2499_9999)
		cnt_div <= 25'h0;
	else
		cnt_div <= cnt_div + 25'h1;
end

always@(posedge clk)
begin 
	if(cnt_div==25'd24999)
	begin
		if(cnt_en==2'b1)
			cnt_en <= 0;
		else
			cnt_en <= cnt_en + 1;
	end
end


endmodule
