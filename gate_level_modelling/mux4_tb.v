`timescale 1ns/1ns
`include "mux4.v"
module mux4_tb;
reg d0,d1,d2,d3,s0,s1;
wire f;
m41 name (.F(f), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .s0(s0), .s1(s1));
initial begin
    $dumpfile("mux4_tb.vcd");
    $dumpvars;
    d0=0;d1=0;d2=0;d3=0;s0=0;s1=0; 
    #160 $finish;
end
always #80 d0=~d0;
always #40 d1=~d1;
always #20 d2=~d2;
always #10 d3=~d3;
always #10 s0=~s0;
always #5 s1=~s1;
endmodule