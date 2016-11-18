`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:05:33 11/18/2016 
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
output [31:0] data
);
wire wea;
wire [5:0] addra;
wire [31:0] dina;
wire [5:0] addrb;
wire [31:0] d;
assign d = data;
myram r(
.clka (clk),
.wea (wea),
.addra (addra),
.dina (dina),
.clkb (clk),
.addrb (addrb),
.doutb (data)
);

transfer t(
.clk (clk),
.wea (wea),
.addra (addra),
.din (dina),
.addrb (addrb),
.dout (d)
);
endmodule
