`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:24 10/28/2016 
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
input rst_n,
input pause_n,
output [7:0] LED,
output [7:0] digit,
output [3:0] sel
);

wire en;
wire [7:0] number;

counter cter(
.clk (clk),
.cnt_en (en)
);

adder ad(
.pause (pause_n),
.clk (clk),
.rst_n (rst_n),
.count (number)
);

num n(
.in (number),
.en (en),
.sel (sel),
.out (digit)
);

led l(
.in (number),
.out (LED)
);

endmodule
