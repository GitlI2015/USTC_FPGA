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
wire [4:0] addr1, addr2, addr3;
wire [31:0] data_out1, data_out2, result;
wire write_enable;


Control c(clk, write_enable, addr1, addr2, addr3);
REG_FILE r(clk, rst_n, addr1, addr2, addr3, result, write_enable, data_out1, data_out2);
ALU a(clk, data_out1, data_out2, 5'b1,result); 

endmodule
