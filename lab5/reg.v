`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:14:43 11/10/2016 
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
module re(
input clk,
input en,
input rst_n,
input [1:0] in_addr,
input [1:0] re_addr,
input [3:0] in_data,
output reg [3:0] o_data
);
reg [3:0] d1,d2,d3,d4;
wire [3:0] o1,o2,o3,o4;
reg [3:0] rst;
initial
begin
assign d1 = 4'b0001;
assign d2 = 4'b0010;
assign d3 = 4'b0100;
assign d4 = 4'b1000;
rst = 4'b0001;
end
always@(*)
if(~rst_n)
begin
rst=4'b1111;
rst[in_addr] =0;
end
else
rst=4'b1111;
trigger t1(
.in (in_data),
.en (en&in_data[0]),
.clk (clk),
.rst_n (rst[0]),
.d_value (d1),
.o (o1)
);

trigger t2(
.in (in_data),
.en (en&in_data[1]),
.clk (clk),
.rst_n (rst[1]),
.d_value (d2),
.o (o2)
);

trigger t3(
.in (in_data),
.en (en&in_data[2]),
.clk (clk),
.rst_n (rst[2]),
.d_value (d3),
.o (o3)
);

trigger t4(
.in (in_data),
.en (en&in_data[3]),
.clk (clk),
.rst_n (rst[3]),
.d_value (d4),
.o (o4)
);
always@(*)
case(re_addr)
	2'b00:o_data <= o1;
	2'b01:o_data <= o2;
	2'b10:o_data <= o3;
	2'b11:o_data <= o4;
endcase

endmodule
