`timescale 1ns/1ns
`include "anddelay.v"
module anddelay_tb;
reg a,b;
wire c;
anddelay uut(a,b,c);
initial begin
    $dumpfile("anddelay_tb.vcd");
    $dumpvars(0, anddelay_tb);
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    $display("this is complete");
end
endmodule