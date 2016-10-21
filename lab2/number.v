`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:23:55 10/21/2016 
// Design Name: 
// Module Name:    number 
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
module number (
input [3:0] in,
input mode,
output reg [7:0] out
);
initial
assign out = 8'b1111_1111;
always@(in or mode)
begin
if(mode==0)
case(in)
	4'h0:   out[7:0] = 8'b0000_0011;
	4'h1:   out[7:0] = 8'b1001_1111;
	4'h2:   out[7:0] = 8'b0010_0101;
	4'h3:   out[7:0] = 8'b0000_1101;
	4'h4:   out[7:0] = 8'b1001_1001;
	4'h5:   out[7:0] = 8'b0100_1001;
	4'h6:   out[7:0] = 8'b0100_0001;
	4'h7:   out[7:0] = 8'b0001_1111;
	4'h8:   out[7:0] = 8'b0000_0001;
	4'h9:   out[7:0] = 8'b0000_1001;
	4'hA:   out[7:0] = 8'b0001_0001;
	4'hB:   out[7:0] = 8'b1100_0001;
	4'hC:   out[7:0] = 8'b0110_0011;
	4'hD:   out[7:0] = 8'b1000_0101;
	4'hE:   out[7:0] = 8'b0110_0001;
	4'hF:   out[7:0] = 8'b0111_0001;
endcase
else
out[7:0]=8'b1111_1111;
end
endmodule
