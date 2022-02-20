module mux2(input wire a,b,s, output reg y);
always @ (a|b|s) begin
    if (s) 
        y=b;
    else
        y=a;
end
endmodule 