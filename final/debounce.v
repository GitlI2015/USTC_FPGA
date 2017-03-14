`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:02:10 11/27/2016 
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

module debounce_button(
	input in,
	input clk,
	output reg op=0
);
	
reg out=0;
reg [31:0] cnt=0;
	
always@(posedge clk)
begin
	if(in!=out)
		cnt<=cnt+1;
	else
		cnt<=0;
	if(cnt>=40000)
	begin
		out<=in;
		cnt<=0;
	end
	if(cnt>=40000&&in)
	begin
		op<=1;
	end
	if(op)
		op<=0;
end

endmodule

module debounce_switch(
	input in,
	input clk,
	output reg op=0
	);
	
	reg [31:0] cnt=0;
	
	always@(posedge clk)
	begin
		if(in!=op)
			cnt<=cnt+1;
		else
			cnt<=0;
		if(cnt>=40000)
		begin
			op<=in;
			cnt<=0;
		end
	end
endmodule

