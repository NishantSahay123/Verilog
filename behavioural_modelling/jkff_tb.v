`timescale 1ns/1ns
`include "jkff.v"
module jkff_tb;
reg j,k,clk,clear;
wire q,qbar;
jkff uut(j,k,clear,clk,q,qbar);
initial begin
    $dumpfile ("jkff.vcd");
    $dumpvars(1);
    clear=0;j=0;k=0;clk=0;
    #500 $finish;
end
always #100 clear=~clear;
always #50 j=~j;
always #25 k=~k;
always #10 clk=~clk;
endmodule