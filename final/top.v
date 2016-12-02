`timescale 1ns / 1ps

module top(
input clk,
input [7:0] switch,
input [3:0] button,
output [6:0] digits,
output [7:0] led,
output [2:0] rgb,
output [3:0] sel
);
wire [19:0] dout;
manager m(
.clk (clk),
.switch (switch),
.button (button),
.led (led),
.rgb (rgb),
.disp (dout)
);
display d(
.clk (clk),
.num (dout),
.an (sel),
.seg (digits)
);

endmodule
