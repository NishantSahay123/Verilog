`timescale 1ns/1ns
`include "nand2.v"

module nand2_tb();

reg a,b;
wire z;

nand2 uut(a,b,z);

initial begin
    $dumpfile("nand2_tb.vcd");
    $dumpvars(0,nand2_tb);
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    $display("This is complete");
end

    
endmodule