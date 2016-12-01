`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:06:13 11/27/2016 
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
input [7:0] switch,
input [3:0] button,
output [6:0] digits,
output [7:0] led,
output [3:0] sel
);
wire [19:0] dout;
manager m(
.clk (clk),
.switch (switch),
.button (button),
.led (led),
.disp (dout)
);
display d(
.clk (clk),
.num (dout),
.an (sel),
.seg (digits)
);

endmodule
