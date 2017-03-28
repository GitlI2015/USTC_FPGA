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
wire [5:0] addr1, addr2, addr3;
wire [31:0] data_out1, data_out2, result;
wire [31:0] doutb;
wire [31:0] reg_in;
wire src;
wire wer,wea;

assign reg_in = src ? doutb : result;

Control c(clk, src,wer, wea, addr1, addr2, addr3);
REG_FILE r(clk, rst_n, addr1, addr2, addr3, reg_in, wer, data_out1, data_out2);
ALU a(data_out1, data_out2, 5'b1,result); 

RAM ram(
  .clka(clk), // input clka
  .wea(wea), // input [0 : 0] wea
  .addra(addr3), // input [5 : 0] addra
  .dina(result), // input [31 : 0] dina
  .clkb(clk), // input clkb
  .addrb(addr3), // input [5 : 0] addrb
  .doutb(doutb) // output [31 : 0] doutb
);
endmodule
