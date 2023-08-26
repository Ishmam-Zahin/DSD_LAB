module JKFF(q, qb, j, k, clk, clear);
output q, qb;
input j, k, clk, clear;
wire w1, w2, w3, w4, w5, w6, clkb;

nand n1(w1, j, clk, qb, clear);
nand n2(w2, k, clk, q);
nand n3(w3, w1, w4);
nand n4(w4, w2, w3, clear);
not nt(clkb, clk);
nand n5(w5, w3, clkb);
nand n6(w6, w4, clkb);
nand n7(q, w5, qb);
nand n8(qb, w6, q, clear);

endmodule
