`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:24:30 03/20/2017 
// Design Name: 
// Module Name:    Control 
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
module Control(
	input clk,
	output reg wer,
	output reg wea,
	output reg [5:0] addr1,
	output reg [5:0] addr2,
	output reg [5:0] addr3
);
reg [1:0] state;

initial 
begin
	wer = 0;
	wea = 0;
	state = 0;
	addr1 = 0;
	addr2 = 1;
	addr3 = 6'b111111;
end



always@(posedge clk)
if(state == 2'd0)
begin
	wer <= 1;
	if(addr3 == 5'd2)
		state <= state + 1;
	else
		addr3 <= addr3 + 1;
end
else if(state == 2'd1)
begin
	wea <= 1;
	wer <= 0;
	state <= state+1;
	addr3 <= addr3+1;
end
else if(state == 2'd2)
begin
	wea <= 0;
	wer <= 1;
	if(addr1 == 5'd29)
		state <= state + 1;
end
else
	state <= state;
	
endmodule
