module fulladdr2(input a, input b, input ci, output s, output c);
assign s = (a^b)^ci;
assign c = a&b | b&ci | a&ci;
endmodule