module qs(a, b, c, d, t);
input a, b, c;
output d, t;

xor #5 xr (t, a, b);
xnor #5 xnr (d, t, c);
endmodule

module testxxxxx;
reg a, b, c;
wire d, t;
qs qq(a, b, c, d, t);

initial
begin
a=1'b0; b=1'b0; c=1'b1;
#20 a=1'b1; c=1'b0;
#20 b=1'b1; c=1'b1;
#20 a=1'b0;
end
endmodule
