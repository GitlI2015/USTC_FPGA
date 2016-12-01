`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:11 11/27/2016 
// Design Name: 
// Module Name:    editor 
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
module editor(
	input clk,
	input rst,
	input left,
	input right,
	input inc,
	input dec,
	input [3:0] state,
	output reg [2:0]curr=0,
	output reg [19:0]nout=0,   //display on screen
	output reg p
);
reg [19:0] num;
wire [19:0] test_n;
initial
begin
p=0;
end
always@(posedge clk or posedge rst)
begin
	if(rst)
	begin
		curr<=0;
		p<=0;
	end
	else if(left)
	begin
		if(curr==4)
		begin
			p<=0;
			curr<=0;
		end
		else
		begin 
			if(curr-p==3)
				p<=p+1;
			curr<=curr+1;
		end
	end
	else if(right)
	begin
		if(curr==0)
		begin
			p<=1;
			curr<=4;
		end
		else
		begin
			if(p==curr)
				p<=p-1;
			curr<=curr-1;
		end
	end
end

always@(posedge clk or posedge rst)
begin
	if(rst)
		num<=0;
	else if(inc)
		case(curr)
			0:num[3:0]<=num[3:0]<9?num[3:0]+1:0;
			1:num[7:4]<=num[7:4]<9?num[7:4]+1:0;
			2:num[11:8]<=num[11:8]<9?num[11:8]+1:0;
			3:num[15:12]<=num[15:12]<9?num[15:12]+1:0;
			4:num[19:16] <= num[19:16]==5?4'd0:4'd5;
		endcase
	else if(dec)
		case(curr)
			0:num[3:0]<=num[3:0]>0?num[3:0]-1:9;
			1:num[7:4]<=num[7:4]>0?num[7:4]-1:9;
			2:num[11:8]<=num[11:8]>0?num[11:8]-1:9;
			3:num[15:12]<=num[15:12]>0?num[15:12]-1:9;
			4:num[19:16] <= num[19:16]==5?4'd0:4'd5;
		endcase
end


always@(*)
//if(state==2)
	nout<=num;
//else
//	nout<=num;

//n2bcd test(
//.n (16'd1234),
//.clk (clk),
//.bcd (test_n)
//);

endmodule


module showedit(
	input clk,
	input [19:0]num,
	input p,
	input [2:0]curr,
	output reg [19:0]dout
);
	
wire t;
reg s=0; 
	
converter cl(clk,12500000,t);
	
always@(posedge t)
begin
		s<=~s;
end
	
always@(posedge clk)
begin
	if(p==0)
	begin
		if(s)
			dout={1'b0,num[15:12],1'b0,num[11:8],1'b0,num[7:4],1'b0,num[3:0]};
		else
			case(curr)
				0:dout={1'b0,num[15:12],1'b0,num[11:8],1'b0,num[7:4],5'd31};
				1:dout={1'b0,num[15:12],1'b0,num[11:8],5'd31,1'b0,num[3:0]};
				2:dout={1'b0,num[15:12],5'd31,1'b0,num[7:4],1'b0,num[3:0]};
				3:dout={5'd31,1'b0,num[11:8],1'b0,num[7:4],1'b0,num[3:0]};
				default:dout={1'b0,num[15:12],1'b0,num[11:8],1'b0,num[7:4],1'b0,num[3:0]};
			endcase
	end
	else
	begin
		if(s)
			dout={5'd31-num[19:16],1'b0,num[15:12],1'b0,num[11:8],1'b0,num[7:4]};
		else
			case(curr)
				1:dout={5'd31-num[19:16],1'b0,num[15:12],1'b0,num[11:8],5'd31};
				2:dout={5'd31-num[19:16],1'b0,num[15:12],5'd31,1'b0,num[7:4]};
				3:dout={5'd31-num[19:16],5'd31,1'b0,num[11:8],1'b0,num[7:4]};
				4:dout={5'd31,1'b0,num[15:12],1'b0,num[11:8],1'b0,num[7:4]};
				default:dout={1'b0,num[15:12],1'b0,num[11:8],1'b0,num[7:4],1'b0,num[3:0]};
			endcase
	end
end
endmodule
