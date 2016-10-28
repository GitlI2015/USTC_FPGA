`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:30:27 10/28/2016 
// Design Name: 
// Module Name:    adder 
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
module adder(
input clk,
input rst_n,
output reg [7:0] count
);

reg [24:0] cnt_div;
initial assign count = 8'h00;
always@(posedge clk or posedge rst_n)
begin
	if(rst_n)
		cnt_div <=25'h0;
	else if (cnt_div == 25'd2499_9999)
		cnt_div <= 25'h0;
	else
		cnt_div <= cnt_div + 25'h1;
end

always@(posedge clk or posedge rst_n)
begin 
	if(rst_n)
		count =8'h90;
	else if(cnt_div==25'd2499_9999)
	begin
		if(count[3:0]==4'b1001)
		begin
			count[3:0]=4'h0;
			if(count[7:4]==4'h9)
				count[7:4]=4'h0;
			else
				count[7:4]=count[7:4]+1;
		end
		else
			count[3:0] = count[3:0] + 1;
	end
end
endmodule
