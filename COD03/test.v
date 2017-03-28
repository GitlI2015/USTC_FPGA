`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:21:49 03/28/2017
// Design Name:   top
// Module Name:   F:/lab/COD03/test.v
// Project Name:  COD03
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
	reg clk;
	reg rst_n;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst_n(rst_n)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   always #1 clk = ~clk;
endmodule

