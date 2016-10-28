`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:15 10/28/2016 
// Design Name: 
// Module Name:    num 
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
module num(
input [7:0] in,
input en,
output reg [3:0] sel,
output reg [7:0] out
);
initial 
begin
sel = 4'b1110;
out = 8'b0000_0011;
end
always@(en)
if(en==0)
	sel<=4'b1110;
else
	sel<=4'b1101;
always@(in or en)
if(en==0)
case(in[3:0])
0:	out=8'b0000_0011;
1: out=8'b1001_1111;
2: out=8'b0010_0101;
3: out=8'b0000_1101;
4: out=8'b1001_1001;
5: out=8'b0100_1001;
6: out=8'b0100_0001;
7: out=8'b0001_1111;
8: out=8'b0000_0001;
9: out=8'b0000_1001;
default: out=8'b0000_0000;
endcase
else
case(in[7:4])
0:	out=8'b0000_0011;
1: out=8'b1001_1111;
2: out=8'b0010_0101;
3: out=8'b0000_1101;
4: out=8'b1001_1001;
5: out=8'b0100_1001;
6: out=8'b0100_0001;
7: out=8'b0001_1111;
8: out=8'b0000_0001;
9: out=8'b0000_1001;
default: out=8'b0000_0000;
endcase
endmodule
