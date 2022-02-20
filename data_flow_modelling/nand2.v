module nand2(input a,
input b,
output z);
assign z = ~(a&b);
endmodule