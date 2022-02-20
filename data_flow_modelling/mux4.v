module mux4(input a,b,c,d,e,f, output y);
assign y = (c&~a&~b) | (d&~a&b) | (e&a&~b) | (f&a&b);
endmodule