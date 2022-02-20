`timescale 1ns / 1ns
`include "halfaddr.v"

module halfaddr_tb();
reg a,b;
wire s,c;

halfaddr uut(a,b,s,c);
initial begin
    $dumpfile("halfaddr_tb.vcd");
    $dumpvars(0,halfaddr_tb);
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    $display("This is complete");
end

endmodule