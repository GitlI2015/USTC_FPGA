`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:22:04 10/28/2016
// Design Name:   top
// Module Name:   C:/Documents and Settings/test/t.v
// Project Name:  test
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

module t;

	// Inputs
	reg clk;
	reg rst_n;
	reg pause_n;

	// Outputs
	wire [7:0] LED;
	wire [7:0] digit;
	wire [3:0] sel;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.pause_n(pause_n), 
		.LED(LED), 
		.digit(digit), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;
		pause_n = 0;

		// Wait 100 ns for global reset to finish
		#100;
      #2500000
			rst_n =1; 
		#100000
			rst_n = 0;
		#2500000
			pause_n = 1;
		#10000000 pause_n =0;
		// Add stimulus here
	end
	always #10 clk=~clk;
endmodule

