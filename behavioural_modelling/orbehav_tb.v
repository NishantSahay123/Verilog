`timescale 1ns/1ns
`include "orbehav.v"
module orbehav_tb;
reg a,b;
wire c;
orbehav uut (c,a,b);
initial begin
    $dumpfile ("orbehav_tb.vcd");
    $dumpvars(0, orbehav_tb);
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    $display("This is complete");
end
endmodule