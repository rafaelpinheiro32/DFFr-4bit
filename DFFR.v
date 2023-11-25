`timescale 1ns / 1ps
// ECE230 DP3 EX 1
// module definition of D-type flip flop

module DFFr(d,clk,rst,q,qbar);
input d, clk, rst; // inputs d, clock and reset
output reg q, qbar; // outputs q and qbar

always @ (posedge(clk), posedge(rst)) // always procedure at positive edge at clock or reset signals

begin
qbar = !q;
if (rst == 1) q = 0; // if reset is high, q is 0
else q = d; // if reset is low, q is d
end

endmodule
