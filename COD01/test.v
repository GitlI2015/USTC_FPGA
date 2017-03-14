`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:55:31 03/14/2017
// Design Name:   ALU
// Module Name:   D:/source/USTC_FPGA/COD01/test.v
// Project Name:  COD01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
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
	reg [31:0] alu_a;
	reg [31:0] alu_b;
	reg [4:0] alu_op;

	// Outputs
	wire [31:0] alu_out;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.alu_a(alu_a), 
		.alu_b(alu_b), 
		.alu_op(alu_op), 
		.alu_out(alu_out)
	);

	initial begin
		// Initialize Inputs
		alu_a = 300;
		alu_b = 400;
		alu_op = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		alu_op = 1;
		#100;
		alu_op = 2;
		#100;
		alu_op = 3;
		#100;
		alu_op = 4;
		#100;
		alu_op = 5;
		#100;
		alu_op = 6;
	end
      
endmodule

