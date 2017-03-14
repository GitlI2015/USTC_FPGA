`timescale 1ns / 1ps


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
	
	always@(posedge clk)
	if(c)
	begin
		br0<=br0+1;
	end
	else
		br0<=br0;
	
	always@(posedge clk)
	begin
		cnt<=cnt+1;
	end
	
	assign o=br>=cnt;
endmodule

module LED(
	input clk,
	input [3:0] state,
	output reg [7:0] out
	);
	reg [7:0] en;
	wire [7:0] o;
	always@(*)
	if(state==0)
		en<=8'b11111111;
	else if(state<8)
		en<=1<<(state-1);
	else if(state<=12)
		en<=8'b00100000+(1<<(state-8));
	else if(state==13)
		en<=8'b01100000;
	else
		en<=en;

	always@(posedge clk)
	if(state==7)
		out<=8'b11111111;
	else
		out<=o;
	twinkle t0(clk,en[0],0,o[0]);
	twinkle t1(clk,en[1],0,o[1]);
	twinkle t2(clk,en[2],0,o[2]);
	twinkle t3(clk,en[3],0,o[3]);
	twinkle t4(clk,en[4],0,o[4]);
	twinkle t5(clk,en[5],0,o[5]);
	twinkle t6(clk,en[6],0,o[6]);
	twinkle t7(clk,en[7],0,o[7]);
endmodule



