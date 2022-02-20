`timescale 1ns/1ns
`include "dff.v"

module dff_tb;
reg d,clk;
wire q,qbar;

dff name(.q(q), .qbar(qbar), .d(d), .clk(clk));
initial begin
    $dumpfile("dff_tb.vcd");
    $dumpvars;
    d=0; clk=0;
    #100 d=1;
    #500 $finish;
end
always #10 clk = ~clk;
always #30 d=~d;
endmodule