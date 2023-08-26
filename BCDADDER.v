module BCDADDER(s, cout, a, b);
input [3:0] a, b;
output [3:0] s;
output cout;
wire [3:0] tb, ts;

FOURbitFULLADDER fa0(ts, w1, a, b, 0);
FOURbitFULLADDER fa1(s, , ts, tb, 0);
and (w2, ts[2], ts[3]);
and (w3, ts[3], ts[1]);
or (w4, w2, w3);
or (tb[1], w4, w1);
or (tb[2], w4, w1);
or (cout, w4, w1);
or (tb[0], 0, 0);
or (tb[3], 0, 0);

endmodule

module BCDADDER_TEST;
reg [3:0] a, b;
wire cout;
wire [3:0] s;

BCDADDER ex(s, cout, a, b);

initial
begin
a=4'd2; b=4'd2;
#100 a=4'd3; b=4'd5;
#100 a=4'd10; b=4'd5;
#100 a=4'd9; b=4'd4;
#100 a=4'd8; b=4'd7;
#100 a=4'd0; b=4'd0;
#100 a=4'd0; b=4'd1;
end

endmodule
