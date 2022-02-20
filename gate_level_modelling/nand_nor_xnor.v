module nand_nor_xnor(input a,b, output c,d,e);
nand(c, a,b);
nor(d, a,b);
xnor(e, a,b);
endmodule