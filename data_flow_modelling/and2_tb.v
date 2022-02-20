`timescale 1ns / 1ns
`include "and2.v"

module and2_tb();

reg a, b;
wire z;

and2 uut(a, b, z);
 initial begin
     $dumpfile ("and2_tb.vcd");
     $dumpvars(0, and2_tb);
     a=0; b=0; #10;
     a=0; b=1; #10;
     a=1; b=0; #10;
     a=1; b=1; #10;    
     $display("This is complete");

 end

endmodule