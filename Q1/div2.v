`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:40:40 10/09/2016 
// Design Name: 
// Module Name:    div 
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
module div2(
input clk,
input rst_n,
output reg [1:0] cnt_en
);

reg [24:0] cnt_div;
always@(posedge clk or negedge rst_n)
begin
	if(~rst_n)
		cnt_div <=25'h0;
	else if (cnt_div == 25'd49_999)
		cnt_div <= 25'h0;
	else
		cnt_div <= cnt_div + 25'h1;
end

always@(posedge clk or negedge rst_n)
begin 
	if(~rst_n)
		cnt_en <=2'b00;
	else if(cnt_div==25'd49_999)
	begin
		if(cnt_en==2'b11)
			cnt_en <= 2'b00;
		else
			cnt_en <= cnt_en + 2'b01;
	end
end


endmodule
