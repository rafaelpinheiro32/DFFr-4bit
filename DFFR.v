`timescale 1ns / 1ps
\\ ECE230 DP3 EX 1
\\ module definition of D-type flip flop

module DFFr(d,clk,rst,q,qbar);
input d, clk, rst;
output reg q, qbar;
always @ (posedge(clk), posedge(rst))
begin
qbar = !q;
if (rst == 1) q = 0;
else q = d;
end
endmodule
