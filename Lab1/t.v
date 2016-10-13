`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:52 10/13/2016 
// Design Name: 
// Module Name:    t 
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
module testbench1();
reg clock;
reg data;
initial 
begin
clock = 0;
data = 0;
end
wire d1;
wire d2;
always #5 clock = ~ clock;
always #10 data = ~ data;
top U1(.D(data),.CP(clock),.Q(d1),.Q(d2));
endmodule


