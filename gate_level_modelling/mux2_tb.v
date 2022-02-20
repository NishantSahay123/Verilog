`timescale 1ns/1ns
`include "mux21.v"
module mux2_tb;
reg d0,d1,s;
wire y;
m21 name (.y(y), .d0(d0), .d1(d1), .s(s));
initial begin
    $dumpfile("m21_tb.vcd");
    $dumpvars;
    d0=0;d1=0;s=0; #100
    $finish;
end
always #40 d0=~d0;
always #20 d1=~d1;
always #10 s=~s;

endmodule