`timescale 1ns/1ns
`include "mux2.v"
module mux2_tb;
reg a,b,s;
wire y;
mux2 uut (a,b,s,y);
initial begin
    $dumpfile("mux2_tb.vcd");
    $dumpvars(0,mux2_tb);
    a=0;b=0;s=0; #500
    $display("This is complete");
end
always #40 a=~a;
always #20 b=~b;
always #10 s=~s;
endmodule