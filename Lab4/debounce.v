`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:10:15 11/04/2016 
// Design Name: 
// Module Name:    debounce 
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
module debounce(
input clk,
input in,
input button,
input rst_n,
output reg de_in,
output reg [3:0] num
);
reg [19:0] cnt_div;
reg t;
always@(posedge clk)
begin
	if(~button)
		cnt_div<=0;
	else if(button & cnt_div != 20'd25_0000)
		cnt_div <= cnt_div + 1;
end

always@(posedge clk)
begin
	if(button & cnt_div == 20'd25_0000)
		de_in <=1;
	else if(~button)
		de_in<=0;
end

always@(posedge clk or negedge rst_n)
begin
	if(~rst_n)
	begin
		t=1;
		num  = 4'b0000;
	end
	else if(de_in && t)
	begin
		num = (num[2:0]<<1) + in;
		t = 0;
	end
	else if(de_in == 0)
		t=1;
end

endmodule
