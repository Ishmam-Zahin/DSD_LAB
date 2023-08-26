module MOD10COUNTER(q, j, k, clk);
input j, k, clk;
output [3:0] q;

JKFF jk1(q[0], , j, k, clk, clear);
JKFF jk2(q[1], , j, k, q[0], clear);
JKFF jk3(q[2], , j, k, q[1], clear);
JKFF jk4(q[3], , j, k, q[2], clear);
nand (clear, q[3], q[1]);

endmodule

