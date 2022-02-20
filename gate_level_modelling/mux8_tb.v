`timescale 1ns/1ns
`include "mux8.v"

module mux8_tb;
reg D0, D1, D2, D3, D4, D5, D6, D7;
reg s0,s1,s2;
wire pp;
mux8 name (.F(pp), .D0(D0),  .D1(D1), .D2(D2), .D3(D3), .D4(D4), .D5(D5), .D6(D6), .D7(D7), .s0(s0),  .s1(s1),  .s2(s2));
initial begin
    $dumpfile("mux8_tb.vcd");
    $dumpvars(0,mux8_tb);
    D0=0;D1=0;D2=0;D3=0;D4=0;D5=0;D6=0;D7=0;s0=0;s1=0;s2=0;
    #500 $finish;
end
always #1 D0=~D0;
always #2 D1=~D1;
always #3 D2=~D2;
always #4 D3=~D3;
always #5 D4=~D4;
always #6 D5=~D5;
always #7 D6=~D6;
always #8 D7=~D7;
always #9 s0=~s0;
always #10 s1=~s1;
always #11 s2=~s2;
endmodule