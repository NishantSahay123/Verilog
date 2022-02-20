`timescale 1ns/1ns
`include "mux4.v"
module mux4_tb;
reg a,b,c,d,e,f;
wire y;
mux4 uut (a,b,c,d,e,f,y);
initial begin
    $dumpfile("mux4_tb.vcd");
    $dumpvars;
    {a,b,c,d,e,f} = 6'd0; #500 $finish;
end

always #40 c=~c;
always #20 d=~d;
always #10 e=~e;
always #5 f=~f;
always #80 a=~a;
always #160 b=~b;
endmodule
