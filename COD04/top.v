`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:32:36 03/20/2017 
// Design Name: 
// Module Name:    top 
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

module top(
	input clk,
	input rst_n
);
wire [7:0] addr1, addr2;
wire [15:0] data_out1, data_out2, result;
wire [15:0] douta,doutb;
wire [15:0] reg_in;
wire [4:0] op;
wire src;
wire wea;
assign op = doutb;


Control c(clk,douta,doutb, data_out1, data_out2, op, wea, addr1, addr2);
ALU a(douta, doutb, op,result); 
RAM ram(clk,wea,addr1,dina,douta,clk,web,addr2,dinb,doutb);


endmodule
