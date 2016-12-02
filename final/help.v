`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:25 12/01/2016 
// Design Name: 
// Module Name:    help 
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
module help(
input clk,
input [3:0] state,
output reg [19:0] out
);
wire [19:0] help_b={5'd16,5'd14,5'd18,5'd20};
wire [19:0] clr_b={5'd31,5'd12,5'd18,5'd10};
wire [19:0] add_b={5'd31,5'd10,5'd0,5'd0};
wire [19:0] sub_b={5'd31,5'd5,5'd24,5'd11};
wire [19:0] dot_b={5'd31,5'd0,5'd0,5'd23};
wire [19:0] div_b={5'd31,5'd0,5'd28,5'd24};
wire [19:0] test_b={5'd23,5'd14,5'd5,5'd23};
always@(*)
if(state==6)
	out<=help_b;
else if(state==8)
	out<=clr_b;
else if(state==9)
	out<=add_b;
else if(state==10)
	out<=sub_b;
else if(state==11)
	out<=dot_b;
else if(state==12)
	out<=div_b;
else if(state==13)
	out<=test_b;
else
	out<=0;

endmodule
