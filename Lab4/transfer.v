`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:51 11/04/2016 
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
input [2:0] curr_state,
input in,
output reg [2:0] next_state
);

always@(*)
begin
if(in==1)
	case(curr_state)
		3'b000:	next_state = 3'b001;
		3'b001:	next_state = 3'b010;
		3'b010:	next_state = 3'b001;
		3'b011:	next_state = 3'b001;
		3'b100: next_state = 3'b010;
		default:	next_state = 3'b000;
	endcase
else
    case(curr_state)
        3'b000:  next_state = 3'b000;
        3'b001:  next_state = 3'b000;
        3'b010:  next_state = 3'b011;
        3'b011:  next_state = 3'b000;
		3'b100:	 next_state = 3'b000;
		default:	next_state = 3'b000;
    endcase
end
endmodule
