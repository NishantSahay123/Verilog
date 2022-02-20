`timescale 1ns/1ns
`include "and_or_xor_gate.v"

module and_or_xor_gate_tb;
reg a,b;
wire c,d,e;
and_or_xor_gate uut(a,b,c,d,e);
initial begin
    $dumpfile("and_or_xor_gate_tb.vcd");
    $dumpvars(0, and_or_xor_gate_tb);
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    $display("This is complete");
end

endmodule