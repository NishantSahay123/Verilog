module and_gate(output a, input b,c);
assign a = b&c;
endmodule
module or_gate (output l, input m,n);
assign l = m|n;
endmodule
module not_gate(output d, input e);
assign d = ~e;
endmodule

module m21(input d0,d1,s, output y);
wire t1,t2,t3;
and_gate u1(t1,d1,s);
not_gate u2(t2,s);
and_gate u3(t3,d0,t2);
or_gate u4(y,t1,t3);
endmodule