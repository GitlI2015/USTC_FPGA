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
	output src,
	output reg wer,
	output reg wea,
	output reg [5:0] addr1,
	output reg [5:0] addr2,
	output reg [5:0] addr3
);
reg [1:0] state;
reg init_state;
assign src = state == 2'd0;
initial 
begin
	init_state = 0;
	wer = 1;
	wea = 0;
	state = 0;
	addr1 = 0;
	addr2 = 1;
	addr3 = 6'b0;
end



always@(posedge clk)
if(state == 2'd0)
begin
	wer <= 1;
	if(init_state==1)
	begin
		if(addr3 == 5'd1)
		begin
			state <= state + 1;
			wer <= 0;
		end
		else
			addr3 <= addr3 + 1;
		init_state <= 0;
	end
	else
		init_state <= 1;
end
else if(state == 2'd1)
begin
	state <= state+1;
	addr3 <= addr3+1;
	wer <= 0;
	wea <= 0;
end
else if(state == 2'd2)
begin
	wea <= 1;
	wer <= 1;
	if(addr1 == 5'd29)
		state <= state + 1;
	else
	begin
		state <= 2'd1;
		addr1 <= addr1+1;
		addr2 <= addr2+1;
	end
end
else
	state <= state;
	
endmodule