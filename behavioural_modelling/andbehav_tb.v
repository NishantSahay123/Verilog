`timescale 1ns/1ns
`include "andbehav.v"
module andbehav_tb;
reg a,b;
wire c;

andbehav uut (c,a,b);

initial begin
    $dumpfile("andbehav_tb.vcd");
    $dumpvars(0, andbehav);
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    $display("This is complete");

end
endmodule