`timescale 1ns / 1ns
`include "mux2.v"
module mux2_tb;
reg a,b,s;
wire y;
mux2 uut (a,b,s,y);
initial begin
    $dumpfile("mux2_tb.vcd");
    $dumpvars(0, mux2_tb);
    {a,b,s} = 3'd0; #10;
    {a,b,s} = 3'd1; #10;
    {a,b,s} = 3'd2; #10;
    {a,b,s} = 3'd3; #10;
    {a,b,s} = 3'd4; #10;
    {a,b,s} = 3'd5; #10;
    {a,b,s} = 3'd6; #10;
    {a,b,s} = 3'd7; #10;
end

endmodule