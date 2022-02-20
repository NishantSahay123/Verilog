`timescale 1ns/1ns
`include "tff.v"

module tff_tb;
reg t,clk,clear;
wire q,qbar;
tff uut(t,clk,clear,q,qbar);
initial begin
    $dumpfile("tff_tb.vcd");
    $dumpvars(1);
    clk=0;clear=0;t=0;
    #500 $finish;
end
always #100 clear=~clear;
always #50 t=~t;
always #20 clk=~clk;
endmodule