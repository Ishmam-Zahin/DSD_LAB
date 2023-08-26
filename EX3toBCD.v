module EX3toBCD(b, e);
input [3:0] e;
output [3:0] b;

not (w3, e[3]);
not (w2, e[2]);
not (w1, e[1]);
not (w0, e[0]);
or (b[0], 0, w0);
xor (b[1], e[0], e[1]);
and (t1, w1, w2);
and (t2, w0, w2);
and (t3, e[0], e[1], e[2]);
or (b[2], t1, t2, t3);
and (t4, e[2], e[3]);
and (t5, e[0], e[1], e[3]);
or (b[3], t4, t5);

endmodule

module EX3toBCD_TEST;
reg [3:0] e;
wire [3:0] b;

EX3toBCD ex(b, e);

initial
begin
e=4'd3;
#100 e=4'd4;
#100 e=4'd5;
#100 e=4'd6;
#100 e=4'd7;
#100 e=4'd8;
#100 e=4'd9;
#100 e=4'd10;
#100 e=4'd11;
#100 e=4'd12;
end
endmodule
