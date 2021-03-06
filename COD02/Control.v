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
	output reg we,
	output reg [4:0] addr1,
	output reg [4:0] addr2,
	output reg [4:0] addr3
);
reg [1:0] state;

initial 
begin
	we = 0;
	state = 0;
	addr1 = 0;
	addr2 = 1;
	addr3 = 1;
end

always@(posedge clk)
if(state == 2'd2)
	state <= 0;
else
	state <= state + 1;

always@(posedge clk)
if(state == 2'd0)
begin
	we <= 0;
	if(addr3 == 5'd31)
		addr3 <= addr3;
	else
		addr3 <= addr3+1;
end
else if(state == 2'd1)
begin
	if(addr1 == 5'd29)
		addr1 <= addr1;
	else
		addr1 <= addr1 + 1;
	if(addr2 == 5'd30)
		addr2 <= addr2;
	else
		addr2 <= addr2 + 1;
	we <= 1;
end
	
endmodule
