`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:00 11/10/2016 
// Design Name: 
// Module Name:    reg 
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
input [3:0] in,
input en,
input rst_n,
input clk,
input [1:0] in_addr,
input [1:0] re_addr,
output reg [7:0] led,
output reg [3:0] sel
);

wire [3:0] w;
wire [3:0] s;
counter c(
.clk (clk),
.cnt_en (s)
);

re r(
.clk (clk),
.en (en),
.rst_n (rst_n),
.in_addr (in_addr),
.re_addr (re_addr),
.in_data (in),
.o_data (w)
);

led l(
.data (w),
.sel (s),
.out (led)
);
always@(*)
	sel <= s;
endmodule
