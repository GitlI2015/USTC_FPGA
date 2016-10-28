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
input rst_n,
output reg cnt_en
);
initial assign cnt_en = 0;
reg [24:0] cnt_div;
always@(posedge clk or posedge rst_n)
begin
	if(rst_n)
		cnt_div <=25'h0;
	else if (cnt_div == 25'd49_999)
		cnt_div <= 25'h0;
	else
		cnt_div <= cnt_div + 25'h1;
end

always@(posedge clk or posedge rst_n)
begin 
	if(rst_n)
		cnt_en <=2'b00;
	else if(cnt_div==25'd49_999)
	begin
		if(cnt_en==1)
			cnt_en <= 0;
		else
			cnt_en <= 1;
	end
end


endmodule
