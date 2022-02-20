`timescale 1ns/1ns
`include "nand_nor_xnor.v"
module nand_nor_xnor_tb;
reg a,b;
wire c,d,e;
nand_nor_xnor uut(a,b,c,d,e);
initial begin
    $dumpfile("nand_nor_xnor_tb.vcd");
    $dumpvars(0, nand_nor_xnor_tb);
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    $display("This is complete");
end
endmodule