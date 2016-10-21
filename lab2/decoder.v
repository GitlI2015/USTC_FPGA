`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:24:12 10/21/2016 
// Design Name: 
// Module Name:    decoder 
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
module decoder(
input [2:0] i,
input mode,
output reg [7:0] o
);
initial
assign o = 8'b0000_0000;
always@(i or mode)
begin
if(mode==1)
case(i)
0: o[7:0]=8'b0000_0001;
1: o[7:0]=8'b0000_0010;
2: o[7:0]=8'b0000_0100;
3: o[7:0]=8'b0000_1000;
4: o[7:0]=8'b0001_0000;
5: o[7:0]=8'b0010_0000;
6: o[7:0]=8'b0100_0000;
7: o[7:0]=8'b1000_0000;
endcase
else
o[7:0]=8'b0000_0000;
end

endmodule
