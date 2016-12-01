`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:08:51 11/27/2016 
// Design Name: 
// Module Name:    manager 
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
module manager(
input clk,
input [7:0] switch,
input [3:0] button,
output [7:0] led,
output reg [19:0] disp
);
wire b1,b2,b3,b4;
wire s1,s2,s3,s4,s5,s6,s7,s8;
wire [2:0] curr;
wire [19:0] num,hello_out,edit_out;
wire p;

reg [3:0] state;

debounce_switch ds1(switch[0],clk,s1);
debounce_switch ds2(switch[1],clk,s2);
debounce_switch ds3(switch[2],clk,s3);
debounce_switch ds4(switch[3],clk,s4);
debounce_switch ds5(switch[4],clk,s5);
debounce_switch ds6(switch[5],clk,s6);
debounce_switch ds7(switch[6],clk,s7);
debounce_switch ds8(switch[7],clk,s8);

debounce_button db1(button[0],clk,b1);
debounce_button db2(button[1],clk,b2);
debounce_button db3(button[2],clk,b3);
debounce_button db4(button[3],clk,b4);

editor e(
.clk (clk),
.rst (s1),
.left (b4),
.right (b1),
.inc (b2),
.dec (b3),
.state (state),
.curr (curr),
.nout (num), 
.p (p)
);

showedit s(
.clk (clk),
.num (num),
.p (p),
.curr (curr),
.dout (edit_out)
);

hello h(
.clk (clk),
.data (hello_out)
);
twinkle8 t(
.clk (clk),
.en (state==0),
.o (led)
);
always @(*)
if(state == 0)
	disp = hello_out;
else
	disp = edit_out;

always@(posedge clk or posedge s8)
if(s8)
	state<=0;
else
	begin
		case(state)
		4'd0:
			begin
			if(b1|b2|b3|b4|s1|s2|s3|s4|s5|s6|s7)
				state<=1;
			end
		4'd1:
			state<=state;
//			if(s2)
//			begin
//				state<=2;
//			end
//		4'd2:
//			begin
//				state<=2;
//			end
		endcase
	end
initial 
begin
state=0;
end

endmodule
