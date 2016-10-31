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
output reg cnt_en
);
initial cnt_en = 0;
reg [24:0] cnt_div;
initial cnt_div = 25'b0;
always@(posedge clk)
begin
	if (cnt_div == 25'd49)
		cnt_div <= 25'h0;
	else
		cnt_div <= cnt_div + 25'h1;
end

always@(posedge clk)
begin 
	if(cnt_div==25'd49)
	begin
		if(cnt_en==1)
			cnt_en <= 0;
		else
			cnt_en <= 1;
	end
end


endmodule
