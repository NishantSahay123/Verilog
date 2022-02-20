`timescale 1ns/1ns
`include "dff.v"
module dff_tb;
reg d,clk,clear;
wire q,qbar;
dff uut(d,clk,clear,q,qbar);

initial begin
    $dumpfile("dff_tb.vcd");
    $dumpvars(1);
    clk=0; d=0; clear = 0;
    #500 $finish;
end
always #10 d=~d;
always #5 clk=~clk;
always #50 clear = ~clear;
endmodule