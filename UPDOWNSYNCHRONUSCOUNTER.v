module UPDOWNSYNCHRONUSCOUNTER(q, m, clk);
input m, clk;
output [2:0] q;
wire clear;
wire [2:0] qb;

JKFF jk0(q[0], qb[0], 1, 1, clk, clear);
JKFF jk1(q[1], qb[1], t1, t1, clk, clear);
JKFF jk2(q[2], qb[2], t2, t2, clk, clear);
not (mb, m);
and (w1, q[0], mb);
and (w2, qb[0], m);
or (t1, w1, w2);
and (w3, w1, q[1]);
and (w4, w2, qb[1]);
or (t2, w3, w4);

endmodule
