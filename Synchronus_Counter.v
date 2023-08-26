module mycounter(q, clk);
input clk;
output [2:0] q;
wire [2:0] qb;
wire clear;

JKFF f0(q[0], qb[0], t0, t0, clk, clear);
JKFF f1(q[1], qb[1], t1, t1, clk, clear);
JKFF f2(q[2], qb[2], t1, t2, clk, clear);

and (w1, qb[2], q[0]);
and (w2, qb[2], q[1]);
and (w3, q[1], q[0]);
or (t0, w1, w2, w3);
and (w4, qb[2], qb[0]);
or (t1, qb[1], w4);
and (w5, q[1], qb[0]);
and (w6, q[2], q[1]);
and (w7, q[2], qb[0]);
or (t2, w5, w6, w7);

endmodule
