`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:44:55 11/27/2016 
// Design Name: 
// Module Name:    twinkle 
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

module twinkle(
	input clk,
	input en,
	input [2:0]n,
	output o
	);
	
	reg [7:0]br0=0;
	reg [6:0]cnt=0;
	wire c;
	wire [7:0]br;
	wire [7:0]brc=(br0+(n<<5))%256;
	converter c1(clk,500000,c);
	
	assign br=en?(brc<128?brc:255-brc):0;
	
	always@(posedge c)
	begin
		br0<=br0+1;
	end
	
	always@(posedge clk)
	begin
		cnt<=cnt+1;
	end
	
	assign o=br>=cnt;
endmodule

module twinkle8(
	input clk,
	input en,
	output [7:0]o
	);
	
	twinkle t0(clk,en,0,o[0]);
	twinkle t1(clk,en,0,o[1]);
	twinkle t2(clk,en,0,o[2]);
	twinkle t3(clk,en,0,o[3]);
	twinkle t4(clk,en,0,o[4]);
	twinkle t5(clk,en,0,o[5]);
	twinkle t6(clk,en,0,o[6]);
	twinkle t7(clk,en,0,o[7]);
endmodule



