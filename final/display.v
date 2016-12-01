`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:23:50 11/27/2016 
// Design Name: 
// Module Name:    display 
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
module display(//ÊýÂë¹Ü
	input clk,
	input [19:0]num,
	output reg [3:0]an=4'b1110,
	output reg [6:0]seg
	);
	
	wire t1;
	reg [1:0]c=0;
	reg [4:0]n;
	
	converter cl(clk,25000,t1);
	
	always@(posedge t1)
	begin
		an<={an[2:0],an[3]};
		c<=c+1;
	end
	
	always@(*)
	begin
		case(n)
			0:seg=7'b1000000;//0 O
			1:seg=7'b1111001;//1 I
			2:seg=7'b0100100;//2
			3:seg=7'b0110000;//3
			4:seg=7'b0011001;//4
			5:seg=7'b0010010;//5 S
			6:seg=7'b0000010;//6
			7:seg=7'b1111000;//7
			8:seg=7'b0000000;//8
			9:seg=7'b0010000;//9 g
			10:seg=7'b0001000;//A
			11:seg=7'b0000011;//b
			12:seg=7'b1000110;//C
			13:seg=7'b0100001;//d
			14:seg=7'b0000110;//E
			15:seg=7'b0001110;//F
			16:seg=7'b0001001;//H
			17:seg=7'b1110001;//J
			18:seg=7'b1000111;//L
			19:seg=7'b0101011;//n
			20:seg=7'b0001100;//P
			21:seg=7'b0011000;//q
			22:seg=7'b1001110;//R
			23:seg=7'b1111000;//T
			24:seg=7'b1000001;//U
			25:seg=7'b0010001;//y
			26:seg=7'b0111111;//-
			27:seg=7'b1110010;//c
			28:seg=7'b1111011;//i
			29:seg=7'b0100011;//o
			30:seg=7'b1100011;//u
			31:seg=7'b1111111;//
		endcase
	end
	
	always@(*)
	begin
		case(c)
			0:n=num[4:0];
			1:n=num[9:5];
			2:n=num[14:10];
			3:n=num[19:15];
		endcase
	end
endmodule

