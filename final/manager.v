`timescale 1ns / 1ps
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
wire [19:0] num,hello_out,edit_out,help_out;
wire p,error;
reg er;
wire [19:0] error_out={5'd31,5'd14,5'd25,5'd25};
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
.p (p),
.error (error)
);

showedit s(
.clk (clk),
.num (num),
.p (p),
.curr (curr),
.dout (edit_out)
);
help hp(
.clk (clk),
.state (state),
.out (help_out)
);
hello h(
.clk (clk),
.data (hello_out)
);
twinkle8 t(
.clk (clk),
.state (state),
.out (led)
);

always @(*)
if(state == 0)
	disp = hello_out;
else if(error&&(state==1|state==2|state==3|state==4|state==5))
	if(er==0)
	begin
		disp=error_out;
		er=1;
	end
	else
	if(s1)
		er=0;
	else
		disp=disp;
else if(state==6||state>7)
	disp = help_out;
else
	disp = edit_out;

always@(posedge clk or posedge s8)
if(s8)
	state<=0;
else
	begin
		case(state)
		4'd0:
			if(b1|b2|b3|b4|s1|s2|s3|s4|s5)
				state<=1;
			else if(s6)
				state<=6;
			else if(s7)
				state<=7;
			else
				state<=0;
		4'd7:
			if(b1|b2|b3|b4|s1|s2|s3|s4|s5)
				state<=1;
			else if(s6)
				state<=6;
			else 
				state<=7;
		4'd6,4'd8,4'd9,4'd10,4'd11,4'd12,4'd13:
			if(s7&&~s6)
				state<=7;
			else if(s1&&~s6)
				state<=1;
			else if(s2&&~s6)
				state<=2;
			else if(s3&&~s6)
				state<=3;
			else if(s4&&~s6)
				state<=4;
			else if(s5&&~s6)
				state<=5;
			else if(s6&&s1)
				state<=8;
			else if(s6&&s2)
				state<=9;
			else if(s6&&s3)
				state<=10;
			else if(s6&&s4)
				state<=11;
			else if(s6&&s5)
				state<=12;
			else if(s6&&s7)
				state<=13;
		default:
			if(s7&&~s6)
				state<=7;
			else if(s1&&~s6&&~s2&&~s3&&~s4&&~s5)
				state<=1;
			else if(s2&&~s6)
				state<=2;
			else if(s3&&~s6)
				state<=3;
			else if(s4&&~s6)
				state<=4;
			else if(s5&&~s6)
				state<=5;
			else if(s6)
				state<=6;
			else if((~s2&&state==2)|(~s3&&state==3)|(~s4&&state==4)|(~s5&&state==5))
				state<=1;
			else
				state<=state;
		endcase
	end
initial 
begin
state=0;
er=0;
end

endmodule
