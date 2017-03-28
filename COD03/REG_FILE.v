`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:20:10 03/20/2017 
// Design Name: 
// Module Name:    REG_FILE 
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
module REG_FILE(input			 		clk,input			 		rst_n,input	[5:0]	 		r1_addr,input	[5:0]	 		r2_addr,input	[5:0]	 		r3_addr,input	[31:0] 		r3_din,input			 		r3_wr,output reg [31:0]	r1_dout,output reg [31:0]	   r2_dout);
reg [31:0] data[0:31];
integer i;
initial 
begin
for(i=0;i<32;i=i+1) data[i] = 32'h0;
r1_dout = 0;
r2_dout = 0;
end

always@(posedge clk or negedge rst_n)
if(~rst_n)
	data[r3_addr] <= 0; 
else
	begin
	if(r3_wr)
		data[r3_addr] <= r3_din;
	r1_dout <= data[r1_addr];
	r2_dout <= data[r2_addr];
	end



endmodule
