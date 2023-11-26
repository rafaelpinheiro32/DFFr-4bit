`timescale 1ns / 1ps

module DFFr_tb;
reg D, CLK, RST;
wire Q, QBAR;

DFFr i0 (
    .d(D),
    .clk(CLK),
    .rst(RST),
    .q(Q),
    .qbar(QBAR)
    );

initial begin CLK=0; end
always #5 CLK=~CLK; // Toggling clock every 5 time units

initial begin
    // (a) q 0->1 on triggering clock edge
    D=0; RST=0;
    #10 // d=0 at first clock cycle
    #5 D=1;
    
    // (b) q 1->0 on triggering clock edge
    D=1;
    #5 D=0;
    #5; // neg clock edge
    
    // q 1->0 when rst->1 (not sync to clock edge)
    // while rst=1, q stays at 0
    #5 D=1; RST=1;
    #10; // check if q==0 on waveform at t = 35 (t=40 is neg clock edge)
    
    // when rst->0, q follows behavior in (a) and (b)
    RST=0;
    #10 D=0; // follows (a) behavior at t = 45
    #10 D=1; // follows (b) behavior at t = 55
    
    $finish;
end

endmodule
