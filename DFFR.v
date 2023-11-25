`timescale 1ns / 1ps
// ECE230 DP3 EX 1
// module definition of D-type flip flop

module DFFr(d,clk,rst,q,qbar);
input d, clk, rst; // inputs d, clock and reset
output reg q, qbar; // outputs q and qbar

always @(posedge clk, posedge rst)
  begin
  if (rst) begin
    // Async reset is active
    q <= 1'b0;
    qbar <= 1'b1;
  end else begin
    // Pos edge-triggered behavior
    q <= d;
    qbar <= ~d;
  end
end

endmodule
