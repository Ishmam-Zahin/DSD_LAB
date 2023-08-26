module jkflipflop(q, qbar, j, k, clk, clear);
input j, k, clk, clear;
output q, qbar;

nand (w1, j, clk, qbar);
nand (w2, k, clk, q);
nand (q, w1, qbar);
nand (qbar, w2, q, clear);

endmodule
