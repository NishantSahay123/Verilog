`timescale 1ns/1ns
`include "xor2.v"

module xor2_tb();
reg a, b;
wire z;

xor2 uut(a, b, z);
initial begin
    $dumpfile("xor2_tb.vcd");
    $dumpvars(0, xor2_tb);
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    $display("Test complete");
end
endmodule 

