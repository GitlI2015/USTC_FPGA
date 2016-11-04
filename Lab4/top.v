`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:29:57 11/04/2016 
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
input op,
input button,
input rst_n,
input clk,
output led,
output [3:0] sel,
output  [7:0] digit
);

wire [1:0] en;
wire de;
wire [3:0] num;

debounce d(
.in (op),
.button (button),
.clk (clk),
.de_in (de),
.rst_n (rst_n),
.num (num)
);

transfer t2(
.in (op),
.clk (clk),
.de_in (de),
.rst_n (rst_n),
.led (led)
);



counter t(
.clk (clk),
.cnt_en (en)
);



out o(
.num (num),
.en (en),
.sel (sel),
.lout (digit)
);



endmodule
