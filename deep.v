module JK_FF(q,qbar,j,k,clk,clr);
input j,k,clk,clr;
output q,qbar;
wire w1,w2,w3,w4,w5,w6,clkbar;
nand n1(w1,j,qbar,clk,clr);
nand n2(w2,k,q,clk);
nand n3(w3,w1,w4);
nand n4(w4,w2,w3,clr);

not (clkbar,clk);

nand n5(w5,w3,clkbar);
nand n6(w6,w4,clkbar);
nand n7(q,w5,qbar);
nand n8(qbar,w6,q,clr);
endmodule

module FourBitUpDown(clk,q);
input clk,clr;
output [3:0]q,qbar;
reg j = 1b'1,k=1b'1;
JK_FF f1(q[0],qbar[0],j,k,clk,clr);
JK_FF f2(q[1],qbar[1],j,k,q[0],clr);
JK_FF f3(q[2],qbar[2],j,k,q[1],clr);
JK_FF f4(q[3],qbar[3],j,k,q[2],clr);
endmodule
