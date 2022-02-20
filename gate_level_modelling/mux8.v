module mux8(input D0, D1, D2, D3, D4, D5, D6, D7,
input s0,s1,s2,
output F);
wire [11:0]t;

not(t[0], s0); //t0 not of s0
not(t[1], s1); //t1 not of s1
not(t[2], s2); //t2 not of s2

and(t[4], t[0], t[1], t[2], D0);
and(t[5], t[0], t[1], s2, D1);
and(t[6], t[0], s1, t[2], D2);
and(t[7], t[0], s1, s2, D3);
and(t[8], s0, t[1], t[2], D4);
and(t[9], s0, t[1], s2, D5);
and(t[10], s0, s1, t[2], D6);
and(t[11], s0, s1, s2, D7);

or(F, t[4], t[5], t[6], t[7], t[8], t[9], t[10], t[11]);

endmodule