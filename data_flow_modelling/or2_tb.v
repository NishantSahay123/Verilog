`timescale 1ns / 1ns
`include "or2.v"

module or2_tb();

reg a,b;
wire z;

or2 uut (a,b,z);

initial begin
    $dumpfile("or2_tb.vcd");
    $dumpvars(0,or2_tb);
    a=0;b=0;#10;
    a=1;b=0;#10;
    a=0;b=1;#10;
    a=1;b=1;#10;
    $display("This is complete");
end
endmodule