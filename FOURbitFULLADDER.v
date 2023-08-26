module FOURbitFULLADDER(s, cout, a, b, cin);
input [3:0] a, b;
input cin;
output [3:0] s;
output cout;

xor (bw0, b[0], cin);
xor (bw1, b[1], cin);
xor (bw2, b[2], cin);
xor (bw3, b[3], cin);
FULLADDER fa0(s[0], c1, a[0], bw0, cin);
FULLADDER fa1(s[1], c2, a[1], bw1, c1);
FULLADDER fa2(s[2], c3, a[2], bw2, c2);
FULLADDER fa3(s[3], cout, a[3], bw3, c3);

endmodule

module FULLADDER(s, cout, a, b, cin);
input a, b, cin;
output s, cout;

xor (w1, a, b);
xor (s, w1, cin);
and (w2, w1, cin);
and (w3, a, b);
or (cout, w2, w3);

endmodule

module FOURbitFULLADDER_TEST;
reg [3:0] a, b;
reg cin;
wire [3:0] s;
wire cout;

FOURbitFULLADDER ex(s, cout, a, b, cin);

initial
begin
a=4'd0; b=4'd0; cin=0;
#100 a=4'd0; b=4'd0; cin=1;
#100 a=4'd0; b=4'd1; cin=0;
#100 a=4'd1; b=4'd0; cin=1;
#100 a=4'd3; b=4'd2; cin=0;
#100 a=4'd3; b=4'd2; cin=1;
#100 a=4'd5; b=4'd4; cin=0;
#100 a=4'd5; b=4'd2; cin=1;
#100 a=4'd4; b=4'd8; cin=0;
#100 a=4'd4; b=4'd8; cin=1;
#100 a=4'd11; b=4'd4; cin=0;
#100 a=4'd11; b=4'd4; cin=1;
#100 a=4'd10; b=4'd3; cin=0;
#100 a=4'd10; b=4'd12; cin=1;
end
endmodule
