`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:47 11/18/2016 
// Design Name: 
// Module Name:    transfer 
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

module transfer(
input clk,
input [31:0] dout,
output reg [31:0] din,
output reg [5:0] addra,
output reg [5:0] addrb,
output reg wea
);
reg [1:0] state;
initial
begin
addra = 1;
addrb = 0;
din = 1;
state = 2'b00;
wea =0;
end
always@(posedge clk)
case(state)
	
	2'b00: state <= 2'b10;
	2'b10: 
	if(addra==6'd32)
		state <= 2'b11;
	else
		state <= 2'b00;
	2'b11: state <= 2'b11;
	default: state <= 2'b11;
endcase

always@(posedge clk)
case(state)
	2'b00: 
	begin
		wea = 0;
		addra = addra+1;
		addrb = addrb+1;
	end
	2'b10:
	begin
		din = din + dout;
		wea = 1;
	end
	2'b11:
		addrb = addrb;

endcase
endmodule
