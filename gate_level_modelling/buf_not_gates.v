module buf_not_gates(input a,b, output c,d);
buf(c, a, b);
not(d, a, b);
endmodule