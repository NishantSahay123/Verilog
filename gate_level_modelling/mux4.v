module and_gate(output a, input c,d,e);
and(a,c,d,e);
endmodule

module not_gate(output w, input y);
not(w,y);
endmodule

module or_gate(output t, input f,g,h,i);
or (t,f,g,h,i);
endmodule

module m41(input s0,s1,d0,d1,d2,d3, output F);
wire t1,t2,t3,t4,t5,t6;
and_gate u1(t1, d3,s0,s1);
not_gate u2(t2, s1); //s1 bar at t2
and_gate u3(t3, t2,d2,s0);
not_gate u4(t4, s0); //s0 bar at t4
and_gate u5(t5, d1,s1,t4);
and_gate u6(t6, d0,t4,t2);
or_gate u7(F, t6,t5,t3,t1);
endmodule
