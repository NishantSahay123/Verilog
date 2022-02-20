`timescale 1ns/1ns
`include "fullsub.v"
module fullsub_tb;
reg x,y,z;
wire b,d;
fullsub uut(x,y,z,b,d);
initial begin
    $dumpfile("fullsub_tb.vcd");
    $dumpvars();
    x=0;y=0;z=0;
    #100 $finish;
end

always #40 x=~x;
always #20 y=~y;
always #10 z=~z;

endmodule