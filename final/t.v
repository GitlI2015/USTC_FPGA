`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:09:53 11/29/2016
// Design Name:   top
// Module Name:   D:/source/USTC_FPGA/final/t.v
// Project Name:  final
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
	reg [7:0] switch;
	reg [3:0] button;

	// Outputs
	wire [6:0] digits;
	wire [7:0] led;
	wire [3:0] sel;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.switch(switch), 
		.button(button), 
		.digits(digits), 
		.led(led), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		switch = 0;
		button = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		switch[1]=1;
	end
   always #1 clk=~clk;
endmodule

