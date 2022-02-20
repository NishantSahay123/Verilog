module and22(input [1:0]a, input [1:0]b, output [1:0]z );
assign z[0] = a[0] & b[0];
assign z[1] = a[1] & b[1];
endmodule 