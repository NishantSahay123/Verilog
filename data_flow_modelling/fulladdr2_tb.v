`timescale 1ns / 1ns
`include "fulladdr2.v"

module fulladdr2_tb();
reg a, b, ci;
wire s,c;

fulladdr2 uut (a,b,ci,s,c);
initial begin
    $dumpfile("fulladdr2_tb.vcd");
    $dumpvars(0,fulladdr2_tb);
    {a,b,ci} = 3'd0;#10;
    {a,b,ci} = 3'd1;#10;
    {a,b,ci} = 3'd2;#10;
    {a,b,ci} = 3'd3;#10;
    {a,b,ci} = 3'd4;#10;
    {a,b,ci} = 3'd5;#10;
    {a,b,ci} = 3'd6;#10;
    {a,b,ci} = 3'd7;#10;
    $display("This is complete");
end

endmodule 