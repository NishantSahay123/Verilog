`timescale 1ns/1ns
`include "srff.v"

module srff_tb;
reg s,r,clk,clear;
wire q, qbar;
srff uut(s,r,clk,clear,q,qbar);

initial begin
    $dumpfile ("srff_tb.vcd");
    $dumpvars(1);
    clear=0; clk=0; s=0; r=0;
    #500 $finish;
end
always #100 clear = ~clear;
always #80 s=~s;
always #40 r=~r;
always #5 clk=~clk;
endmodule