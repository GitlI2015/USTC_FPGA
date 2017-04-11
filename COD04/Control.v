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
	input [15:0] douta,
	input [15:0] doutb,
	output reg [15:0] data_out1,
	output reg [15:0] data_out2,
	output reg [4:0] op,
	output reg wea,
	output reg [7:0] addr1,
	output reg [7:0] addr2
);
reg [1:0] state;
reg init_state;
reg [7:0] lhs_addr,rhs_addr,op_addr,dst_addr;
initial 
begin
	init_state = 0;
	wea = 0;
	state = 0;
	lhs_addr = 0;
	rhs_addr = 1;
	op_addr = 7'd100;
	dst_addr = 7'd199;
end



always@(posedge clk)
if(state == 0)
begin
	wea <= 0;
	addr1 <= op_addr;
	state <= state + 1;
end
else if(state == 1)
begin
	op <= douta;
	op_addr <= op_addr + 1;
	addr1 <= lhs_addr;
	addr2 <= rhs_addr;
	state <= state + 1;
end
else if(state == 2)
begin
	if(op == 5'h1f)
		state <= 3;
	else
	begin
		wea <= 1;
		addr1 <= dst_addr;
		lhs_addr <= lhs_addr + 2;
		rhs_addr <= rhs_addr + 2;
		state <= 0;
	end
end
else 
	state <= state;
	
	
endmodule

