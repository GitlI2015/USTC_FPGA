`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:28:23 11/04/2016
// Design Name:   top
// Module Name:   D:/source/USTC_FPGA/Lab4/test.v
// Project Name:  Lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg op;
	reg button;
	reg rst_n;
	reg clk;

	// Outputs
	wire led;
	wire [3:0] sel;
	wire [7:0] digit;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.op(op), 
		.button(button), 
		.rst_n(rst_n), 
		.clk(clk), 
		.led(led), 
		.sel(sel), 
		.digit(digit)
	);

	initial begin
		// Initialize Inputs
		op = 0;
		button = 0;
		rst_n = 1;
		clk = 0;
		#10 rst_n =0;
		#10 rst_n =1;
		// Wait 100 ns for global reset to finish
		#100;
       
		 
		// Add stimulus here
		op=1;
		button = 1;
		#1000000;
		button = 0;
		#100;
		button = 1;
		#1000000;
		button = 0;
		#100;
		op=0;
		button =1;
		#1000000
		button = 0;
		#100;
		op=1;
		button = 1;
		#1000000;
	end
	
      always #1 clk=~clk;
endmodule

