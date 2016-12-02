`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:01:09 11/26/2016 
// Design Name: 
// Module Name:    n2bcd 
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
module n2bcd(
input signed [15:0] n,
input clk,
output reg [19:0] bcd
);
reg signed [15:0] abs_n=0;    //divident
wire [15:0] d1,d2,d3;       //divisor
wire r1,r2,r3;                     //rfd
reg [5:0] cnt;
reg init=0;
wire [3:0] q1,q2,q3;       //quotient
wire [15:0] f1,f2,f3;       //fractional
	assign d1=16'd1000;
	assign d2=16'd100;
	assign d3=16'd10;

always@(posedge clk)
begin
	bcd[19:16]<=n>=0?4'd0:4'd5;
	bcd[15:12]<=q1;
	bcd[11:8]<=q2;
	bcd[7:4] <=q3;
	bcd[3:0] <=f3;
end
always@(*)
	abs_n=n>0?n:-n;
div di1(r1,clk,abs_n,q1,d1,f1);
div di2(r2,clk,f1,q2,d2,f2);
div di3(r3,clk,f2,q3,d3,f3);
endmodule

module bcd2n(
input signed [19:0] bcd,
input en,
input clk,
output reg signed [15:0] n=0
);
always@(posedge clk)
if(en)
	n=(bcd[19:16]==4'd5)?(-bcd[15:12]*1000-bcd[11:8]*100-bcd[7:4]*10-bcd[3:0]):(bcd[15:12]*1000+bcd[11:8]*100+bcd[7:4]*10+bcd[3:0]);
else
	n=0;
endmodule
