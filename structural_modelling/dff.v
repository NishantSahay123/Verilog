module not_gate (input a, output b);
assign b=~a;
endmodule

module nand_gate(input f,g, output h);
assign h = ~(f&g);
endmodule

module dff(input d,clk, output wire q,qbar);
not_gate not1(dbar, d);
nand_gate nand1(x, d, clk);
nand_gate nand2(y, dbar, clk);
nand_gate nand3(q,y,qbar);
nand_gate nand4(qbar, q,x);
endmodule