`timescale 1ns / 1ns
`include "and22.v"

module and22_tb;

reg [1:0] a,b;
wire [1:0]z;

and22 uut (a,b,z);

initial begin
    $dumpfile("and22_tb.vcd");
    $dumpvars(0, and22_tb);
    {a, b} = 4'd0; #10;
    {a, b} = 4'd1; #10;
    {a, b} = 4'd2; #10;
    {a, b} = 4'd3; #10;
    {a, b} = 4'd4; #10;
    {a, b} = 4'd5; #10;
    {a, b} = 4'd6; #10;
    {a, b} = 4'd7; #10;
    {a, b} = 4'd8; #10;
    {a, b} = 4'd9; #10;
    {a, b} = 4'd10; #10;
    {a, b} = 4'd11; #10;
    {a, b} = 4'd12; #10;
    {a, b} = 4'd13; #10;
    {a, b} = 4'd14; #10;
    {a, b} = 4'd15; #10;
    
end

endmodule 