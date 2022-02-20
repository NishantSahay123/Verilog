`timescale 1ns/1ns
`include "buf_not_gates.v"
module buf_not_gates_tb;

reg a,b;
wire c,d;
buf_not_gates uut (a,b,c,d);
initial begin
    $dumpfile("buf_not_gates_tb.vcd");
    $dumpvars(0, buf_not_gates_tb);
    a=0;b=0;#1;
    a=0;b=1;#1;
    a=1;b=0;#1;
    a=1;b=1;#1;
    $display("Thisd is complete");
end
endmodule
