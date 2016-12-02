`timescale 1ns / 1ps

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
	output reg p,
	output reg error
);
reg as;
reg [19:0] num;
reg [19:0] num_t,num_tt;
wire signed [15:0] lo,ro,mult_re,div_re;
reg signed [31:0] re;
wire [19:0] test_n,re_bcd;
wire r;
wire signed [15:0] f;
bcd2n lb(num,1,clk,lo);
bcd2n rb(num_tt,1,clk,ro);
n2bcd reb(re,clk,re_bcd);
mult mr(clk,mult_re,lo,ro);
div dr(r,clk,lo,div_re,ro,f);
always@(posedge clk)
	if(state==2)
		re<=lo+ro;
	else if(state==3)
		re<=lo-ro;
	else if(state==4)
		re<=mult_re;
	else if(state==5)
		re<=div_re;
	else if(error|rst)
		re<=0;
	else re<=re;
initial
begin
p=0;
error =0;
end

always@(posedge clk or posedge rst)
	if(rst)
	begin
		curr<=0;
		num<=0;
		error<=0;
		p<=0;
		as<=0;
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
	else if(inc)
	begin
		if(state==1)
		begin
			num_t<=0;
			case(curr)
				0:num[3:0]<=num[3:0]<9?num[3:0]+1:0;
				1:num[7:4]<=num[7:4]<9?num[7:4]+1:0;
				2:num[11:8]<=num[11:8]<9?num[11:8]+1:0;
				3:num[15:12]<=num[15:12]<9?num[15:12]+1:0;
				4:num[19:16] <= num[19:16]==5?4'd0:4'd5;
			endcase
		end
		else if(state==2|state==3|state==4|state==5)
			begin
			case(curr)
				0:num_t[3:0]<=num_t[3:0]<9?num_t[3:0]+1:0;
				1:num_t[7:4]<=num_t[7:4]<9?num_t[7:4]+1:0;
				2:num_t[11:8]<=num_t[11:8]<9?num_t[11:8]+1:0;
				3:num_t[15:12]<=num_t[15:12]<9?num_t[15:12]+1:0;
				4:num_t[19:16] <= num_t[19:16]==5?4'd0:4'd5;
			endcase
			as<=1;
			end
		else
			num_t<=0;
	end
	else if(dec)
	begin
		if(state==1)
		begin
			case(curr)
				0:num[3:0]<=num[3:0]>0?num[3:0]-1:9;
				1:num[7:4]<=num[7:4]>0?num[7:4]-1:9;
				2:num[11:8]<=num[11:8]>0?num[11:8]-1:9;
				3:num[15:12]<=num[15:12]>0?num[15:12]-1:9;
				4:num[19:16] <= num[19:16]==5?4'd0:4'd5;
			endcase
			num_t<=0;
		end
		else if(state==2|state==3|state==4|state==5)
			begin
			case(curr)
				0:num_t[3:0]<=num_t[3:0]>0?num_t[3:0]-1:9;
				1:num_t[7:4]<=num_t[7:4]>0?num_t[7:4]-1:9;
				2:num_t[11:8]<=num_t[11:8]>0?num_t[11:8]-1:9;
				3:num_t[15:12]<=num_t[15:12]>0?num_t[15:12]-1:9;
				4:num_t[19:16] <= num_t[19:16]==5?4'd0:4'd5;
			endcase
			as<=1;
			end
		else
			num_t<=0;
	end
	else if(state==1&&as==1)
		if(re>9999|re<-9999)
		begin
			error<=1;
			num_t<=0;
			as<=0;
			curr<=0;
			p<=0;
		end
		else
		begin
			num<=re_bcd;
			as<=0;
			num_t<=0;
			curr<=0;
			p<=0;
		end

always@(*)
if(state==7)
begin
	nout<=test_n;
end
else if(state==2||state==3||state==4||state==5)
begin
	nout<=num_t;
	num_tt<=num_t;
end
else
begin
	nout<=num;
end

n2bcd test(
.n (-16'sd8888),
.clk (clk),
.bcd (test_n)
);

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
