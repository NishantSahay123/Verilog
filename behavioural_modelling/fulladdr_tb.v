`timescale 1ns/1ns
`include "fulladdr.v"
module fulladdr_tb;
reg a,b,cin;
wire s,c;
fulladdr uut (s,c,a,b,cin);
initial begin
    $dumpfile("fulladdr_tb.vcd");
    $dumpvars();
    {a,b,cin} = 3'd0; #10
    {a,b,cin} = 3'd1; #10
    {a,b,cin} = 3'd2; #10
    {a,b,cin} = 3'd3; #10
    {a,b,cin} = 3'd4; #10 
    {a,b,cin} = 3'd5; #10
    {a,b,cin} = 3'd6; #10
    {a,b,cin} = 3'd7; #10
    $display("This is complete");
end
endmodule