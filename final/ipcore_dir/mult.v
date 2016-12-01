////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: mult.v
// /___/   /\     Timestamp: Tue Nov 29 16:18:56 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog D:/source/USTC_FPGA/final/ipcore_dir/tmp/_cg/mult.ngc D:/source/USTC_FPGA/final/ipcore_dir/tmp/_cg/mult.v 
// Device	: 3s500efg320-5
// Input file	: D:/source/USTC_FPGA/final/ipcore_dir/tmp/_cg/mult.ngc
// Output file	: D:/source/USTC_FPGA/final/ipcore_dir/tmp/_cg/mult.v
// # of Modules	: 1
// Design Name	: mult
// Xilinx        : D:\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module mult (
  clk, ce, p, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  output [31 : 0] p;
  input [15 : 0] a;
  input [15 : 0] b;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000043 ;
  wire \blk00000001/sig00000042 ;
  wire \blk00000001/sig00000041 ;
  wire \blk00000001/sig00000040 ;
  wire \blk00000001/sig0000003f ;
  wire \blk00000001/sig0000003e ;
  wire \blk00000001/sig0000003d ;
  wire \blk00000001/sig0000003c ;
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \blk00000001/sig00000038 ;
  wire \blk00000001/sig00000037 ;
  wire \blk00000001/sig00000036 ;
  wire \blk00000001/sig00000035 ;
  wire \blk00000001/sig00000034 ;
  wire \blk00000001/sig00000033 ;
  wire \blk00000001/sig00000032 ;
  wire \blk00000001/sig00000031 ;
  wire \blk00000001/sig00000030 ;
  wire \blk00000001/sig0000002f ;
  wire \blk00000001/sig0000002e ;
  wire \blk00000001/sig0000002d ;
  wire \blk00000001/sig0000002c ;
  wire \blk00000001/sig0000002b ;
  wire \blk00000001/sig0000002a ;
  wire \blk00000001/sig00000029 ;
  wire \blk00000001/sig00000028 ;
  wire \blk00000001/sig00000027 ;
  wire \blk00000001/sig00000026 ;
  wire \blk00000001/sig00000025 ;
  wire \blk00000001/sig00000024 ;
  wire \blk00000001/sig00000023 ;
  wire \NLW_blk00000001/blk00000003_P<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_P<33>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_P<32>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_P<31>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<0>_UNCONNECTED ;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000023  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000024 ),
    .Q(p[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000002f ),
    .Q(p[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003a ),
    .Q(p[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000020  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003d ),
    .Q(p[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003e ),
    .Q(p[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003f ),
    .Q(p[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000040 ),
    .Q(p[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000041 ),
    .Q(p[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000042 ),
    .Q(p[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000043 ),
    .Q(p[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000019  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000025 ),
    .Q(p[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000018  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000026 ),
    .Q(p[11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000017  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000027 ),
    .Q(p[12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000016  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000028 ),
    .Q(p[13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000015  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000029 ),
    .Q(p[14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000014  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000002a ),
    .Q(p[15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000013  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000002b ),
    .Q(p[16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000012  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000002c ),
    .Q(p[17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000011  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000002d ),
    .Q(p[18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000010  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000002e ),
    .Q(p[19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000030 ),
    .Q(p[20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000031 ),
    .Q(p[21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000032 ),
    .Q(p[22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000033 ),
    .Q(p[23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000034 ),
    .Q(p[24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000035 ),
    .Q(p[25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000036 ),
    .Q(p[26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000037 ),
    .Q(p[27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000038 ),
    .Q(p[28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000039 ),
    .Q(p[29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003b ),
    .Q(p[30])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003c ),
    .Q(p[31])
  );
  MULT18X18SIO #(
    .AREG ( 0 ),
    .BREG ( 0 ),
    .B_INPUT ( "DIRECT" ),
    .PREG ( 0 ))
  \blk00000001/blk00000003  (
    .CEA(ce),
    .CEB(ce),
    .CEP(ce),
    .CLK(clk),
    .RSTA(\blk00000001/sig00000023 ),
    .RSTB(\blk00000001/sig00000023 ),
    .RSTP(\blk00000001/sig00000023 ),
    .A({a[15], a[15], a[15], a[14], a[13], a[12], a[11], a[10], a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]}),
    .B({b[15], b[15], b[15], b[14], b[13], b[12], b[11], b[10], b[9], b[8], b[7], b[6], b[5], b[4], b[3], b[2], b[1], b[0]}),
    .BCIN({\blk00000001/sig00000023 , \blk00000001/sig00000023 , \blk00000001/sig00000023 , \blk00000001/sig00000023 , \blk00000001/sig00000023 , 
\blk00000001/sig00000023 , \blk00000001/sig00000023 , \blk00000001/sig00000023 , \blk00000001/sig00000023 , \blk00000001/sig00000023 , 
\blk00000001/sig00000023 , \blk00000001/sig00000023 , \blk00000001/sig00000023 , \blk00000001/sig00000023 , \blk00000001/sig00000023 , 
\blk00000001/sig00000023 , \blk00000001/sig00000023 , \blk00000001/sig00000023 }),
    .P({\blk00000001/sig0000003c , \NLW_blk00000001/blk00000003_P<34>_UNCONNECTED , \NLW_blk00000001/blk00000003_P<33>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_P<32>_UNCONNECTED , \NLW_blk00000001/blk00000003_P<31>_UNCONNECTED , \blk00000001/sig0000003b , \blk00000001/sig00000039 
, \blk00000001/sig00000038 , \blk00000001/sig00000037 , \blk00000001/sig00000036 , \blk00000001/sig00000035 , \blk00000001/sig00000034 , 
\blk00000001/sig00000033 , \blk00000001/sig00000032 , \blk00000001/sig00000031 , \blk00000001/sig00000030 , \blk00000001/sig0000002e , 
\blk00000001/sig0000002d , \blk00000001/sig0000002c , \blk00000001/sig0000002b , \blk00000001/sig0000002a , \blk00000001/sig00000029 , 
\blk00000001/sig00000028 , \blk00000001/sig00000027 , \blk00000001/sig00000026 , \blk00000001/sig00000025 , \blk00000001/sig00000043 , 
\blk00000001/sig00000042 , \blk00000001/sig00000041 , \blk00000001/sig00000040 , \blk00000001/sig0000003f , \blk00000001/sig0000003e , 
\blk00000001/sig0000003d , \blk00000001/sig0000003a , \blk00000001/sig0000002f , \blk00000001/sig00000024 }),
    .BCOUT({\NLW_blk00000001/blk00000003_BCOUT<17>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<15>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<13>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<11>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<9>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<7>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<5>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<0>_UNCONNECTED })
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000023 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
